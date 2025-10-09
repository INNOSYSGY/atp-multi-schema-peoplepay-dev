prompt --application/shared_components/logic/application_computations/toast_notification
begin
--   Manifest
--     APPLICATION COMPUTATION: TOAST_NOTIFICATION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3720654231820034537)
,p_computation_sequence=>10
,p_computation_item=>'TOAST_NOTIFICATION'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.id',
'from hr_apu_broadcast A',
'where current_date between A.START_DATE and A.END_DATE',
'and  exists (select 1',
'                 from HR_APU_broadcast_org b',
'                 where a.id = broadcast_id',
'                 and org_ID = :APP_ORG_ID',
'                  AND APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'                 )',
'and rownum=1',
''))
,p_version_scn=>41448555398594
);
wwv_flow_imp.component_end;
end;
/
