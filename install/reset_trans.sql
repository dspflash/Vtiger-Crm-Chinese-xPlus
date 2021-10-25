use vtigercrm6;
TRUNCATE TABLE `vtigercrm6`.`vtiger_project`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_projecttask`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_projectmilestone`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_projecttask_detail`;
TRUNCATE TABLE `vtigercrm6`.`attachment`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_salesorder`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_salesorder_item`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_project_tpl_milestone`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_project_tpl_task`;
TRUNCATE TABLE `vtigercrm6`.`vtiger_project_tpl`;

UPDATE `vtigercrm6`.vtiger_role SET rolelayout='layout/ucin/vtiger/prjgm.xml' WHERE roleidx=3;
update `vtigercrm6`.vtiger_users set user_name='prjgm' where id=1;
update `vtigercrm6`.vtiger_users set user_name='prjadmin' where id=2;
update `vtigercrm6`.vtiger_users set user_name='prj_user01' where id=3;
update `vtigercrm6`.vtiger_user2role set roleid='3' where userid=1;
update `vtigercrm6`.vtiger_user2role set roleid='6' where userid=2;


