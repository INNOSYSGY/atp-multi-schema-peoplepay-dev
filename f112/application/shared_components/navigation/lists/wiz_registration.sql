prompt --application/shared_components/navigation/lists/wiz_registration
begin
--   Manifest
--     LIST: wiz_registration
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3326865073491208094)
,p_name=>'wiz_registration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326864752608208093)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Organisation'
,p_list_item_link_target=>'f?p=&APP_ID.:2020:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326864349159208093)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Org Requirements'
,p_list_item_link_target=>'f?p=&APP_ID.:2021:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326863929081208090)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Payroll Req'
,p_list_item_link_target=>'f?p=&APP_ID.:2025:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326863528641208086)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Organisation Structure'
,p_list_item_link_target=>'f?p=&APP_ID.:2022:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326863187092208085)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Jobs/Grade Scale'
,p_list_item_link_target=>'f?p=&APP_ID.:2023:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326862744066208085)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Position'
,p_list_item_link_target=>'f?p=&APP_ID.:2024:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3326862351302208084)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Completed'
,p_list_item_link_target=>'f?p=&APP_ID.:2028:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
