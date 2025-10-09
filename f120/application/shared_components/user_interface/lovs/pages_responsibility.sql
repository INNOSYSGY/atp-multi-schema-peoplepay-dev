prompt --application/shared_components/user_interface/lovs/pages_responsibility
begin
--   Manifest
--     PAGES_RESPONSIBILITY
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
 p_id=>wwv_flow_imp.id(3711602694315349546)
,p_lov_name=>'PAGES_RESPONSIBILITY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(page_name||'': ''||a.page_group) page_name, c.page_id',
'from APEX_APPLICATION_PAGES a join tblpagelist c on c.webpage_id=a.page_id',
'where application_id=:APP_ID',
'order by page_name'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'PAGE_ID'
,p_display_column_name=>'PAGE_NAME'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
