prompt --application/shared_components/navigation/lists/accounts_payables
begin
--   Manifest
--     LIST: Accounts Payables
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3297938566638641856)
,p_name=>'Accounts Payables'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297938346140641856)
,p_list_item_display_sequence=>8
,p_list_item_link_text=>'Cheque Books'
,p_list_item_link_target=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297936955543641847)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Contract'
,p_list_item_link_target=>'f?p=&APP_ID.:94:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-archive'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297936513423641847)
,p_list_item_display_sequence=>35
,p_list_item_link_text=>'Invoices'
,p_list_item_link_target=>'f?p=&APP_ID.:114:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-google-wallet'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3297935776519641846)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Expenditure Register'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-eye-slash'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
