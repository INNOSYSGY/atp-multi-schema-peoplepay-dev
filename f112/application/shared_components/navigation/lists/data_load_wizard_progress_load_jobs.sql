prompt --application/shared_components/navigation/lists/data_load_wizard_progress_load_jobs
begin
--   Manifest
--     LIST: Data Load Wizard Progress - Load_jobs
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
 p_id=>wwv_flow_imp.id(3321121323520763983)
,p_name=>'Data Load Wizard Progress - Load_jobs'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3321121633760763984)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'gplData Load Source'
,p_list_item_link_target=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3321122374275763985)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'gplData Validation'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
