prompt --application/shared_components/user_interface/lovs/day_of_the_week
begin
--   Manifest
--     DAY OF THE WEEK
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
 p_id=>wwv_flow_imp.id(3709724009305465050)
,p_lov_name=>'DAY OF THE WEEK'
,p_lov_query=>'.'||wwv_flow_imp.id(3709724009305465050)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709723740416465049)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Monday'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709723305683465047)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Tuesday'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709722928562465047)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Wednesday'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709722518646465047)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Thursday'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709722157451465047)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Friday'
,p_lov_return_value=>'6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709721779496465047)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Saturday'
,p_lov_return_value=>'7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709721364951465046)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Sunday'
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
