prompt --application/shared_components/user_interface/lovs/lov_parameter_type
begin
--   Manifest
--     LOV_PARAMETER_TYPE
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
 p_id=>wwv_flow_imp.id(3853933573099092882)
,p_lov_name=>'LOV_PARAMETER_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3853933573099092882)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853933153765092873)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Date'
,p_lov_return_value=>'DATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853932799758092872)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Text'
,p_lov_return_value=>'TEXT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853932346302092872)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'List of Value'
,p_lov_return_value=>'LOV'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853932007568092872)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Popup'
,p_lov_return_value=>'POPUP_LOV_QUERY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853931556121092872)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Advance Date Picker'
,p_lov_return_value=>'DATE2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853931177643092872)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'LOV_QUERY'
,p_lov_return_value=>'LOV_QUERY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3808481667316528937)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Select2 [Plug-in]'
,p_lov_return_value=>'SELECT2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3808481288960528936)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Select2 based on SQL Query [Plug-in]'
,p_lov_return_value=>'SELECT2_QUERY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3725854163477584918)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'LOV_QUERY_XL'
,p_lov_return_value=>'LOV_QUERY_XL'
);
wwv_flow_imp.component_end;
end;
/
