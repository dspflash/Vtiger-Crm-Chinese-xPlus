USE `vtigercrm6`;

CREATE TABLE IF NOT EXISTS `vtigercrm6`.`vtiger_projectmilestone_detail` (
  `projectmilestone_detailid` INT(11) NOT NULL AUTO_INCREMENT,
  `result` TINYINT(4) DEFAULT NULL,
  `remark` TEXT,
  `act_date` DATE DEFAULT NULL,
  `projectmilestoneid` INT(11) DEFAULT NULL,
  `created_by` INT(11) DEFAULT NULL,
  `creation_date` DATETIME DEFAULT NULL,
  `last_update_by` INT(11) DEFAULT NULL,
  `last_update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`projectmilestone_detailid`),
  UNIQUE KEY `projectmilestoneid` (`projectmilestoneid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

#@20210407
ALTER TABLE `vtigercrm6`.`vtiger_projectmilestone`     ADD COLUMN `reviewed` BOOLEAN DEFAULT '0' NULL AFTER `projectmilestonetype`,     ADD COLUMN `reviewed_date` DATETIME NULL AFTER `reviewed`,     ADD COLUMN `reviewed_by` INT NULL AFTER `reviewed_date`;

CREATE TABLE IF NOT EXISTS `vtiger_project_tpl` (
  `projecttplid` INT(11) NOT NULL AUTO_INCREMENT,
  `projecttplname` VARCHAR(50) DEFAULT NULL,
  `targetbudget` VARCHAR(255) DEFAULT NULL,
  `projectdays` INT(11) DEFAULT '0',
  `projecthours` INT(11) DEFAULT '0',
  `projecturl` VARCHAR(255) DEFAULT NULL,
  `projectpriority` TINYINT(4) DEFAULT NULL,
  `projecttype` TINYINT(4) DEFAULT NULL,
  `responsible` INT(11) DEFAULT 0,
  `description` TEXT,
  `created_by` INT(11) DEFAULT NULL,
  `creation_date` DATETIME DEFAULT NULL,
  `last_update_by` INT(11) DEFAULT NULL,
  `last_update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`projecttplid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `vtiger_project_tpl_task` (
  `projecttpltaskid` INT(11) NOT NULL AUTO_INCREMENT,
  `projecttpltaskname` VARCHAR(50) DEFAULT NULL,
  `projecttasktype` TINYINT(4) DEFAULT NULL,
  `projecttaskpriority` TINYINT(4) DEFAULT NULL,
  `responsible` INT(11) DEFAULT 0,
  `description` TEXT,
  `projecttplid` INT(11) DEFAULT NULL,
  `project_ms_idx` TINYINT(4) NOT NULL,
  `created_by` INT(11) DEFAULT NULL,
  `creation_date` DATETIME DEFAULT NULL,
  `last_update_by` INT(11) DEFAULT NULL,
  `last_update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`projecttpltaskid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;
CREATE TABLE IF NOT EXISTS `vtiger_project_tpl_milestone` (
  `projecttplmilestoneid` INT(11) NOT NULL AUTO_INCREMENT,
  `project_ms_idx` TINYINT(4) DEFAULT NULL,
  `projecttplmilestonename` VARCHAR(50) DEFAULT NULL,
  `projecttplid` INT(11) DEFAULT NULL,
  `projectmilestonetype` TINYINT(4) DEFAULT NULL,
  `responsible` INT(11) DEFAULT 0,
  `created_by` INT(11) DEFAULT NULL,
  `creation_date` DATETIME DEFAULT NULL,
  `last_update_by` INT(11) DEFAULT NULL,
  `last_update_date` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`projecttplmilestoneid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

ALTER TABLE `vtigercrm6`.`vtiger_projectmilestone`     ADD COLUMN `project_ms_idx` INT NULL AFTER `projectid`;
ALTER TABLE `vtigercrm6`.`vtiger_projecttask`     ADD COLUMN `project_ms_idx` INT NULL AFTER `projectid`;
ALTER TABLE `vtigercrm6`.`vtiger_projectmilestone` ADD CONSTRAINT `FK_vtiger_projectmilestone` FOREIGN KEY (`projectid`) REFERENCES `vtiger_project` (`projectid`) ON DELETE CASCADE ;
ALTER TABLE `vtigercrm6`.`vtiger_projecttask` ADD CONSTRAINT `FK_vtiger_projecttask` FOREIGN KEY (`projectid`) REFERENCES `vtiger_project` (`projectid`) ON DELETE CASCADE ;

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

DELIMITER $$

USE `vtigercrm6`$$

DROP VIEW IF EXISTS `prj_task_v`$$

CREATE ALGORITHM=UNDEFINED DEFINER=`i3u`@`localhost` SQL SECURITY DEFINER VIEW `prj_task_v` AS (
SELECT
  `v`.`projecttaskname`      AS `projecttaskname`,
  `v`.`contact`              AS `contact`,
  `v`.`telphone`             AS `telphone`,
  DATE_FORMAT(`v`.`schedule_date`,_utf8'%Y-%m-%d') AS `schedule_date`,
  MAX(`vpm`.`projectmilestonedate`) AS `projectmilestonedate`,
  `u`.`fullname`             AS `responsible`,
  `v0`.`projecttaskstatus`   AS `projecttaskstatus`,
  `v`.`startdate`            AS `startdate`,
  `v`.`enddate`              AS `enddate`,
  `v`.`address`              AS `address`,
  `v`.`description`          AS `description`,
  `v1`.`user_name`           AS `created_by`,
  `v`.`creation_date`        AS `creation_date`,
  `v2`.`user_name`           AS `last_update_by`,
  `v`.`last_update_date`     AS `last_update_date`,
  `v`.`projectid`            AS `projectid`,
  `v`.`projecttaskid`        AS `projecttaskid`,
  `vpm`.`projectmilestoneid` AS `projectmilestoneid`,
  `vpm`.`reviewed`           AS `reviewed`,
  `v`.`addrlng`              AS `addrlng`,
  `v`.`addrlat`              AS `addrlat`,
  `v0`.`projecttaskstatusid` AS `projecttaskstatusid`
FROM (((((`vtiger_projecttask` `v`
       LEFT JOIN `users_v` `u`
         ON ((`v`.`responsible` = `u`.`id`)))
      LEFT JOIN `vtiger_projecttaskstatus` `v0`
        ON ((`v`.`projecttaskstatus` = `v0`.`projecttaskstatusid`)))
     LEFT JOIN `vtiger_users` `v1`
       ON ((`v`.`created_by` = `v1`.`id`)))
    LEFT JOIN `vtiger_users` `v2`
      ON ((`v`.`last_update_by` = `v2`.`id`)))
   LEFT JOIN `vtiger_projectmilestone` `vpm`
     ON (((`v`.`projectid` = `vpm`.`projectid`)
          AND (NOT(`vpm`.`reviewed`))
          AND ((ISNULL(`v`.`project_ms_idx`)
                AND (`vpm`.`projectmilestonedate` < `v`.`schedule_date`))
                OR (`v`.`project_ms_idx` > `vpm`.`project_ms_idx`)))))
GROUP BY `v`.`projecttaskid`)$$

DELIMITER ;

DELIMITER $$

USE `vtigercrm6`$$

DROP FUNCTION IF EXISTS `createprojectwithtpl`$$

CREATE DEFINER=`i3u`@`localhost` FUNCTION `createprojectwithtpl`(prjtplid INT,prjname VARCHAR(50),userid BIGINT) RETURNS INT(11)
BEGIN
SET @prid=NULL;
IF prjtplid>0 AND prjname!='' THEN
SET @seq=0;SELECT SUBSTR(project_no,-5)+0 INTO @seq FROM vtigercrm6.vtiger_project WHERE DATE(creation_date)=CURDATE() ORDER BY project_no DESC LIMIT 0,1;
SELECT generate_orderNo(Code_Prefix, DT_MODE, @seq,'','') INTO @odn FROM vtigercrm6.xdoc_code WHERE docType='prj';
INSERT INTO vtigercrm6.vtiger_project (projectname,project_no,projectdays,projecthours,projecturl,projectpriority,projecttype,projectstatus,responsible,description,created_by,creation_date) 
SELECT prjname,@odn,projectdays,projecthours,projecturl,projectpriority,projecttype,2,responsible,description,userid,NOW() FROM vtiger_project_tpl WHERE projecttplid=prjtplid;
SELECT LAST_INSERT_ID() INTO @prid;
INSERT INTO vtiger_projectmilestone (projectid,project_ms_idx,projectmilestonename,projectmilestonetype,responsible,created_by,creation_date) 
SELECT @prid,project_ms_idx,projecttplmilestonename,projectmilestonetype,IF(m.responsible,m.responsible,p.responsible),userid,NOW() FROM vtiger_project_tpl_milestone m JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE m.projecttplid=prjtplid;
INSERT INTO vtiger_projecttask (projectid,project_ms_idx,projecttaskname,projecttasktype,projecttaskpriority,projecttaskstatus,responsible,description,created_by,creation_date) 
SELECT @prid,m.project_ms_idx,projecttpltaskname,projecttasktype,projecttaskpriority,2,IF(t.responsible,t.responsible,IF(m.responsible,m.responsible,p.responsible)),t.description,userid,NOW() FROM vtiger_project_tpl_task t JOIN vtiger_project_tpl_milestone m ON (t.projecttplid=m.projecttplid AND t.project_ms_idx=m.project_ms_idx) JOIN vtiger_project_tpl p ON m.projecttplid=p.projecttplid WHERE t.projecttplid=prjtplid;
END IF;
RETURN @prid;
    END$$

DELIMITER ;

ALTER TABLE `vtigercrm6`.`vtiger_project_tpl_milestone` ADD CONSTRAINT `FK_vtiger_project_tpl_milestone` FOREIGN KEY (`projecttplid`) REFERENCES `vtiger_project_tpl` (`projecttplid`) ON DELETE CASCADE ;
ALTER TABLE `vtigercrm6`.`vtiger_project_tpl_task` ADD CONSTRAINT `FK_vtiger_project_tpl_task` FOREIGN KEY (`projecttplid`) REFERENCES `vtiger_project_tpl` (`projecttplid`) ON DELETE CASCADE ;
ALTER TABLE `vtigercrm6`.`vtiger_projecttask_detail` ADD CONSTRAINT `FK_vtiger_projecttask_detail` FOREIGN KEY (`projecttaskid`) REFERENCES `vtiger_projecttask` (`projecttaskid`) ON DELETE CASCADE ;
ALTER TABLE `vtigercrm6`.`vtiger_project`     ADD COLUMN `responsible` INT default 0 AFTER `linktoaccountscontacts`;
ALTER TABLE `vtigercrm6`.`vtiger_projectmilestone`     ADD COLUMN `responsible` INT default 0 AFTER `projectmilestonetype`;
ALTER TABLE `vtigercrm6`.`attachment`     CHANGE `type` `type` TINYINT(3) UNSIGNED DEFAULT '0' NOT NULL COMMENT '1ΪͼƬ',     CHANGE `typeStr` `typeStr` VARCHAR(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'file' NULL ;