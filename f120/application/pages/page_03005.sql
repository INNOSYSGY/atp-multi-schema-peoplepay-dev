prompt --application/pages/page_03005
begin
--   Manifest
--     PAGE: 03005
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>3005
,p_name=>'rptLeaveEntitlement'
,p_step_title=>'Listing of Rule Based Leave Entitlements '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893400528388849)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3565834882270932444)
,p_plug_name=>'Listing of Rule Based Leave Entitlements '
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   "HR_HCF_LEAVEENTITLE_HD"."ID" "ID", ',
'   "HR_HCF_LEAVEENTITLE_HD"."LEAVE_ENTITLED_DESC" "LEAVE_ENTITLED_DESC", ',
'   "HR_HCF_LEAVEENTITLE_HD"."ORG_ID" "ORG_ID", ',
'   "HR_HCF_LEAVEENTITLE_HD"."START_DATE" "START_DATE", ',
'   "HR_HCF_LEAVEENTITLE_HD"."END_DATE" "END_DATE", ',
'   "HR_HCF_LEAVEENTITLE_HD"."ENTERED_BY" "ENTERED_BY", ',
'   "HR_HCF_LEAVEENTITLE_HD"."ENTRY_DATE" "ENTRY_DATE", ',
'   "HR_HCF_LEAVEENTITLE_HD"."LAST_CHANGED_BY" "LAST_CHANGED_BY", ',
'   "HR_HCF_LEAVEENTITLE_HD"."LAST_CHANGED_DATE" "LAST_CHANGED_DATE", ',
'   "HR_HCF_LEAVEENTITLE_HD"."VERIFIED_BY" "VERIFIED_BY", ',
'   "HR_HCF_LEAVEENTITLE_HD"."VERIFIED_DATE" "VERIFIED_DATE",',
'ENTITLEMENT_OPTION',
'FROM ',
'   "HR_HCF_LEAVEENTITLE_HD"',
'WHERE org_id=:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3565834782425932444)
,p_name=>'Listing of Leave Entitlements'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3006:&SESSION.::&DEBUG.::P3006_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3564316613119934737)
,p_owner=>'PPLERP'
,p_internal_uid=>87004383721055125
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607274539535704810)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#e2.gif"  border="0">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607274134332704809)
,p_db_column_name=>'LEAVE_ENTITLED_DESC'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Leave Entitled Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_ENTITLED_DESC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607273695015704808)
,p_db_column_name=>'ORG_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3585036440573167123)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607273283203704808)
,p_db_column_name=>'START_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607272871831704807)
,p_db_column_name=>'END_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607272561913704807)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607272103085704806)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607271738250704806)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607271319155704804)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607270929517704804)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607270541693704803)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607269346006704802)
,p_db_column_name=>'ENTITLEMENT_OPTION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entitlement Option'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTITLEMENT_OPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3565833381578932279)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'455702'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'LEAVE_ENTITLED_DESC:ORG_ID:START_DATE:END_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:VERIFIED_BY:VERIFIED_DATE:ENTITLEMENT_OPTION'
,p_sort_column_1=>'RANGE_A'
,p_sort_direction_1=>'ASC'
,p_break_on=>'ORG_ID:ENTITLEMENT_OPTION:0:0:0:0'
,p_break_enabled_on=>'ORG_ID:ENTITLEMENT_OPTION:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607268141905704796)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3565834882270932444)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607268531504704798)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3565834882270932444)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3006:&SESSION.::&DEBUG.:3006::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3607267638598704794)
,p_computation_sequence=>1
,p_computation_item=>'P3006_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3607267295851704794)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3607268531504704798)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3607266826721704793)
,p_event_id=>wwv_flow_imp.id(3607267295851704794)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3565834882270932444)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3607266405489704791)
,p_name=>'Refresh - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3565834882270932444)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3607265870520704789)
,p_event_id=>wwv_flow_imp.id(3607266405489704791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3565834882270932444)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
