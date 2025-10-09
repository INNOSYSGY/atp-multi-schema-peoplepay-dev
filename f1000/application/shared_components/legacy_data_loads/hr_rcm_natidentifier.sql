prompt --application/shared_components/legacy_data_loads/hr_rcm_natidentifier
begin
--   Manifest
--     HR_RCM_NATIDENTIFIER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(3804611729524637157)
,p_name=>'load_NATIND'
,p_owner=>'#OWNER#'
,p_table_name=>'HR_RCM_NATIDENTIFIER'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(3804611414053637157)
,p_load_table_id=>wwv_flow_imp.id(3804611729524637157)
,p_load_column_name=>'IND_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'HR_RCM_INDIVIDUAL'
,p_key_column=>'ID'
,p_display_column=>'MIGRATE_PK'
,p_where_clause=>'ind_org_id=:APP_ORG_ID'
,p_insert_new_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
