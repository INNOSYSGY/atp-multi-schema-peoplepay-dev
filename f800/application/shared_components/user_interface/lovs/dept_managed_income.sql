prompt --application/shared_components/user_interface/lovs/dept_managed_income
begin
--   Manifest
--     DEPT_MANAGED_INCOME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3705885927752734253)
,p_lov_name=>'DEPT_MANAGED_INCOME'
,p_lov_query=>'.'||wwv_flow_imp.id(3705885927752734253)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3705886249823734259)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Payroll'
,p_lov_return_value=>'PAYROLL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3705886621979734260)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Human Resources'
,p_lov_return_value=>'HR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3705887020366734260)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'External Departments'
,p_lov_return_value=>'EXT_DEPT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3705887440344734260)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'All'
,p_lov_return_value=>'ALL'
);
wwv_flow_imp.component_end;
end;
/
