prompt --application/shared_components/navigation/breadcrumbs/organisation
begin
--   Manifest
--     MENU: Organisation
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
 p_id=>wwv_flow_imp.id(3796424980441775001)
,p_name=>'Organisation'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(426720369696064182)
,p_parent_id=>wwv_flow_imp.id(3790851175953275453)
,p_short_name=>'NIB Rates'
,p_link=>'f?p=&APP_ID.:1313:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(426769316236193422)
,p_parent_id=>wwv_flow_imp.id(3790851175953275453)
,p_short_name=>'Financial Year'
,p_link=>'f?p=&APP_ID.:1315:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1315
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(578871873607336034)
,p_parent_id=>wwv_flow_imp.id(3790851175953275453)
,p_short_name=>'Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3790851175953275453)
,p_parent_id=>wwv_flow_imp.id(3796424766764771355)
,p_short_name=>'Create/Edit Organisation'
,p_link=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.::P1311_ID:&GLOBAL_ORG.'
,p_page_id=>1311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796423597678665853)
,p_parent_id=>wwv_flow_imp.id(3790851175953275453)
,p_short_name=>'Work Location'
,p_link=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:::'
,p_page_id=>1316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796424168336694606)
,p_short_name=>'Bank Transit'
,p_link=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.:::'
,p_page_id=>1318
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796424376519706030)
,p_parent_id=>wwv_flow_imp.id(3790851175953275453)
,p_short_name=>'Requirements'
,p_link=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:::'
,p_page_id=>1312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796424766764771355)
,p_short_name=>'Listing of Organisations'
,p_link=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::'
,p_page_id=>1310
);
wwv_flow_imp.component_end;
end;
/
