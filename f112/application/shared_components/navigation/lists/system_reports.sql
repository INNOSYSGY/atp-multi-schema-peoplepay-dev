prompt --application/shared_components/navigation/lists/system_reports
begin
--   Manifest
--     LIST: System Reports
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3326945352702323094)
,p_name=>'System Reports'
,p_list_status=>'PUBLIC'
,p_version_scn=>44429684141102
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326945050290323093)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Error Log'
,p_list_item_link_target=>'f?p=&APP_ID.:1360:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#error_log.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTERRORLOG'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326944691923323093)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Process Log'
,p_list_item_link_target=>'f?p=&APP_ID.:1361:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#process_log.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTPROCESSLOG'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326944212820323093)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'User Login Log'
,p_list_item_link_target=>'f?p=&APP_ID.:1362:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#user_logins.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTUSERLOGINLOG'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326943865585323093)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'View Tips'
,p_list_item_link_target=>'f?p=&APP_ID.:1426:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#view_tips.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTTIPS'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326943444891323093)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Approval History'
,p_list_item_link_target=>'f?p=&APP_ID.:1482:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#approval_history.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTAPPROVALHISTORY'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326943085076323091)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Leave Track'
,p_list_item_link_target=>'f?p=&APP_ID.:1433:&SESSION.::&DEBUG.::P1417_H_EMP_ID:NULL:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#query_leave.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTLEAVETRACK''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326942627923323091)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Payslips'
,p_list_item_link_target=>'f?p=&APP_ID.:1355:&SESSION.::&DEBUG.::P1355_RETURN_VALUE:23:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#payslip.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTPAYROLLANALYSIS''',
'',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326941817401323090)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'TroubleShooting Payroll'
,p_list_item_link_target=>'f?p=&APP_ID.:1500:&SESSION.::&DEBUG.:1500:P1500_RETURN_VALUE:23:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#trouble_shooting.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTPAYROLLTROUBLESHOOT'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3278406309724432933)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'GRA Tax Calculator'
,p_list_item_link_target=>'javascript:var x=window.open(''https://www.gra.gov.gy/income-tax-calculator#'',''_blank'');'||wwv_flow.LF||
''
,p_list_item_disp_cond_type=>'EXPRESSION'
,p_list_item_disp_condition=>':APP_COUNTRY = ''GUYANA'''
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3320499343305041017)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'User Productivity'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3298351068103352883)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Notification History'
,p_list_item_link_target=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3199975488414199309)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Republic Bank List'
,p_list_item_link_target=>'f?p=&APP_ID.:8031:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTREPUBLICBANKUPGRADE'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3230833901788206764)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Productivity Detail Report'
,p_list_item_link_target=>'f?p=&APP_ID.:192:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
