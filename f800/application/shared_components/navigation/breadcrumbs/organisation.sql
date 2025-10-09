prompt --application/shared_components/navigation/breadcrumbs/organisation
begin
--   Manifest
--     MENU: Organisation
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3796565682680842227)
,p_name=>'Organisation'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(426861071935131408)
,p_parent_id=>wwv_flow_imp.id(3790991878192342679)
,p_short_name=>'NIB Rates'
,p_link=>'f?p=&APP_ID.:1313:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(426910018475260648)
,p_parent_id=>wwv_flow_imp.id(3790991878192342679)
,p_short_name=>'Financial Year'
,p_link=>'f?p=&APP_ID.:1315:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1315
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(579012575846403260)
,p_parent_id=>wwv_flow_imp.id(3790991878192342679)
,p_short_name=>'Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3790991878192342679)
,p_parent_id=>wwv_flow_imp.id(3796565469003838581)
,p_short_name=>'Create/Edit Organisation'
,p_link=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.::P1311_ID:&GLOBAL_ORG.'
,p_page_id=>1311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796564299917733079)
,p_parent_id=>wwv_flow_imp.id(3790991878192342679)
,p_short_name=>'Work Location'
,p_link=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:::'
,p_page_id=>1316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796564870575761832)
,p_short_name=>'Bank Transit'
,p_link=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.:::'
,p_page_id=>1318
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796565078758773256)
,p_parent_id=>wwv_flow_imp.id(3790991878192342679)
,p_short_name=>'Requirements'
,p_link=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:::'
,p_page_id=>1312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796565469003838581)
,p_short_name=>'Listing of Organisations'
,p_link=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::'
,p_page_id=>1310
);
wwv_flow_imp.component_end;
end;
/
