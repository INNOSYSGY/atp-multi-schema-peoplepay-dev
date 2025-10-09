prompt --application/shared_components/logic/application_computations/start_login
begin
--   Manifest
--     APPLICATION COMPUTATION: START_LOGIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3825447402289104110)
,p_computation_sequence=>14
,p_computation_item=>'START_LOGIN'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(current_date, ''DD-MON-YYYY HH:MI am'')',
'FROM DUAL'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
