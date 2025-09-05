prompt --application/shared_components/navigation/lists/general_ledger
begin
--   Manifest
--     LIST: General Ledger
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3297978475868772935)
,p_name=>'General Ledger'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297978262577772930)
,p_list_item_display_sequence=>9
,p_list_item_link_text=>'Budget'
,p_list_item_link_target=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:cir:::'
,p_list_item_icon=>'fa-money'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297977811913772921)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'GL Revenue Period'
,p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:cir:::'
,p_list_item_icon=>'fa-calendar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297977189126772918)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Expenditure Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:cir:::'
,p_list_item_icon=>'fa-dollar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297976491929772917)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Receipt Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:cir:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297976025030772917)
,p_list_item_display_sequence=>109
,p_list_item_link_text=>'GL Charts of Accounts'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297974617809772914)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Revenue Rates'
,p_list_item_link_target=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dollar'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
