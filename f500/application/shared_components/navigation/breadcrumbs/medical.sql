prompt --application/shared_components/navigation/breadcrumbs/medical
begin
--   Manifest
--     MENU: Medical
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
 p_id=>wwv_flow_imp.id(3796398684338956456)
,p_name=>'Medical'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694080171791586450)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694218691483119325)
,p_parent_id=>wwv_flow_imp.id(3694218880189122761)
,p_short_name=>'Create/Edit Medical History'
,p_link=>'f?p=&APP_ID.:1418:&SESSION.::&DEBUG.:::'
,p_page_id=>1418
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3694218880189122761)
,p_parent_id=>wwv_flow_imp.id(3694080171791586450)
,p_short_name=>'Listing of Medical History'
,p_link=>'f?p=&APP_ID.:1413:&SESSION.::&DEBUG.:::'
,p_page_id=>1413
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796398086963935833)
,p_parent_id=>wwv_flow_imp.id(3796398274455941643)
,p_short_name=>'Details of Medical History'
,p_link=>'f?p=&APP_ID.:1410:&SESSION.::&DEBUG.:::'
,p_page_id=>1410
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796398274455941643)
,p_parent_id=>wwv_flow_imp.id(3796398466260945378)
,p_short_name=>'Create/Edit Medical Plan'
,p_link=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:::'
,p_page_id=>1409
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796398466260945378)
,p_parent_id=>wwv_flow_imp.id(3694080171791586450)
,p_short_name=>'Listing Of Medical Plans'
,p_link=>'f?p=&APP_ID.:1408:&SESSION.::&DEBUG.:::'
,p_page_id=>1408
);
wwv_flow_imp.component_end;
end;
/
