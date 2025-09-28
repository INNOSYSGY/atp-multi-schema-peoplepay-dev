prompt --application/shared_components/user_interface/lovs/activity_program
begin
--   Manifest
--     ACTIVITY PROGRAM
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
 p_id=>wwv_flow_imp.id(3273053871248961356)
,p_lov_name=>'ACTIVITY PROGRAM'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(table_value) RETURN, value_description DISPLAY',
'from hr_hcf_lookup',
'where upper(table_name) = ''TBLACTIVITYPROGRAM''',
'and org_id =:APP_ORG_SHR_DED',
'-- and (end_period is null or end_period >= current_date)',
'-- and upper(pkg_global_fnts.status_descript(status)) like ''VERI%'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
