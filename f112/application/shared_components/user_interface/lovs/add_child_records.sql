prompt --application/shared_components/user_interface/lovs/add_child_records
begin
--   Manifest
--     ADD_CHILD_RECORDS
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
 p_id=>wwv_flow_imp.id(3326674688457944552)
,p_lov_name=>'ADD_CHILD_RECORDS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WEBPAGE_NAME,WEBPAGE_ID',
'FROM TBLPAGELIST',
'WHERE PARENT_PAGE= :APP_PAGE_ID',
'and add_child_only=1',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'WEBPAGE_ID'
,p_display_column_name=>'WEBPAGE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
