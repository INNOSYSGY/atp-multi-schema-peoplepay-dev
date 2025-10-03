prompt --application/shared_components/user_interface/lovs/request_type_training
begin
--   Manifest
--     REQUEST_TYPE_TRAINING
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1185317781472128121)
,p_lov_name=>'REQUEST_TYPE_TRAINING'
,p_lov_query=>'.'||wwv_flow_imp.id(1185317781472128121)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185318195746128122)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Self'
,p_lov_return_value=>'SELF'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185318581368128122)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'System'
,p_lov_return_value=>'SYSTEM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185319049679128122)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Officer'
,p_lov_return_value=>'OFFICER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1185319421435128123)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Appraisal'
,p_lov_return_value=>'APPRAISAL'
);
wwv_flow_imp.component_end;
end;
/
