prompt --application/shared_components/user_interface/lovs/att_execution_source
begin
--   Manifest
--     ATT_EXECUTION_SOURCE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(556694896498042450)
,p_lov_name=>'ATT_EXECUTION_SOURCE'
,p_lov_query=>'.'||wwv_flow_imp.id(556694896498042450)||'.'
,p_location=>'STATIC'
,p_version_scn=>44429675465004
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556694557311042449)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Earnings Period'
,p_lov_return_value=>'EARNINGS_PERIOD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556694158489042448)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Organisation'
,p_lov_return_value=>'ORGANISATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556693714683042447)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Global Only'
,p_lov_return_value=>'GLOBAL'
);
wwv_flow_imp.component_end;
end;
/
