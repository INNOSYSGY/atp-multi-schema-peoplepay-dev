prompt --application/pages/page_01335
begin
--   Manifest
--     PAGE: 01335
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1335
,p_name=>'rptShift'
,p_alias=>'RPTSHIFT'
,p_step_title=>'Listing of Shifts'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3272211708758163608)
,p_plug_name=>'Listing of Employee Shifts'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       START_TIME,',
'       END_TIME,',
'       OVER_NIGHT,',
'       LESS_LUNCH_HOUR,',
'       LUNCH_TIME_START,',
'       LUNCH_TIME_END,',
'       START_DATE,',
'       END_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       ORG_ID,',
'       MIGRATE_PK,',
'       SHIFT_TYPE_ID,',
'       SHIFT_CODE,',
'       ENFORCE_LUNCH,',
'       LUNCH_HOUR,',
'       SHIFT_HOURS,',
'       USE_OVERTIME',
'    --    GRACE_PERIOD_BEFORE,',
'    --    GRACE_PERIOD_AFTER',
'  from HR_ATT_SHIFT',
' where ORG_ID=:APP_ORG_SHR_DED'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3272211897011163609)
,p_name=>'Listing of Shift'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1336:&SESSION.::&DEBUG.::P1336_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>259751186156477016
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082877029487919796)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082877443355919797)
,p_db_column_name=>'START_TIME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Start Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH12:MI:SS PM'
,p_tz_dependent=>'N'
,p_static_id=>'START_TIME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082877831244919797)
,p_db_column_name=>'END_TIME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'End Time'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH12:MI:SS PM'
,p_tz_dependent=>'N'
,p_static_id=>'END_TIME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082878288954919798)
,p_db_column_name=>'LUNCH_TIME_START'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Lunch Time Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH12:MI:SS PM'
,p_tz_dependent=>'N'
,p_static_id=>'LUNCH_TIME_START'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082878552840919798)
,p_db_column_name=>'LUNCH_TIME_END'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Lunch Time End'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'HH12:MI:SS PM'
,p_tz_dependent=>'N'
,p_static_id=>'LUNCH_TIME_END'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082878939923919798)
,p_db_column_name=>'START_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082879356844919799)
,p_db_column_name=>'END_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082879792960919799)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082880162765919799)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082880561837919800)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082880912422919800)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082881345864919801)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082881775654919801)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082885004278919804)
,p_db_column_name=>'SHIFT_TYPE_ID'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Shift Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3199220266760979133)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082882171763919801)
,p_db_column_name=>'OVER_NIGHT'
,p_display_order=>39
,p_column_identifier=>'V'
,p_column_label=>'Over Night'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082882521682919802)
,p_db_column_name=>'LESS_LUNCH_HOUR'
,p_display_order=>49
,p_column_identifier=>'W'
,p_column_label=>'Less Lunch Hour'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082882929453919802)
,p_db_column_name=>'ORG_ID'
,p_display_order=>59
,p_column_identifier=>'X'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082883347466919802)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>69
,p_column_identifier=>'Y'
,p_column_label=>'Migrate Pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082883735049919803)
,p_db_column_name=>'SHIFT_CODE'
,p_display_order=>79
,p_column_identifier=>'Z'
,p_column_label=>'Shift Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082884182082919803)
,p_db_column_name=>'ENFORCE_LUNCH'
,p_display_order=>89
,p_column_identifier=>'AA'
,p_column_label=>'Enforce Lunch'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082884599053919804)
,p_db_column_name=>'LUNCH_HOUR'
,p_display_order=>99
,p_column_identifier=>'AB'
,p_column_label=>'Lunch Hour'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3082885401999919805)
,p_db_column_name=>'SHIFT_HOURS'
,p_display_order=>109
,p_column_identifier=>'AC'
,p_column_label=>'Shift Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3084816279770156700)
,p_db_column_name=>'USE_OVERTIME'
,p_display_order=>119
,p_column_identifier=>'AD'
,p_column_label=>'Use Overtime'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3272213900888168349)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'704250'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'SHIFT_TYPE_ID:SHIFT_CODE:START_TIME:END_TIME:SHIFT_HOURS:LUNCH_HOUR:LESS_LUNCH_HOUR:START_DATE:END_DATE::USE_OVERTIME'
,p_break_on=>'SHIFT_TYPE_ID:0:0:0:0:0'
,p_break_enabled_on=>'SHIFT_TYPE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3293784606397243925)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3082875540448919787)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3293784606397243925)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3082875975496919788)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3293784606397243925)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1336:&SESSION.::&DEBUG.:1336::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3082876386651919789)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3293784606397243925)
,p_button_name=>'GO_TO_SHIFT_ROTATION'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Shift Rotation'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12815:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-right-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3082886151610919808)
,p_name=>'P1335_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3272211708758163608)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3082887164317919812)
,p_name=>'Refresh - Create'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3082875975496919788)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3082887625353919813)
,p_event_id=>wwv_flow_imp.id(3082887164317919812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3272211708758163608)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3082888020398919814)
,p_name=>'Refresh - Edit'
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3272211708758163608)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3082888556886919814)
,p_event_id=>wwv_flow_imp.id(3082888020398919814)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3272211708758163608)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
