prompt --application/shared_components/navigation/lists/welome_actions
begin
--   Manifest
--     LIST: Welome Actions
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3853241073529669677)
,p_name=>'Welome Actions'
,p_list_status=>'PUBLIC'
,p_version_scn=>41800505743861
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3853241722644669680)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Load Sample Data'
,p_list_item_link_target=>'f?p=&APP_ID.:77:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-download'
,p_list_text_01=>'Easily load and manage sample data.'
,p_security_scheme=>wwv_flow_imp.id(19025322608746645795)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
