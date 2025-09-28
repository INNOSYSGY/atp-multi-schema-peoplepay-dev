prompt --application/shared_components/navigation/breadcrumbs/organisation
begin
--   Manifest
--     MENU: Organisation
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3575022423860163307)
,p_name=>'Organisation'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(205317813114452488)
,p_parent_id=>wwv_flow_imp.id(3569448619371663759)
,p_short_name=>'NIB Rates'
,p_link=>'f?p=&APP_ID.:1313:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1313
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(205366759654581728)
,p_parent_id=>wwv_flow_imp.id(3569448619371663759)
,p_short_name=>'Financial Year'
,p_link=>'f?p=&APP_ID.:1315:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1315
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(357469317025724340)
,p_parent_id=>wwv_flow_imp.id(3569448619371663759)
,p_short_name=>'Tax Rate'
,p_link=>'f?p=&APP_ID.:1314:&SESSION.::&DEBUG.:::'
,p_page_id=>1314
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3569448619371663759)
,p_parent_id=>wwv_flow_imp.id(3575022210183159661)
,p_short_name=>'Create/Edit Organisation'
,p_link=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.::P1311_ID:&GLOBAL_ORG.'
,p_page_id=>1311
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575021041097054159)
,p_parent_id=>wwv_flow_imp.id(3569448619371663759)
,p_short_name=>'Work Location'
,p_link=>'f?p=&APP_ID.:1316:&SESSION.::&DEBUG.:::'
,p_page_id=>1316
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575021611755082912)
,p_short_name=>'Bank Transit'
,p_link=>'f?p=&APP_ID.:1318:&SESSION.::&DEBUG.:::'
,p_page_id=>1318
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575021819938094336)
,p_parent_id=>wwv_flow_imp.id(3569448619371663759)
,p_short_name=>'Requirements'
,p_link=>'f?p=&APP_ID.:1312:&SESSION.::&DEBUG.:::'
,p_page_id=>1312
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3575022210183159661)
,p_short_name=>'Listing of Organisations'
,p_link=>'f?p=&APP_ID.:1310:&SESSION.::&DEBUG.:::'
,p_page_id=>1310
);
wwv_flow_imp.component_end;
end;
/
