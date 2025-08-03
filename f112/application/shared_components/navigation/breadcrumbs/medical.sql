prompt --application/shared_components/navigation/breadcrumbs/medical
begin
--   Manifest
--     MENU: Medical
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3268988268415661893)
,p_name=>'Medical'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3166669755868291887)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3166808275559824762)
,p_parent_id=>wwv_flow_imp.id(3166808464265828198)
,p_short_name=>'Create/Edit Medical History'
,p_link=>'f?p=&APP_ID.:1418:&SESSION.::&DEBUG.:::'
,p_page_id=>1418
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3166808464265828198)
,p_parent_id=>wwv_flow_imp.id(3166669755868291887)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&APP_ID.:1413:&SESSION.::&DEBUG.:::'
,p_page_id=>1413
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268987671040641270)
,p_parent_id=>wwv_flow_imp.id(3268987858532647080)
,p_short_name=>'Details of Medical History'
,p_link=>'f?p=&APP_ID.:1410:&SESSION.::&DEBUG.:::'
,p_page_id=>1410
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268987858532647080)
,p_parent_id=>wwv_flow_imp.id(3268988050337650815)
,p_short_name=>'Create/Edit Medical Plan'
,p_link=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:::'
,p_page_id=>1409
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3268988050337650815)
,p_parent_id=>wwv_flow_imp.id(3166669755868291887)
,p_short_name=>'Listing Of Medical Plans'
,p_link=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:::'
,p_page_id=>1408
);
wwv_flow_imp.component_end;
end;
/
