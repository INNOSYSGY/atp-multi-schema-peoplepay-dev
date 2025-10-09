prompt --application/shared_components/navigation/breadcrumbs/document_center
begin
--   Manifest
--     MENU: document_center
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
 p_id=>wwv_flow_imp.id(3809687125769586214)
,p_name=>'document_center'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(3809686434276578176)
,p_short_name=>'Media Details'
,p_link=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:::'
,p_page_id=>131
);
wwv_flow_imp.component_end;
end;
/
