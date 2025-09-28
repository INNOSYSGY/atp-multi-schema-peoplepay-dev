prompt --application/shared_components/user_interface/lovs/training_classifications
begin
--   Manifest
--     TRAINING_CLASSIFICATIONS
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
 p_id=>wwv_flow_imp.id(445218543030977982)
,p_lov_name=>'TRAINING_CLASSIFICATIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, TABLE_VALUE B',
'from table(pkg_global_fnts.get_lookup_value(''TBLTRAININGCLASSIFICATION'')) X',
'where org_id=:APP_ORG_SHR_DED',
'',
'union',
'',
'select VALUE_DESCRIPTION A, TABLE_VALUE B',
'from HR_HCF_LOOKUP ',
'where org_id = :APP_ORG_SHR_DED',
'and table_name = ''TBLTRAININGCLASSIFICATION''',
'and verified_by is not null',
'and trunc(start_period) <= trunc(current_date)',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
