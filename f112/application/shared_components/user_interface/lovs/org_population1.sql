prompt --application/shared_components/user_interface/lovs/org_population1
begin
--   Manifest
--     ORG_POPULATION1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3305489679896644645)
,p_lov_name=>'ORG_POPULATION1'
,p_lov_query=>'.'||wwv_flow_imp.id(3305489679896644645)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3305489223847644644)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'MANUAL'
,p_lov_return_value=>'MANUAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3305488906525644644)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'AUTOMATIC'
,p_lov_return_value=>'AUTOMATIC'
);
wwv_flow_imp.component_end;
end;
/
