prompt --application/shared_components/user_interface/lovs/job_classification
begin
--   Manifest
--     JOB_CLASSIFICATION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632533331566481190)
,p_lov_name=>'JOB_CLASSIFICATION'
,p_lov_query=>'.'||wwv_flow_imp.id(3632533331566481190)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632532960484481189)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Technical Rated'
,p_lov_return_value=>'Technical'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632532501511481189)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Non-Technical Rated'
,p_lov_return_value=>'Administrative'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(437624181143567064)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Exempt'
,p_lov_return_value=>'Exempt'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(437624480800567065)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Non-Exempt'
,p_lov_return_value=>'Non-Exempt'
);
wwv_flow_imp.component_end;
end;
/
