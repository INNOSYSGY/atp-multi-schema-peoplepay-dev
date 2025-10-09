prompt --application/shared_components/user_interface/lovs/increase_method
begin
--   Manifest
--     INCREASE_METHOD
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
 p_id=>wwv_flow_imp.id(3854096910450160143)
,p_lov_name=>'INCREASE_METHOD'
,p_lov_query=>'.'||wwv_flow_imp.id(3854096910450160143)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854096430724160143)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allowance'
,p_lov_return_value=>'Allowance'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854096109088160143)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Benefit'
,p_lov_return_value=>'Benefit'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854095702926160143)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Incentive'
,p_lov_return_value=>'Incentive'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854095317470160141)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Refund'
,p_lov_return_value=>'Refund'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854094879964160141)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Earnings'
,p_lov_return_value=>'Earnings'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854094469784160141)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Personal/Basic Rate'
,p_lov_return_value=>'PERSONAL_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854093666894160139)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'All Fringe Benefits'
,p_lov_return_value=>'-1'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
