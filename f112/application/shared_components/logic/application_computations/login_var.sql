prompt --application/shared_components/logic/application_computations/login_var
begin
--   Manifest
--     APPLICATION COMPUTATION: LOGIN_VAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(158756404148557161)
,p_computation_sequence=>10
,p_computation_item=>'LOGIN_VAR'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'EXPRESSION'
,p_computation_language=>'PLSQL'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'SYS_CONTEXT (''USERENV'', ''HOST'')'
,p_version_scn=>41463492821554
);
wwv_flow_imp.component_end;
end;
/
