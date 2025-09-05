prompt --application/shared_components/user_interface/lovs/pa_pcf_payroll_emp_emp_company_no
begin
--   Manifest
--     PA_PCF_PAYROLL_EMP.EMP_COMPANY_NO
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(17695282204431016)
,p_lov_name=>'PA_PCF_PAYROLL_EMP.EMP_COMPANY_NO'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PA_PCF_PAYROLL_EMP'
,p_return_column_name=>'ID'
,p_display_column_name=>'EMP_COMPANY_NO'
,p_default_sort_column_name=>'EMP_COMPANY_NO'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41801109050794
);
wwv_flow_imp.component_end;
end;
/
