prompt --application/shared_components/navigation/breadcrumbs/interview_config
begin
--   Manifest
--     MENU: Interview_Config
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
 p_id=>wwv_flow_imp.id(3796626792662308382)
,p_name=>'Interview_Config'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796571182773667808)
,p_short_name=>'Position Locations'
,p_link=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.:::'
,p_page_id=>1317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796572077788700539)
,p_short_name=>'Position Responsibilities'
,p_link=>'f?p=&APP_ID.:1305:&SESSION.::&DEBUG.:::'
,p_page_id=>1305
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796625973278275219)
,p_short_name=>'Listing of Job Question Bank'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796626395898295196)
,p_short_name=>'Search Positions'
,p_link=>'f?p=&APP_ID.:1300:&SESSION.::&DEBUG.:::'
,p_page_id=>1300
);
wwv_flow_imp.component_end;
end;
/
