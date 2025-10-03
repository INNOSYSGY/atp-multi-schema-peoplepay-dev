prompt --application/shared_components/navigation/lists/transaction
begin
--   Manifest
--     LIST: Transaction
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
 p_id=>wwv_flow_imp.id(3632911979648910039)
,p_name=>'Transaction'
,p_list_status=>'PUBLIC'
,p_version_scn=>41800505300738
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3632907793022910014)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'<b>Phy Inv.</b>'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
