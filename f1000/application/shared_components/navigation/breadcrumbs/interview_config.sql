prompt --application/shared_components/navigation/breadcrumbs/interview_config
begin
--   Manifest
--     MENU: Interview_Config
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
 p_id=>wwv_flow_imp.id(3796767462523387393)
,p_name=>'Interview_Config'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796711852634746819)
,p_short_name=>'Position Locations'
,p_link=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.:::'
,p_page_id=>1317
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796712747649779550)
,p_short_name=>'Position Responsibilities'
,p_link=>'f?p=&APP_ID.:1305:&SESSION.::&DEBUG.:::'
,p_page_id=>1305
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796766643139354230)
,p_short_name=>'Listing of Job Question Bank'
,p_link=>'f?p=&APP_ID.:2012:&SESSION.::&DEBUG.:::'
,p_page_id=>2012
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796767065759374207)
,p_short_name=>'Search Positions'
,p_link=>'f?p=&APP_ID.:1300:&SESSION.::&DEBUG.:::'
,p_page_id=>1300
);
wwv_flow_imp.component_end;
end;
/
