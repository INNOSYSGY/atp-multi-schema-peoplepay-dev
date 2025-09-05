prompt --application/shared_components/user_interface/lovs/income_type
begin
--   Manifest
--     INCOME_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326548088606798356)
,p_lov_name=>'INCOME_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3326548088606798356)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326547671996798356)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Allowance'
,p_lov_return_value=>'Allowance'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326547260638798356)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Benefit'
,p_lov_return_value=>'Benefit'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326546854111798355)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Incentive'
,p_lov_return_value=>'Incentive'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326546496148798355)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Refund'
,p_lov_return_value=>'Refund'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326546015398798354)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Earnings'
,p_lov_return_value=>'Earnings'
);
wwv_flow_imp.component_end;
end;
/
