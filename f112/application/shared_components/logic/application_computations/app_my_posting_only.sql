prompt --application/shared_components/logic/application_computations/app_my_posting_only
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_MY_POSTING_ONLY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3192763583386702508)
,p_computation_sequence=>10
,p_computation_item=>'APP_MY_POSTING_ONLY'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select MY_POSTING_ONLY',
'FROM tbluser A',
'where trunc(A.effective_from) <= trunc(current_date)',
'AND (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'AND UPPER(user_name) = UPPER(:APP_USER)',
''))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
