prompt --application/shared_components/logic/application_computations/reports_url_multi
begin
--   Manifest
--     APPLICATION COMPUTATION: REPORTS_URL_MULTI
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
 p_id=>wwv_flow_imp.id(107537724699139789)
,p_computation_sequence=>4
,p_computation_item=>'REPORTS_URL_MULTI'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TABLE_VALUE',
'from HR_HCF_LOOKUP ',
'where upper(VALUE_DESCRIPTION) =''JASPERSERVER URL MULTI'' ',
'and org_id = :APP_ORG_SHR_DED',
'and rownum=1'))
,p_version_scn=>42211816984405
);
wwv_flow_imp.component_end;
end;
/
