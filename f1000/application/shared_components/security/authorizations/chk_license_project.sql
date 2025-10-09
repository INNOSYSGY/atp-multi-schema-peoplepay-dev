prompt --application/shared_components/security/authorizations/chk_license_project
begin
--   Manifest
--     SECURITY SCHEME: chk_license_Project
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3825154069316247215)
,p_name=>'chk_license_Project'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from APP_MODULE_LICENCE a',
'where trunc(current_date) between trunc(START_LICENCE_DATE) and trunc(EXPIRY_LICENCE_DATE)',
'and exists ( select 1',
'                  from VW_USERACCESS w',
'                  where a.org_id=w.org_id )',
'and exists (select 1',
'            from APP_MODULE b',
'            where a.APP_MODULE_ID=b.id',
'            and upper(MODULE_NAME)=''PROJECT MANAGEMENT''',
'            and trunc(b.START_DATE) <= trunc(current_date)',
'            and (b.END_DATE is null or trunc(b.END_DATE) >= trunc(current_date))',
'            )'))
,p_error_message=>'No active license found for Project Management Module. Kindly contact Innosys Inc at 592-226-8964, 592-672-0295, 592-623-8964, 592-501-0589.                      '
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
