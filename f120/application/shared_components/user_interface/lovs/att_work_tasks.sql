prompt --application/shared_components/user_interface/lovs/att_work_tasks
begin
--   Manifest
--     ATT_WORK_TASKS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(456124338328783224)
,p_lov_name=>'ATT_WORK_TASKS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select task_code || '' - ['' || task_desc || '']'' d, id r, ',
'(select task_code || '' - '' || task_desc from hr_hcf_wkactivity_task where id = v.parent_id) parent_code',
'from hr_hcf_wkactivity_task v',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_column_name=>'PARENT_CODE'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'PARENT_CODE'
,p_default_sort_direction=>'ASC_NULLS_FIRST'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(456129416871882291)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(456129702832882291)
,p_query_column_name=>'D'
,p_heading=>'Task Code'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(456130143756882291)
,p_query_column_name=>'PARENT_CODE'
,p_heading=>'Parent Code'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
