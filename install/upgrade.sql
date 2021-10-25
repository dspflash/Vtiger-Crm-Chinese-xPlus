DELIMITER $$

USE `vtigercrm6`$$

DROP VIEW IF EXISTS `prj_ms_task_v`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER VIEW `prj_ms_task_v` AS (
SELECT
  `v`.`projecttaskname`        AS `projecttaskname`,
  `v`.`contact`                AS `contact`,
  `v`.`telphone`               AS `telphone`,
  `v0`.`projecttasktype`       AS `projecttasktype`,
  DATE_FORMAT(`v`.`schedule_date`,_utf8'%Y-%m-%d') AS `schedule_date`,
  `vpm`.`projectmilestonename` AS `projectmilestonename`,
  MIN(`vpm`.`projectmilestonedate`) AS `projectmilestonedate`,
  `u`.`fullname`               AS `responsible`,
  `v1`.`projecttaskpriority`   AS `projecttaskpriority`,
  `v2`.`projecttaskstatus`     AS `projecttaskstatus`,
  `v`.`projecttaskprogress`    AS `projecttaskprogress`,
  `v`.`projecttaskhours`       AS `projecttaskhours`,
  `v`.`startdate`              AS `startdate`,
  `v`.`enddate`                AS `enddate`,
  `v`.`address`                AS `address`,
  `v`.`description`            AS `description`,
  `v3`.`user_name`             AS `created_by`,
  `v`.`creation_date`          AS `creation_date`,
  `v4`.`user_name`             AS `last_update_by`,
  `v`.`last_update_date`       AS `last_update_date`,
  `v`.`projectid`              AS `projectid`,
  `v`.`projecttaskid`          AS `projecttaskid`,
  `vpm`.`projectmilestoneid`   AS `projectmilestoneid`,
  `v`.`project_ms_idx`         AS `project_ms_idx`,
  `vpm`.`reviewed`             AS `reviewed`,
  `v`.`addrlng`                AS `addrlng`,
  `v`.`addrlat`                AS `addrlat`,
  `v2`.`projecttaskstatusid`   AS `projecttaskstatusid`
FROM (((((((`vtiger_projecttask` `v`
         LEFT JOIN `vtiger_projecttasktype` `v0`
           ON ((`v`.`projecttasktype` = `v0`.`projecttasktypeid`)))
        LEFT JOIN `users_v` `u`
          ON ((`v`.`responsible` = `u`.`id`)))
       LEFT JOIN `vtiger_projecttaskpriority` `v1`
         ON ((`v`.`projecttaskpriority` = `v1`.`projecttaskpriorityid`)))
      LEFT JOIN `vtiger_projecttaskstatus` `v2`
        ON ((`v`.`projecttaskstatus` = `v2`.`projecttaskstatusid`)))
     LEFT JOIN `vtiger_users` `v3`
       ON ((`v`.`created_by` = `v3`.`id`)))
    LEFT JOIN `vtiger_users` `v4`
      ON ((`v`.`last_update_by` = `v4`.`id`)))
   LEFT JOIN `vtiger_projectmilestone` `vpm`
     ON (((`v`.`projectid` = `vpm`.`projectid`)
          AND ((ISNULL(`v`.`project_ms_idx`)
                AND (`vpm`.`projectmilestonedate` >= `v`.`schedule_date`))
                OR (`v`.`project_ms_idx` = `vpm`.`project_ms_idx`)))))
GROUP BY `v`.`projecttaskid`)$$

DELIMITER ;

ALTER TABLE `vtigercrm6`.`vtiger_project`     ADD COLUMN `refertbl` VARCHAR(50) NULL AFTER `description`,     ADD COLUMN `referid` INT NULL AFTER `refertbl`;

DELIMITER $$

USE `vtigercrm6`$$

DROP FUNCTION IF EXISTS `createprojectwithtpl`$$

