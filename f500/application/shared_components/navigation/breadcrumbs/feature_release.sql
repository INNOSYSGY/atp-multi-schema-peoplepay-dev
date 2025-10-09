prompt --application/shared_components/navigation/breadcrumbs/feature_release
begin
--   Manifest
--     MENU: feature_release
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3809539105264991194)
,p_name=>'feature_release'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809537916085965911)
,p_parent_id=>wwv_flow_imp.id(3809538110909968327)
,p_short_name=>'Release Execution Details'
,p_link=>'f?p=&APP_ID.:2019:&SESSION.::&DEBUG.:::'
,p_page_id=>2019
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809538110909968327)
,p_parent_id=>wwv_flow_imp.id(3809538395597975423)
,p_short_name=>'Release Execution List'
,p_link=>'f?p=&APP_ID.:2018:&SESSION.::&DEBUG.:::'
,p_page_id=>2018
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809538395597975423)
,p_parent_id=>wwv_flow_imp.id(3809538805505985992)
,p_short_name=>'Release Configuration'
,p_link=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.:::'
,p_page_id=>2017
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809538619954979321)
,p_parent_id=>wwv_flow_imp.id(3809538805505985992)
,p_short_name=>'Release Checklist'
,p_link=>'f?p=&APP_ID.:2016:&SESSION.::&DEBUG.:::'
,p_page_id=>2016
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809538805505985992)
,p_parent_id=>wwv_flow_imp.id(3832755133594562103)
,p_short_name=>'Update List'
,p_link=>'f?p=&APP_ID.:2015:&SESSION.::&DEBUG.:::'
,p_page_id=>2015
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3832755133594562103)
,p_short_name=>'Utility'
,p_link=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
,p_page_id=>23
);
wwv_flow_imp.component_end;
end;
/
