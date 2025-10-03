prompt --application/shared_components/user_interface/lovs/increase_method
begin
--   Manifest
--     INCREASE_METHOD
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
 p_id=>wwv_flow_imp.id(3632553651629481223)
,p_lov_name=>'INCREASE_METHOD'
,p_lov_query=>'.'||wwv_flow_imp.id(3632553651629481223)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632553171903481223)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allowance'
,p_lov_return_value=>'Allowance'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632552850267481223)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Benefit'
,p_lov_return_value=>'Benefit'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632552444105481223)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Incentive'
,p_lov_return_value=>'Incentive'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632552058649481221)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Refund'
,p_lov_return_value=>'Refund'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632551621143481221)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Earnings'
,p_lov_return_value=>'Earnings'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632551210963481221)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Personal/Basic Rate'
,p_lov_return_value=>'PERSONAL_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632550408073481219)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'All Fringe Benefits'
,p_lov_return_value=>'-1'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
