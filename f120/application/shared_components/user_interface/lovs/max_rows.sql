prompt --application/shared_components/user_interface/lovs/max_rows
begin
--   Manifest
--     MAX ROWS
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
 p_id=>wwv_flow_imp.id(3631405234693484094)
,p_lov_name=>'MAX ROWS'
,p_lov_query=>'.'||wwv_flow_imp.id(3631405234693484094)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631405703390484094)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'20'
,p_lov_return_value=>'20'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631406059627484095)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'50'
,p_lov_return_value=>'50'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631406489255484095)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'100'
,p_lov_return_value=>'100'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631406870861484095)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'200'
,p_lov_return_value=>'200'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631407299355484095)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'500'
,p_lov_return_value=>'500'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631407708212484095)
,p_lov_disp_sequence=>60
,p_lov_disp_value=>'1000'
,p_lov_return_value=>'1000'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631408049534484096)
,p_lov_disp_sequence=>70
,p_lov_disp_value=>'All'
,p_lov_return_value=>'100000000'
);
wwv_flow_imp.component_end;
end;
/
