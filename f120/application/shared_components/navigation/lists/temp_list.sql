prompt --application/shared_components/navigation/lists/temp_list
begin
--   Manifest
--     LIST: Temp List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3632936485957972498)
,p_name=>'Temp List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632935781769972496)
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
 p_id=>wwv_flow_imp.id(3632935401508972491)
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
 p_id=>wwv_flow_imp.id(3632934975805972491)
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
 p_id=>wwv_flow_imp.id(3632934641226972491)
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
 p_id=>wwv_flow_imp.id(3632934218521972490)
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
 p_id=>wwv_flow_imp.id(3632933845657972490)
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
 p_id=>wwv_flow_imp.id(3632933386217972489)
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
 p_id=>wwv_flow_imp.id(3632936200378972496)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Pharma Dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3573591640848911272)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'HRMIS Process Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:10531:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3601862288861807980)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'HR Dashboards'
,p_list_item_link_target=>'f?p=&APP_ID.:3012:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
