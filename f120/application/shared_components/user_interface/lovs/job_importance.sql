prompt --application/shared_components/user_interface/lovs/job_importance
begin
--   Manifest
--     JOB_IMPORTANCE
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
 p_id=>wwv_flow_imp.id(3581150995808555957)
,p_lov_name=>'JOB_IMPORTANCE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,TABLE_VALUE',
'from hr_hcf_lookup',
'where TABLE_NAME like ''TBLJOBIMPORTANCE''',
'and verified_by is not null',
'and end_period is null',
'and org_id=:APP_ORG_SHR_DED',
'order by 1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'TABLE_VALUE'
,p_display_column_name=>'VALUE_DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>42028466867876
);
wwv_flow_imp.component_end;
end;
/
