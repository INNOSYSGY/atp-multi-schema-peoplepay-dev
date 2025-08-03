prompt --application/shared_components/user_interface/lovs/earnings_type
begin
--   Manifest
--     EARNINGS_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326581569883849584)
,p_lov_name=>'EARNINGS_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3326581569883849584)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326581110331849583)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Regular'
,p_lov_return_value=>'RG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326580786325849583)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Back Pay'
,p_lov_return_value=>'BK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326580398438849583)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gratuity'
,p_lov_return_value=>'GT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326579517264849582)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Leave Passage'
,p_lov_return_value=>'LP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326579130042849579)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Holiday Pay'
,p_lov_return_value=>'HP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326578789687849579)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Bonus'
,p_lov_return_value=>'BONUS'
);
wwv_flow_imp.component_end;
end;
/
