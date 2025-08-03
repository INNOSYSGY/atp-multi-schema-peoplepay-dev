prompt --application/shared_components/legacy_data_loads/hr_rcm_empentitle
begin
--   Manifest
--     HR_RCM_EMPENTITLE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_load_table(
 p_id=>wwv_flow_imp.id(3276630050120055384)
,p_name=>'load_oth_ent'
,p_owner=>'#OWNER#'
,p_table_name=>'HR_RCM_EMPENTITLE'
,p_unique_column_1=>'ID'
,p_is_uk1_case_sensitive=>'N'
,p_is_uk2_case_sensitive=>'N'
,p_is_uk3_case_sensitive=>'N'
,p_skip_validation=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(3276629756458055384)
,p_load_table_id=>wwv_flow_imp.id(3276630050120055384)
,p_load_column_name=>'EMP_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'HR_RCM_EMPLOYEE'
,p_key_column=>'ID'
,p_display_column=>'MIGRATE_PK'
,p_insert_new_value=>'N'
);
wwv_flow_imp_shared.create_load_table_lookup(
 p_id=>wwv_flow_imp.id(3276538778882017411)
,p_load_table_id=>wwv_flow_imp.id(3276630050120055384)
,p_load_column_name=>'INCOME_CODE_ID'
,p_lookup_owner=>'#OWNER#'
,p_lookup_table_name=>'PA_PCF_INCOMECODE'
,p_key_column=>'ID'
,p_display_column=>'DESCRIPTION'
,p_where_clause=>'org_id=:APP_ORG_ID'
,p_insert_new_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
