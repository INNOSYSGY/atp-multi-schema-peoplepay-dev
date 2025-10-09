prompt --application/shared_components/user_interface/lovs/job_skill
begin
--   Manifest
--     JOB_SKILL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3317361418309684423)
,p_lov_name=>'JOB_SKILL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  Initcap(value_description) r, id d',
'from hr_hcf_lookup',
'where table_name = ''TBLSKILL''',
'and verified_by is not null',
'and end_period is null',
'order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'D'
,p_display_column_name=>'R'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
