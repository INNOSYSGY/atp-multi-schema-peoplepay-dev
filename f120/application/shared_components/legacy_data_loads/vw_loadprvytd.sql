prompt --application/shared_components/legacy_data_loads/vw_loadprvytd
begin
--   Manifest
--     VW_LOADPRVYTD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(3805703366387809174)
,p_name=>'LOAD_PRV_YTD'
,p_owner=>'#OWNER#'
,p_table_name=>'VW_LOADPRVYTD'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(3805453833708798487)
,p_load_table_id=>wwv_flow_imp.id(3805703366387809174)
,p_load_column_name=>'EMP_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'HR_RCM_EMPLOYEE'
,p_key_column=>'ID'
,p_display_column=>'EMP_COMPANY_NO'
,p_where_clause=>'org_id=:APP_ORG_ID'
,p_insert_new_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
