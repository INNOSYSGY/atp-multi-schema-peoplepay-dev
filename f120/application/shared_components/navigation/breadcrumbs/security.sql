prompt --application/shared_components/navigation/breadcrumbs/security
begin
--   Manifest
--     MENU: security
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
 p_id=>wwv_flow_imp.id(3574947313252192630)
,p_name=>'security'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(422032413118517849)
,p_parent_id=>wwv_flow_imp.id(3574946237097163429)
,p_short_name=>'Create&#x2F;Edit Cost'
,p_link=>'f?p=&APP_ID.:1801:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1801
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3144512987244871498)
,p_parent_id=>wwv_flow_imp.id(3632227458840631971)
,p_short_name=>'User Account Detail'
,p_link=>'f?p=&APP_ID.:1405:&SESSION.::&DEBUG.:::'
,p_page_id=>1405
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574945432162135305)
,p_parent_id=>wwv_flow_imp.id(3574946432137165738)
,p_short_name=>'Create/Edit Pages'
,p_link=>'f?p=&APP_ID.:1321 :&SESSION.::&DEBUG.:::'
,p_page_id=>1321
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574946237097163429)
,p_parent_id=>wwv_flow_imp.id(3574947010140175935)
,p_short_name=>'Listing of Cost'
,p_link=>'f?p=&APP_ID.:1800:&SESSION.::&DEBUG.:::'
,p_page_id=>1800
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574946432137165738)
,p_parent_id=>wwv_flow_imp.id(3574947010140175935)
,p_short_name=>'Listing of Pages'
,p_link=>'f?p=&APP_ID.:1320 :&SESSION.::&DEBUG.:::'
,p_page_id=>1320
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574946626961168139)
,p_parent_id=>wwv_flow_imp.id(3574947010140175935)
,p_short_name=>'Listing of Responsibility'
,p_link=>'f?p=&APP_ID.:1323:&SESSION.::&DEBUG.:::'
,p_page_id=>1323
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574946816394173023)
,p_parent_id=>wwv_flow_imp.id(3574947010140175935)
,p_short_name=>'Listing of Accounts'
,p_link=>'f?p=&APP_ID.:1326:&SESSION.::&DEBUG.:::'
,p_page_id=>1326
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3574947010140175935)
,p_short_name=>'Security'
,p_link=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
,p_page_id=>199
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3611702950681657339)
,p_parent_id=>wwv_flow_imp.id(3574946626961168139)
,p_short_name=>'Create/Edit Responsibility'
,p_link=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:::'
,p_page_id=>1324
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3632227458840631971)
,p_parent_id=>wwv_flow_imp.id(3574946816394173023)
,p_short_name=>'Create/Edit User Accounts'
,p_link=>'f?p=&APP_ID.:1327:&SESSION.::&DEBUG.::P1327_USER_ID:&P1405_USER_ID.'
,p_page_id=>1327
);
wwv_flow_imp.component_end;
end;
/
