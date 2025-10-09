prompt --application/shared_components/user_interface/lovs/app_help_pages
begin
--   Manifest
--     APP_HELP_PAGES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(419345399242866472)
,p_lov_name=>'APP_HELP_PAGES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(page_title||'': ''||a.page_group) || ''-'' || webpage_id page_name,',
'       webpage_id',
'from APEX_APPLICATION_PAGES a',
'join tblpagelist c on c.webpage_id = a.page_id',
'where application_id = :APP_ID',
'',
'union',
'',
'select INITCAP(page_title||'': ''||a.page_group) || ''-'' || page_id page_name,',
'       page_id webpage_id',
'from APEX_APPLICATION_PAGES a',
'where application_id = :APP_ID',
'',
'order by page_name;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'WEBPAGE_ID'
,p_display_column_name=>'PAGE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45057949273836
);
wwv_flow_imp.component_end;
end;
/
