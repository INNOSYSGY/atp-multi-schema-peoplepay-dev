prompt --application/shared_components/navigation/lists/l_notification
begin
--   Manifest
--     LIST: L_NOTIFICATION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3495992865713911575)
,p_name=>'L_NOTIFICATION'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3495993133317911577)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Notification Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:99:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-alert'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3495993998545911578)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Notification Details'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-align-center'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
