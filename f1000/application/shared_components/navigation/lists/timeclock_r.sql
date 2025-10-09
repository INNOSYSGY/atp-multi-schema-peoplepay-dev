prompt --application/shared_components/navigation/lists/timeclock_r
begin
--   Manifest
--     LIST: TimeClock R
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
 p_id=>wwv_flow_imp.id(3696437832792676276)
,p_name=>'TimeClock R'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3693994435279228530)
,p_list_item_display_sequence=>1
,p_list_item_link_text=>'Timeclock Faceted Search'
,p_list_item_link_target=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3696437128274676274)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Employee Imported Times'
,p_list_item_link_target=>'f?p=&APP_ID.:1371:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3720561387712496729)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Employee Time Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
