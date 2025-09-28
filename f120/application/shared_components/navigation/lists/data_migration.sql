prompt --application/shared_components/navigation/lists/data_migration
begin
--   Manifest
--     LIST: data-migration
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
 p_id=>wwv_flow_imp.id(3637434633177681834)
,p_name=>'data-migration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3637434784661681838)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Addresses'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3637457531055795697)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Unverified Individuals'
,p_list_item_link_target=>'f?p=&APP_ID.:74:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
