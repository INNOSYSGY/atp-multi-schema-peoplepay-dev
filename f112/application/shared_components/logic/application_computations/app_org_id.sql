prompt --application/shared_components/logic/application_computations/app_org_id
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_ORG_ID
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
 p_id=>wwv_flow_imp.id(3298037819055855997)
,p_computation_sequence=>1
,p_computation_item=>'APP_ORG_ID'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id ',
'FROM hr_hcf_organisation B',
'where exists (select 1',
'              FROM tbluserdetail A join tbluser c on c.USER_ID=a.USER_ID',
'              where  trunc(A.effective_from) <= trunc(current_date)',
'              AND (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'              AND UPPER(user_name) = UPPER(:APP_USER)',
'              and APPLICATION_SCHEMA_NAME = upper(:G_PARSING_SCHEMA)',
'              and A.org_id=B.ID)',
'and rownum=1'))
,p_computation_error_message=>'Current user has more than one active companies. Contact System Administrator to fix your account.	'
,p_version_scn=>41799226558923
);
wwv_flow_imp.component_end;
end;
/