CREATE DEFINER=`i3u`@`localhost` FUNCTION `createprojectwithtpl`(prjtplid INT,prjname VARCHAR(50),reftbl VARCHAR(50),refid BIGINT,userid BIGINT) RETURNS INT(11)
BEGIN
SET @prid=NULL;
IF prjtplid>0 AND prjname!='' THEN
SET @seq=0;SELECT SUBSTR(project_no,-5)+0 INTO @seq FROM vtigercrm6.vtiger_project WHERE DATE(creation_date)=CURDATE() ORDER BY project_no DESC LIMIT 0,1;
SELECT generate_orderNo(Code_Prefix, DT_MODE, @seq,'','') INTO @odn FROM vtigercrm6.xdoc_code WHERE docType='prj';
SET @accid=NULL;
IF reftbl='salesorder_item' THEN
SELECT accountid INTO @accid FROM vtiger_salesorder so JOIN vtiger_salesorder_item soi ON so.salesorderid=soi.salesorderid WHERE salesorder_itemid=refid;
END IF;
INSERT INTO vtigercrm6.vtiger_project (projectname,project_no,refertbl,referid,projectdays,projecthours,projecturl,projectpriority,projecttype,projectstatus,responsible,linktoaccountscontacts,description,created_by,creation_date) 
SELECT prjname,@odn,reftbl,refid,projectdays,projecthours,projecturl,projectpriority,projecttype,2,responsible,@accid,description,userid,NOW() FROM vtiger_project_tpl WHERE projecttplid=prjtplid;
SELECT LAST_INSERT_ID() INTO @prid;
INSERT INTO vtiger_projectmilestone (projectid,project_ms_idx,projectmilestonename,projectmilestonetype,responsible,created_by,creation_date) 
SELECT @prid,project_ms_idx,projecttplmilestonename,projectmilestonetype,IF(m.responsible,m.responsible,p.responsible),userid,NOW() FROM vtiger_project_tpl_milestone m JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE m.projecttplid=prjtplid;
INSERT INTO vtiger_projecttask (projectid,project_ms_idx,projecttaskname,projecttasktype,projecttaskpriority,projecttaskstatus,responsible,description,created_by,creation_date) 
SELECT @prid,m.project_ms_idx,projecttpltaskname,projecttasktype,projecttaskpriority,2,IF(t.responsible,t.responsible,IF(m.responsible,m.responsible,p.responsible)),t.description,userid,NOW() FROM vtiger_project_tpl_task t JOIN vtiger_project_tpl_milestone m ON (t.projecttplid=m.projecttplid AND t.project_ms_idx=m.project_ms_idx) JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE t.projecttplid=prjtplid;
END IF;
RETURN @prid;
    END$$

DELIMITER ;

