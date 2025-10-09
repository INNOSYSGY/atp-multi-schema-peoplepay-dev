prompt --application/shared_components/user_interface/lovs/job_classification
begin
--   Manifest
--     JOB_CLASSIFICATION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3853935888148092884)
,p_lov_name=>'JOB_CLASSIFICATION'
,p_lov_query=>'.'||wwv_flow_imp.id(3853935888148092884)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853935517066092883)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Technical Rated'
,p_lov_return_value=>'Technical'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853935058093092883)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non-Technical Rated'
,p_lov_return_value=>'Administrative'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(659026737725178758)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Exempt'
,p_lov_return_value=>'Exempt'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(659027037382178759)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Non-Exempt'
,p_lov_return_value=>'Non-Exempt'
);
wwv_flow_imp.component_end;
end;
/
