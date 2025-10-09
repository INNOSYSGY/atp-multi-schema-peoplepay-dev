prompt --application/shared_components/user_interface/lovs/quota_control
begin
--   Manifest
--     QUOTA_CONTROL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3508959391856569000)
,p_lov_name=>'QUOTA_CONTROL'
,p_lov_query=>'.'||wwv_flow_imp.id(3508959391856569000)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3508959704376569004)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hard'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3508960189469569006)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Soft'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3508960521264569006)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'None'
,p_lov_return_value=>'0'
);
wwv_flow_imp.component_end;
end;
/
