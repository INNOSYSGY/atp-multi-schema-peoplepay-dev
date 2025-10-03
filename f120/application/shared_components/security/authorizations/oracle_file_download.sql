prompt --application/shared_components/security/authorizations/oracle_file_download
begin
--   Manifest
--     SECURITY SCHEME: ORACLE_FILE_DOWNLOAD
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(3492667543979510708)
,p_name=>'ORACLE_FILE_DOWNLOAD'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_pay_oraclechecks_sum',
'where verified_by is not null',
'and period_start= :P110_PAYROLL_START_PERIODS',
'and payment_type= :P110_PAYMENT_TYPE'))
,p_error_message=>'You don''t have access to download this file since it is not verified.'
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/
