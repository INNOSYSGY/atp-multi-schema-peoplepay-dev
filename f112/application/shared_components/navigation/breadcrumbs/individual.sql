prompt --application/shared_components/navigation/breadcrumbs/individual
begin
--   Manifest
--     MENU: Individual
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3269002878850043400)
,p_name=>'Individual'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3269001051561999764)
,p_short_name=>'Relatives/Friends'
,p_link=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:::'
,p_page_id=>1276
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3269001272469005244)
,p_short_name=>'References'
,p_link=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:::'
,p_page_id=>1275
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3269001467077007765)
,p_short_name=>'Qualifications'
,p_link=>'f?p=&APP_ID.:1272:&SESSION.::&DEBUG.:::'
,p_page_id=>1272
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3269001658667011636)
,p_short_name=>'National Identifiers'
,p_link=>'f?p=&APP_ID.:1271:&SESSION.::&DEBUG.:::'
,p_page_id=>1271
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3269001864693024010)
,p_short_name=>'Hobby/NGO'
,p_link=>'f?p=&APP_ID.:1274:&SESSION.::&DEBUG.:::'
,p_page_id=>1274
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3269002058439026906)
,p_short_name=>'Past Employers'
,p_link=>'f?p=&APP_ID.:1273:&SESSION.::&DEBUG.:::'
,p_page_id=>1273
);
wwv_flow_imp.component_end;
end;
/
