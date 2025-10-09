prompt --application/shared_components/logic/application_computations/reports_url
begin
--   Manifest
--     APPLICATION COMPUTATION: REPORTS_URL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(635222659405295512)
,p_computation_sequence=>4
,p_computation_item=>'REPORTS_URL'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TABLE_VALUE',
'from HR_HCF_LOOKUP ',
'where upper(VALUE_DESCRIPTION) =''JASPERSERVER URL'' ',
'and org_id = :APP_ORG_SHR_DED',
'and rownum = 1'))
,p_version_scn=>42211816714574
);
wwv_flow_imp.component_end;
end;
/
