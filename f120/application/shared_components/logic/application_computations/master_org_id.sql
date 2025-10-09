prompt --application/shared_components/logic/application_computations/master_org_id
begin
--   Manifest
--     APPLICATION COMPUTATION: MASTER_ORG_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3825869742268681742)
,p_computation_sequence=>12
,p_computation_item=>'MASTER_ORG_ID'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT organization_id',
'from tblorganization ',
'where org_id= :APP_ORG_ID',
'and upper(description) like ''%MASTER%'''))
,p_computation_error_message=>'Error computing application master item'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
