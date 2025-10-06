prompt --application/shared_components/navigation/breadcrumbs/security
begin
--   Manifest
--     MENU: security
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
 p_id=>wwv_flow_imp.id(3268939453910509761)
,p_name=>'security'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(116024553776834980)
,p_parent_id=>wwv_flow_imp.id(3268938377755480560)
,p_short_name=>'Create&#x2F;Edit Cost'
,p_link=>'f?p=&APP_ID.:1801:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1801
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2838505127903188629)
,p_parent_id=>wwv_flow_imp.id(3326219599498949102)
,p_short_name=>'User Account Detail'
,p_link=>'f?p=&APP_ID.:1405:&SESSION.::&DEBUG.:::'
,p_page_id=>1405
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268937572820452436)
,p_parent_id=>wwv_flow_imp.id(3268938572795482869)
,p_short_name=>'Create/Edit Pages'
,p_link=>'f?p=&APP_ID.:1321 :&SESSION.::&DEBUG.:::'
,p_page_id=>1321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268938377755480560)
,p_parent_id=>wwv_flow_imp.id(3268939150798493066)
,p_short_name=>'Listing of Cost'
,p_link=>'f?p=&APP_ID.:1800:&SESSION.::&DEBUG.:::'
,p_page_id=>1800
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268938572795482869)
,p_parent_id=>wwv_flow_imp.id(3268939150798493066)
,p_short_name=>'Listing of Pages'
,p_link=>'f?p=&APP_ID.:1320 :&SESSION.::&DEBUG.:::'
,p_page_id=>1320
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268938767619485270)
,p_parent_id=>wwv_flow_imp.id(3268939150798493066)
,p_short_name=>'Listing of Responsibility'
,p_link=>'f?p=&APP_ID.:1323:&SESSION.::&DEBUG.:::'
,p_page_id=>1323
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268938957052490154)
,p_parent_id=>wwv_flow_imp.id(3268939150798493066)
,p_short_name=>'Listing of Accounts'
,p_link=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.:::'
,p_page_id=>1326
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268939150798493066)
,p_short_name=>'Security'
,p_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
,p_page_id=>199
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3305695091339974470)
,p_parent_id=>wwv_flow_imp.id(3268938767619485270)
,p_short_name=>'Create/Edit Responsibility'
,p_link=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:::'
,p_page_id=>1324
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3326219599498949102)
,p_parent_id=>wwv_flow_imp.id(3268938957052490154)
,p_short_name=>'Create/Edit User Accounts'
,p_link=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.:::'
,p_page_id=>1327
);
wwv_flow_imp.component_end;
end;
/
