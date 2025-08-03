prompt --application/shared_components/user_interface/lovs/deduction_status
begin
--   Manifest
--     DEDUCTION_STATUS
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
 p_id=>wwv_flow_imp.id(3326617015677913802)
,p_lov_name=>'DEDUCTION_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(3326617015677913802)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326616606949913801)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'IN PROCESS'
,p_lov_return_value=>'IP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326616218024913801)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'SUSPENDED'
,p_lov_return_value=>'SP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326615897448913800)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'CLOSED'
,p_lov_return_value=>'CL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326615408076913800)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'REGISTERED'
,p_lov_return_value=>'RG'
);
wwv_flow_imp.component_end;
end;
/
