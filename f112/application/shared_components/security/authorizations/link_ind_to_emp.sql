prompt --application/shared_components/security/authorizations/link_ind_to_emp
begin
--   Manifest
--     SECURITY SCHEME: link_ind_to_emp
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
 p_id=>wwv_flow_imp.id(3254537850705972058)
,p_name=>'link_ind_to_emp'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM QRY_USER_PAGE_DML_ACCESS',
'WHERE WEBPAGE_ID=1281',
'AND CAN_VIEW=''Y'''))
,p_error_message=>'You don''t have the access to view employees.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
