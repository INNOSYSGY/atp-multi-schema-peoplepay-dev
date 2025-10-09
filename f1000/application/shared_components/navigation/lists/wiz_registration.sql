prompt --application/shared_components/navigation/lists/wiz_registration
begin
--   Manifest
--     LIST: wiz_registration
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3854556861514648894)
,p_name=>'wiz_registration'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854556540631648893)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Organisation'
,p_list_item_link_target=>'f?p=&APP_ID.:2020:&SESSION.:'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854556137182648893)
,p_list_item_display_sequence=>11
,p_list_item_link_text=>'Org Requirements'
,p_list_item_link_target=>'f?p=&APP_ID.:2021:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854555717104648890)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Payroll Req'
,p_list_item_link_target=>'f?p=&APP_ID.:2025:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854555316664648886)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Organisation Structure'
,p_list_item_link_target=>'f?p=&APP_ID.:2022:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854554975115648885)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Jobs/Grade Scale'
,p_list_item_link_target=>'f?p=&APP_ID.:2023:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854554532089648885)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Position'
,p_list_item_link_target=>'f?p=&APP_ID.:2024:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3854554139325648884)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Completed'
,p_list_item_link_target=>'f?p=&APP_ID.:2028:&SESSION.::&DEBUG.::::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
