prompt --application/shared_components/logic/application_computations/app_org_structure_id
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_ORG_STRUCTURE_ID
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
 p_id=>wwv_flow_imp.id(3298037552787817146)
,p_computation_sequence=>11
,p_computation_item=>'APP_ORG_STRUCTURE_ID'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from hr_hcf_orgstructurehd a',
'where exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.org_id)',
'and date_started <= trunc(current_date)          ',
'and (DATE_ENDED is null or DATE_ENDED >= trunc(current_date))',
'order by 1'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
