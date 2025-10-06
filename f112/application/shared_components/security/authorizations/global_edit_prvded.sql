prompt --application/shared_components/security/authorizations/global_edit_prvded
begin
--   Manifest
--     SECURITY SCHEME: GLOBAL_EDIT_PRVDED
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3275813849595308879)
,p_name=>'GLOBAL_EDIT_PRVDED'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from PA_PMG_YTDADMINDEDUCTION A',
'where exists (select 1',
'              from pa_pmg_payrollprvytd b',
'              where a.year_to_date_id=b.id',
'              and org_id=:APP_ORG_ID',
'              AND b.pay_status=''N''',
'              AND year_to_date_id=:YEAR_TO_DATE_ID)'))
,p_error_message=>'Record is paid changes not allowed.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
