prompt --application/shared_components/legacy_data_loads/pa_pmg_ytdadmindeduction
begin
--   Manifest
--     PA_PMG_YTDADMINDEDUCTION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(3583604386394586903)
,p_name=>'LOAD_PRV_YTD_DED'
,p_owner=>'#OWNER#'
,p_table_name=>'PA_PMG_YTDADMINDEDUCTION'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(3583604146473586900)
,p_load_table_id=>wwv_flow_imp.id(3583604386394586903)
,p_load_column_name=>'EMP_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'VW_PRVYTD_LKUP'
,p_key_column=>'EMP_ID'
,p_display_column=>'EMP_COMPANY_NO'
,p_where_clause=>'ORG_ID=:APP_ORG_ID'
,p_insert_new_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
