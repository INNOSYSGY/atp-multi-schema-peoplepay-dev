prompt --application/shared_components/user_interface/lovs/rule_operators
begin
--   Manifest
--     RULE_OPERATORS
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
 p_id=>wwv_flow_imp.id(657359917564783711)
,p_lov_name=>'RULE_OPERATORS'
,p_lov_query=>'.'||wwv_flow_imp.id(657359917564783711)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657360319679783711)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'BETWEEN'
,p_lov_return_value=>'BETWEEN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657360735363783712)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'>'
,p_lov_return_value=>'>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657361073598783712)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'>='
,p_lov_return_value=>'>='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657361477531783712)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'<'
,p_lov_return_value=>'<'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657361906112783712)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'='
,p_lov_return_value=>'='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657362284807783712)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'>='
,p_lov_return_value=>'>='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657362732639783713)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'NOT BETWEEN'
,p_lov_return_value=>'NOT BETWEEN'
);
wwv_flow_imp.component_end;
end;
/
