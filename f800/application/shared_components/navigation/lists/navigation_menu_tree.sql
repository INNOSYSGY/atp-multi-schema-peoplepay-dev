prompt --application/shared_components/navigation/lists/navigation_menu_tree
begin
--   Manifest
--     LIST: Navigation Menu Tree
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3806884249914211992)
,p_name=>'Navigation Menu Tree'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  level, ',
'"PAGE_LABEL" as title,',
'case when CLICK_OPTION=1 then ',
' APEX_PAGE.GET_URL (',
'            p_application => :APP_ID,',
'            p_session => :APP_SESSION,',
'            p_page   => TO_CHAR(WEBPAGE_ID), ',
'            p_items  => page_parameters,',
'            p_values => parameter_value )',
'            else ''javascript:void;''',
'          end as target ,',
'          ''YES''  "is_current",         ',
'         case when new_icon is not null then new_icon',
'       else ''abc.jpg'' end icon       ',
'from VW_TREE_VIEW_HRSCMS',
'start with "PARENT_PAGE" is null',
'connect by prior "WEBPAGE_ID" = "PARENT_PAGE"',
'order siblings by display_sequence',
'  '))
,p_list_status=>'PUBLIC'
,p_version_scn=>44430433705826
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(664445243872229274)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'FRMEDUCATIONLEVY'
,p_list_item_link_target=>'f?p=&APP_ID.:1486:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'1486'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(676540128522994359)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'rptwkactivitytasks'
,p_list_item_link_target=>'f?p=&APP_ID.:10999:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10999'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(676703552757751146)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'rptwkactivity'
,p_list_item_link_target=>'f?p=&APP_ID.:10900:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10900'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(678460369177793410)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'rptholidaypolicy'
,p_list_item_link_target=>'f?p=&APP_ID.:10100:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10100,10101'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(661956023206896559)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'procore_timesheet_upload'
,p_list_item_link_target=>'f?p=&APP_ID.:11200:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-database-arrow-up'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11200'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(661980791019999337)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'rptrpcoretimesheet'
,p_list_item_link_target=>'f?p=&APP_ID.:245:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'245'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(665495085435385957)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'rptdownloadsagereport'
,p_list_item_link_target=>'f?p=&APP_ID.:242:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'242'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(592379664701165382)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Report_POC'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'8'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(530170469817067508)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'frmfileoutput'
,p_list_item_link_target=>'f?p=&APP_ID.:219:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'219'
);
wwv_flow_imp.component_end;
end;
/
