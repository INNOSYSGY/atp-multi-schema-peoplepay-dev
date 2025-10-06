prompt --application/shared_components/user_interface/lovs/payroll_paramters
begin
--   Manifest
--     PAYROLL_PARAMTERS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3232264591431268676)
,p_lov_name=>'PAYROLL_PARAMTERS'
,p_lov_query=>'.'||wwv_flow_imp.id(3232264591431268676)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232264269598268676)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employee'
,p_lov_return_value=>'EMPLOYEE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232260709521268673)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Employment Class'
,p_lov_return_value=>'EMPLOYMENT_CLASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232263437124268675)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Employment Type'
,p_lov_return_value=>'EMPLOYMENT_TYPE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232263033604268674)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Grade Scale'
,p_lov_return_value=>'GRADE_SCALE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232261430537268674)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Job'
,p_lov_return_value=>'JOB'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232261064249268673)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Organisation Structure'
,p_lov_return_value=>'ORG_STRUCTURE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232262247407268674)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Union'
,p_lov_return_value=>'UNION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3232263844870268675)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Work Location'
,p_lov_return_value=>'WORK_LOCATION'
);
wwv_flow_imp.component_end;
end;
/
