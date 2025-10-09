prompt --application/shared_components/user_interface/lovs/ach_filetype
begin
--   Manifest
--     ACH_FILETYPE
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
 p_id=>wwv_flow_imp.id(579239652664250989)
,p_lov_name=>'ACH_FILETYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(579239652664250989)||'.'
,p_location=>'STATIC'
,p_version_scn=>44427420080246
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(579239917937251003)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'.ACH'
,p_lov_return_value=>'.ACH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(579240367820251007)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'.CSV'
,p_lov_return_value=>'.CSV'
);
wwv_flow_imp.component_end;
end;
/
