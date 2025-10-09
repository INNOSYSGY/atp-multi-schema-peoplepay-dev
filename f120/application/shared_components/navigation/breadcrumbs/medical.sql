prompt --application/shared_components/navigation/breadcrumbs/medical
begin
--   Manifest
--     MENU: Medical
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(3796820817946530328)
,p_name=>'Medical'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694502305399160322)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694640825090693197)
,p_parent_id=>wwv_flow_imp.id(3694641013796696633)
,p_short_name=>'Create/Edit Medical History'
,p_link=>'f?p=&APP_ID.:1418:&SESSION.::&DEBUG.:::'
,p_page_id=>1418
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694641013796696633)
,p_parent_id=>wwv_flow_imp.id(3694502305399160322)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&APP_ID.:1413:&SESSION.::&DEBUG.:::'
,p_page_id=>1413
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796820220571509705)
,p_parent_id=>wwv_flow_imp.id(3796820408063515515)
,p_short_name=>'Details of Medical History'
,p_link=>'f?p=&APP_ID.:1410:&SESSION.::&DEBUG.:::'
,p_page_id=>1410
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796820408063515515)
,p_parent_id=>wwv_flow_imp.id(3796820599868519250)
,p_short_name=>'Create/Edit Medical Plan'
,p_link=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:::'
,p_page_id=>1409
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796820599868519250)
,p_parent_id=>wwv_flow_imp.id(3694502305399160322)
,p_short_name=>'Listing Of Medical Plans'
,p_link=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:::'
,p_page_id=>1408
);
wwv_flow_imp.component_end;
end;
/
