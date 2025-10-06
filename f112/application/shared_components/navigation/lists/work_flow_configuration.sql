prompt --application/shared_components/navigation/lists/work_flow_configuration
begin
--   Manifest
--     LIST: Work Flow Configuration
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
 p_id=>wwv_flow_imp.id(3326939919346323089)
,p_name=>'Work Flow Configuration'
,p_list_status=>'PUBLIC'
,p_version_scn=>41835851128335
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326939617438323088)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Configuration'
,p_list_item_link_target=>'f?p=&APP_ID.:1385:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#workflow_config.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTWORKFLOWCONFIG''',
''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326939208640323088)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Transactions'
,p_list_item_link_target=>'f?p=&APP_ID.:1388:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#workflow_trans.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTWORKFLOWTRANSACTION'''))
,p_security_scheme=>wwv_flow_imp.id(3279325973588677334)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326938896462323087)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Forward List'
,p_list_item_link_target=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#forward_all.jpg'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTWRKFLWFORWARDLIST'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326938430575323087)
,p_list_item_display_sequence=>31
,p_list_item_link_text=>'Outstanding'
,p_list_item_link_target=>'f?p=&APP_ID.:1481:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'#WORKSPACE_IMAGES#outstanding_task.png'
,p_list_item_icon_attributes=>'height="64" width="64"'
,p_list_item_disp_cond_type=>'EXISTS'
,p_list_item_disp_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USERTABSACCESS',
'WHERE APPLICATION_TAB = ''UTILITY''',
'AND upper(WEBPAGE_NAME)=''RPTOUTSTANDINGWKFLW'''))
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(47285404020863375)
,p_list_item_display_sequence=>41
,p_list_item_link_text=>'Payroll Flow'
,p_list_item_link_target=>'f?p=&APP_ID.:1195:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-angle-double-right'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
