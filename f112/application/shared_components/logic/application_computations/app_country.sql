prompt --application/shared_components/logic/application_computations/app_country
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_COUNTRY
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
 p_id=>wwv_flow_imp.id(2640806201407207326)
,p_computation_sequence=>4
,p_computation_item=>'APP_COUNTRY'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRIM(UPPER(COUNTRY)) A',
'FROM HR_HCF_ORGANISATION',
'WHERE ID =:APP_ORG_ID'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
