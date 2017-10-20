INSERT INTO app_application (APPID, APPCODE, APPNAME, APPTYPE, ISOPEN, OPENDATE, URL, APPDESC, MAINTENANCE, MANAROLE, DEMO, INIWP, INTASKCENTER, IPADDR, IPPORT, APP_ID, TENANT_ID, PROTOCOL_TYPE) VALUES (1, 'coframe', '应用基础框架', '0', '1', null, null, null, null, null, null, null, null, null, null, null, 'default', 'http');
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (1, '应用功能管理', 1, '.1.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (2, '菜单管理', 1, '.2.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (3, '授权管理', 1, '.3.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (4, '流程配置', 1, '.4.', 'n', 1, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (5, '用户管理', 1, '.5.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (6, '组织机构管理', 1, '.6.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (7, '工作流程', 1, '.7.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (8, '模块操作权限管理', 1, '.8.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (1002, '流程管理', 1, '.1002.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('access_rule', '设置安全策略', null, '/policy/access_rules_list.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('application_add', '添加应用', null, '/coframe/framework/application/application_add.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('application_edit', '修改应用', null, '/coframe/framework/application/application_edit.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('application_manage', '管理应用功能树', null, '/coframe/framework/application/application_manage.jsp', null, '1', 'page', '1', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('auth_graph', '权限计算', null, '/coframe/auth/authgraph/auth_graph.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('dict_manager', '配置业务字典', null, '/coframe/dict/dict_manager.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('employee_add', '添加员工', null, '/coframe/org/employee/employee_add.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('employee_auth', '人员授权', null, '/coframe/org/employee/employee_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('employee_update', '修改员工', null, '/coframe/org/employee/employee_update.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('form_auth', '表单授权', null, '/coframe/resource/form/form_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('funcgroup_add', '添加功能组', null, '/coframe/framework/functiongroup/funcgroup_add.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('funcgroup_edit', '修改功能组', null, '/coframe/framework/functiongroup/funcgroup_edit.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('function_add', '添加功能', null, '/coframe/framework/function/function_add.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('function_edit', '修改功能', null, '/coframe/framework/function/function_edit.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('function_role_auth', '功能授权', null, '/coframe/framework/function/function_role_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('groupTree', '工作组管理', null, '/coframe/org/group/group_tree.jsp', null, '1', 'page', '1', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('menu_add', '添加菜单', null, '/coframe/framework/menu/menu_add.jsp', null, '1', 'page', '0', null, 'default', 2);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('menu_edit', '修改菜单', null, '/coframe/framework/menu/menu_edit.jsp', null, '1', 'page', '0', null, 'default', 2);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('menu_manage', '管理菜单树', null, '/coframe/framework/menu/menu_manage.jsp', null, '1', 'page', '1', null, 'default', 2);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('module_add', '新增模块', null, null, null, '1', 'page', '1', null, 'default', 8);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('module_delete', '删除模块', null, null, null, '1', 'page', '1', null, 'default', 8);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('module_modify', '修改模块', null, null, null, '1', 'page', '1', null, 'default', 8);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('my_process', '我的流程', null, '/bps/wfclient/common/myprocesses.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('my_task', '我的任务', null, '/bps/wfclient/common/mytasks.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_add', '添加机构', null, '/coframe/org/organization/org_add.jsp', null, '1', 'page', '1', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_auth', '机构授权', null, '/coframe/org/organization/org_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_tree', '管理机构树', null, '/coframe/org/organization/org_tree.jsp', null, '1', 'page', '1', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_update', '修改机构', null, '/coframe/org/organization/org_update.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('party_auth', '权限设置', null, '/coframe/auth/partyauth/auth.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('position_auth', '岗位授权', null, '/coframe/org/position/position_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('position_org_add', '添加岗位', null, '/coframe/org/position/position_org_add.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('position_org_update', '修改岗位', null, '/coframe/org/position/position_org_update.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('process_auth', '规则列表', null, '/coframe/flowconfig/process_auth.jsp', null, '1', 'page', '0', null, 'default', 4);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('process_form_auth', '配置流程规则', null, '/coframe/flowconfig/process_form_auth.jsp', null, '1', 'page', '0', null, 'default', 4);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('process_manager', '查看流程列表', null, '/coframe/flowconfig/process_manager.jsp', null, '1', 'page', '1', null, 'default', 4);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('query_agent', '查看代理', null, '/bps/wfclient/agent/myAgent.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('reset_password', '重置密码', null, '/coframe/rights/user/reset_password.jsp', null, '1', 'page', '0', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_add', '添加角色', null, '/coframe/rights/role/role_add.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_auth', '授权管理', null, '/coframe/auth/role_auth.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_manager', '角色管理', null, '/coframe/rights/role/role_manager.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_update', '修改角色', null, '/coframe/rights/role/role_update.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('set_agent', '代理设置', null, '/bps/wfclient/agent/agentList.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('sfy_process_classify', '流程分类', null, '/processmanage/catalog/catalog_manager.jsp', null, '1', 'page', '0', null, 'default', 1002);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('sfy_process_define', '流程定义', null, '/processmanage/catalog/catalog_manager.jsp', null, '1', 'page', '0', null, 'default', 1002);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('start_process', '启动流程', null, '/bps/wfclient/process/processManager.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('user_add', '添加用户', null, '/coframe/rights/user/user_add.jsp', null, '1', 'page', '0', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('user_list', '查看用户列表', null, '/coframe/rights/user/user_list.jsp', null, '1', 'page', '1', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('user_update', '修改用户', null, '/coframe/rights/user/user_update.jsp', null, '1', 'page', '0', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('view_auth', '视图授权', null, '/coframe/resource/view/view_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1', '权限管理', '权限管理', 'menu_auth', '0', null, null, 2, null, 1, null, null, '.1001.1.', null, 5, null, null, null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('10', '流程配置', '流程配置', 'menu_process_config', '1', null, null, 3, null, 4, null, null, '.1001.1.10.', null, 0, null, 'process_manager', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1001', '系统配置', '系统配置', 'm_xtpz', '0', null, null, 1, null, 1, '/default/upload/menu/8a8ac0ff5307c172015307c65dc6008b.png', null, '.1001.', null, 21, null, null, null, 'default', null);
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1042', '流程管理', '流程管理', 'sfy_process_config', '0', null, null, 2, null, 4, null, null, '.1001.1042.', null, 2, null, 'process_manager', null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1043', '流程分类', '流程分类', 'sfy_process_classify', '1', null, null, 3, null, 1, null, null, '.1001.1042.1043.', null, 0, null, 'sfy_process_classify', null, 'default', '1042');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1044', '流程定义', '流程定义', 'sfy_process_define', '1', null, null, 3, null, 2, null, null, '.1001.1042.1044.', null, 0, null, 'sfy_process_define', null, 'default', '1042');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('11', '我的任务', '我的任务', 'menu_my_task', '1', null, null, 2, null, 1, null, null, '.1001.9.11.', null, 0, null, 'my_task', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('12', '我的流程', '我的流程', 'menu_my_process', '1', null, null, 2, null, 2, null, null, '.1001.9.12.', null, 0, null, 'my_process', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('13', '启动流程', '启动流程', 'menu_start_process', '1', null, null, 2, null, 3, null, null, '.1001.9.13.', null, 0, null, 'start_process', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('14', '代理设置', '代理设置', 'menu_set_agent', '1', null, null, 2, null, 4, null, null, '.1001.9.14.', null, 0, null, 'set_agent', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('15', '查看代理', '查看代理', 'menu_query_agent', '1', null, null, 2, null, 5, null, null, '.1001.9.15.', null, 0, null, 'query_agent', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('2', '组织管理', '组织管理', 'menu_org', '0', null, null, 2, null, 2, null, null, '.1001.2.', null, 1, null, null, null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('3', '应用功能管理', '应用功能管理', 'menu_app_function', '1', null, null, 3, null, 1, null, null, '.1001.1.3.', null, 0, null, 'application_manage', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('4', '菜单管理', '菜单管理', 'menu_menu_manager', '1', null, null, 3, null, 2, null, null, '.1001.1.4.', null, 0, null, 'menu_manage', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('5', '授权管理', '授权管理', 'menu_auth', '1', null, null, 3, null, 8, null, null, '.1001.1.5.', null, 0, null, 'role_auth', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('50', '设置安全策略', '设置安全策略', 'menu_access_rule', '1', null, null, 3, null, 1, null, null, '.1001.1.50.', null, 0, null, 'access_rule', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('51', '配置业务字典', '配置业务字典', 'menu_dict_manager', '1', null, null, 3, null, 1, null, null, '.1001.1.51.', null, 0, null, 'dict_manager', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('52', '工作组管理', '工作组管理', 'groupconfig', '1', null, null, 3, null, null, null, null, '.1001.2.52.', null, 0, null, 'groupTree', null, 'default', '2');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('6', '角色管理', '角色管理', 'menu_role_manager', '1', null, null, 3, null, 7, null, null, '.1001.1.6.', null, 0, null, 'role_manager', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('7', '用户管理', '用户管理', 'menu_user_manager', '1', null, null, 3, null, 6, null, null, '.1001.1.7.', null, 0, null, 'user_list', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('8', '组织机构管理', '组织机构管理', 'menu_org_manager', '1', null, null, 3, null, 1, null, null, '.1001.2.8.', null, 0, null, 'org_tree', null, 'default', '2');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('9', '工作流程', '工作流程', 'menu_process', '0', null, null, 2, null, 3, null, null, '.1001.9.', null, 4, null, null, null, 'default', '1001');
INSERT INTO cap_dataset (PKID, DATASETID, DATASETNAME, CREATEUSER, CREATETIME, TENANT_ID, MODULEPKID) VALUES ('8a8abee6530bf50d01530bfc68c70002', 'entity1', 'entity1', 'sysadmin', '2016-02-23 10:36:44', 'default', '8a8abee6530bf50d01530bfb443d0001');
INSERT INTO cap_dataset (PKID, DATASETID, DATASETNAME, CREATEUSER, CREATETIME, TENANT_ID, MODULEPKID) VALUES ('8a8ac13b530cc49201530ccc4d930004', 'test1', 'test1', 'sysadmin', '2016-02-23 14:23:49', 'default', '8a8ac13b530cc49201530cca7fa40001');
INSERT INTO cap_flow (PKID, FLOWID, FLOWNAME, CATEGORYID, CREATEUSER, CREATETIME, TENANT_ID, MODULEPKID) VALUES ('8a8abee6530bf50d01530c01a7080007', 'workflow1', 'workflow1', 'default', 'sysadmin', '2016-02-23 10:42:28', 'default', '8a8abee6530bf50d01530bfb443d0001');
INSERT INTO cap_form (PKID, FORMID, FORMNAME, CATEGORYID, CREATEUSER, CREATETIME, TENANT_ID, MODULEPKID) VALUES ('8a8abee6530bf50d01530bfed1f90004', 'form1', 'form1', 'org.gocom.cap.sce.flow.form', 'sysadmin', '2016-02-23 10:39:22', 'default', '8a8abee6530bf50d01530bfb443d0001');
INSERT INTO cap_form (PKID, FORMID, FORMNAME, CATEGORYID, CREATEUSER, CREATETIME, TENANT_ID, MODULEPKID) VALUES ('8a8ac13b530cc49201530cd298a40007', 'test1', 'test1', 'org.gocom.cap.sce.nui.form', 'sysadmin', '2016-02-23 14:30:41', 'default', '8a8ac13b530cc49201530cca7fa40001');
INSERT INTO cap_module (PKID, MODULEID, MODULENAME, APPNAME, CREATEUSER, CREATETIME, TENANT_ID) VALUES ('8a8abee6530bf50d01530bfb443d0001', 'test', 'test', 'default', 'sysadmin', '2016-02-23 10:35:29', 'default');
INSERT INTO cap_module (PKID, MODULEID, MODULENAME, APPNAME, CREATEUSER, CREATETIME, TENANT_ID) VALUES ('8a8ac13b530cc49201530cca7fa40001', 'test1', 'test1', 'default', 'sysadmin', '2016-02-23 14:21:50', 'default');
INSERT INTO cap_partyauth (ROLE_TYPE, PARTY_ID, PARTY_TYPE, ROLE_ID, TENANT_ID, CREATEUSER, CREATETIME) VALUES ('role', 'sysadmin', 'user', '1', 'default', 'sysadmin', '2013-03-16 12:00:37');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'access_rule', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'application_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'application_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'application_manage', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'auth_graph', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'dict_manager', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'employee_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'employee_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'employee_update', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'form_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'funcgroup_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'funcgroup_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'function_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'function_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'function_role_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'groupTree', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'menu_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'menu_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'menu_manage', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'module_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'module_delete', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'module_modify', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'my_process', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'my_task', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_tree', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_update', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'party_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'position_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'position_org_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'position_org_update', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'process_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'process_form_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'process_manager', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'query_agent', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'reset_password', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_manager', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_update', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'set_agent', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'sfy_process_classify', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'sfy_process_define', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'start_process', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'user_add', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'user_list', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'user_update', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'view_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-02-21 15:55:57');
INSERT INTO cap_role (ROLE_ID, TENANT_ID, ROLE_CODE, ROLE_NAME, ROLE_DESC, CREATEUSER, CREATETIME) VALUES ('1', 'default', 'sysadmin', '系统管理员', null, null, null);
INSERT INTO cap_role (ROLE_ID, TENANT_ID, ROLE_CODE, ROLE_NAME, ROLE_DESC, CREATEUSER, CREATETIME) VALUES ('1021', 'default', 'fzr', '负责人', '本单位或什么的负责人', null, null);
INSERT INTO cap_user (OPERATOR_ID, TENANT_ID, USER_ID, PASSWORD, INVALDATE, USER_NAME, AUTHMODE, STATUS, UNLOCKTIME, MENUTYPE, LASTLOGIN, ERRCOUNT, STARTDATE, ENDDATE, VALIDTIME, MACCODE, IPADDRESS, EMAIL, CREATEUSER, CREATETIME) VALUES (1, 'default', 'sysadmin', 'k2xvHUmCHWw=', null, 'sysadmin', 'local', '1', '2013-03-16 11:58:31', 'default', '2013-03-16 11:58:31', null, null, null, null, null, null, null, 'sysadmin', '2013-03-16 11:58:31');
INSERT INTO cap_user (OPERATOR_ID, TENANT_ID, USER_ID, PASSWORD, INVALDATE, USER_NAME, AUTHMODE, STATUS, UNLOCKTIME, MENUTYPE, LASTLOGIN, ERRCOUNT, STARTDATE, ENDDATE, VALIDTIME, MACCODE, IPADDRESS, EMAIL, CREATEUSER, CREATETIME) VALUES (1001, 'default', 'weiguan', 'k2xvHUmCHWw=', null, 'weiguan', 'local', '1', '2016-02-22 10:02:35', 'default', '2016-02-22 10:02:35', null, '2016-02-22', null, null, null, null, null, 'sysadmin', '2016-02-22 10:02:35');
INSERT INTO cap_user (OPERATOR_ID, TENANT_ID, USER_ID, PASSWORD, INVALDATE, USER_NAME, AUTHMODE, STATUS, UNLOCKTIME, MENUTYPE, LASTLOGIN, ERRCOUNT, STARTDATE, ENDDATE, VALIDTIME, MACCODE, IPADDRESS, EMAIL, CREATEUSER, CREATETIME) VALUES (1021, 'default', '123123', 'k2xvHUmCHWw=', null, '123123', 'local', '1', '2016-02-24 11:56:08', 'default', '2016-02-24 11:56:08', null, '2016-02-24', null, null, null, null, null, 'sysadmin', '2016-02-24 11:56:08');
INSERT INTO cap_view (PKID, VIEWID, VIEWNAME, CATEGORYID, CREATEUSER, CREATETIME, TENANT_ID, DATASETID, MODULEPKID, VIEW_TYPE) VALUES ('8a8ac13b530cc49201530cd04b5a0006', 'test1', 'test1', 'org.gocom.cap.sce.view.nui.search', 'sysadmin', '2016-02-23 14:28:10', 'default', 'test1.test1.CapUser', '8a8ac13b530cc49201530cca7fa40001', 'search');
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('appReleaseStatus', '0', '发布中', 1, 1, 1, null, '.0.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('appReleaseStatus', '1', '发布成功', 1, 1, 1, null, '.1.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '101', 'Nanjing', 1, 1, 3, '1', '.CN.1.101.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '102', 'Changzhou', 1, 2, 3, '1', '.CN.1.102.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '103', 'Wuxi', 1, 3, 3, '1', '.CN.1.103.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '201', 'Guangzhou', 1, 1, 3, '2', '.CN.2.201.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '202', 'Shantou', 1, 2, 3, '2', '.CN.2.202.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '203', 'Shenzhen', 1, 3, 3, '2', '.CN.2.203.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '301', 'Xiamen', 1, 1, 3, '3', '.CN.3.301.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '302', 'Fuzhou', 1, 2, 3, '3', '.CN.3.302.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_ENABLE', 'N', '不生效', 1, 2, 1, null, '.N.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_ENABLE', 'Y', '生效', 1, 1, 1, null, '.Y.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_TYPE', 'allow', '允许访问', 1, 2, 1, null, '.allow.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_TYPE', 'prohibit', '禁止访问', 1, 1, 1, null, '.prohibit.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_APPTYPE', '0', '本地', 1, 1, 1, null, '.0.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_APPTYPE', '1', '远程', 1, 2, 1, null, '.1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'ldap', 'LDAP认证', 1, 2, 1, null, '.ldap.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'local', '本地密码认证', 1, 1, 1, null, '.local.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'portal', 'Portal认证', 1, 4, 1, null, '.portal.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'remote', '远程认证', 1, 3, 1, null, '.remote.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'id', '身份证', 1, 1, 1, null, '.id.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'junguan', '军官证', 1, 4, 1, null, '.junguan.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'passport', '护照', 1, 3, 1, null, '.passport.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'student', '学生证', 1, 5, 1, null, '.student.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'zhanzhu', '暂住证', 1, 2, 1, null, '.zhanzhu.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPLEVEL', 'level1', '级别1', 1, 1, 1, null, '.level1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPLEVEL', 'level2', '级别2', 1, 2, 1, null, '.level2.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPLEVEL', 'level3', '级别3', 1, 3, 1, null, '.level3.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'leave', '离职', 1, 4, 1, null, '.leave.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'off', '退休', 1, 3, 1, null, '.off.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'on', '在岗', 1, 1, 1, null, '.on.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'wait', '待岗', 1, 2, 1, null, '.wait.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'flow', '页面流', 1, 1, 1, null, '.flow.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'form', '表单', 1, 3, 1, null, '.form.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'other', '其他', 1, 6, 1, null, '.other.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'page', '页面', 1, 2, 1, null, '.page.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'startprocess', '启动流程', 1, 5, 1, null, '.startprocess.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'view', '视图', 1, 4, 1, null, '.view.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_GENDER', 'f', '女', 1, 2, 1, null, '.f.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_GENDER', 'm', '男', 1, 1, 1, null, '.m.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_GENDER', 'n', '未知', 1, 4, 1, null, '.n.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_LAYOUTSTYLE', '0', '风格1', 1, 1, 1, null, null, null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_LAYOUTSTYLE', '1', '风格2', 1, 2, 1, null, null, null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_OPERSTATUS', 'running', '正常', 1, 1, 1, null, '.running.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_OPERSTATUS', 'stop', '不正常', 1, 2, 1, null, '.stop.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGDEGREE', 'branch', '分行', 1, 2, 1, null, '.branch.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGDEGREE', 'hq', '总行', 1, 1, 1, null, '.hq.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGDEGREE', 'oversea', '海外分行', 1, 3, 1, null, '.oversea.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGSTATUS', 'cancel', '注销', 1, 2, 1, null, '.cancel.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGSTATUS', 'running', '正常', 1, 1, 1, null, '.running.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'b', '分公司', 1, 3, 1, null, '.b.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'bd', '分公司部门', 1, 4, 1, null, '.bd.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'h', '总公司', 1, 1, 1, null, '.h.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'hd', '总公司部门', 1, 2, 1, null, '.hd.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_PARTYVISAGE', 'comsomol', '团员', null, 1, null, null, '.comsomol.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_PARTYVISAGE', 'crowd', '群众', null, 2, null, null, '.crowd.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_PARTYVISAGE', 'partymember', '党员', null, 3, null, null, '.partymember.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'default', '默认布局', 1, 1, 1, null, '.default.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'menubar', 'menubar', 1, 6, 1, null, '.menubar.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'navtree', 'navtree', 1, 5, 1, null, '.navtree.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'outlookmenu', 'outlookmenu', 1, 2, 1, null, '.outlookmenu.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'outlooktree', 'outlooktree', 1, 3, 1, null, '.outlooktree.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'win7', 'win7', 1, 4, 1, null, '.win7.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '0', '挂起', 1, 1, 1, null, '.0.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '1', '正常', 1, 2, 1, null, '.1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '2', '锁定', 1, 3, 1, null, '.2.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '9', '注销', 1, 4, 1, null, '.9.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_YESORNO', '0', '否', 1, 2, 1, null, '.0.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_YESORNO', '1', '是', 1, 1, 1, null, '.1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('country', 'CN', 'China', 1, 1, 1, null, '.CN.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('country', 'FR', 'France', 1, 3, 1, null, '.FR.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('country', 'US', 'United States', 1, 2, 1, null, '.US.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_custGrade', '1', 'Diamond', 1, 1, 1, null, '.1.', 'ABCDE', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_custGrade', '2', 'Platinum', 1, 2, 1, null, '.2.', 'BCDE', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_custGrade', '3', 'Gold', 1, 3, 1, null, '.3.', 'CDE', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_custGrade', '4', 'Silver', 1, 4, 1, null, '.4.', 'DE', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_custGrade', '5', 'General', 1, 5, 1, null, '.5.', 'E', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_match', '1', 'A0123', 1, 1, 1, null, '.1.', 'A0123', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_match', '2', 'A3456', 1, 2, 1, null, '.2.', 'A3456', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_match', '3', 'A7890', 1, 3, 1, null, '.3.', 'A7890', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_match', '4', 'B0123', 1, 4, 1, null, '.4.', 'B0123', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_match', '5', 'B3456', 1, 5, 1, null, '.5.', 'B3456', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('dict_match', '6', 'B7890', 1, 6, 1, null, '.6.', 'B7890', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('EcdDeployStatus', '0', '未部署', 1, 1, 1, null, '.0.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('EcdDeployStatus', '1', '已部署', 1, 1, 1, null, '.1.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('gender', 'F', 'female', 1, 2, 1, null, '.F.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('gender', 'M', 'male', 1, 1, 1, null, '.M.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('gender', 'U', 'unknown', 1, 3, 1, null, '.U.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '1', 'Telcom', 1, 1, 1, null, '.1.', '1', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '10', 'Government', 1, 10, 1, null, '.10.', '10', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '2', 'Banking', 1, 2, 1, null, '.2.', '2', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '3', 'Insurance', 1, 3, 1, null, '.3.', '3', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '4', 'Securities', 1, 4, 1, null, '.4.', '4', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '5', 'Power', 1, 5, 1, null, '.5.', '5', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '6', 'Manufacture', 1, 6, 1, null, '.6.', '6', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '7', 'Education', 1, 7, 1, null, '.7.', '7', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '8', 'Medical', 1, 8, 1, null, '.8.', '8', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('industry', '9', 'Transportation', 1, 9, 1, null, '.9.', '9', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('isEmployee', 'N', 'not employee', 1, 2, 1, null, '.N.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('isEmployee', 'Y', 'employee', 1, 1, 1, null, '.Y.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('province', '1', 'Jiangsu', 1, 1, 2, 'CN', '.CN.1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('province', '2', 'Guangdong', 1, 2, 2, 'CN', '.CN.2.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('province', '3', 'Fujian', 1, 3, 2, 'CN', '.CN.3.', null, null);
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '101', 'Nanjing', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '101', '南京', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '102', 'Changzhou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '102', '常州', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '103', 'Wuxi', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '103', '无锡', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '201', 'Guangzhou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '201', '广州', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '202', 'Shantou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '202', '汕头', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '203', 'Shenzhen', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '203', '深圳', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '301', 'Xiamen', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '301', '厦门', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '302', 'Fuzhou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '302', '福州', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'CN', 'China', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'CN', '中国', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'FR', 'France', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'FR', '法国', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'US', 'United States', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'US', '美国', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '1', 'Diamond', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '1', '钻石级', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '2', 'Platinum', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '2', '白金级', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '3', 'Gold', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '3', '黄金级', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '4', 'Silver', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '4', '白银级', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '5', 'General', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '5', '普通客户', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'F', 'female', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'F', '女', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'M', 'male', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'M', '男', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'U', 'unknown', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'U', '未知', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '1', 'Telcom', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '1', '电信', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '10', 'Government', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '10', '政府', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '2', 'Banking', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '2', '银行', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '3', 'Insurance ', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '3', '保险', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '4', 'Securities', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '4', '证券', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '5', 'Power', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '5', '电力', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '6', 'Manufacture', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '6', '制造', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '7', 'Education', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '7', '教育', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '8', 'Medical', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '8', '医疗', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '9', 'Transportation', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '9', '运输', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'N', 'not employee', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'N', '非雇员', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'Y', 'employee', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'Y', '是雇员', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '1', 'Jiangsu', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '1', '江苏', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '2', 'Guangdong', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '2', '广东', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '3', 'Fujian', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '3', '福建', 'zh_CN');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('appReleaseStatus', '应用发布状态', 1, null, '.appReleaseStatus.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('city', 'City', 3, 'province', '.country.province.city.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COFRAME_RULES_ENABLE', '访问规则是否生效', 1, null, '.COFRAME_RULES_ENABLE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COFRAME_RULES_TYPE', '访问规则类型', 1, null, '.COFRAME_RULES_TYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_APPTYPE', '应用类型', 1, null, '.COF_APPTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_AUTHMODE', '认证模式', 1, null, '.COF_AUTHMODE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_CARDTYPE', '证件类型', 1, null, '.COF_CARDTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_EMPLEVEL', '人员级别', 1, null, '.COF_EMPLEVEL.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_EMPSTATUS', '人员状态', 1, null, '.COF_EMPSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_FUNCTYPE', '功能类型', 1, null, '.COF_FUNCTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_GENDER', '性别', 1, null, '.COF_GENDER.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_LAYOUTSTYLE', '菜单风格', 1, null, '.COF_LAYOUTSTYLE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_OPERSTATUS', '操作员状态', 1, null, '.COF_OPERSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_ORGDEGREE', '机构等级', 1, null, '.COF_ORGDEGREE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_ORGSTATUS', '机构状态', 1, null, '.COF_ORGSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_ORGTYPE', '机构类型', 1, null, '.COF_ORGTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_PARTYVISAGE', '政治面貌', 1, null, '.COF_PARTYTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_SKINLAYOUT', '菜单布局', 1, null, '.COF_SKINLAYOUT.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_USERSTATUS', '用户状态', 1, null, '.COF_USERSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_YESORNO', '开关', 1, null, '.COF_YESORNO.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('country', 'Country', 1, null, '.country.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('dict_custGrade', 'Customer Grade', 1, null, '.dict_custGrade.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('dict_match', 'For Regular Expression', 1, null, '.dict_match.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('EcdDeployStatus', '部署状态', 1, null, '.EcdDeployStatus.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('gender', 'gender', 1, null, '.gender.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('industry', 'industry', 1, null, '.industry.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('isEmployee', 'Is Employee', 1, null, '.isEmployee.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('province', 'Province', 2, 'country', '.country.province.');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('city', 'City', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('city', '城市', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('country', 'Country', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('country', '国家', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_custGrade', 'industry', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_custGrade', '行业', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_match', 'For Regular Expression', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_match', '正则表达式测试用', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('gender', 'gender', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('gender', '性别', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('industry', 'industry', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('industry', '行业', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('isEmployee', 'Is Employee', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('isEmployee', '是否雇员', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('province', 'Province', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('province', '省', 'zh_CN');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('CALENDAR_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('JOB_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('MISFIRE_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('STATE_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('TRIGGER_ACCESS');
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppApplication.appid', 1000);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppFuncgroup.funcgroupid', 1020);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppFunction.funccode', 1000);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppMenu.menuid', 1060);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('CapRole.roleId', 1040);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('CapSsouser.operatorId', 1000);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('CapUser.operatorId', 1040);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgEmployee.empid', 1040);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgGroup.groupid', 20);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgOrganization.orgid', 40);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgPosition.positionid', 20);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('processDefID', 20);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('tempProcessDefID', 20);
INSERT INTO org_empgroup (GROUPID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1001, 'y', 'default', null);
INSERT INTO org_empgroup (GROUPID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1021, 'y', 'default', null);
INSERT INTO org_employee (EMPID, EMPCODE, OPERATORID, USERID, EMPNAME, REALNAME, GENDER, BIRTHDATE, POSITION, EMPSTATUS, CARDTYPE, CARDNO, INDATE, OUTDATE, OTEL, OADDRESS, OZIPCODE, OEMAIL, FAXNO, MOBILENO, QQ, HTEL, HADDRESS, HZIPCODE, PEMAIL, PARTY, DEGREE, SORTNO, MAJOR, SPECIALTY, WORKEXP, REGDATE, CREATETIME, LASTMODYTIME, ORGIDLIST, ORGID, REMARK, TENANT_ID, APP_ID, WEIBO) VALUES (1, 'sysadmin', 1, 'sysadmin', 'sysadmin', 'sysadmin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2013-03-17 12:21:05', '2013-03-17 12:21:05', null, null, null, 'default', null, null);
INSERT INTO org_employee (EMPID, EMPCODE, OPERATORID, USERID, EMPNAME, REALNAME, GENDER, BIRTHDATE, POSITION, EMPSTATUS, CARDTYPE, CARDNO, INDATE, OUTDATE, OTEL, OADDRESS, OZIPCODE, OEMAIL, FAXNO, MOBILENO, QQ, HTEL, HADDRESS, HZIPCODE, PEMAIL, PARTY, DEGREE, SORTNO, MAJOR, SPECIALTY, WORKEXP, REGDATE, CREATETIME, LASTMODYTIME, ORGIDLIST, ORGID, REMARK, TENANT_ID, APP_ID, WEIBO) VALUES (1001, 'weiguan', 1001, 'weiguan', '韦观', null, 'm', null, null, 'on', 'id', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-02-22 00:00:00', '2016-02-22 00:00:00', null, 1, null, 'default', null, null);
INSERT INTO org_employee (EMPID, EMPCODE, OPERATORID, USERID, EMPNAME, REALNAME, GENDER, BIRTHDATE, POSITION, EMPSTATUS, CARDTYPE, CARDNO, INDATE, OUTDATE, OTEL, OADDRESS, OZIPCODE, OEMAIL, FAXNO, MOBILENO, QQ, HTEL, HADDRESS, HZIPCODE, PEMAIL, PARTY, DEGREE, SORTNO, MAJOR, SPECIALTY, WORKEXP, REGDATE, CREATETIME, LASTMODYTIME, ORGIDLIST, ORGID, REMARK, TENANT_ID, APP_ID, WEIBO) VALUES (1021, '123', 1021, '123123', '123', null, 'm', '2016-02-04', null, 'on', 'id', '123', '2016-02-02', '2016-02-11', null, null, null, null, null, '123', null, null, null, null, null, null, null, 123, null, null, null, null, '2016-02-24 00:00:00', '2016-02-24 00:00:00', null, 22, null, 'default', null, null);
INSERT INTO org_emporg (ORGID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1001, 'y', 'default', null);
INSERT INTO org_emporg (ORGID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (22, 1021, 'y', 'default', null);
INSERT INTO org_empposition (POSITIONID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1001, 'y', 'default', null);
INSERT INTO org_group (GROUPID, ORGID, GROUPLEVEL, GROUPNAME, GROUPDESC, GROUPTYPE, GROUPSEQ, STARTDATE, ENDDATE, GROUPSTATUS, MANAGER, CREATETIME, LASTUPDATE, UPDATOR, ISLEAF, SUBCOUNT, TENANT_ID, APP_ID, PARENTGROUPID) VALUES (1, null, 1, 'OA重构工作组', null, 'h', '.1.', null, null, 'running', null, '2016-02-24 14:24:28', '2016-02-24', null, 'y', 0, 'default', null, null);
INSERT INTO org_organization (ORGID, ORGCODE, ORGNAME, ORGLEVEL, ORGDEGREE, ORGSEQ, ORGTYPE, ORGADDR, ZIPCODE, MANAPOSITION, MANAGERID, ORGMANAGER, LINKMAN, LINKTEL, EMAIL, WEBURL, STARTDATE, ENDDATE, STATUS, AREA, CREATETIME, LASTUPDATE, UPDATOR, SORTNO, ISLEAF, SUBCOUNT, REMARK, TENANT_ID, APP_ID, PARENTORGID) VALUES (1, 'SFY', '索菲亚', 1, 'hq', '.1.', 'h', null, null, null, null, null, null, null, null, null, null, null, 'running', null, '2016-02-21 14:18:27', '2016-02-21 14:18:27', null, null, 'y', 0, null, 'default', null, null);
INSERT INTO org_organization (ORGID, ORGCODE, ORGNAME, ORGLEVEL, ORGDEGREE, ORGSEQ, ORGTYPE, ORGADDR, ZIPCODE, MANAPOSITION, MANAGERID, ORGMANAGER, LINKMAN, LINKTEL, EMAIL, WEBURL, STARTDATE, ENDDATE, STATUS, AREA, CREATETIME, LASTUPDATE, UPDATOR, SORTNO, ISLEAF, SUBCOUNT, REMARK, TENANT_ID, APP_ID, PARENTORGID) VALUES (21, 'qqt', '全球通', 1, null, '.21.', 'h', '123', '123', null, null, null, '123', '123', '123123123@qq.com', 'www.baidu.com', '2016-02-24', null, 'running', '123', '2016-02-24 11:53:20', '2016-02-24 11:53:20', null, 123, 'n', 1, '123', 'default', null, null);
INSERT INTO org_organization (ORGID, ORGCODE, ORGNAME, ORGLEVEL, ORGDEGREE, ORGSEQ, ORGTYPE, ORGADDR, ZIPCODE, MANAPOSITION, MANAGERID, ORGMANAGER, LINKMAN, LINKTEL, EMAIL, WEBURL, STARTDATE, ENDDATE, STATUS, AREA, CREATETIME, LASTUPDATE, UPDATOR, SORTNO, ISLEAF, SUBCOUNT, REMARK, TENANT_ID, APP_ID, PARENTORGID) VALUES (22, '123', '财务部', 2, null, '.21.22.', 'h', '123', '123', null, null, null, '123', '123', '123@qq.com', 'www.su.com', null, null, 'running', '123', '2016-02-24 11:55:22', '2016-02-24 11:55:22', null, 123, 'y', 0, '123', 'default', null, 21);
INSERT INTO org_position (POSITIONID, POSICODE, POSINAME, POSILEVEL, POSITIONSEQ, POSITYPE, CREATETIME, LASTUPDATE, UPDATOR, STARTDATE, ENDDATE, STATUS, ISLEAF, SUBCOUNT, TENANT_ID, APP_ID, DUTYID, MANAPOSI, ORGID) VALUES (1, 'boss', '总经理', 1, '.1.', 'organization', '2016-02-21', '2016-02-21', null, null, null, null, 'y', 0, 'default', null, null, null, 1);
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('has_init_data', 'false', 'InitDataFlg');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('is_open_etl', 'false', 'EtlTimerConfig');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('last_etl_time', '2016-01-28 09:42:13', 'EtlTime');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('lock_state', 'U', 'EtlLock');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('open_procedure', 'false', 'open_procedure');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('support_procedure', 'Oracle', 'support_procedure');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('trigger_day', '1', 'EtlTimerConfig');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('trigger_hour', '2', 'EtlTimerConfig');
INSERT INTO wfbiz_calendar_info (CALENDARUUID, CALENDARNAME, PERIOD1BEGIN, PERIOD1END, PERIOD2BEGIN, PERIOD2END, PERIOD3BEGIN, PERIOD3END, PERIOD4BEGIN, PERIOD4END, ISDEFAULT, REMARK, UPTTIME, TENANT_ID) VALUES ('0', '系统初始化日历(5×8小时)', '09:00:00', '12:00:00', '13:00:00', '18:00:00', '', '', '', '', '1', '', null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('0', '全局业务目录', '全局业务目录', '1', '0.', '', 0, null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('0c84de9e174a4be694ae83b0e0284ed9', '业务单元类', '1', '0', '1.0c84de9e174a4be694ae83b0e0284ed9.', null, 1, '2016-02-23 09:44:07', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('1', '领域业务目录', '领域业务目录', '0', '1.', '', 0, null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('2094bd5cef76487dae860871e2f61c68', '石家庄业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.2094bd5cef76487dae860871e2f61c68.', null, 8, '2016-02-23 17:23:55', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('216484765d2848f3a501bc4ce999f59f', '成都业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.216484765d2848f3a501bc4ce999f59f.', null, 1, '2016-02-23 16:49:48', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('42c068232c6c4ca39be0b4004249d3ac', '西安业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.42c068232c6c4ca39be0b4004249d3ac.', null, 5, '2016-02-23 16:55:57', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('4f1c8e0683254248bbbf35fadae762bf', '西宁业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.4f1c8e0683254248bbbf35fadae762bf.', null, 9, '2016-02-23 17:24:08', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('622f3cf696484900b29b67a0159a221d', '沈阳业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.622f3cf696484900b29b67a0159a221d.', null, 11, '2016-02-23 17:24:57', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('ab5c2261775b4e79acc5e3ab7b88912e', '东京业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.ab5c2261775b4e79acc5e3ab7b88912e.', null, 10, '2016-02-23 17:24:21', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('b1fff01e379c49119080016a422c4f10', '广州业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.b1fff01e379c49119080016a422c4f10.', null, 7, '2016-02-23 17:23:33', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('c796caf21a6447659dcf29e6e0798c02', '天津业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.c796caf21a6447659dcf29e6e0798c02.', null, 6, '2016-02-23 17:00:42', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('ddf00b60526f438c93526b04c36299cd', '南京业务', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.ddf00b60526f438c93526b04c36299cd.', null, 4, '2016-02-23 16:52:34', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('test', 'test', '1', '1', '1.test', null, null, '2016-02-24 00:00:00', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('test1', 'test1', '1', '1', '1.test1', null, null, '2016-02-24 00:00:00', null);
INSERT INTO wfprocessdefine (PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, TENANT_ID) VALUES (1, 'workflow1', 'workflow1', '', 3, '1.1.1', '', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.1">
  <processHeader>
    <processBasicInfo>
      <processId>workflow1</processId>
      <processName>workflow1</processName>
      <description/>
      <priority>60</priority>
      <author>sysadmin</author>
      <department/>
    </processBasicInfo>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo>
      <bizEntityName/>
      <relevantKey/>
    </bizEntityInfo>
    <dataFields>
      <dataField>
        <dataType>
          <typeClass>sdo</typeClass>
          <typeValue>test.entity1.CapRole</typeValue>
        </dataType>
        <initialValue/>
        <description>form1</description>
        <isArray>false</isArray>
        <name>entity</name>
      </dataField>
    </dataFields>
    <parameters/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType/>
        <calendarPath/>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>calendar4BPS60</resourceID>
          <resourceName>7*24小时日历</resourceName>
        </calendarInfo>
      </calendarSet>
      <timeLimitInfo>
        <remindType>email</remindType>
        <timeLimitStrategy>limit_strategy_designate</timeLimitStrategy>
        <day>0</day>
        <hour>0</hour>
        <minute>0</minute>
        <relevantData/>
        <isSendMessageForOvertime>false</isSendMessageForOvertime>
      </timeLimitInfo>
      <remindInfo>
        <remindType>email</remindType>
        <remindStrategy>remind_strategy_designate</remindStrategy>
        <day1>0</day1>
        <hour1>0</hour1>
        <minute1>0</minute1>
        <remindRelevantData/>
        <isSendMessageForRemind>false</isSendMessageForRemind>
      </remindInfo>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <calendarInfo>
      <resourceID>calendar4BPS60</resourceID>
      <resourceName>7*24小时日历</resourceName>
      <resourceType>business-calendar</resourceType>
    </calendarInfo>
    <extendNodes>
      <categoryId>default</categoryId>
      <formId>form1</formId>
    </extendNodes>
  </processHeader>
  <activities>
    <activity>
      <activityId>startManualActivity</activityId>
      <activityName>人工开始</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <isStartActivity>true</isStartActivity>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>suspend</transactionType>
            <exceptionStrategy>ignore</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlType>webpage</urlType>
            <manualTask>
              <resourceType/>
              <resourceID/>
              <resourceName/>
            </manualTask>
            <urlInfo>com.primeton.cap.see.flow_form.flow?moduleId=test&amp;formId=form1&amp;state=add</urlInfo>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType/>
            <urlInfo/>
          </resetUrl>
          <resetParticipant>originalParticipant</resetParticipant>
          <participants>
            <participantType>process-starter</participantType>
            <specialPath/>
            <specialActivityID/>
            <organization>
              <isAllowAppointParticipants>false</isAllowAppointParticipants>
            </organization>
            <participantRule>
              <resourceType/>
              <resourceID/>
              <resourceName/>
            </participantRule>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarPath/>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>calendar4BPS60</resourceID>
                <resourceName>7*24小时日历</resourceName>
              </calendarInfo>
            </calendarSet>
            <timeLimitInfo>
              <remindType>email</remindType>
              <timeLimitStrategy>limit_strategy_designate</timeLimitStrategy>
              <day>0</day>
              <hour>0</hour>
              <minute>0</minute>
              <relevantData/>
              <isSendMessageForOvertime>false</isSendMessageForOvertime>
            </timeLimitInfo>
            <remindInfo>
              <remindType>email</remindType>
              <remindStrategy>remind_strategy_designate</remindStrategy>
              <day1>0</day1>
              <hour1>0</hour1>
              <minute1>0</minute1>
              <remindRelevantData/>
              <isSendMessageForRemind>false</isSendMessageForRemind>
            </remindInfo>
          </timeLimit>
          <multiWorkItem>
            <isMulWIValid>false</isMulWIValid>
            <workitemNumStrategy>participant-number</workitemNumStrategy>
            <finishRule>all</finishRule>
            <finishRequiredPercent>0</finishRequiredPercent>
            <finishRquiredNum>0</finishRquiredNum>
            <isAutoCancel>false</isAutoCancel>
            <sequentialExecute>false</sequentialExecute>
          </multiWorkItem>
          <triggerEvents/>
          <rollBack>
            <applicationInfo>
              <actionType>service-component</actionType>
              <application>
                <actionType>service-component</actionType>
                <applicationUri/>
                <transactionType>suspend</transactionType>
                <exceptionStrategy>ignore</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinActivityList</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
        </manualActivity>
      </implementation>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>28</height>
        <width>28</width>
        <x>181</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
      <extendNodes>
        <flowNodefigureId>manualstart</flowNodefigureId>
        <icon>/gocom/cap/sce/extension/flow/nodefigure/manualstart/manualstart_activity.gif</icon>
        <isSpecifyForm>true</isSpecifyForm>
        <formId>form1</formId>
        <formStatus>add</formStatus>
        <isManualStartActivity>true</isManualStartActivity>
        <advancedFormUrl>true</advancedFormUrl>
        <flowFromUrl/>
      </extendNodes>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>结束</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <isStartActivity>false</isStartActivity>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>suspend</transactionType>
            <exceptionStrategy>ignore</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
        </applicationInfo>
      </activateRule>
      <implementation/>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>35</height>
        <width>35</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
      <extendNodes>
        <flowNodefigureId/>
        <icon/>
        <isSpecifyForm>false</isSpecifyForm>
        <formId/>
        <formStatus/>
        <advancedFormUrl>true</advancedFormUrl>
        <flowFromUrl/>
      </extendNodes>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>用户查询</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <isStartActivity>false</isStartActivity>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>ignore</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlType>webpage</urlType>
            <manualTask>
              <resourceType/>
              <resourceID/>
              <resourceName/>
            </manualTask>
            <urlInfo>com.primeton.cap.see.flow_form.flow?moduleId=test&amp;formId=form1&amp;state=add</urlInfo>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType/>
            <urlInfo/>
          </resetUrl>
          <resetParticipant>originalParticipant</resetParticipant>
          <participants>
            <participantType>process-starter</participantType>
            <specialPath/>
            <specialActivityID/>
            <organization>
              <isAllowAppointParticipants>false</isAllowAppointParticipants>
            </organization>
            <participantRule>
              <resourceType>participant-rule</resourceType>
              <resourceID/>
              <resourceName/>
            </participantRule>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarPath/>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>calendar4BPS60</resourceID>
                <resourceName>7*24小时日历</resourceName>
              </calendarInfo>
            </calendarSet>
            <timeLimitInfo>
              <remindType>email</remindType>
              <timeLimitStrategy>limit_strategy_designate</timeLimitStrategy>
              <day>0</day>
              <hour>0</hour>
              <minute>0</minute>
              <relevantData/>
              <isSendMessageForOvertime>false</isSendMessageForOvertime>
            </timeLimitInfo>
            <remindInfo>
              <remindType>email</remindType>
              <remindStrategy>remind_strategy_designate</remindStrategy>
              <day1>0</day1>
              <hour1>0</hour1>
              <minute1>0</minute1>
              <remindRelevantData/>
              <isSendMessageForRemind>false</isSendMessageForRemind>
            </remindInfo>
          </timeLimit>
          <multiWorkItem>
            <isMulWIValid>false</isMulWIValid>
            <workitemNumStrategy>participant-number</workitemNumStrategy>
            <finishRule>all</finishRule>
            <finishRequiredPercent>0</finishRequiredPercent>
            <finishRquiredNum>0</finishRquiredNum>
            <isAutoCancel>false</isAutoCancel>
            <sequentialExecute>false</sequentialExecute>
          </multiWorkItem>
          <triggerEvents/>
          <rollBack>
            <applicationInfo>
              <actionType>service-component</actionType>
              <application>
                <actionType>service-component</actionType>
                <applicationUri/>
                <transactionType>join</transactionType>
                <exceptionStrategy>ignore</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
        </manualActivity>
      </implementation>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>28</height>
        <width>28</width>
        <x>269</x>
        <y>146</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
      <extendNodes>
        <isSpecifyForm>true</isSpecifyForm>
        <formId>form1</formId>
        <formStatus>add</formStatus>
        <advancedFormUrl>true</advancedFormUrl>
        <flowFromUrl>com.primeton.cap.see.flow_form.flow</flowFromUrl>
        <flowNodefigureId>manual</flowNodefigureId>
        <icon>/gocom/cap/sce/extension/flow/nodefigure/manual/manual_activity_big.gif</icon>
      </extendNodes>
    </activity>
  </activities>
  <transitions>
    <transition>
      <from>startManualActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <displayName/>
      <priority>60</priority>
      <type>simpleCondition</type>
      <bendPoints/>
      <extendNodes/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <displayName/>
      <priority>60</priority>
      <type>simpleCondition</type>
      <bendPoints/>
      <extendNodes/>
    </transition>
  </transitions>
  <notes/>
  <resource>
    <rules/>
    <businessVariables/>
  </resource>
</workflowProcess>', '2016-02-23 10:45:16', '2016-02-24 19:20:19', 'sysadmin', 'sysadmin', 'com.primeton.cap', 'com.primeton.cap', 'N', 'Y', null, null, null, null, null, null, 'test', null);
INSERT INTO wfprocessdefinetemp (TEMPPROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, CATALOGUUID, MODIFYSTATE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, TENANT_ID) VALUES (1, 'workflow1', 'workflow1', '', 3, '1.1.1', '', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.1">
  <processHeader>
    <processBasicInfo>
      <processId>workflow1</processId>
      <processName>workflow1</processName>
      <description/>
      <priority>60</priority>
      <author>sysadmin</author>
      <department/>
    </processBasicInfo>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo>
      <bizEntityName/>
      <relevantKey/>
    </bizEntityInfo>
    <dataFields>
      <dataField>
        <dataType>
          <typeClass>sdo</typeClass>
          <typeValue>test.entity1.CapRole</typeValue>
        </dataType>
        <initialValue/>
        <description>form1</description>
        <isArray>false</isArray>
        <name>entity</name>
      </dataField>
    </dataFields>
    <parameters/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType/>
        <calendarPath/>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>calendar4BPS60</resourceID>
          <resourceName>7*24小时日历</resourceName>
        </calendarInfo>
      </calendarSet>
      <timeLimitInfo>
        <remindType>email</remindType>
        <timeLimitStrategy>limit_strategy_designate</timeLimitStrategy>
        <day>0</day>
        <hour>0</hour>
        <minute>0</minute>
        <relevantData/>
        <isSendMessageForOvertime>false</isSendMessageForOvertime>
      </timeLimitInfo>
      <remindInfo>
        <remindType>email</remindType>
        <remindStrategy>remind_strategy_designate</remindStrategy>
        <day1>0</day1>
        <hour1>0</hour1>
        <minute1>0</minute1>
        <remindRelevantData/>
        <isSendMessageForRemind>false</isSendMessageForRemind>
      </remindInfo>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <calendarInfo>
      <resourceID>calendar4BPS60</resourceID>
      <resourceName>7*24小时日历</resourceName>
      <resourceType>business-calendar</resourceType>
    </calendarInfo>
    <extendNodes>
      <categoryId>default</categoryId>
      <formId>form1</formId>
    </extendNodes>
  </processHeader>
  <activities>
    <activity>
      <activityId>startManualActivity</activityId>
      <activityName>人工开始</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <isStartActivity>true</isStartActivity>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>suspend</transactionType>
            <exceptionStrategy>ignore</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlType>webpage</urlType>
            <manualTask>
              <resourceType/>
              <resourceID/>
              <resourceName/>
            </manualTask>
            <urlInfo>com.primeton.cap.see.flow_form.flow?moduleId=test&amp;formId=form1&amp;state=add</urlInfo>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType/>
            <urlInfo/>
          </resetUrl>
          <resetParticipant>originalParticipant</resetParticipant>
          <participants>
            <participantType>process-starter</participantType>
            <specialPath/>
            <specialActivityID/>
            <organization>
              <isAllowAppointParticipants>false</isAllowAppointParticipants>
            </organization>
            <participantRule>
              <resourceType/>
              <resourceID/>
              <resourceName/>
            </participantRule>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarPath/>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>calendar4BPS60</resourceID>
                <resourceName>7*24小时日历</resourceName>
              </calendarInfo>
            </calendarSet>
            <timeLimitInfo>
              <remindType>email</remindType>
              <timeLimitStrategy>limit_strategy_designate</timeLimitStrategy>
              <day>0</day>
              <hour>0</hour>
              <minute>0</minute>
              <relevantData/>
              <isSendMessageForOvertime>false</isSendMessageForOvertime>
            </timeLimitInfo>
            <remindInfo>
              <remindType>email</remindType>
              <remindStrategy>remind_strategy_designate</remindStrategy>
              <day1>0</day1>
              <hour1>0</hour1>
              <minute1>0</minute1>
              <remindRelevantData/>
              <isSendMessageForRemind>false</isSendMessageForRemind>
            </remindInfo>
          </timeLimit>
          <multiWorkItem>
            <isMulWIValid>false</isMulWIValid>
            <workitemNumStrategy>participant-number</workitemNumStrategy>
            <finishRule>all</finishRule>
            <finishRequiredPercent>0</finishRequiredPercent>
            <finishRquiredNum>0</finishRquiredNum>
            <isAutoCancel>false</isAutoCancel>
            <sequentialExecute>false</sequentialExecute>
          </multiWorkItem>
          <triggerEvents/>
          <rollBack>
            <applicationInfo>
              <actionType>service-component</actionType>
              <application>
                <actionType>service-component</actionType>
                <applicationUri/>
                <transactionType>suspend</transactionType>
                <exceptionStrategy>ignore</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinActivityList</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
        </manualActivity>
      </implementation>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>28</height>
        <width>28</width>
        <x>181</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
      <extendNodes>
        <flowNodefigureId>manualstart</flowNodefigureId>
        <icon>/gocom/cap/sce/extension/flow/nodefigure/manualstart/manualstart_activity.gif</icon>
        <isSpecifyForm>true</isSpecifyForm>
        <formId>form1</formId>
        <formStatus>add</formStatus>
        <isManualStartActivity>true</isManualStartActivity>
        <advancedFormUrl>true</advancedFormUrl>
        <flowFromUrl/>
      </extendNodes>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>结束</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <isStartActivity>false</isStartActivity>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>suspend</transactionType>
            <exceptionStrategy>ignore</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
        </applicationInfo>
      </activateRule>
      <implementation/>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>35</height>
        <width>35</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
      <extendNodes>
        <flowNodefigureId/>
        <icon/>
        <isSpecifyForm>false</isSpecifyForm>
        <formId/>
        <formStatus/>
        <advancedFormUrl>true</advancedFormUrl>
        <flowFromUrl/>
      </extendNodes>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>用户查询</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <isStartActivity>false</isStartActivity>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>ignore</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlType>webpage</urlType>
            <manualTask>
              <resourceType/>
              <resourceID/>
              <resourceName/>
            </manualTask>
            <urlInfo>com.primeton.cap.see.flow_form.flow?moduleId=test&amp;formId=form1&amp;state=add</urlInfo>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType/>
            <urlInfo/>
          </resetUrl>
          <resetParticipant>originalParticipant</resetParticipant>
          <participants>
            <participantType>process-starter</participantType>
            <specialPath/>
            <specialActivityID/>
            <organization>
              <isAllowAppointParticipants>false</isAllowAppointParticipants>
            </organization>
            <participantRule>
              <resourceType>participant-rule</resourceType>
              <resourceID/>
              <resourceName/>
            </participantRule>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarPath/>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>calendar4BPS60</resourceID>
                <resourceName>7*24小时日历</resourceName>
              </calendarInfo>
            </calendarSet>
            <timeLimitInfo>
              <remindType>email</remindType>
              <timeLimitStrategy>limit_strategy_designate</timeLimitStrategy>
              <day>0</day>
              <hour>0</hour>
              <minute>0</minute>
              <relevantData/>
              <isSendMessageForOvertime>false</isSendMessageForOvertime>
            </timeLimitInfo>
            <remindInfo>
              <remindType>email</remindType>
              <remindStrategy>remind_strategy_designate</remindStrategy>
              <day1>0</day1>
              <hour1>0</hour1>
              <minute1>0</minute1>
              <remindRelevantData/>
              <isSendMessageForRemind>false</isSendMessageForRemind>
            </remindInfo>
          </timeLimit>
          <multiWorkItem>
            <isMulWIValid>false</isMulWIValid>
            <workitemNumStrategy>participant-number</workitemNumStrategy>
            <finishRule>all</finishRule>
            <finishRequiredPercent>0</finishRequiredPercent>
            <finishRquiredNum>0</finishRquiredNum>
            <isAutoCancel>false</isAutoCancel>
            <sequentialExecute>false</sequentialExecute>
          </multiWorkItem>
          <triggerEvents/>
          <rollBack>
            <applicationInfo>
              <actionType>service-component</actionType>
              <application>
                <actionType>service-component</actionType>
                <applicationUri/>
                <transactionType>join</transactionType>
                <exceptionStrategy>ignore</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
        </manualActivity>
      </implementation>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>28</height>
        <width>28</width>
        <x>269</x>
        <y>146</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
      <extendNodes>
        <isSpecifyForm>true</isSpecifyForm>
        <formId>form1</formId>
        <formStatus>add</formStatus>
        <advancedFormUrl>true</advancedFormUrl>
        <flowFromUrl>com.primeton.cap.see.flow_form.flow</flowFromUrl>
        <flowNodefigureId>manual</flowNodefigureId>
        <icon>/gocom/cap/sce/extension/flow/nodefigure/manual/manual_activity_big.gif</icon>
      </extendNodes>
    </activity>
  </activities>
  <transitions>
    <transition>
      <from>startManualActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <displayName/>
      <priority>60</priority>
      <type>simpleCondition</type>
      <bendPoints/>
      <extendNodes/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <displayName/>
      <priority>60</priority>
      <type>simpleCondition</type>
      <bendPoints/>
      <extendNodes/>
    </transition>
  </transitions>
  <notes/>
  <resource>
    <rules/>
    <businessVariables/>
  </resource>
</workflowProcess>', '2016-02-23 10:45:16', '2016-02-24 19:20:19', 'sysadmin', 'sysadmin', 'com.primeton.cap', 'com.primeton.cap', 'N', 'test', '0', null, null, null, null, null, null, null, null);
INSERT INTO wfserverinfo (SERVERNAME, GROUPID, STATUS, STARTTIME, ASSISTANT, ASSISTEDTIME, HEARTBEATTIME, HEARTBEATINTERVAL, HEARTBEATDELAY, PROPERTIES, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5) VALUES ('127.0.0.1:6200', 'BPS', 'started', '20160224192016', null, null, 0, 30000, 0, '{http_port=8080, app_name=default, local_host=127.0.0.1}', null, null, null, null, null);
INSERT INTO wfsysteminfo (CONFIGKEY, CONFIGVALUE, CONFIGDESC, CONFIGTYPE) VALUES ('DATABASE_VERSION', 'V4.7', 'DB VERSION', '');
