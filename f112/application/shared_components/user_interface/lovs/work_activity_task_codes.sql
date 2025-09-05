prompt --application/shared_components/user_interface/lovs/work_activity_task_codes
begin
--   Manifest
--     WORK_ACTIVITY_TASK_CODES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(149199026496495428)
,p_lov_name=>'WORK_ACTIVITY_TASK_CODES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_code || ''-[ '' || task_desc || '' ]'' d , id r',
'from HR_HCF_WKACTIVITY_TASK'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_table=>'HR_HCF_WKACTIVITY_TASK'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
