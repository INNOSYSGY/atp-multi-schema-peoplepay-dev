prompt --application/shared_components/user_interface/lovs/yes_no
begin
--   Manifest
--     YES_NO
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
 p_id=>wwv_flow_imp.id(3844225131839162058)
,p_lov_name=>'YES_NO'
,p_lov_query=>'.'||wwv_flow_imp.id(3844225131839162058)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3844224809693162058)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'YES'
,p_lov_return_value=>'Y'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3844224385811162057)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'NO'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
