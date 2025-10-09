prompt --application/shared_components/navigation/lists/security
begin
--   Manifest
--     LIST: security
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3806801035936326607)
,p_name=>'security'
,p_list_status=>'PUBLIC'
,p_version_scn=>41798618588985
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3713975968815326112)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Modules'
,p_list_item_link_target=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND upper(WEBPAGE_NAME)=''FRMMODULES''',
'and :APP_USER LIKE ''%RLANGFORD%'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806800728775326605)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Costing'
,p_list_item_link_target=>'f?p=&APP_ID.:1800:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#APP_IMAGES#AppLock.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND upper(WEBPAGE_NAME)=''RPTLICENSEPAYMENT''',
'and :APP_USER in (''BSINGH@INNOSYSGY.COM'', ''RLANGFORD@INNOSYSGY.COM'',''PJOSEPH@INNOSYSGY.COM'', ''ICARTER@INNOSYSGY.COM'')'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806800323901326604)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Webpage'
,p_list_item_link_target=>'f?p=&APP_ID.:1320:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#responsinility_page.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'and WEBPAGE_NAME=''RPTPAGELIST''',
'and :APP_USER like ''%@INNOSYSGY.COM'''))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806799902187326603)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Responsibility'
,p_list_item_link_target=>'f?p=&APP_ID.:1323:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#secrecy-icon.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTRESPORGPAGE1''',
''))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806799529080326603)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Account'
,p_list_item_link_target=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#user_account.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTUSERACCOUNT'''))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806799170372326603)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Responsibility Pages'
,p_list_item_link_target=>'f?p=&APP_ID.:1325:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#responsibility_user.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTRESPORGPAGE'''))
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806798774701326603)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Responsibility Users'
,p_list_item_link_target=>'f?p=&APP_ID.:1334:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#user_roles.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTRESPONSIBILITYUSERS'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806798303759326602)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Configure Audit Trail or Self Serve'
,p_list_item_link_target=>'f?p=&APP_ID.:1452:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#Audit_Trail.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTAUDITCONFIGURATION''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806797903587326602)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'View Audit Trail or Self Serve History'
,p_list_item_link_target=>'f?p=&APP_ID.:1453:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#viewing_audit_trail.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTAUDITTRAIL'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806797557906326602)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Potential Clients'
,p_list_item_link_target=>'f?p=&APP_ID.:10020:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#taxpayer.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND upper(WEBPAGE_NAME)=''RPTFINDTAXPAYER''',
'and :APP_USER in (''GTT'', ''RLANGFORD'',''JBACCHUS'',''LFREDERICKS'',''JCUMMINGS'')'))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3806797116521326602)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'New Registrants'
,p_list_item_link_target=>'f?p=&APP_ID.:1202:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#Saas_client.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''SECURITY''',
'AND WEBPAGE_NAME=''RPTDAILYREGSAAS'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2113320849373411483)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Multi Schema Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_USER = ''RLANGFORD@INNOSYSGY.COM'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
