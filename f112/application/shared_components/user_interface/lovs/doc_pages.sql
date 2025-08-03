prompt --application/shared_components/user_interface/lovs/doc_pages
begin
--   Manifest
--     DOC_PAGES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326607815990913770)
,p_lov_name=>'DOC_PAGES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_title a, Initcap(page_id) b',
'from APEX_APPLICATION_PAGES a join APP_MODULE b on upper(a.page_group)=b.module_name',
'where upper(page_name) like ''FRM%''',
'and application_id=:APP_ID',
'and exists (select 1',
'            from tblpagelist x',
'            where a.page_id=x.webpage_id               ',
'           )',
' and  workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'and  upper(page_name) not like ''%LINE%''',
'and PAGE_ID not in (101,294,1)',
'AND upper(page_Name) NOT IN (''FRMMEDIAHEAD'',''FRM_MEDIA_DETAIL'',''FRMRFQSUPPLIER'')',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