CREATE TABLE `vtiger_salesorder_item` (
  `salesorder_itemid` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `companyid` INT(11) DEFAULT NULL,
  `salesorderid` BIGINT(20) DEFAULT NULL,
  `productid` INT(11) DEFAULT NULL,
  `quantity` INT(11) DEFAULT NULL,
  `conversionquantity` INT(10) DEFAULT NULL,
  `expectdamagequantity` INT(10) DEFAULT NULL,
  `finalquantity` INT(10) DEFAULT NULL,
  `saleablequantity` INT(10) DEFAULT NULL,
  `oosquantity` INT(10) DEFAULT NULL,
  `deliveryquantity` INT(10) DEFAULT NULL,
  `unit` INT(10) DEFAULT NULL,
  `salesprice` DECIMAL(18,2) DEFAULT NULL,
  `amount` DECIMAL(18,2) DEFAULT NULL,
  `standarddetail` TEXT,
  `standardvalue` DECIMAL(18,2) DEFAULT NULL,
  `supplierid` INT(11) DEFAULT NULL,
  `drawingsurl` TEXT,
  `isobsoleted` TINYINT(1) DEFAULT NULL,
  `reviewfinishitem` SMALLINT(5) DEFAULT NULL,
  `waitsyncvss_oos` SMALLINT(5) DEFAULT NULL,
  `syncvssnum_oos` INT(10) DEFAULT NULL,
  `syncvssdate_oos` TIMESTAMP NULL DEFAULT NULL,
  `ispurchasemaking` TINYINT(1) DEFAULT NULL,
  `purchaseorderitemid` INT(50) DEFAULT NULL,
  `purchaseorderid` INT(50) DEFAULT NULL,
  `itemcode` VARCHAR(20) DEFAULT NULL,
  `itemname` VARCHAR(50) DEFAULT NULL,
  `itemimg` VARCHAR(50) DEFAULT NULL,
  `customitem` VARCHAR(50) DEFAULT NULL,
  `statuscode` INT(10) DEFAULT NULL,
  `created_by` INT(11) DEFAULT NULL,
  `creation_date` DATETIME DEFAULT NULL,
  `last_update_by` INT(11) DEFAULT NULL,
  `last_update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`salesorder_itemid`),
  KEY `FK_vtiger_salesorder_item` (`salesorderid`),
  CONSTRAINT `FK_vtiger_salesorder_item` FOREIGN KEY (`salesorderid`) REFERENCES `vtiger_salesorder` (`salesorderid`) ON DELETE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8



/*[9:35:00][  62 ms]*/ ALTER TABLE `vtigercrm6`.`vtiger_products`     CHANGE `imagename` `imagename` VARCHAR(100) NULL ;
DELIMITER $$

USE `vtigercrm6`$$

DROP VIEW IF EXISTS `prj_task_detail`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER VIEW `prj_task_detail` AS (
SELECT
  `v`.`projecttaskname`        AS `projecttaskname`,
  `a`.`subject`                AS `subject`,
  `a`.`filename`               AS `filename`,
  `a`.`invokes`                AS `invokes`,
  `a`.`description`            AS `description`,
  `a`.`typeStr`                AS `typestr`,
  `vu`.`user_name`             AS `created_by`,
  `a`.`creation_date`          AS `creation_date`,
  `v0`.`projecttasktype`       AS `projecttasktype`,
  `v1`.`user_name`             AS `responsible`,
  `v2`.`projecttaskpriority`   AS `projecttaskpriority`,
  `v3`.`projecttaskstatus`     AS `projecttaskstatus`,
  `v`.`schedule_date`          AS `schedule_date`,
  `v`.`projecttaskhours`       AS `projecttaskhours`,
  `v`.`startdate`              AS `startdate`,
  `v`.`projecttaskprogress`    AS `projecttaskprogress`,
  `v`.`enddate`                AS `enddate`,
  `a`.`location`               AS `location`,
  `v`.`description`            AS `taskdesc`,
  `cv`.`fullname`              AS `contact`,
  `cv`.`mobile`                AS `mobile`,
  `cv`.`phone`                 AS `phone`,
  `v`.`address`                AS `address`,
  `p`.`project_no`             AS `project_no`,
  `p`.`projectname`            AS `projectname`,
  `ps`.`projectstatus`         AS `projectstatus`,
  `pp`.`projectpriority`       AS `projectpriority`,
  `a`.`path`                   AS `path`,
  `a`.`attachment`             AS `attachment`,
  `a`.`reftbl`                 AS `reftbl`,
  `a`.`refid`                  AS `refid`,
  `a`.`type`                   AS `type`,
  `vu0`.`user_name`            AS `last_update_by`,
  `a`.`last_update_date`       AS `last_update_date`,
  `v3`.`projecttaskstatusid`   AS `projecttaskstatusid`,
  `v2`.`projecttaskpriorityid` AS `projecttaskpriorityid`,
  `ps`.`projectstatusid`       AS `projectstatusid`,
  `pp`.`projectpriorityid`     AS `projectpriorityid`,
  `a`.`attachment_id`          AS `attachment_id`,
  `v`.`projecttaskid`          AS `projecttaskid`,
  `v`.`projectid`              AS `projectid`
FROM (((((((((((`vtiger_projecttask` `v`
             JOIN `vtiger_project` `p`
               ON ((`p`.`projectid` = `v`.`projectid`)))
            LEFT JOIN `contacts_v` `cv`
              ON ((`cv`.`contactid` = `v`.`linkcontact`)))
           LEFT JOIN `attachment` `a`
             ON (((`a`.`reftbl` = _utf8'vtiger_projecttask')
                  AND (`a`.`refid` = `v`.`projecttaskid`))))
          LEFT JOIN `vtiger_users` `vu`
            ON ((`a`.`created_by` = `vu`.`id`)))
         LEFT JOIN `vtiger_users` `vu0`
           ON ((`a`.`last_update_by` = `vu0`.`id`)))
        LEFT JOIN `vtiger_projecttasktype` `v0`
          ON ((`v`.`projecttasktype` = `v0`.`projecttasktypeid`)))
       LEFT JOIN `vtiger_users` `v1`
         ON ((`v`.`responsible` = `v1`.`id`)))
      LEFT JOIN `vtiger_projecttaskpriority` `v2`
        ON ((`v`.`projecttaskpriority` = `v2`.`projecttaskpriorityid`)))
     LEFT JOIN `vtiger_projecttaskstatus` `v3`
       ON ((`v`.`projecttaskstatus` = `v3`.`projecttaskstatusid`)))
    LEFT JOIN `vtiger_projectpriority` `pp`
      ON ((`p`.`projectpriority` = `pp`.`projectpriorityid`)))
   LEFT JOIN `vtiger_projectstatus` `ps`
     ON ((`ps`.`projectstatusid` = `p`.`projectstatus`))))$$

DELIMITER ;

/*[20200522 10:42:40][  31 ms]*/ ALTER TABLE `vtigercrm6`.`vtiger_projectmilestone`     ADD COLUMN `review_memo` TEXT NULL AFTER `reviewed`;

/*[20200621 8:50:43][  31 ms]*/ ALTER TABLE `vtigercrm6`.`vtiger_projecttask`     ADD COLUMN `attachedfile` BOOLEAN DEFAULT '1' NULL COMMENT 'must attachfile while process' AFTER `responsible`;
/*[20200621 8:54:16][  15 ms]*/ ALTER TABLE `vtigercrm6`.`vtiger_project_tpl_task`     ADD COLUMN `attachedfile` BOOLEAN DEFAULT '1' NULL COMMENT 'must attachfile while process' AFTER `responsible`;
/*[20200621 9:46:39][   0 ms]*/
DELIMITER $$

USE `vtigercrm6`$$

DROP FUNCTION IF EXISTS `createprojectwithtpl`$$

CREATE DEFINER=`i3u`@`localhost` FUNCTION `createprojectwithtpl`(prjtplid INT,prjname VARCHAR(50),reftbl VARCHAR(50),refid BIGINT,userid BIGINT) RETURNS INT(11)
BEGIN
SET @prid=NULL;
IF prjtplid>0 AND prjname!='' THEN
SET @seq=0;SELECT SUBSTR(project_no,-5)+0 INTO @seq FROM vtigercrm6.vtiger_project WHERE DATE(creation_date)=CURDATE() ORDER BY project_no DESC LIMIT 0,1;
SELECT generate_orderNo(Code_Prefix, DT_MODE, @seq,'','') INTO @odn FROM vtigercrm6.xdoc_code WHERE docType='prj';
SET @accid=NULL;
IF reftbl='salesorder_item' THEN
SELECT accountid INTO @accid FROM vtiger_salesorder so JOIN vtiger_salesorder_item soi ON so.salesorderid=soi.salesorderid WHERE salesorder_itemid=refid;
END IF;
INSERT INTO vtigercrm6.vtiger_project (projectname,project_no,refertbl,referid,projectdays,projecthours,projecturl,projectpriority,projecttype,projectstatus,responsible,linktoaccountscontacts,description,created_by,creation_date) 
SELECT prjname,@odn,reftbl,refid,projectdays,projecthours,projecturl,projectpriority,projecttype,2,responsible,@accid,description,userid,NOW() FROM vtiger_project_tpl WHERE projecttplid=prjtplid;
SELECT LAST_INSERT_ID() INTO @prid;
INSERT INTO vtiger_projectmilestone (projectid,project_ms_idx,projectmilestonename,projectmilestonetype,responsible,created_by,creation_date) 
SELECT @prid,project_ms_idx,projecttplmilestonename,projectmilestonetype,IF(m.responsible,m.responsible,p.responsible),userid,NOW() FROM vtiger_project_tpl_milestone m JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE m.projecttplid=prjtplid;
INSERT INTO vtiger_projecttask (projectid,project_ms_idx,projecttaskname,projecttasktype,projecttaskpriority,projecttaskstatus,attachedfile,responsible,description,created_by,creation_date) 
SELECT @prid,m.project_ms_idx,projecttpltaskname,projecttasktype,projecttaskpriority,2,attachedfile,IF(t.responsible,t.responsible,IF(m.responsible,m.responsible,p.responsible)),t.description,userid,NOW() FROM vtiger_project_tpl_task t JOIN vtiger_project_tpl_milestone m ON (t.projecttplid=m.projecttplid AND t.project_ms_idx=m.project_ms_idx) JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE t.projecttplid=prjtplid;
END IF;
RETURN @prid;
    END$$

DELIMITER ;