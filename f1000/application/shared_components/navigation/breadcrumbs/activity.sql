prompt --application/shared_components/navigation/breadcrumbs/activity
begin
--   Manifest
--     MENU: activity
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
 p_id=>wwv_flow_imp.id(3796675044982872234)
,p_name=>'activity'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796674441564862221)
,p_parent_id=>wwv_flow_imp.id(3796674668294865021)
,p_short_name=>'Create/Edit Activity Attendance Detail'
,p_link=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:::'
,p_page_id=>1437
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796674668294865021)
,p_short_name=>'Create/Edit Activity Attendance'
,p_link=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:::'
,p_page_id=>1436
);
wwv_flow_imp.component_end;
end;
/
