prompt --application/shared_components/user_interface/lovs/org_population
begin
--   Manifest
--     ORG_POPULATION
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
 p_id=>wwv_flow_imp.id(3326482093929690545)
,p_lov_name=>'ORG_POPULATION'
,p_lov_query=>'.'||wwv_flow_imp.id(3326482093929690545)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326481649264690545)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'MANUAL'
,p_lov_return_value=>'MANUAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326481382190690539)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'AUTOMATIC'
,p_lov_return_value=>'AUTOMATIC'
);
wwv_flow_imp.component_end;
end;
/
