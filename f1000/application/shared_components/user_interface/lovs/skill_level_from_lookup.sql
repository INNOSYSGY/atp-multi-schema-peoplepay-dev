prompt --application/shared_components/user_interface/lovs/skill_level_from_lookup
begin
--   Manifest
--     SKILL_LEVEL_FROM_LOOKUP
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3382090591790250392)
,p_lov_name=>'SKILL_LEVEL_FROM_LOOKUP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TABLE_VALUE A, TABLE_VALUE B',
'FROM ',
'    HR_HCF_LOOKUP',
'WHERE',
'    ORG_ID = :APP_ORG_ID',
'    AND TABLE_NAME = ''TBLSKILLLEVEL'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'A'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
