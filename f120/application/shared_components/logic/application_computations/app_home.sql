prompt --application/shared_components/logic/application_computations/app_home
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_HOME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3824199284066972684)
,p_computation_sequence=>5
,p_computation_item=>'APP_HOME'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select load_home',
'from tbluser',
'where UPPER(user_name) = UPPER(:APP_USER)',
'and rownum=1;'))
,p_computation_error_message=>'Error setting homepage for user. Contact System Administrator to fix your account.'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
