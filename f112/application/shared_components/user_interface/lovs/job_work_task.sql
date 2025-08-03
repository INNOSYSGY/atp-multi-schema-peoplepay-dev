prompt --application/shared_components/user_interface/lovs/job_work_task
begin
--   Manifest
--     JOB_WORK_TASK
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2914980605641546518)
,p_lov_name=>'JOB_WORK_TASK'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ACTIVITY_CODE||'' ''||description LABEL, ID',
'FROM PA_PCF_WORKACTIVITY',
'WHERE DATE_EFFECTIVE <=:P1400_START_PERIOD_PAID',
'and (end_date is null or end_date >= trunc(current_date))',
'and DATE_EFFECTIVE <= trunc(current_date)',
'AND ORG_ID=:APP_ORG_SHR_DED'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'LABEL'
,p_default_sort_column_name=>'LABEL'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
