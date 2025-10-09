prompt --application/shared_components/navigation/breadcrumbs/offences
begin
--   Manifest
--     MENU: offences
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
 p_id=>wwv_flow_imp.id(3796813624882257933)
,p_name=>'offences'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796813015618238483)
,p_parent_id=>wwv_flow_imp.id(3796813224232249661)
,p_short_name=>'Employee Offences'
,p_link=>'f?p=&APP_ID.:1424:&SESSION.::&DEBUG.:::'
,p_page_id=>1424
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796813224232249661)
,p_parent_id=>wwv_flow_imp.id(3796813419919251723)
,p_short_name=>'Create/Edit Offences'
,p_link=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.:::'
,p_page_id=>1423
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796813419919251723)
,p_short_name=>'Listing of Offences'
,p_link=>'f?p=&APP_ID.:1422:&SESSION.::&DEBUG.:::'
,p_page_id=>1422
);
wwv_flow_imp.component_end;
end;
/
