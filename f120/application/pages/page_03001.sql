prompt --application/pages/page_03001
begin
--   Manifest
--     PAGE: 03001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>3001
,p_name=>'rptEARNINGSTYPE'
,p_step_title=>'Listing of Earnings Type'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893400528388849)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3542471152628614141)
,p_plug_name=>'Listing of Configuration for Bulk Payments'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'   v."ID" "ID", ',
'EARNINGS_TYPE,',
'  v."ORG_ID" "ORG_ID", ',
'   v."DATE_EFFECTIVE" "DATE_EFFECTIVE", ',
'   v."END_DATE" "END_DATE", ',
'   v."ENTERED_BY" "ENTERED_BY", ',
'   v."ENTRY_DATE" "ENTRY_DATE", ',
'   v."VERIFIED_BY" "VERIFIED_BY", ',
'   v."VERIFIED_DATE" "VERIFIED_DATE", ',
'   v."LAST_CHANGED_BY" "LAST_CHANGED_BY", ',
'   v."LAST_CHANGED_DATE" "LAST_CHANGED_DATE", ',
'   v."MACHINE_INSERT" "MACHINE_INSERT", ',
'   v."MACHINE_UPDATE" "MACHINE_UPDATE", ',
'(select initcap(TRANSACTION_DESCRIPTION) a ',
'from TBLTRANSACTIONTYPE a',
'where TRANSACTION_TYPE_ID= v."TRANSACTION_TYPE_ID" )"TRANSACTION_TYPE_ID", ',
'v."STATUS" "STATUS"',
'FROM ',
'   "HR_PCF_EARNINGSTYPE" v',
'where org_id= :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3542471050235614141)
,p_name=>'Listing of Configuration for Bulk Payments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
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
,p_detail_link=>'f?p=&APP_ID.:3002:&SESSION.::&DEBUG.::P3002_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PPLERP'
,p_internal_uid=>110368115911373428
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607337123298723846)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3564316613119934737)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607336740204723845)
,p_db_column_name=>'ORG_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Company'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632392095350252894)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607336364624723844)
,p_db_column_name=>'DATE_EFFECTIVE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Date Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607335961697723844)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607335563203723843)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607335150760723843)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607334671135723842)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607334361883723842)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607333870403723841)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607333500067723841)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607333094990723840)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607332691137723840)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607332318443723839)
,p_db_column_name=>'STATUS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3632389985490252893)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607331883710723839)
,p_db_column_name=>'EARNINGS_TYPE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Earnings Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3607331525914723839)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3542469351935613953)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'455080'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_ID:EARNINGS_TYPE:DATE_EFFECTIVE:END_DATE:VERIFIED_BY:VERIFIED_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607330325753723831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3542471152628614141)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3607330745963723833)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3542471152628614141)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:3002:&SESSION.::&DEBUG.:3002::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(3607329824804723829)
,p_computation_sequence=>1
,p_computation_item=>'P3002_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3607328611916723825)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3607330745963723833)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3607328085907723825)
,p_event_id=>wwv_flow_imp.id(3607328611916723825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3542471152628614141)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3607329521711723826)
,p_name=>'Refresh - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3542471152628614141)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3607328972946723826)
,p_event_id=>wwv_flow_imp.id(3607329521711723826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3542471152628614141)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
