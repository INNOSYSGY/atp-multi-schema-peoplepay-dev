prompt --application/shared_components/navigation/breadcrumbs/security
begin
--   Manifest
--     MENU: security
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
 p_id=>wwv_flow_imp.id(3796490572072871550)
,p_name=>'security'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(643575671939196769)
,p_parent_id=>wwv_flow_imp.id(3796489495917842349)
,p_short_name=>'Create&#x2F;Edit Cost'
,p_link=>'f?p=&APP_ID.:1801:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1801
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3366056246065550418)
,p_parent_id=>wwv_flow_imp.id(3853770717661310891)
,p_short_name=>'User Account Detail'
,p_link=>'f?p=&APP_ID.:1405:&SESSION.::&DEBUG.:::'
,p_page_id=>1405
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796488690982814225)
,p_parent_id=>wwv_flow_imp.id(3796489690957844658)
,p_short_name=>'Create/Edit Pages'
,p_link=>'f?p=&APP_ID.:1321 :&SESSION.::&DEBUG.:::'
,p_page_id=>1321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796489495917842349)
,p_parent_id=>wwv_flow_imp.id(3796490268960854855)
,p_short_name=>'Listing of Cost'
,p_link=>'f?p=&APP_ID.:1800:&SESSION.::&DEBUG.:::'
,p_page_id=>1800
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796489690957844658)
,p_parent_id=>wwv_flow_imp.id(3796490268960854855)
,p_short_name=>'Listing of Pages'
,p_link=>'f?p=&APP_ID.:1320 :&SESSION.::&DEBUG.:::'
,p_page_id=>1320
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796489885781847059)
,p_parent_id=>wwv_flow_imp.id(3796490268960854855)
,p_short_name=>'Listing of Responsibility'
,p_link=>'f?p=&APP_ID.:1323:&SESSION.::&DEBUG.:::'
,p_page_id=>1323
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796490075214851943)
,p_parent_id=>wwv_flow_imp.id(3796490268960854855)
,p_short_name=>'Listing of Accounts'
,p_link=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.:::'
,p_page_id=>1326
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796490268960854855)
,p_short_name=>'Security'
,p_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
,p_page_id=>199
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3833246209502336259)
,p_parent_id=>wwv_flow_imp.id(3796489885781847059)
,p_short_name=>'Create/Edit Responsibility'
,p_link=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:::'
,p_page_id=>1324
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3853770717661310891)
,p_parent_id=>wwv_flow_imp.id(3796490075214851943)
,p_short_name=>'Create/Edit User Accounts'
,p_link=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.::P1327_USER_ID:&P1405_USER_ID.'
,p_page_id=>1327
);
wwv_flow_imp.component_end;
end;
/
