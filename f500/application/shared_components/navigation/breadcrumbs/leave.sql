prompt --application/shared_components/navigation/breadcrumbs/leave
begin
--   Manifest
--     MENU: Leave
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
 p_id=>wwv_flow_imp.id(3796397066967847311)
,p_name=>'Leave'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3764211648985848183)
,p_short_name=>'Create/Edit Leave Entitled/Requested/Taken'
,p_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:::'
,p_page_id=>67
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3796394387949783420)
,p_short_name=>'Create/Edit Leave Track'
,p_link=>'f?p=&APP_ID.:1434:&SESSION.::&DEBUG.:::'
,p_page_id=>1434
);
wwv_flow_imp.component_end;
end;
/
