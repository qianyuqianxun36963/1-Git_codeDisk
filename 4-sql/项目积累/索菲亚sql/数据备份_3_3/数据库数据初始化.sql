INSERT INTO app_application (APPID, APPCODE, APPNAME, APPTYPE, ISOPEN, OPENDATE, URL, APPDESC, MAINTENANCE, MANAROLE, DEMO, INIWP, INTASKCENTER, IPADDR, IPPORT, APP_ID, TENANT_ID, PROTOCOL_TYPE) VALUES (1, 'coframe', 'Ӧ�û������', '0', '1', null, null, null, null, null, null, null, null, null, null, null, 'default', 'http');
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (1, 'Ӧ�ù��ܹ���', 1, '.1.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (2, '�˵�����', 1, '.2.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (3, '��Ȩ����', 1, '.3.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (4, '��������', 1, '.4.', 'n', 1, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (5, '�û�����', 1, '.5.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (6, '��֯��������', 1, '.6.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (7, '��������', 1, '.7.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (8, 'ģ�����Ȩ�޹���', 1, '.8.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (1002, '���̹���', 1, '.1002.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (1021, '�칫����', 1, '.1021.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_funcgroup (FUNCGROUPID, FUNCGROUPNAME, GROUPLEVEL, FUNCGROUPSEQ, ISLEAF, SUBCOUNT, APP_ID, TENANT_ID, PARENTGROUP, APPID) VALUES (1041, 'ϵͳ����', 1, '.1041.', 'n', 0, null, 'default', null, 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('access_rule', '���ð�ȫ����', null, '/policy/access_rules_list.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('application_add', '���Ӧ��', null, '/coframe/framework/application/application_add.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('application_edit', '�޸�Ӧ��', null, '/coframe/framework/application/application_edit.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('application_manage', '����Ӧ�ù�����', null, '/coframe/framework/application/application_manage.jsp', null, '1', 'page', '1', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('auth_graph', 'Ȩ�޼���', null, '/coframe/auth/authgraph/auth_graph.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('config_center', '��������', null, '/system/config_manage.jsp', null, '1', 'page', '1', null, 'default', 1041);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('dict_manager', '����ҵ���ֵ�', null, '/coframe/dict/dict_manager.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('employee_add', '���Ա��', null, '/coframe/org/employee/employee_add.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('employee_auth', '��Ա��Ȩ', null, '/coframe/org/employee/employee_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('employee_update', '�޸�Ա��', null, '/coframe/org/employee/employee_update.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('form_auth', '����Ȩ', null, '/coframe/resource/form/form_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('funcgroup_add', '��ӹ�����', null, '/coframe/framework/functiongroup/funcgroup_add.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('funcgroup_edit', '�޸Ĺ�����', null, '/coframe/framework/functiongroup/funcgroup_edit.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('function_add', '��ӹ���', null, '/coframe/framework/function/function_add.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('function_edit', '�޸Ĺ���', null, '/coframe/framework/function/function_edit.jsp', null, '1', 'page', '0', null, 'default', 1);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('function_role_auth', '������Ȩ', null, '/coframe/framework/function/function_role_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('groupTree', '���������', null, '/coframe/org/group/group_tree.jsp', null, '1', 'page', '1', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('menu_add', '��Ӳ˵�', null, '/coframe/framework/menu/menu_add.jsp', null, '1', 'page', '0', null, 'default', 2);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('menu_edit', '�޸Ĳ˵�', null, '/coframe/framework/menu/menu_edit.jsp', null, '1', 'page', '0', null, 'default', 2);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('menu_manage', '����˵���', null, '/coframe/framework/menu/menu_manage.jsp', null, '1', 'page', '1', null, 'default', 2);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('module_add', '����ģ��', null, null, null, '1', 'page', '1', null, 'default', 8);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('module_delete', 'ɾ��ģ��', null, null, null, '1', 'page', '1', null, 'default', 8);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('module_modify', '�޸�ģ��', null, null, null, '1', 'page', '1', null, 'default', 8);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('my_process', '�ҵ�����', null, '/bps/wfclient/common/myprocesses.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('my_task', '�ҵ�����', null, '/bps/wfclient/common/mytasks.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_add', '��ӻ���', null, '/coframe/org/organization/org_add.jsp', null, '1', 'page', '1', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_auth', '������Ȩ', null, '/coframe/org/organization/org_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_tree', '���������', null, '/coframe/org/organization/org_tree.jsp', null, '1', 'page', '1', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('org_update', '�޸Ļ���', null, '/coframe/org/organization/org_update.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('party_auth', 'Ȩ������', null, '/coframe/auth/partyauth/auth.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('position_auth', '��λ��Ȩ', null, '/coframe/org/position/position_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('position_org_add', '��Ӹ�λ', null, '/coframe/org/position/position_org_add.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('position_org_update', '�޸ĸ�λ', null, '/coframe/org/position/position_org_update.jsp', null, '1', 'page', '0', null, 'default', 6);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('process_auth', '�����б�', null, '/coframe/flowconfig/process_auth.jsp', null, '1', 'page', '0', null, 'default', 4);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('process_form_auth', '�������̹���', null, '/coframe/flowconfig/process_form_auth.jsp', null, '1', 'page', '0', null, 'default', 4);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('process_manager', '�鿴�����б�', null, '/coframe/flowconfig/process_manager.jsp', null, '1', 'page', '1', null, 'default', 4);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('query_agent', '�鿴����', null, '/bps/wfclient/agent/myAgent.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('reset_password', '��������', null, '/coframe/rights/user/reset_password.jsp', null, '1', 'page', '0', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_add', '��ӽ�ɫ', null, '/coframe/rights/role/role_add.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_auth', '��Ȩ����', null, '/coframe/auth/role_auth.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_manager', '��ɫ����', null, '/coframe/rights/role/role_manager.jsp', null, '1', 'page', '1', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('role_update', '�޸Ľ�ɫ', null, '/coframe/rights/role/role_update.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('set_agent', '��������', null, '/bps/wfclient/agent/agentList.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('sfy_backlog', '�ҵĴ���', null, '/backlog/backlog.jsp', null, '1', 'page', '1', null, 'default', 1021);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('sfy_mine_application', '�ҵ�����', null, '/mineApplication/mineApplication.jsp', null, '1', 'page', '1', null, 'default', 1021);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('sfy_process_classify', '���̷���', null, '/processmanage/catalog/catalog_manager.jsp', null, '1', 'page', '0', null, 'default', 1002);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('sfy_process_define', '���̶���', null, '/processmanage/catalog/catalog_manager.jsp', null, '1', 'page', '0', null, 'default', 1002);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('start_process', '��������', null, '/bps/wfclient/process/processManager.jsp', null, '1', 'page', '1', null, 'default', 7);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('user_add', '����û�', null, '/coframe/rights/user/user_add.jsp', null, '1', 'page', '0', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('user_list', '�鿴�û��б�', null, '/coframe/rights/user/user_list.jsp', null, '1', 'page', '1', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('user_update', '�޸��û�', null, '/coframe/rights/user/user_update.jsp', null, '1', 'page', '0', null, 'default', 5);
INSERT INTO app_function (FUNCCODE, FUNCNAME, FUNCDESC, FUNCACTION, PARAINFO, ISCHECK, FUNCTYPE, ISMENU, APP_ID, TENANT_ID, FUNCGROUPID) VALUES ('view_auth', '��ͼ��Ȩ', null, '/coframe/resource/view/view_auth.jsp', null, '1', 'page', '0', null, 'default', 3);
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1', 'Ȩ�޹���', 'Ȩ�޹���', 'menu_auth', '0', null, null, 2, null, 1, null, null, '.1001.1.', null, 5, null, null, null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('10', '��������', '��������', 'menu_process_config', '1', null, null, 3, null, 4, null, null, '.1001.1.10.', null, 0, null, 'process_manager', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1001', 'ϵͳ����', 'ϵͳ����', 'm_xtpz', '0', null, null, 1, null, 1, '/default/upload/menu/8a8ac0ff5307c172015307c65dc6008b.png', null, '.1001.', null, 23, null, null, null, 'default', null);
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1042', '���̹���', '���̹���', 'sfy_process_config', '0', null, null, 2, null, 4, null, null, '.1001.1042.', null, 2, null, 'process_manager', null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1043', '���̷���', '���̷���', 'sfy_process_classify', '1', null, null, 3, null, 1, null, null, '.1001.1042.1043.', null, 0, null, 'sfy_process_classify', null, 'default', '1042');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1044', '���̶���', '���̶���', 'sfy_process_define', '1', null, null, 3, null, 2, null, null, '.1001.1042.1044.', null, 0, null, 'sfy_process_define', null, 'default', '1042');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1061', '�칫����', '�칫����', 'sfy_office_center', '0', null, null, 2, null, 5, null, null, '.1001.1061.', null, 2, null, null, null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1062', '�ҵ�����', '�ҵ�����', 'sfy_mine_application', '1', null, null, 3, null, 1, null, null, '.1001.1061.1062.', null, 0, null, 'sfy_mine_application', null, 'default', '1061');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1081', '�ҵĴ���', '�ҵĴ���', 'sfy_backlog', '1', null, null, 3, null, 2, null, null, '.1001.1061.1081.', null, 0, null, 'sfy_backlog', null, 'default', '1061');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('11', '�ҵ�����', '�ҵ�����', 'menu_my_task', '1', null, null, 2, null, 1, null, null, '.1001.9.11.', null, 0, null, 'my_task', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1101', 'ϵͳ����', 'ϵͳ����', 'system_manage', '0', null, null, 2, null, 1, null, null, '.1001.1101.', null, 1, null, null, null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('1102', '��������', '��������', 'config_center', '1', null, null, 3, null, 1, null, null, '.1001.1101.1102.', null, 0, null, 'config_center', null, 'default', '1101');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('12', '�ҵ�����', '�ҵ�����', 'menu_my_process', '1', null, null, 2, null, 2, null, null, '.1001.9.12.', null, 0, null, 'my_process', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('13', '��������', '��������', 'menu_start_process', '1', null, null, 2, null, 3, null, null, '.1001.9.13.', null, 0, null, 'start_process', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('14', '��������', '��������', 'menu_set_agent', '1', null, null, 2, null, 4, null, null, '.1001.9.14.', null, 0, null, 'set_agent', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('15', '�鿴����', '�鿴����', 'menu_query_agent', '1', null, null, 2, null, 5, null, null, '.1001.9.15.', null, 0, null, 'query_agent', null, 'default', '9');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('2', '��֯����', '��֯����', 'menu_org', '0', null, null, 2, null, 2, null, null, '.1001.2.', null, 1, null, null, null, 'default', '1001');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('3', 'Ӧ�ù��ܹ���', 'Ӧ�ù��ܹ���', 'menu_app_function', '1', null, null, 3, null, 1, null, null, '.1001.1.3.', null, 0, null, 'application_manage', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('4', '�˵�����', '�˵�����', 'menu_menu_manager', '1', null, null, 3, null, 2, null, null, '.1001.1.4.', null, 0, null, 'menu_manage', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('5', '��Ȩ����', '��Ȩ����', 'menu_auth', '1', null, null, 3, null, 8, null, null, '.1001.1.5.', null, 0, null, 'role_auth', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('50', '���ð�ȫ����', '���ð�ȫ����', 'menu_access_rule', '1', null, null, 3, null, 1, null, null, '.1001.1.50.', null, 0, null, 'access_rule', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('51', '����ҵ���ֵ�', '����ҵ���ֵ�', 'menu_dict_manager', '1', null, null, 3, null, 1, null, null, '.1001.1.51.', null, 0, null, 'dict_manager', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('52', '���������', '���������', 'groupconfig', '1', null, null, 3, null, null, null, null, '.1001.2.52.', null, 0, null, 'groupTree', null, 'default', '2');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('6', '��ɫ����', '��ɫ����', 'menu_role_manager', '1', null, null, 3, null, 7, null, null, '.1001.1.6.', null, 0, null, 'role_manager', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('7', '�û�����', '�û�����', 'menu_user_manager', '1', null, null, 3, null, 6, null, null, '.1001.1.7.', null, 0, null, 'user_list', null, 'default', '1');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('8', '��֯��������', '��֯��������', 'menu_org_manager', '1', null, null, 3, null, 1, null, null, '.1001.2.8.', null, 0, null, 'org_tree', null, 'default', '2');
INSERT INTO app_menu (MENUID, MENUNAME, MENULABEL, MENUCODE, ISLEAF, PARAMETER, UIENTRY, MENULEVEL, ROOTID, DISPLAYORDER, IMAGEPATH, EXPANDPATH, MENUSEQ, OPENMODE, SUBCOUNT, APPID, FUNCCODE, APP_ID, TENANT_ID, PARENTSID) VALUES ('9', '��������', '��������', 'menu_process', '0', null, null, 2, null, 3, null, null, '.1001.9.', null, 4, null, null, null, 'default', '1001');
INSERT INTO cap_module (PKID, MODULEID, MODULENAME, APPNAME, CREATEUSER, CREATETIME, TENANT_ID) VALUES ('8a8abee6530bf50d01530bfb443d0001', 'test', 'test', 'default', 'sysadmin', '2016-02-23 10:35:29', 'default');
INSERT INTO cap_module (PKID, MODULEID, MODULENAME, APPNAME, CREATEUSER, CREATETIME, TENANT_ID) VALUES ('8a8ac13b530cc49201530cca7fa40001', 'test1', 'test1', 'default', 'sysadmin', '2016-02-23 14:21:50', 'default');
INSERT INTO cap_partyauth (ROLE_TYPE, PARTY_ID, PARTY_TYPE, ROLE_ID, TENANT_ID, CREATEUSER, CREATETIME) VALUES ('role', 'sysadmin', 'user', '1', 'default', 'sysadmin', '2013-03-16 12:00:37');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'access_rule', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'application_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'application_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'application_manage', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'auth_graph', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'config_center', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'dict_manager', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'employee_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'employee_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'employee_update', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'form_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'funcgroup_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'funcgroup_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'function_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'function_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'function_role_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'groupTree', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'menu_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'menu_edit', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'menu_manage', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'module_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'module_delete', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'module_modify', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'my_process', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'my_task', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_tree', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'org_update', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'party_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'position_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'position_org_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'position_org_update', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'process_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'process_form_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'process_manager', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'query_agent', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'reset_password', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_manager', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'role_update', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'set_agent', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'sfy_backlog', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'sfy_mine_application', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'sfy_process_classify', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'sfy_process_define', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'start_process', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'user_add', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'user_list', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'user_update', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_resauth (PARTY_ID, PARTY_TYPE, RES_ID, RES_TYPE, TENANT_ID, RES_STATE, PARTY_SCOPE, CREATEUSER, CREATETIME) VALUES ('1', 'role', 'view_auth', 'function', 'default', '1', '0', 'sysadmin', '2016-03-02 10:12:40');
INSERT INTO cap_role (ROLE_ID, TENANT_ID, ROLE_CODE, ROLE_NAME, ROLE_DESC, CREATEUSER, CREATETIME) VALUES ('1', 'default', 'sysadmin', 'ϵͳ����Ա', null, null, null);
INSERT INTO cap_role (ROLE_ID, TENANT_ID, ROLE_CODE, ROLE_NAME, ROLE_DESC, CREATEUSER, CREATETIME) VALUES ('1021', 'default', 'fzr', '������', '����λ��ʲô�ĸ�����', null, null);
INSERT INTO cap_user (OPERATOR_ID, TENANT_ID, USER_ID, PASSWORD, INVALDATE, USER_NAME, AUTHMODE, STATUS, UNLOCKTIME, MENUTYPE, LASTLOGIN, ERRCOUNT, STARTDATE, ENDDATE, VALIDTIME, MACCODE, IPADDRESS, EMAIL, CREATEUSER, CREATETIME) VALUES (1, 'default', 'sysadmin', 'k2xvHUmCHWw=', null, 'sysadmin', 'local', '1', '2013-03-16 11:58:31', 'default', '2013-03-16 11:58:31', null, null, null, null, null, null, null, 'sysadmin', '2013-03-16 11:58:31');
INSERT INTO cap_user (OPERATOR_ID, TENANT_ID, USER_ID, PASSWORD, INVALDATE, USER_NAME, AUTHMODE, STATUS, UNLOCKTIME, MENUTYPE, LASTLOGIN, ERRCOUNT, STARTDATE, ENDDATE, VALIDTIME, MACCODE, IPADDRESS, EMAIL, CREATEUSER, CREATETIME) VALUES (1001, 'default', 'weiguan', 'k2xvHUmCHWw=', null, 'weiguan', 'local', '1', '2016-02-22 10:02:35', 'default', '2016-02-22 10:02:35', null, '2016-02-22', null, null, null, null, null, 'sysadmin', '2016-02-22 10:02:35');
INSERT INTO cap_user (OPERATOR_ID, TENANT_ID, USER_ID, PASSWORD, INVALDATE, USER_NAME, AUTHMODE, STATUS, UNLOCKTIME, MENUTYPE, LASTLOGIN, ERRCOUNT, STARTDATE, ENDDATE, VALIDTIME, MACCODE, IPADDRESS, EMAIL, CREATEUSER, CREATETIME) VALUES (1021, 'default', '123123', 'k2xvHUmCHWw=', null, '123123', 'local', '1', '2016-02-24 11:56:08', 'default', '2016-02-24 11:56:08', null, '2016-02-24', null, null, null, null, null, 'sysadmin', '2016-02-24 11:56:08');
INSERT INTO cap_view (PKID, VIEWID, VIEWNAME, CATEGORYID, CREATEUSER, CREATETIME, TENANT_ID, DATASETID, MODULEPKID, VIEW_TYPE) VALUES ('8a8ac13b530cc49201530cd04b5a0006', 'test1', 'test1', 'org.gocom.cap.sce.view.nui.search', 'sysadmin', '2016-02-23 14:28:10', 'default', 'test1.test1.CapUser', '8a8ac13b530cc49201530cca7fa40001', 'search');
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('appReleaseStatus', '0', '������', 1, 1, 1, null, '.0.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('appReleaseStatus', '1', '�����ɹ�', 1, 1, 1, null, '.1.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '101', 'Nanjing', 1, 1, 3, '1', '.CN.1.101.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '102', 'Changzhou', 1, 2, 3, '1', '.CN.1.102.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '103', 'Wuxi', 1, 3, 3, '1', '.CN.1.103.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '201', 'Guangzhou', 1, 1, 3, '2', '.CN.2.201.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '202', 'Shantou', 1, 2, 3, '2', '.CN.2.202.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '203', 'Shenzhen', 1, 3, 3, '2', '.CN.2.203.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '301', 'Xiamen', 1, 1, 3, '3', '.CN.3.301.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('city', '302', 'Fuzhou', 1, 2, 3, '3', '.CN.3.302.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_ENABLE', 'N', '����Ч', 1, 2, 1, null, '.N.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_ENABLE', 'Y', '��Ч', 1, 1, 1, null, '.Y.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_TYPE', 'allow', '�������', 1, 2, 1, null, '.allow.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COFRAME_RULES_TYPE', 'prohibit', '��ֹ����', 1, 1, 1, null, '.prohibit.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_APPTYPE', '0', '����', 1, 1, 1, null, '.0.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_APPTYPE', '1', 'Զ��', 1, 2, 1, null, '.1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'ldap', 'LDAP��֤', 1, 2, 1, null, '.ldap.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'local', '����������֤', 1, 1, 1, null, '.local.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'portal', 'Portal��֤', 1, 4, 1, null, '.portal.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_AUTHMODE', 'remote', 'Զ����֤', 1, 3, 1, null, '.remote.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'id', '���֤', 1, 1, 1, null, '.id.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'junguan', '����֤', 1, 4, 1, null, '.junguan.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'passport', '����', 1, 3, 1, null, '.passport.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'student', 'ѧ��֤', 1, 5, 1, null, '.student.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_CARDTYPE', 'zhanzhu', '��ס֤', 1, 2, 1, null, '.zhanzhu.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPLEVEL', 'level1', '����1', 1, 1, 1, null, '.level1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPLEVEL', 'level2', '����2', 1, 2, 1, null, '.level2.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPLEVEL', 'level3', '����3', 1, 3, 1, null, '.level3.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'leave', '��ְ', 1, 4, 1, null, '.leave.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'off', '����', 1, 3, 1, null, '.off.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'on', '�ڸ�', 1, 1, 1, null, '.on.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_EMPSTATUS', 'wait', '����', 1, 2, 1, null, '.wait.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'flow', 'ҳ����', 1, 1, 1, null, '.flow.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'form', '��', 1, 3, 1, null, '.form.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'other', '����', 1, 6, 1, null, '.other.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'page', 'ҳ��', 1, 2, 1, null, '.page.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'startprocess', '��������', 1, 5, 1, null, '.startprocess.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_FUNCTYPE', 'view', '��ͼ', 1, 4, 1, null, '.view.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_GENDER', 'f', 'Ů', 1, 2, 1, null, '.f.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_GENDER', 'm', '��', 1, 1, 1, null, '.m.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_GENDER', 'n', 'δ֪', 1, 4, 1, null, '.n.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_LAYOUTSTYLE', '0', '���1', 1, 1, 1, null, null, null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_LAYOUTSTYLE', '1', '���2', 1, 2, 1, null, null, null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_OPERSTATUS', 'running', '����', 1, 1, 1, null, '.running.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_OPERSTATUS', 'stop', '������', 1, 2, 1, null, '.stop.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGDEGREE', 'branch', '����', 1, 2, 1, null, '.branch.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGDEGREE', 'hq', '����', 1, 1, 1, null, '.hq.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGDEGREE', 'oversea', '�������', 1, 3, 1, null, '.oversea.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGSTATUS', 'cancel', 'ע��', 1, 2, 1, null, '.cancel.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGSTATUS', 'running', '����', 1, 1, 1, null, '.running.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'b', '�ֹ�˾', 1, 3, 1, null, '.b.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'bd', '�ֹ�˾����', 1, 4, 1, null, '.bd.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'h', '�ܹ�˾', 1, 1, 1, null, '.h.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_ORGTYPE', 'hd', '�ܹ�˾����', 1, 2, 1, null, '.hd.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_PARTYVISAGE', 'comsomol', '��Ա', null, 1, null, null, '.comsomol.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_PARTYVISAGE', 'crowd', 'Ⱥ��', null, 2, null, null, '.crowd.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_PARTYVISAGE', 'partymember', '��Ա', null, 3, null, null, '.partymember.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'default', 'Ĭ�ϲ���', 1, 1, 1, null, '.default.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'menubar', 'menubar', 1, 6, 1, null, '.menubar.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'navtree', 'navtree', 1, 5, 1, null, '.navtree.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'outlookmenu', 'outlookmenu', 1, 2, 1, null, '.outlookmenu.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'outlooktree', 'outlooktree', 1, 3, 1, null, '.outlooktree.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_SKINLAYOUT', 'win7', 'win7', 1, 4, 1, null, '.win7.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '0', '����', 1, 1, 1, null, '.0.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '1', '����', 1, 2, 1, null, '.1.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '2', '����', 1, 3, 1, null, '.2.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_USERSTATUS', '9', 'ע��', 1, 4, 1, null, '.9.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_YESORNO', '0', '��', 1, 2, 1, null, '.0.', null, null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('COF_YESORNO', '1', '��', 1, 1, 1, null, '.1.', null, null);
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
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('EcdDeployStatus', '0', 'δ����', 1, 1, 1, null, '.0.', 'cap', null);
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('EcdDeployStatus', '1', '�Ѳ���', 1, 1, 1, null, '.1.', 'cap', null);
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
INSERT INTO eos_dict_entry (DICTTYPEID, DICTID, DICTNAME, STATUS, SORTNO, RANK, PARENTID, SEQNO, FILTER1, FILTER2) VALUES ('SFY_SYSTEM_TYPE', 'oa', 'Эͬϵͳ', 1, 1, 1, null, '.oa.', null, null);
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '101', 'Nanjing', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '101', '�Ͼ�', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '102', 'Changzhou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '102', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '103', 'Wuxi', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '103', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '201', 'Guangzhou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '201', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '202', 'Shantou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '202', '��ͷ', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '203', 'Shenzhen', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '203', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '301', 'Xiamen', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '301', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '302', 'Fuzhou', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('city', '302', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'CN', 'China', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'CN', '�й�', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'FR', 'France', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'FR', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'US', 'United States', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('country', 'US', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '1', 'Diamond', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '1', '��ʯ��', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '2', 'Platinum', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '2', '�׽�', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '3', 'Gold', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '3', '�ƽ�', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '4', 'Silver', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '4', '������', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '5', 'General', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('dict_custGrade', '5', '��ͨ�ͻ�', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'F', 'female', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'F', 'Ů', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'M', 'male', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'M', '��', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'U', 'unknown', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('gender', 'U', 'δ֪', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '1', 'Telcom', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '1', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '10', 'Government', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '10', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '2', 'Banking', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '2', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '3', 'Insurance ', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '3', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '4', 'Securities', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '4', '֤ȯ', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '5', 'Power', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '5', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '6', 'Manufacture', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '6', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '7', 'Education', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '7', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '8', 'Medical', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '8', 'ҽ��', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '9', 'Transportation', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('industry', '9', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'N', 'not employee', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'N', '�ǹ�Ա', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'Y', 'employee', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('isEmployee', 'Y', '�ǹ�Ա', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '1', 'Jiangsu', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '1', '����', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '2', 'Guangdong', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '2', '�㶫', 'zh_CN');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '3', 'Fujian', 'en_US');
INSERT INTO eos_dict_entry_i18n (DICTTYPEID, DICTID, DICTNAME, LOCALE) VALUES ('province', '3', '����', 'zh_CN');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('appReleaseStatus', 'Ӧ�÷���״̬', 1, null, '.appReleaseStatus.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('city', 'City', 3, 'province', '.country.province.city.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COFRAME_RULES_ENABLE', '���ʹ����Ƿ���Ч', 1, null, '.COFRAME_RULES_ENABLE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COFRAME_RULES_TYPE', '���ʹ�������', 1, null, '.COFRAME_RULES_TYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_APPTYPE', 'Ӧ������', 1, null, '.COF_APPTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_AUTHMODE', '��֤ģʽ', 1, null, '.COF_AUTHMODE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_CARDTYPE', '֤������', 1, null, '.COF_CARDTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_EMPLEVEL', '��Ա����', 1, null, '.COF_EMPLEVEL.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_EMPSTATUS', '��Ա״̬', 1, null, '.COF_EMPSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_FUNCTYPE', '��������', 1, null, '.COF_FUNCTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_GENDER', '�Ա�', 1, null, '.COF_GENDER.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_LAYOUTSTYLE', '�˵����', 1, null, '.COF_LAYOUTSTYLE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_OPERSTATUS', '����Ա״̬', 1, null, '.COF_OPERSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_ORGDEGREE', '�����ȼ�', 1, null, '.COF_ORGDEGREE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_ORGSTATUS', '����״̬', 1, null, '.COF_ORGSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_ORGTYPE', '��������', 1, null, '.COF_ORGTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_PARTYVISAGE', '������ò', 1, null, '.COF_PARTYTYPE.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_SKINLAYOUT', '�˵�����', 1, null, '.COF_SKINLAYOUT.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_USERSTATUS', '�û�״̬', 1, null, '.COF_USERSTATUS.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('COF_YESORNO', '����', 1, null, '.COF_YESORNO.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('country', 'Country', 1, null, '.country.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('dict_custGrade', 'Customer Grade', 1, null, '.dict_custGrade.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('dict_match', 'For Regular Expression', 1, null, '.dict_match.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('EcdDeployStatus', '����״̬', 1, null, '.EcdDeployStatus.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('gender', 'gender', 1, null, '.gender.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('industry', 'industry', 1, null, '.industry.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('isEmployee', 'Is Employee', 1, null, '.isEmployee.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('province', 'Province', 2, 'country', '.country.province.');
INSERT INTO eos_dict_type (DICTTYPEID, DICTTYPENAME, RANK, PARENTID, SEQNO) VALUES ('SFY_SYSTEM_TYPE', '����ϵͳ����', 1, null, '.SFY_SYSTEM_TYPE.');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('city', 'City', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('city', '����', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('country', 'Country', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('country', '����', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_custGrade', 'industry', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_custGrade', '��ҵ', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_match', 'For Regular Expression', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('dict_match', '������ʽ������', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('gender', 'gender', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('gender', '�Ա�', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('industry', 'industry', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('industry', '��ҵ', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('isEmployee', 'Is Employee', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('isEmployee', '�Ƿ��Ա', 'zh_CN');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('province', 'Province', 'en_US');
INSERT INTO eos_dict_type_i18n (DICTTYPEID, DICTTYPENAME, LOCALE) VALUES ('province', 'ʡ', 'zh_CN');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('CALENDAR_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('JOB_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('MISFIRE_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('STATE_ACCESS');
INSERT INTO eos_qrtz_locks (LOCK_NAME) VALUES ('TRIGGER_ACCESS');
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('activityInstID', 120);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppApplication.appid', 1000);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppFuncgroup.funcgroupid', 1060);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppFunction.funccode', 1000);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('AppMenu.menuid', 1120);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('CapRole.roleId', 1040);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('CapSsouser.operatorId', 1000);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('CapUser.operatorId', 1040);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgEmployee.empid', 1040);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgGroup.groupid', 20);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgOrganization.orgid', 40);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('OrgPosition.positionid', 20);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('processDefID', 40);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('processInstID', 120);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('SfyFlowInfo.flowinfoId', 80);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('tempProcessDefID', 40);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('transCtrlID', 120);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('transitionID', 120);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('WIParticID', 120);
INSERT INTO eos_unique_table (NAME, CODE) VALUES ('workItemID', 120);
INSERT INTO org_empgroup (GROUPID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1001, 'y', 'default', null);
INSERT INTO org_empgroup (GROUPID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1021, 'y', 'default', null);
INSERT INTO org_employee (EMPID, EMPCODE, OPERATORID, USERID, EMPNAME, REALNAME, GENDER, BIRTHDATE, POSITION, EMPSTATUS, CARDTYPE, CARDNO, INDATE, OUTDATE, OTEL, OADDRESS, OZIPCODE, OEMAIL, FAXNO, MOBILENO, QQ, HTEL, HADDRESS, HZIPCODE, PEMAIL, PARTY, DEGREE, SORTNO, MAJOR, SPECIALTY, WORKEXP, REGDATE, CREATETIME, LASTMODYTIME, ORGIDLIST, ORGID, REMARK, TENANT_ID, APP_ID, WEIBO) VALUES (1, 'sysadmin', 1, 'sysadmin', 'sysadmin', 'sysadmin', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2013-03-17 12:21:05', '2013-03-17 12:21:05', null, null, null, 'default', null, null);
INSERT INTO org_employee (EMPID, EMPCODE, OPERATORID, USERID, EMPNAME, REALNAME, GENDER, BIRTHDATE, POSITION, EMPSTATUS, CARDTYPE, CARDNO, INDATE, OUTDATE, OTEL, OADDRESS, OZIPCODE, OEMAIL, FAXNO, MOBILENO, QQ, HTEL, HADDRESS, HZIPCODE, PEMAIL, PARTY, DEGREE, SORTNO, MAJOR, SPECIALTY, WORKEXP, REGDATE, CREATETIME, LASTMODYTIME, ORGIDLIST, ORGID, REMARK, TENANT_ID, APP_ID, WEIBO) VALUES (1001, 'weiguan', 1001, 'weiguan', 'Τ��', null, 'm', null, null, 'on', 'id', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2016-02-22 00:00:00', '2016-02-22 00:00:00', null, 1, null, 'default', null, null);
INSERT INTO org_employee (EMPID, EMPCODE, OPERATORID, USERID, EMPNAME, REALNAME, GENDER, BIRTHDATE, POSITION, EMPSTATUS, CARDTYPE, CARDNO, INDATE, OUTDATE, OTEL, OADDRESS, OZIPCODE, OEMAIL, FAXNO, MOBILENO, QQ, HTEL, HADDRESS, HZIPCODE, PEMAIL, PARTY, DEGREE, SORTNO, MAJOR, SPECIALTY, WORKEXP, REGDATE, CREATETIME, LASTMODYTIME, ORGIDLIST, ORGID, REMARK, TENANT_ID, APP_ID, WEIBO) VALUES (1021, '123', 1021, '123123', '123', null, 'm', '2016-02-04', null, 'on', 'id', '123', '2016-02-02', '2016-02-11', null, null, null, null, null, '123', null, null, null, null, null, null, null, 123, null, null, null, null, '2016-02-24 00:00:00', '2016-02-24 00:00:00', null, 22, null, 'default', null, null);
INSERT INTO org_emporg (ORGID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1001, 'y', 'default', null);
INSERT INTO org_emporg (ORGID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (22, 1021, 'y', 'default', null);
INSERT INTO org_empposition (POSITIONID, EMPID, ISMAIN, TENANT_ID, APP_ID) VALUES (1, 1001, 'y', 'default', null);
INSERT INTO org_group (GROUPID, ORGID, GROUPLEVEL, GROUPNAME, GROUPDESC, GROUPTYPE, GROUPSEQ, STARTDATE, ENDDATE, GROUPSTATUS, MANAGER, CREATETIME, LASTUPDATE, UPDATOR, ISLEAF, SUBCOUNT, TENANT_ID, APP_ID, PARENTGROUPID) VALUES (1, null, 1, 'OA�ع�������', null, 'h', '.1.', null, null, 'running', null, '2016-02-24 14:24:28', '2016-02-24', null, 'y', 0, 'default', null, null);
INSERT INTO org_organization (ORGID, ORGCODE, ORGNAME, ORGLEVEL, ORGDEGREE, ORGSEQ, ORGTYPE, ORGADDR, ZIPCODE, MANAPOSITION, MANAGERID, ORGMANAGER, LINKMAN, LINKTEL, EMAIL, WEBURL, STARTDATE, ENDDATE, STATUS, AREA, CREATETIME, LASTUPDATE, UPDATOR, SORTNO, ISLEAF, SUBCOUNT, REMARK, TENANT_ID, APP_ID, PARENTORGID) VALUES (1, 'SFY', '������', 1, 'hq', '.1.', 'h', null, null, null, null, null, null, null, null, null, null, null, 'running', null, '2016-02-21 14:18:27', '2016-02-21 14:18:27', null, null, 'y', 0, null, 'default', null, null);
INSERT INTO org_organization (ORGID, ORGCODE, ORGNAME, ORGLEVEL, ORGDEGREE, ORGSEQ, ORGTYPE, ORGADDR, ZIPCODE, MANAPOSITION, MANAGERID, ORGMANAGER, LINKMAN, LINKTEL, EMAIL, WEBURL, STARTDATE, ENDDATE, STATUS, AREA, CREATETIME, LASTUPDATE, UPDATOR, SORTNO, ISLEAF, SUBCOUNT, REMARK, TENANT_ID, APP_ID, PARENTORGID) VALUES (21, 'qqt', 'ȫ��ͨ', 1, null, '.21.', 'h', '123', '123', null, null, null, '123', '123', '123123123@qq.com', 'www.baidu.com', '2016-02-24', null, 'running', '123', '2016-02-24 11:53:20', '2016-02-24 11:53:20', null, 123, 'n', 1, '123', 'default', null, null);
INSERT INTO org_organization (ORGID, ORGCODE, ORGNAME, ORGLEVEL, ORGDEGREE, ORGSEQ, ORGTYPE, ORGADDR, ZIPCODE, MANAPOSITION, MANAGERID, ORGMANAGER, LINKMAN, LINKTEL, EMAIL, WEBURL, STARTDATE, ENDDATE, STATUS, AREA, CREATETIME, LASTUPDATE, UPDATOR, SORTNO, ISLEAF, SUBCOUNT, REMARK, TENANT_ID, APP_ID, PARENTORGID) VALUES (22, '123', '����', 2, null, '.21.22.', 'h', '123', '123', null, null, null, '123', '123', '123@qq.com', 'www.su.com', null, null, 'running', '123', '2016-02-24 11:55:22', '2016-02-24 11:55:22', null, 123, 'y', 0, '123', 'default', null, 21);
INSERT INTO org_position (POSITIONID, POSICODE, POSINAME, POSILEVEL, POSITIONSEQ, POSITYPE, CREATETIME, LASTUPDATE, UPDATOR, STARTDATE, ENDDATE, STATUS, ISLEAF, SUBCOUNT, TENANT_ID, APP_ID, DUTYID, MANAPOSI, ORGID) VALUES (1, 'boss', '�ܾ���', 1, '.1.', 'organization', '2016-02-21', '2016-02-21', null, null, null, null, 'y', 0, 'default', null, null, null, 1);
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('21', '61', null, '����������1_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 05:53:03');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('41', '81', null, '����������2_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 08:13:20');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('42', '82', null, '����������1_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('43', '83', null, '����������3_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('44', '84', null, '����������2_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('45', '85', null, 'workflow1_20160302_sysadmin', 'test', 'test', 2, 'oa', '1', 'sysadmin', '2016-03-02 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('46', '86', null, '����������1_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('47', '87', null, '����������3_20160302_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-02 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('61', '101', null, '����������1_20160303_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-03 00:00:00');
INSERT INTO sfy_flow_info (flowinfo_id, process_inst_id, process_code, title, catalog_id, catalog_name, state, system, creater_id, creater_name, creater_time) VALUES ('62', '102', null, '����������1_20160303_sysadmin', '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', 2, 'oa', '1', 'sysadmin', '2016-03-03 10:06:07');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('has_init_data', 'false', 'InitDataFlg');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('is_open_etl', 'false', 'EtlTimerConfig');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('last_etl_time', '2016-01-28 09:42:13', 'EtlTime');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('lock_state', 'U', 'EtlLock');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('open_procedure', 'false', 'open_procedure');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('support_procedure', 'Oracle', 'support_procedure');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('trigger_day', '1', 'EtlTimerConfig');
INSERT INTO wf_etl_config (CONFIGKEY, CONFIGVALUE, CONFIGTYPE) VALUES ('trigger_hour', '2', 'EtlTimerConfig');
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (1, '�˹���ʼ', '', 'manual', 7, 60, '2016-03-01 11:57:28', '2016-03-01 11:57:28', '2016-03-01 11:57:28', null, 0, 'startManualActivity', 1, '0', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (2, '�û���ѯ', '', 'manual', 2, 60, '2016-03-01 11:57:28', '2016-03-01 11:57:29', null, null, 0, 'manualActivity', 1, '0', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (21, '�˹���ʼ', '', 'manual', 7, 60, '2016-03-01 15:54:07', '2016-03-01 15:54:07', '2016-03-01 15:54:09', null, 0, 'startManualActivity', 21, '0', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (22, '�û���ѯ', '', 'manual', 2, 60, '2016-03-01 15:54:09', '2016-03-01 15:54:10', null, null, 0, 'manualActivity', 21, '0', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (23, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:10:59', '2016-03-01 16:10:59', '2016-03-01 16:10:59', null, 0, 'startActivity', 22, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (24, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:10:59', '2016-03-01 16:10:59', null, null, 0, 'manualActivity', 22, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (25, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:13:20', '2016-03-01 16:13:20', '2016-03-01 16:13:20', null, 0, 'startActivity', 23, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (26, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:13:20', '2016-03-01 16:13:20', null, null, 0, 'manualActivity', 23, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (27, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:14:01', '2016-03-01 16:14:01', '2016-03-01 16:14:01', null, 0, 'startActivity', 24, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (28, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:14:01', '2016-03-01 16:14:01', null, null, 0, 'manualActivity', 24, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (29, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:14:48', '2016-03-01 16:14:48', '2016-03-01 16:14:48', null, 0, 'startActivity', 25, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (30, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:14:48', '2016-03-01 16:14:48', null, null, 0, 'manualActivity', 25, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (31, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:15:51', '2016-03-01 16:15:51', '2016-03-01 16:15:51', null, 0, 'startActivity', 26, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (32, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:15:51', '2016-03-01 16:15:51', null, null, 0, 'manualActivity', 26, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (33, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:19:12', '2016-03-01 16:19:12', '2016-03-01 16:19:12', null, 0, 'startActivity', 27, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (34, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:19:12', '2016-03-01 16:19:12', null, null, 0, 'manualActivity', 27, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (35, '��ʼ', '', 'start', 7, 60, '2016-03-01 16:20:51', '2016-03-01 16:20:51', '2016-03-01 16:20:51', null, 0, 'startActivity', 28, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (36, '�˹��', '', 'manual', 2, 60, '2016-03-01 16:20:51', '2016-03-01 16:20:51', null, null, 0, 'manualActivity', 28, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (41, '��ʼ', '', 'start', 7, 60, '2016-03-01 18:34:41', '2016-03-01 18:34:41', '2016-03-01 18:34:41', null, 0, 'startActivity', 41, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (42, '�˹��', '', 'manual', 2, 60, '2016-03-01 18:34:41', '2016-03-01 18:34:42', null, null, 0, 'manualActivity', 41, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (43, '��ʼ', '', 'start', 7, 60, '2016-03-01 18:37:40', '2016-03-01 18:37:40', '2016-03-01 18:37:40', null, 0, 'startActivity', 42, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (44, '�˹��', '', 'manual', 2, 60, '2016-03-01 18:37:40', '2016-03-01 18:37:40', null, null, 0, 'manualActivity', 42, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (45, '��ʼ', '', 'start', 7, 60, '2016-03-01 18:38:14', '2016-03-01 18:38:14', '2016-03-01 18:38:14', null, 0, 'startActivity', 43, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (46, '�˹��', '', 'manual', 2, 60, '2016-03-01 18:38:14', '2016-03-01 18:38:14', null, null, 0, 'manualActivity', 43, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (47, '��ʼ', '', 'start', 7, 60, '2016-03-01 19:26:32', '2016-03-01 19:26:32', '2016-03-01 19:26:32', null, 0, 'startActivity', 44, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (48, '�˹��', '', 'manual', 2, 60, '2016-03-01 19:26:32', '2016-03-01 19:26:32', null, null, 0, 'manualActivity', 44, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (61, '��ʼ', '', 'start', 7, 60, '2016-03-02 15:52:13', '2016-03-02 15:52:13', '2016-03-02 15:52:13', null, 0, 'startActivity', 61, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (62, '�˹��', '', 'manual', 2, 60, '2016-03-02 15:52:13', '2016-03-02 15:52:13', null, null, 0, 'manualActivity', 61, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (81, '��ʼ', '', 'start', 7, 60, '2016-03-02 16:52:19', '2016-03-02 16:52:19', '2016-03-02 16:52:19', null, 0, 'startActivity', 81, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (82, '�˹��', '', 'manual', 2, 60, '2016-03-02 16:52:19', '2016-03-02 16:52:19', null, null, 0, 'manualActivity', 81, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (83, '��ʼ', '', 'start', 7, 60, '2016-03-02 17:17:17', '2016-03-02 17:17:17', '2016-03-02 17:17:17', null, 0, 'startActivity', 82, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (84, '�˹��', '', 'manual', 2, 60, '2016-03-02 17:17:17', '2016-03-02 17:17:17', null, null, 0, 'manualActivity', 82, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (85, '��ʼ', '', 'start', 7, 60, '2016-03-02 17:18:20', '2016-03-02 17:18:20', '2016-03-02 17:18:20', null, 0, 'startActivity', 83, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (86, '�˹��', '', 'manual', 2, 60, '2016-03-02 17:18:20', '2016-03-02 17:18:20', null, null, 0, 'manualActivity', 83, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (87, '��ʼ', '', 'start', 7, 60, '2016-03-02 17:18:21', '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, 0, 'startActivity', 84, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (88, '�˹��', '', 'manual', 2, 60, '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, null, 0, 'manualActivity', 84, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (89, '�˹���ʼ', '', 'manual', 7, 60, '2016-03-02 17:18:22', '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, 0, 'startManualActivity', 85, '0', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (90, '�û���ѯ', '', 'manual', 2, 60, '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, null, 0, 'manualActivity', 85, '0', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (91, '��ʼ', '', 'start', 7, 60, '2016-03-02 17:19:16', '2016-03-02 17:19:16', '2016-03-02 17:19:16', null, 0, 'startActivity', 86, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (92, '�˹��', '', 'manual', 2, 60, '2016-03-02 17:19:16', '2016-03-02 17:19:16', null, null, 0, 'manualActivity', 86, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (93, '��ʼ', '', 'start', 7, 60, '2016-03-02 17:20:15', '2016-03-02 17:20:15', '2016-03-02 17:20:15', null, 0, 'startActivity', 87, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (94, '�˹��', '', 'manual', 2, 60, '2016-03-02 17:20:15', '2016-03-02 17:20:15', null, null, 0, 'manualActivity', 87, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (101, '��ʼ', '', 'start', 7, 60, '2016-03-03 10:04:00', '2016-03-03 10:04:00', '2016-03-03 10:04:00', null, 0, 'startActivity', 101, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (102, '�˹��', '', 'manual', 2, 60, '2016-03-03 10:04:00', '2016-03-03 10:04:00', null, null, 0, 'manualActivity', 101, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (103, '��ʼ', '', 'start', 7, 60, '2016-03-03 10:06:07', '2016-03-03 10:06:07', '2016-03-03 10:06:07', null, 0, 'startActivity', 102, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfactivityinst (ACTIVITYINSTID, ACTIVITYINSTNAME, ACTIVITYINSTDESC, ACTIVITYTYPE, CURRENTSTATE, PRIORITY, CREATETIME, STARTTIME, ENDTIME, FINALTIME, SUBPROCESSID, ACTIVITYDEFID, PROCESSINSTID, ROLLBACKFLAG, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (104, '�˹��', '', 'manual', 2, 60, '2016-03-03 10:06:07', '2016-03-03 10:06:07', null, null, 0, 'manualActivity', 102, '0', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfbiz_calendar_info (CALENDARUUID, CALENDARNAME, PERIOD1BEGIN, PERIOD1END, PERIOD2BEGIN, PERIOD2END, PERIOD3BEGIN, PERIOD3END, PERIOD4BEGIN, PERIOD4END, ISDEFAULT, REMARK, UPTTIME, TENANT_ID) VALUES ('0', 'ϵͳ��ʼ������(5��8Сʱ)', '09:00:00', '12:00:00', '13:00:00', '18:00:00', '', '', '', '', '1', '', null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('0', 'ȫ��ҵ��Ŀ¼', 'ȫ��ҵ��Ŀ¼', '1', '0.', '', 0, null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('0c84de9e174a4be694ae83b0e0284ed9', 'ҵ��Ԫ��', '1', '0', '1.0c84de9e174a4be694ae83b0e0284ed9.', null, 1, '2016-02-23 09:44:07', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('1', '����ҵ��Ŀ¼', '����ҵ��Ŀ¼', '0', '1.', '', 0, null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('2094bd5cef76487dae860871e2f61c68', 'ʯ��ׯҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.2094bd5cef76487dae860871e2f61c68.', null, 8, '2016-02-23 17:23:55', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('216484765d2848f3a501bc4ce999f59f', '�ɶ�ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.216484765d2848f3a501bc4ce999f59f.', null, 1, '2016-02-23 16:49:48', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('42c068232c6c4ca39be0b4004249d3ac', '����ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.42c068232c6c4ca39be0b4004249d3ac.', null, 5, '2016-02-23 16:55:57', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('4f1c8e0683254248bbbf35fadae762bf', '����ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.4f1c8e0683254248bbbf35fadae762bf.', null, 9, '2016-02-23 17:24:08', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('622f3cf696484900b29b67a0159a221d', '����ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.622f3cf696484900b29b67a0159a221d.', null, 11, '2016-02-23 17:24:57', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', '1', '0', '1.6514217f4ccc4280b3e56591c806c15d.', 'ҵ��Ŀ¼1', 1, null, null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('ab5c2261775b4e79acc5e3ab7b88912e', '����ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.ab5c2261775b4e79acc5e3ab7b88912e.', null, 10, '2016-02-23 17:24:21', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('b1fff01e379c49119080016a422c4f10', '����ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.b1fff01e379c49119080016a422c4f10.', null, 7, '2016-02-23 17:23:33', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('c796caf21a6447659dcf29e6e0798c02', '���ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.c796caf21a6447659dcf29e6e0798c02.', null, 6, '2016-02-23 17:00:42', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('ddf00b60526f438c93526b04c36299cd', '�Ͼ�ҵ��', '0c84de9e174a4be694ae83b0e0284ed9', '1', '1.0c84de9e174a4be694ae83b0e0284ed9.ddf00b60526f438c93526b04c36299cd.', null, 4, '2016-02-23 16:52:34', null);
INSERT INTO wfbiz_catalog_info (CATALOGUUID, CATALOGNAME, PARENTCATALOGUUID, ISLEAF, SEQ, DEMO, ORDERID, UPTTIME, TENANT_ID) VALUES ('test', 'test', '1', '1', '1.test', null, null, '2016-03-03 00:00:00', null);
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
          <resourceName>7*24Сʱ����</resourceName>
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
      <resourceName>7*24Сʱ����</resourceName>
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
      <activityName>�˹���ʼ</activityName>
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
                <resourceName>7*24Сʱ����</resourceName>
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
      <activityName>����</activityName>
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
      <activityName>�û���ѯ</activityName>
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
                <resourceName>7*24Сʱ����</resourceName>
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
</workflowProcess>', '2016-02-23 10:45:16', '2016-03-03 09:29:03', 'sysadmin', 'sysadmin', 'com.primeton.cap', 'com.primeton.cap', 'N', 'Y', null, null, null, null, null, null, 'test', null);
INSERT INTO wfprocessdefine (PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, TENANT_ID) VALUES (21, 'com.sfy.oa.test.testWorkFlow', '����������1', '', 3, '1.1.1', '-------[weiguan]-------
=====2016-03-01 16:28:26=====', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.sfy.oa.test.testWorkFlow</processId>
      <processName>����������1</processName>
      <priority>60</priority>
      <author>weiguan</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>Ĭ������</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>Ĭ������</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes><extendNode><key>IsForWardBiz</key><value>true</value><desc/></extendNode><extendNode><key>openLog</key><value>false</value><desc/></extendNode></extendNodes>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>��ʼ</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>100</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>����</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>�˹��</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/test/WFAgentForm.jsp?state=edit</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>Ĭ������</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
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
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>Ĭ������</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes><bizForm><controls><control><id>submit</id><type>button</type><index>1</index><zh_name>�ύ</zh_name><en_name/><exts><ext><key>submitWay</key><value>normal</value></ext></exts></control></controls><controls><control><id>flowForm</id><type>tab</type><index>1</index><zh_name>���̵�</zh_name><en_name/><exts/></control></controls></bizForm></extendNodes>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>210</x>
        <y>143</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>', '2016-03-01 16:09:01', '2016-03-01 16:28:33', 'internal', 'weiguan', 'com.sfy.oa.test', 'com.sfy.oa.test', 'N', 'Y', null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', null);
INSERT INTO wfprocessdefine (PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, TENANT_ID) VALUES (22, 'com.sfy.oa.test.testWorkFlow2', '����������2', '', 3, '1.1.1', '-------[weiguan]-------
=====2016-03-01 16:28:26=====', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.sfy.oa.test.testWorkFlow2</processId>
      <processName>����������2</processName>
      <priority>60</priority>
      <author>weiguan</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>Ĭ������</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>Ĭ������</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes><extendNode><key>IsForWardBiz</key><value>true</value><desc/></extendNode><extendNode><key>openLog</key><value>false</value><desc/></extendNode></extendNodes>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>��ʼ</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>100</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>����</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>�˹��</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/test/WFAgentForm.jsp?state=edit</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>Ĭ������</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
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
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>Ĭ������</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes><bizForm><controls><control><id>submit</id><type>button</type><index>1</index><zh_name>�ύ</zh_name><en_name/><exts><ext><key>submitWay</key><value>normal</value></ext></exts></control></controls><controls><control><id>flowForm</id><type>tab</type><index>1</index><zh_name>���̵�</zh_name><en_name/><exts/></control></controls></bizForm></extendNodes>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>210</x>
        <y>143</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>', '2016-03-01 16:28:33', '2016-03-01 16:28:33', 'internal', 'weiguan', 'com.sfy.oa.test', 'com.sfy.oa.test', 'N', 'Y', null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', null);
INSERT INTO wfprocessdefine (PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, TENANT_ID) VALUES (23, 'com.sfy.oa.test.testWorkFlow3', '����������3', '', 3, '1.1.1', '-------[weiguan]-------
=====2016-03-01 16:28:26=====', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.sfy.oa.test.testWorkFlow3</processId>
      <processName>����������3</processName>
      <priority>60</priority>
      <author>weiguan</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>Ĭ������</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>Ĭ������</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes><extendNode><key>IsForWardBiz</key><value>true</value><desc/></extendNode><extendNode><key>openLog</key><value>false</value><desc/></extendNode></extendNodes>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>��ʼ</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>100</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>����</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>�˹��</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/test/WFAgentForm.jsp?state=edit</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>Ĭ������</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
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
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>Ĭ������</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes><bizForm><controls><control><id>flowForm</id><type>tab</type><index>1</index><zh_name>���̵�</zh_name><en_name/><exts/></control></controls></bizForm></extendNodes>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>221</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>', '2016-03-01 16:28:34', '2016-03-01 16:28:34', 'internal', 'weiguan', 'com.sfy.oa.test', 'com.sfy.oa.test', 'N', 'Y', null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', null);
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
          <resourceName>7*24Сʱ����</resourceName>
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
      <resourceName>7*24Сʱ����</resourceName>
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
      <activityName>�˹���ʼ</activityName>
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
                <resourceName>7*24Сʱ����</resourceName>
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
      <activityName>����</activityName>
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
      <activityName>�û���ѯ</activityName>
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
                <resourceName>7*24Сʱ����</resourceName>
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
</workflowProcess>', '2016-02-23 10:45:16', '2016-03-03 09:29:03', 'sysadmin', 'sysadmin', 'com.primeton.cap', 'com.primeton.cap', 'N', 'test', '0', null, null, null, null, null, null, null, null);
INSERT INTO wfprocessdefinetemp (TEMPPROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, CATALOGUUID, MODIFYSTATE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, TENANT_ID) VALUES (21, 'com.sfy.oa.test.testWorkFlow', '����������1', '', 3, '1.1.1', '-------[weiguan]-------
=====2016-03-01 16:28:26=====', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.sfy.oa.test.testWorkFlow</processId>
      <processName>����������1</processName>
      <priority>60</priority>
      <author>weiguan</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>Ĭ������</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>Ĭ������</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes><extendNode><key>IsForWardBiz</key><value>true</value><desc/></extendNode><extendNode><key>openLog</key><value>false</value><desc/></extendNode></extendNodes>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>��ʼ</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>100</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>����</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>�˹��</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/test/WFAgentForm.jsp?state=edit</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>Ĭ������</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
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
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>Ĭ������</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes><bizForm><controls><control><id>submit</id><type>button</type><index>1</index><zh_name>�ύ</zh_name><en_name/><exts><ext><key>submitWay</key><value>normal</value></ext></exts></control></controls><controls><control><id>flowForm</id><type>tab</type><index>1</index><zh_name>���̵�</zh_name><en_name/><exts/></control></controls></bizForm></extendNodes>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>210</x>
        <y>143</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>', '2016-03-01 16:09:01', '2016-03-01 16:28:33', 'internal', 'weiguan', 'com.sfy.oa.test', 'com.sfy.oa.test', 'N', '6514217f4ccc4280b3e56591c806c15d', '0', null, null, null, null, null, null, null, null);
INSERT INTO wfprocessdefinetemp (TEMPPROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, CATALOGUUID, MODIFYSTATE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, TENANT_ID) VALUES (22, 'com.sfy.oa.test.testWorkFlow2', '����������2', '', 3, '1.1.1', '-------[weiguan]-------
=====2016-03-01 16:28:26=====', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.sfy.oa.test.testWorkFlow2</processId>
      <processName>����������2</processName>
      <priority>60</priority>
      <author>weiguan</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>Ĭ������</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>Ĭ������</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes><extendNode><key>IsForWardBiz</key><value>true</value><desc/></extendNode><extendNode><key>openLog</key><value>false</value><desc/></extendNode></extendNodes>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>��ʼ</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>100</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>����</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>�˹��</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/test/WFAgentForm.jsp?state=edit</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>Ĭ������</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
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
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>Ĭ������</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes><bizForm><controls><control><id>submit</id><type>button</type><index>1</index><zh_name>�ύ</zh_name><en_name/><exts><ext><key>submitWay</key><value>normal</value></ext></exts></control></controls><controls><control><id>flowForm</id><type>tab</type><index>1</index><zh_name>���̵�</zh_name><en_name/><exts/></control></controls></bizForm></extendNodes>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>210</x>
        <y>143</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>', '2016-03-01 16:28:33', '2016-03-01 16:28:33', 'internal', 'weiguan', 'com.sfy.oa.test', 'com.sfy.oa.test', 'N', '6514217f4ccc4280b3e56591c806c15d', '0', null, null, null, null, null, null, null, null);
INSERT INTO wfprocessdefinetemp (TEMPPROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, DESCRIPTION, CURRENTSTATE, VERSIONSIGN, VERSIONDESC, CURRENTFLAG, PROCESSDEFCONTENT, CREATETIME, UPDATETIME, OPERATOR, PROCESSDEFOWNER, PACKAGEID, PACKAGENAME, HASACTIVEINSTANCE, CATALOGUUID, MODIFYSTATE, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, TENANT_ID) VALUES (23, 'com.sfy.oa.test.testWorkFlow3', '����������3', '', 3, '1.1.1', '-------[weiguan]-------
=====2016-03-01 16:28:26=====', '1', '<?xml version="1.0" encoding="UTF-8" standalone="no"?>
<workflowProcess productVersion="6.1" schemaVersion="6.0">
  <processHeader>
    <processBasicInfo>
      <processId>com.sfy.oa.test.testWorkFlow3</processId>
      <processName>����������3</processName>
      <priority>60</priority>
      <author>weiguan</author>
      <department>primeton</department>
      <description/>
    </processBasicInfo>
    <dataFields/>
    <triggerEvents/>
    <timeLimit>
      <isTimeLimitSet>false</isTimeLimitSet>
      <calendarSet>
        <initType>appoint</initType>
        <calendarInfo>
          <resourceType>business-calendar</resourceType>
          <resourceID>default</resourceID>
          <resourceName>Ĭ������</resourceName>
          <parameters/>
        </calendarInfo>
      </calendarSet>
    </timeLimit>
    <procStarterLists>
      <processStarterType>all</processStarterType>
    </procStarterLists>
    <parameters/>
    <splitTransaction>false</splitTransaction>
    <longProcess>true</longProcess>
    <bizEntityInfo/>
    <calendarInfo>
      <resourceType>business-calendar</resourceType>
      <resourceID>default</resourceID>
      <resourceName>Ĭ������</resourceName>
      <parameters/>
    </calendarInfo>
    <extendNodes><extendNode><key>IsForWardBiz</key><value>true</value><desc/></extendNode><extendNode><key>openLog</key><value>false</value><desc/></extendNode></extendNodes>
  </processHeader>
  <transitions>
    <transition>
      <from>startActivity</from>
      <to>manualActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
    <transition>
      <from>manualActivity</from>
      <to>finishActivity</to>
      <isDefault>true</isDefault>
      <priority>60</priority>
      <displayName/>
      <type>simpleCondition</type>
      <bendPoints/>
    </transition>
  </transitions>
  <activities>
    <activity>
      <activityId>startActivity</activityId>
      <activityName>��ʼ</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>start</activityType>
      <splitTransaction>false</splitTransaction>
      <implementation>
        <startActivity>
          <formFields/>
        </startActivity>
      </implementation>
      <isStartActivity>true</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>100</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>finishActivity</activityId>
      <activityName>����</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>finish</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
      </activateRule>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>32</height>
        <width>32</width>
        <x>400</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
    <activity>
      <activityId>manualActivity</activityId>
      <activityName>�˹��</activityName>
      <description/>
      <splitType>XOR</splitType>
      <joinType>XOR</joinType>
      <priority>60</priority>
      <activityType>manual</activityType>
      <splitTransaction>false</splitTransaction>
      <activateRule>
        <activateRuleType>directRunning</activateRuleType>
        <applicationInfo>
          <actionType>service-component</actionType>
          
          <application>
            <actionType>service-component</actionType>
            <applicationUri/>
            <transactionType>join</transactionType>
            <exceptionStrategy>rollback</exceptionStrategy>
            <invokePattern>synchronous</invokePattern>
            <parameters/>
          </application>
          <assignments/>
        </applicationInfo>
      </activateRule>
      <implementation>
        <manualActivity>
          <allowAgent>true</allowAgent>
          <customURL>
            <isSpecifyURL>true</isSpecifyURL>
            <urlInfo>/test/WFAgentForm.jsp?state=edit</urlInfo>
            <urlType>webpage</urlType>
          </customURL>
          <resetUrl>
            <isSpecifyURL>false</isSpecifyURL>
            <urlType>presentation-logic</urlType>
          </resetUrl>
          <participants>
            <participantType>process-starter</participantType>
            <specialActivityID/>
            <specialPath/>
          </participants>
          <formFields/>
          <timeLimit>
            <isTimeLimitSet>false</isTimeLimitSet>
            <calendarSet>
              <initType>appoint</initType>
              <calendarInfo>
                <resourceType>business-calendar</resourceType>
                <resourceID>default</resourceID>
                <resourceName>Ĭ������</resourceName>
                <parameters/>
              </calendarInfo>
            </calendarSet>
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
                <exceptionStrategy>rollback</exceptionStrategy>
                <invokePattern>synchronous</invokePattern>
                <parameters/>
              </application>
              <assignments/>
            </applicationInfo>
          </rollBack>
          <freeFlowRule>
            <isFreeActivity>false</isFreeActivity>
            <freeRangeStrategy>freeWithinProcess</freeRangeStrategy>
            <isOnlyLimitedManualActivity>false</isOnlyLimitedManualActivity>
          </freeFlowRule>
          <resetParticipant>originalParticipant</resetParticipant>
          <notification>
            <isSendNotification>false</isSendNotification>
            <actionURL>
              <isSpecifyURL>false</isSpecifyURL>
              <urlType>presentation-logic</urlType>
            </actionURL>
            <participants>
              <participantType>process-starter</participantType>
              <specialActivityID/>
              <specialPath/>
            </participants>
            <isExpandParticipant>false</isExpandParticipant>
            <timeLimit>
              <isTimeLimitSet>false</isTimeLimitSet>
              <calendarSet>
                <initType>appoint</initType>
                <calendarInfo>
                  <resourceType>business-calendar</resourceType>
                  <resourceID>default</resourceID>
                  <resourceName>Ĭ������</resourceName>
                  <parameters/>
                </calendarInfo>
              </calendarSet>
            </timeLimit>
            <notificationImplType>workItem</notificationImplType>
          </notification>
        </manualActivity>
      </implementation>
      <extendNodes><bizForm><controls><control><id>flowForm</id><type>tab</type><index>1</index><zh_name>���̵�</zh_name><en_name/><exts/></control></controls></bizForm></extendNodes>
      <isStartActivity>false</isStartActivity>
      <nodeGraphInfo>
        <color>16777215</color>
        <height>45</height>
        <width>64</width>
        <x>221</x>
        <y>150</y>
        <lookAndFeel>classic</lookAndFeel>
        <fontName>System</fontName>
        <fontSize>12</fontSize>
        <fontWidth>550</fontWidth>
        <foreColor>0</foreColor>
        <isItalic>0</isItalic>
        <isUnderline>0</isUnderline>
        <textHeight>60</textHeight>
      </nodeGraphInfo>
    </activity>
  </activities>
  <notes/>
  <resource/>
</workflowProcess>', '2016-03-01 16:28:34', '2016-03-01 16:28:34', 'internal', 'weiguan', 'com.sfy.oa.test', 'com.sfy.oa.test', 'N', '6514217f4ccc4280b3e56591c806c15d', '0', null, null, null, null, null, null, null, null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (1, 'workflow1_20160301_sysadmin', 'workflow1_20160301_sysadmin', '1', 'sysadmin', 2, 60, null, null, 0, '', '2016-03-01 11:57:27', '2016-03-01 11:57:28', null, null, null, 0, 0, 1, 'N', 0, '', null, 'workflow1', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (21, 'workflow1_20160301_sysadmin', 'workflow1_20160301_sysadmin', '1', 'sysadmin', 2, 60, null, null, 0, '', '2016-03-01 15:54:07', '2016-03-01 15:54:07', null, null, null, 0, 0, 1, 'N', 0, '', null, 'workflow1', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (22, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:10:59', '2016-03-01 16:10:59', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (23, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:13:20', '2016-03-01 16:13:20', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (24, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:14:01', '2016-03-01 16:14:01', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (25, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:14:48', '2016-03-01 16:14:48', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (26, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:15:51', '2016-03-01 16:15:51', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (27, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:19:12', '2016-03-01 16:19:12', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (28, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 16:20:51', '2016-03-01 16:20:51', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (41, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 18:34:41', '2016-03-01 18:34:41', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (42, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 18:37:40', '2016-03-01 18:37:40', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (43, '����������1_20160301_sysadmin', '����������1_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 18:38:14', '2016-03-01 18:38:14', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (44, '����������2_20160301_sysadmin', '����������2_20160301_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-01 19:26:32', '2016-03-01 19:26:32', null, null, null, 0, 0, 22, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow2', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (61, '����������1_20160302_sysadmin', '����������1_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 15:52:12', '2016-03-02 15:52:13', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (81, '����������2_20160302_sysadmin', '����������2_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 16:52:19', '2016-03-02 16:52:19', null, null, null, 0, 0, 22, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow2', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (82, '����������1_20160302_sysadmin', '����������1_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 17:17:17', '2016-03-02 17:17:17', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (83, '����������3_20160302_sysadmin', '����������3_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 17:18:20', '2016-03-02 17:18:20', null, null, null, 0, 0, 23, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow3', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (84, '����������2_20160302_sysadmin', '����������2_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, null, null, 0, 0, 22, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow2', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (85, 'workflow1_20160302_sysadmin', 'workflow1_20160302_sysadmin', '1', 'sysadmin', 2, 60, null, null, 0, '', '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, null, null, 0, 0, 1, 'N', 0, '', null, 'workflow1', null, null, null, null, null, null, null, 'test', 'test', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (86, '����������1_20160302_sysadmin', '����������1_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 17:19:16', '2016-03-02 17:19:16', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (87, '����������3_20160302_sysadmin', '����������3_20160302_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-02 17:20:15', '2016-03-02 17:20:15', null, null, null, 0, 0, 23, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow3', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (101, '����������1_20160303_sysadmin', '����������1_20160303_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-03 10:04:00', '2016-03-03 10:04:00', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfprocessinst (PROCESSINSTID, PROCESSINSTNAME, PROCESSINSTDESC, CREATOR, OWNER, CURRENTSTATE, PRIORITY, RELATEDATA, RELATEDATAVCHR, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, PARENTPROCID, PARENTACTID, PROCESSDEFID, ISTIMEOUT, TIMEOUTNUM, TIMEOUTNUMDESC, UPDATEVERSION, PROCESSDEFNAME, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID) VALUES (102, '����������1_20160303_sysadmin', '����������1_20160303_sysadmin', '1', 'weiguan', 2, 60, null, null, 0, '', '2016-03-03 10:06:07', '2016-03-03 10:06:07', null, null, null, 0, 0, 21, 'N', 0, '', null, 'com.sfy.oa.test.testWorkFlow', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null);
INSERT INTO wfserverinfo (SERVERNAME, GROUPID, STATUS, STARTTIME, ASSISTANT, ASSISTEDTIME, HEARTBEATTIME, HEARTBEATINTERVAL, HEARTBEATDELAY, PROPERTIES, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5) VALUES ('127.0.0.1:6200', 'BPS', 'started', '20160303092858', null, null, 0, 30000, 0, '{http_port=8080, app_name=default, local_host=127.0.0.1}', null, null, null, null, null);
INSERT INTO wfsysteminfo (CONFIGKEY, CONFIGVALUE, CONFIGDESC, CONFIGTYPE) VALUES ('DATABASE_VERSION', 'V4.7', 'DB VERSION', '');
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (1, 'startManualActivity', 'manualActivity', '', '', '2016-03-01 11:57:29', 0, 1, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (21, 'startManualActivity', 'manualActivity', '', '', '2016-03-01 15:54:10', 0, 21, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (22, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:10:59', 0, 22, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (23, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:13:20', 0, 23, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (24, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:14:01', 0, 24, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (25, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:14:48', 0, 25, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (26, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:15:51', 0, 26, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (27, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:19:12', 0, 27, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (28, 'startActivity', 'manualActivity', '', '', '2016-03-01 16:20:51', 0, 28, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (41, 'startActivity', 'manualActivity', '', '', '2016-03-01 18:34:42', 0, 41, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (42, 'startActivity', 'manualActivity', '', '', '2016-03-01 18:37:40', 0, 42, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (43, 'startActivity', 'manualActivity', '', '', '2016-03-01 18:38:14', 0, 43, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (44, 'startActivity', 'manualActivity', '', '', '2016-03-01 19:26:32', 0, 44, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (61, 'startActivity', 'manualActivity', '', '', '2016-03-02 15:52:13', 0, 61, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (81, 'startActivity', 'manualActivity', '', '', '2016-03-02 16:52:19', 0, 81, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (82, 'startActivity', 'manualActivity', '', '', '2016-03-02 17:17:17', 0, 82, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (83, 'startActivity', 'manualActivity', '', '', '2016-03-02 17:18:20', 0, 83, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (84, 'startActivity', 'manualActivity', '', '', '2016-03-02 17:18:21', 0, 84, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (85, 'startManualActivity', 'manualActivity', '', '', '2016-03-02 17:18:22', 0, 85, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (86, 'startActivity', 'manualActivity', '', '', '2016-03-02 17:19:16', 0, 86, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (87, 'startActivity', 'manualActivity', '', '', '2016-03-02 17:20:15', 0, 87, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (101, 'startActivity', 'manualActivity', '', '', '2016-03-03 10:04:00', 0, 101, null, null);
INSERT INTO wftransctrl (TRANSCTRLID, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, LASTTRANSTIME, TRANSWEIGHT, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (102, 'startActivity', 'manualActivity', '', '', '2016-03-03 10:06:07', 0, 102, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (1, 'V', 1, '�˹���ʼ', 2, '�û���ѯ', 'startManualActivity', 'manualActivity', '�˹���ʼ', '�û���ѯ', '2016-03-01 11:57:28', 1, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (21, 'V', 21, '�˹���ʼ', 22, '�û���ѯ', 'startManualActivity', 'manualActivity', '�˹���ʼ', '�û���ѯ', '2016-03-01 15:54:09', 21, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (22, 'V', 23, '��ʼ', 24, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:10:59', 22, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (23, 'V', 25, '��ʼ', 26, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:13:20', 23, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (24, 'V', 27, '��ʼ', 28, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:14:01', 24, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (25, 'V', 29, '��ʼ', 30, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:14:48', 25, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (26, 'V', 31, '��ʼ', 32, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:15:51', 26, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (27, 'V', 33, '��ʼ', 34, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:19:12', 27, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (28, 'V', 35, '��ʼ', 36, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 16:20:51', 28, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (41, 'V', 41, '��ʼ', 42, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 18:34:42', 41, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (42, 'V', 43, '��ʼ', 44, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 18:37:40', 42, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (43, 'V', 45, '��ʼ', 46, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 18:38:14', 43, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (44, 'V', 47, '��ʼ', 48, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-01 19:26:32', 44, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (61, 'V', 61, '��ʼ', 62, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 15:52:13', 61, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (81, 'V', 81, '��ʼ', 82, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 16:52:19', 81, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (82, 'V', 83, '��ʼ', 84, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 17:17:17', 82, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (83, 'V', 85, '��ʼ', 86, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 17:18:20', 83, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (84, 'V', 87, '��ʼ', 88, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 17:18:21', 84, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (85, 'V', 89, '�˹���ʼ', 90, '�û���ѯ', 'startManualActivity', 'manualActivity', '�˹���ʼ', '�û���ѯ', '2016-03-02 17:18:22', 85, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (86, 'V', 91, '��ʼ', 92, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 17:19:16', 86, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (87, 'V', 93, '��ʼ', 94, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-02 17:20:15', 87, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (101, 'V', 101, '��ʼ', 102, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-03 10:04:00', 101, null, null);
INSERT INTO wftransition (TRANSITIONID, TRANSITIONTYPE, CAUSEACTINSTID, CAUSEACTINSTNAME, RESULTACTINSTID, RESULTACTINSTNAME, SRCACTDEFID, DESTACTDEFID, SRCACTDEFNAME, DESTACTDEFNAME, TRANSTIME, PROCESSINSTID, EXTEND1, TENANT_ID) VALUES (102, 'V', 103, '��ʼ', 104, '�˹��', 'startActivity', 'manualActivity', '��ʼ', '�˹��', '2016-03-03 10:06:07', 102, null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (1, 1, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹���ʼ', 'M', '', 12, '1', 60, 'N', 0, '', '2016-03-01 11:57:28', '2016-03-01 11:57:28', '2016-03-01 11:57:28', null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 1, 1, '', 0, '', 'workflow1_20160301_sysadmin', '�˹���ʼ', 1, 'workflow1', 'workflow1', 'startManualActivity', '1', 0, '1', 'sysadmin', 'sysadmin', 1, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, 'test', 'test', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (2, 2, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�û���ѯ', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 11:57:29', '2016-03-01 11:57:29', null, null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 1, 2, '', 0, '', 'workflow1_20160301_sysadmin', '�û���ѯ', 1, 'workflow1', 'workflow1', 'manualActivity', null, 0, '1', 'sysadmin', '', 1, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, 'test', 'test', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (21, 21, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹���ʼ', 'M', '', 12, '1', 60, 'N', 0, '', '2016-03-01 15:54:08', '2016-03-01 15:54:08', '2016-03-01 15:54:09', null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 21, 21, '', 0, '', 'workflow1_20160301_sysadmin', '�˹���ʼ', 1, 'workflow1', 'workflow1', 'startManualActivity', '1', 0, '1', 'sysadmin', 'sysadmin', 21, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, 'test', 'test', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (22, 22, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�û���ѯ', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 15:54:10', '2016-03-01 15:54:10', null, null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 21, 22, '', 0, '', 'workflow1_20160301_sysadmin', '�û���ѯ', 1, 'workflow1', 'workflow1', 'manualActivity', null, 0, '1', 'sysadmin', '', 21, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, 'test', 'test', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (23, 23, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:10:59', '2016-03-01 16:10:59', null, null, null, '/test/WFAgentForm.jsp?state=edit', 22, 24, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 22, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (24, 24, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:13:20', '2016-03-01 16:13:20', null, null, null, '/test/WFAgentForm.jsp?state=edit', 23, 26, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 23, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (25, 25, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:14:01', '2016-03-01 16:14:01', null, null, null, '/test/WFAgentForm.jsp?state=edit', 24, 28, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 24, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (26, 26, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:14:48', '2016-03-01 16:14:48', null, null, null, '/test/WFAgentForm.jsp?state=edit', 25, 30, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 25, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (27, 27, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:15:51', '2016-03-01 16:15:51', null, null, null, '/test/WFAgentForm.jsp?state=edit', 26, 32, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 26, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (28, 28, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:19:12', '2016-03-01 16:19:12', null, null, null, '/test/WFAgentForm.jsp?state=edit', 27, 34, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 27, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (29, 29, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 16:20:51', '2016-03-01 16:20:51', null, null, null, '/test/WFAgentForm.jsp?state=edit', 28, 36, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 28, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (41, 41, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 18:34:42', '2016-03-01 18:34:42', null, null, null, '/test/WFAgentForm.jsp?state=edit', 41, 42, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 41, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (42, 42, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 18:37:40', '2016-03-01 18:37:40', null, null, null, '/test/WFAgentForm.jsp?state=edit', 42, 44, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 42, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (43, 43, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 18:38:14', '2016-03-01 18:38:14', null, null, null, '/test/WFAgentForm.jsp?state=edit', 43, 46, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 43, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (44, 44, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-01 19:26:32', '2016-03-01 19:26:32', null, null, null, '/test/WFAgentForm.jsp?state=edit', 44, 48, '', 0, '', '����������2_20160301_sysadmin', '�˹��', 22, 'com.sfy.oa.test.testWorkFlow2', '����������2', 'manualActivity', null, 0, '1', 'sysadmin', '', 44, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (61, 61, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 15:52:13', '2016-03-02 15:52:13', null, null, null, '/test/WFAgentForm.jsp?state=edit', 61, 62, '', 0, '', '����������1_20160302_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 61, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (81, 81, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 16:52:19', '2016-03-02 16:52:19', null, null, null, '/test/WFAgentForm.jsp?state=edit', 81, 82, '', 0, '', '����������2_20160302_sysadmin', '�˹��', 22, 'com.sfy.oa.test.testWorkFlow2', '����������2', 'manualActivity', null, 0, '1', 'sysadmin', '', 81, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (82, 82, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 17:17:17', '2016-03-02 17:17:17', null, null, null, '/test/WFAgentForm.jsp?state=edit', 82, 84, '', 0, '', '����������1_20160302_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 82, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (83, 83, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, null, null, '/test/WFAgentForm.jsp?state=edit', 83, 86, '', 0, '', '����������3_20160302_sysadmin', '�˹��', 23, 'com.sfy.oa.test.testWorkFlow3', '����������3', 'manualActivity', null, 0, '1', 'sysadmin', '', 83, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (84, 84, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, null, null, '/test/WFAgentForm.jsp?state=edit', 84, 88, '', 0, '', '����������2_20160302_sysadmin', '�˹��', 22, 'com.sfy.oa.test.testWorkFlow2', '����������2', 'manualActivity', null, 0, '1', 'sysadmin', '', 84, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (85, 85, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹���ʼ', 'M', '', 12, '1', 60, 'N', 0, '', '2016-03-02 17:18:22', '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 85, 89, '', 0, '', 'workflow1_20160302_sysadmin', '�˹���ʼ', 1, 'workflow1', 'workflow1', 'startManualActivity', '1', 0, '1', 'sysadmin', 'sysadmin', 85, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, 'test', 'test', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (86, 86, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�û���ѯ', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 85, 90, '', 0, '', 'workflow1_20160302_sysadmin', '�û���ѯ', 1, 'workflow1', 'workflow1', 'manualActivity', null, 0, '1', 'sysadmin', '', 85, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, 'test', 'test', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (87, 87, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 17:19:16', '2016-03-02 17:19:16', null, null, null, '/test/WFAgentForm.jsp?state=edit', 86, 92, '', 0, '', '����������1_20160302_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 86, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (88, 88, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-02 17:20:15', '2016-03-02 17:20:15', null, null, null, '/test/WFAgentForm.jsp?state=edit', 87, 94, '', 0, '', '����������3_20160302_sysadmin', '�˹��', 23, 'com.sfy.oa.test.testWorkFlow3', '����������3', 'manualActivity', null, 0, '1', 'sysadmin', '', 87, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (101, 101, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-03 10:04:00', '2016-03-03 10:04:00', null, null, null, '/test/WFAgentForm.jsp?state=edit', 101, 102, '', 0, '', '����������1_20160303_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 101, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfwiparticipant (WIPARTICID, WORKITEMID, PARTICIPANTTYPE, PARTICIPANTID, PARTICIPANTNAME, PARTIINTYPE, DELEGATETYPE, PARTICIPANTINDEX, GLOBALID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, BIZSTATE, ALLOWAGENT, PARTINAME, ASSISTANTNAME, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (102, 102, 'emp', '1', 'sysadmin', 'EXE', '', 0, 'E{1}', '�˹��', 'M', '', 10, '1', 60, 'N', 0, '', '2016-03-03 10:06:07', '2016-03-03 10:06:07', null, null, null, '/test/WFAgentForm.jsp?state=edit', 102, 104, '', 0, '', '����������1_20160303_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, 0, '1', 'sysadmin', '', 102, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, null);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (1, '�˹���ʼ', 'M', '', 12, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 11:57:28', '2016-03-01 11:57:28', '2016-03-01 11:57:28', null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 1, 1, '', 0, '', 'workflow1_20160301_sysadmin', '�˹���ʼ', 1, 'workflow1', 'workflow1', 'startManualActivity', '1', 'sysadmin', 0, '1', 1, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, 'test', 'test', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (2, '�û���ѯ', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 11:57:29', '2016-03-01 11:57:29', null, null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 1, 2, '', 0, '', 'workflow1_20160301_sysadmin', '�û���ѯ', 1, 'workflow1', 'workflow1', 'manualActivity', null, '', 0, '1', 1, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, 'test', 'test', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (21, '�˹���ʼ', 'M', '', 12, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 15:54:08', '2016-03-01 15:54:08', '2016-03-01 15:54:09', null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 21, 21, '', 0, '', 'workflow1_20160301_sysadmin', '�˹���ʼ', 1, 'workflow1', 'workflow1', 'startManualActivity', '1', 'sysadmin', 0, '1', 21, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, 'test', 'test', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (22, '�û���ѯ', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 15:54:10', '2016-03-01 15:54:10', null, null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 21, 22, '', 0, '', 'workflow1_20160301_sysadmin', '�û���ѯ', 1, 'workflow1', 'workflow1', 'manualActivity', null, '', 0, '1', 21, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, 'test', 'test', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (23, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:10:59', '2016-03-01 16:10:59', null, null, null, '/test/WFAgentForm.jsp?state=edit', 22, 24, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 22, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (24, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:13:20', '2016-03-01 16:13:20', null, null, null, '/test/WFAgentForm.jsp?state=edit', 23, 26, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 23, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (25, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:14:01', '2016-03-01 16:14:01', null, null, null, '/test/WFAgentForm.jsp?state=edit', 24, 28, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 24, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (26, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:14:48', '2016-03-01 16:14:48', null, null, null, '/test/WFAgentForm.jsp?state=edit', 25, 30, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 25, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (27, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:15:51', '2016-03-01 16:15:51', null, null, null, '/test/WFAgentForm.jsp?state=edit', 26, 32, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 26, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (28, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:19:12', '2016-03-01 16:19:12', null, null, null, '/test/WFAgentForm.jsp?state=edit', 27, 34, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 27, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (29, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 16:20:51', '2016-03-01 16:20:51', null, null, null, '/test/WFAgentForm.jsp?state=edit', 28, 36, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 28, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (41, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 18:34:42', '2016-03-01 18:34:42', null, null, null, '/test/WFAgentForm.jsp?state=edit', 41, 42, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 41, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (42, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 18:37:40', '2016-03-01 18:37:40', null, null, null, '/test/WFAgentForm.jsp?state=edit', 42, 44, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 42, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (43, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 18:38:14', '2016-03-01 18:38:14', null, null, null, '/test/WFAgentForm.jsp?state=edit', 43, 46, '', 0, '', '����������1_20160301_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 43, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (44, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-01 19:26:32', '2016-03-01 19:26:32', null, null, null, '/test/WFAgentForm.jsp?state=edit', 44, 48, '', 0, '', '����������2_20160301_sysadmin', '�˹��', 22, 'com.sfy.oa.test.testWorkFlow2', '����������2', 'manualActivity', null, '', 0, '1', 44, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (61, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 15:52:13', '2016-03-02 15:52:13', null, null, null, '/test/WFAgentForm.jsp?state=edit', 61, 62, '', 0, '', '����������1_20160302_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 61, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (81, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 16:52:19', '2016-03-02 16:52:19', null, null, null, '/test/WFAgentForm.jsp?state=edit', 81, 82, '', 0, '', '����������2_20160302_sysadmin', '�˹��', 22, 'com.sfy.oa.test.testWorkFlow2', '����������2', 'manualActivity', null, '', 0, '1', 81, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (82, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:17:17', '2016-03-02 17:17:17', null, null, null, '/test/WFAgentForm.jsp?state=edit', 82, 84, '', 0, '', '����������1_20160302_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 82, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (83, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, null, null, '/test/WFAgentForm.jsp?state=edit', 83, 86, '', 0, '', '����������3_20160302_sysadmin', '�˹��', 23, 'com.sfy.oa.test.testWorkFlow3', '����������3', 'manualActivity', null, '', 0, '1', 83, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (84, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:18:21', '2016-03-02 17:18:21', null, null, null, '/test/WFAgentForm.jsp?state=edit', 84, 88, '', 0, '', '����������2_20160302_sysadmin', '�˹��', 22, 'com.sfy.oa.test.testWorkFlow2', '����������2', 'manualActivity', null, '', 0, '1', 84, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (85, '�˹���ʼ', 'M', '', 12, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:18:22', '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 85, 89, '', 0, '', 'workflow1_20160302_sysadmin', '�˹���ʼ', 1, 'workflow1', 'workflow1', 'startManualActivity', '1', 'sysadmin', 0, '1', 85, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, 'test', 'test', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (86, '�û���ѯ', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:18:22', '2016-03-02 17:18:22', null, null, null, 'com.primeton.cap.see.flow_form.flow?moduleId=test&formId=form1&state=add', 85, 90, '', 0, '', 'workflow1_20160302_sysadmin', '�û���ѯ', 1, 'workflow1', 'workflow1', 'manualActivity', null, '', 0, '1', 85, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, 'test', 'test', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (87, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:19:16', '2016-03-02 17:19:16', null, null, null, '/test/WFAgentForm.jsp?state=edit', 86, 92, '', 0, '', '����������1_20160302_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 86, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (88, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-02 17:20:15', '2016-03-02 17:20:15', null, null, null, '/test/WFAgentForm.jsp?state=edit', 87, 94, '', 0, '', '����������3_20160302_sysadmin', '�˹��', 23, 'com.sfy.oa.test.testWorkFlow3', '����������3', 'manualActivity', null, '', 0, '1', 87, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (101, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-03 10:04:00', '2016-03-03 10:04:00', null, null, null, '/test/WFAgentForm.jsp?state=edit', 101, 102, '', 0, '', '����������1_20160303_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 101, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
INSERT INTO wfworkitem (WORKITEMID, WORKITEMNAME, WORKITEMTYPE, WORKITEMDESC, CURRENTSTATE, PARTICIPANT, PARTINAME, PRIORITY, ISTIMEOUT, LIMITNUM, LIMITNUMDESC, CREATETIME, STARTTIME, ENDTIME, FINALTIME, REMINDTIME, ACTIONURL, PROCESSINSTID, ACTIVITYINSTID, STATESLIST, TIMEOUTNUM, TIMEOUTNUMDESC, PROCESSINSTNAME, ACTIVITYINSTNAME, PROCESSDEFID, PROCESSDEFNAME, PROCESSCHNAME, ACTIVITYDEFID, ASSISTANT, ASSISTANTNAME, BIZSTATE, ALLOWAGENT, ROOTPROCINSTID, ACTIONMASK, URLTYPE, DEALRESULT, DEALOPINION, EXTEND1, EXTEND2, EXTEND3, EXTEND4, EXTEND5, EXTEND6, EXTEND7, CATALOGUUID, CATALOGNAME, TENANT_ID, PRESSNUM) VALUES (102, '�˹��', 'M', '', 10, '1', 'sysadmin', 60, 'N', 0, '', '2016-03-03 10:06:07', '2016-03-03 10:06:07', null, null, null, '/test/WFAgentForm.jsp?state=edit', 102, 104, '', 0, '', '����������1_20160303_sysadmin', '�˹��', 21, 'com.sfy.oa.test.testWorkFlow', '����������1', 'manualActivity', null, '', 0, '1', 102, 'NNYYNYNN', 'W', null, null, null, null, null, null, null, null, null, '6514217f4ccc4280b3e56591c806c15d', '������ҵ��Ŀ¼1', null, 0);
