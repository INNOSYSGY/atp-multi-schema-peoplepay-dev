prompt --application/shared_components/security/authorizations/scrs_edit_access
begin
--   Manifest
--     SECURITY SCHEME: SCRS_EDIT_ACCESS
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
 p_id=>wwv_flow_imp.id(3713933025940341774)
,p_name=>'SCRS_EDIT_ACCESS'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from  VW_EARNNOTPAID',
'where id = :P1350_EARNINGS_PERIOD_ID ',
'AND exists (SELECT 1',
'            FROM QRY_USER_PAGE_DML_ACCESS',
'            WHERE WEBPAGE_ID = :APP_PAGE_ID',
'            AND CAN_EDIT=''Y''',
'            )'))
,p_error_message=>'You do not have the rights to edit these records. Please contact your system administrator if you believe you should have this access.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
