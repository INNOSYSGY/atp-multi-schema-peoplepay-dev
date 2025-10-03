prompt --application/shared_components/navigation/lists/job_opening
begin
--   Manifest
--     LIST: Job_opening
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
 p_id=>wwv_flow_imp.id(3539419510338625485)
,p_name=>'Job_opening'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3539419381905625484)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Job Opening'
,p_list_item_link_target=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-briefcase'
,p_list_item_disp_cond_type=>'NEVER'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3539187297907497511)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Applicants for the Position'
,p_list_item_link_target=>'f?p=&APP_ID.:59:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-address-book'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3539356204675428986)
,p_list_item_display_sequence=>21
,p_list_item_link_text=>'Process of Evaluation'
,p_list_item_link_target=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-compress'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3539397650869521769)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Evaluated Applications'
,p_list_item_link_target=>'f?p=&APP_ID.:207:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-film'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
