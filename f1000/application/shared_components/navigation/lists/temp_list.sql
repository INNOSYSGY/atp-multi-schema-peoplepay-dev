prompt --application/shared_components/navigation/lists/temp_list
begin
--   Manifest
--     LIST: Temp List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3854620414639730429)
,p_name=>'Temp List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854619710451730427)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Payroll Dashboards'
,p_list_item_link_target=>'f?p=&APP_ID.:1380:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#Business-Trends.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTANALYTICS'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854619330190730422)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Organisation structure'
,p_list_item_link_target=>'f?p=&APP_ID.:1455:&SESSION.::&DEBUG.::P1455_RETURN_PAGE:1370:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#organisation_structure.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTORGANISATIONCHART'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854618904487730422)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Work Flow Path'
,p_list_item_link_target=>'f?p=&APP_ID.:1449:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#workflow_path.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTWORKFLOWTREE'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854618569908730422)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Employee Calendar'
,p_list_item_link_target=>'f?p=&APP_ID.:1442:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#emp_calendar_new.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''FRMEMPCALENDAR'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854618147203730421)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Employee HR Processes'
,p_list_item_link_target=>'f?p=&APP_ID.:1450:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#hr_processes.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTEMPLOYEETREE'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854617774339730421)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Position Structure'
,p_list_item_link_target=>'f?p=&APP_ID.:1460:&SESSION.::&DEBUG.::P1460_RETURN_PAGE:1370:'
,p_list_item_icon=>'#WORKSPACE_IMAGES#position_structure.png'
,p_list_item_icon_attributes=>'height="66" width="66"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTJOBREPORTINGCHART'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854617314899730420)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Leave Types'
,p_list_item_link_target=>'f?p=&APP_ID.:1382:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#leave_analysis.png'
,p_list_item_icon_attributes=>'height="66" width="66"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTANALYSIS3'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854620129060730427)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Pharma Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3795275569530669203)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'HRMIS Process Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:10531:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3823546217543565911)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'HR Dashboards'
,p_list_item_link_target=>'f?p=&APP_ID.:3012:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
