prompt --application/shared_components/navigation/breadcrumbs/organisation
begin
--   Manifest
--     MENU: Organisation
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
 p_id=>wwv_flow_imp.id(3796706352541921238)
,p_name=>'Organisation'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(427001741796210419)
,p_parent_id=>wwv_flow_imp.id(3791132548053421690)
,p_short_name=>'NIB Rates'
,p_link=>'f?p=&APP_ID.:1313:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(427050688336339659)
,p_parent_id=>wwv_flow_imp.id(3791132548053421690)
,p_short_name=>'Financial Year'
,p_link=>'f?p=&APP_ID.:1315:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1315
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(579153245707482271)
,p_parent_id=>wwv_flow_imp.id(3791132548053421690)
,p_short_name=>'Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3791132548053421690)
,p_parent_id=>wwv_flow_imp.id(3796706138864917592)
,p_short_name=>'Create/Edit Organisation'
,p_link=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.::P1311_ID:&GLOBAL_ORG.'
,p_page_id=>1311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796704969778812090)
,p_parent_id=>wwv_flow_imp.id(3791132548053421690)
,p_short_name=>'Work Location'
,p_link=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:::'
,p_page_id=>1316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796705540436840843)
,p_short_name=>'Bank Transit'
,p_link=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.:::'
,p_page_id=>1318
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796705748619852267)
,p_parent_id=>wwv_flow_imp.id(3791132548053421690)
,p_short_name=>'Requirements'
,p_link=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:::'
,p_page_id=>1312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796706138864917592)
,p_short_name=>'Listing of Organisations'
,p_link=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::'
,p_page_id=>1310
);
wwv_flow_imp.component_end;
end;
/
