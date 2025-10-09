prompt --application/shared_components/user_interface/lovs/earnings_type
begin
--   Manifest
--     EARNINGS_TYPE
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
 p_id=>wwv_flow_imp.id(3854132688046211373)
,p_lov_name=>'EARNINGS_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3854132688046211373)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854132228494211372)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Regular'
,p_lov_return_value=>'RG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854131904488211372)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Back Pay'
,p_lov_return_value=>'BK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854131516601211372)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gratuity'
,p_lov_return_value=>'GT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854130635427211371)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Leave Passage'
,p_lov_return_value=>'LP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854130248205211368)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Holiday Pay'
,p_lov_return_value=>'HP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854129907850211368)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Bonus'
,p_lov_return_value=>'BONUS'
);
wwv_flow_imp.component_end;
end;
/
