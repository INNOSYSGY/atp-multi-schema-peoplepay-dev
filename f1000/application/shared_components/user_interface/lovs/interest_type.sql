prompt --application/shared_components/user_interface/lovs/interest_type
begin
--   Manifest
--     INTEREST_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854226538983239136)
,p_lov_name=>'INTEREST_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3854226538983239136)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854226103048239136)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Compound'
,p_lov_return_value=>'COMPOUND'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854225777365239136)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'None'
,p_lov_return_value=>'NONE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854225305169239134)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Simple'
,p_lov_return_value=>'SIMPLE'
);
wwv_flow_imp.component_end;
end;
/
