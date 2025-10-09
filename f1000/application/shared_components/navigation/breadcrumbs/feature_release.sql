prompt --application/shared_components/navigation/breadcrumbs/feature_release
begin
--   Manifest
--     MENU: feature_release
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3809820477365137431)
,p_name=>'feature_release'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809819288186112148)
,p_parent_id=>wwv_flow_imp.id(3809819483010114564)
,p_short_name=>'Release Execution Details'
,p_link=>'f?p=&APP_ID.:2019:&SESSION.::&DEBUG.:::'
,p_page_id=>2019
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809819483010114564)
,p_parent_id=>wwv_flow_imp.id(3809819767698121660)
,p_short_name=>'Release Execution List'
,p_link=>'f?p=&APP_ID.:2018:&SESSION.::&DEBUG.:::'
,p_page_id=>2018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809819767698121660)
,p_parent_id=>wwv_flow_imp.id(3809820177606132229)
,p_short_name=>'Release Configuration'
,p_link=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.:::'
,p_page_id=>2017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809819992055125558)
,p_parent_id=>wwv_flow_imp.id(3809820177606132229)
,p_short_name=>'Release Checklist'
,p_link=>'f?p=&APP_ID.:2016:&SESSION.::&DEBUG.:::'
,p_page_id=>2016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809820177606132229)
,p_parent_id=>wwv_flow_imp.id(3833036505694708340)
,p_short_name=>'Update List'
,p_link=>'f?p=&APP_ID.:2015:&SESSION.::&DEBUG.:::'
,p_page_id=>2015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3833036505694708340)
,p_short_name=>'Utility'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp.component_end;
end;
/
