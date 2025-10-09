prompt --application/shared_components/user_interface/lovs/screen_name_full
begin
--   Manifest
--     SCREEN_NAME_FULL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3853937658331931816)
,p_lov_name=>'SCREEN_NAME_FULL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct page_title a, upper(page_id) b',
'from APEX_APPLICATION_PAGES a join APP_MODULE b on upper(a.page_group)=b.module_name',
'where upper(page_name) like ''FRM%''',
'and exists (select 1',
'            from tblpagelist x',
'            where a.page_id=x.webpage_id               ',
'           )',
' and  workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'and PAGE_ID not in (101,294,1)',
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
