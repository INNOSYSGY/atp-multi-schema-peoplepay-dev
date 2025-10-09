prompt --application/shared_components/user_interface/lovs/job_classification
begin
--   Manifest
--     JOB_CLASSIFICATION
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
 p_id=>wwv_flow_imp.id(3854076590387160110)
,p_lov_name=>'JOB_CLASSIFICATION'
,p_lov_query=>'.'||wwv_flow_imp.id(3854076590387160110)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854076219305160109)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Technical Rated'
,p_lov_return_value=>'Technical'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854075760332160109)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non-Technical Rated'
,p_lov_return_value=>'Administrative'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(659167439964245984)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Exempt'
,p_lov_return_value=>'Exempt'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(659167739621245985)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Non-Exempt'
,p_lov_return_value=>'Non-Exempt'
);
wwv_flow_imp.component_end;
end;
/
