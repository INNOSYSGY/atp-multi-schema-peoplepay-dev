prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'rptNONPurchaseItem'
,p_step_title=>'Listing of Non Purchased Items by Period'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825717425886567189)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3688391647733565873)
,p_plug_name=>'Listing of Non Purchased Items by Period'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'  ORG_ITEM_DESCRIPTION,',
'  SEGMENT1,',
'  average_cost,',
'  ON_HAND_QUANTITY,',
'  LIST_PRICE_PER_UNIT,',
'  C.Description category,',
'  on_hand_quantity_date',
'FROM TBLONHANDHISTORY A JOIN Tblinventoryitem B ON A.Inventory_Item_Id=B.Inventory_Item_Id',
'JOIN Tblcategorygroup C ON B.Category_Id=C.Category_Id',
'WHERE INVENTORY_ASSET_FLAG=''N''',
'AND A.ORGANIZATION_ID = 449',
'AND on_hand_quantity_date between :P40_START_DATE and :P40_END_DATE',
'and not exists (select 1',
'                from TBLPOLINES d join TBLPOHEADER e on e.po_header_id= d.po_header_id',
'                where a.Inventory_Item_Id = d.Inventory_Item_Id',
'                and TRANSACTED=''Y''',
'                and TRANSACTION_TYPE_ID=1',
'                and DATE_RECEIVED between :P40_START_DATE and :P40_END_DATE',
'                AND QUANTITY_RECEIVED>0',
'                AND A.ORGANIZATION_ID = 449',
'                )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P40_START_DATE,P40_END_DATE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3688391517264565873)
,p_name=>'rptNONPurchaseItem'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTT'
,p_internal_uid=>186272339071607262
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810010860198830598)
,p_db_column_name=>'ORG_ITEM_DESCRIPTION'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Org Item Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810010491949830597)
,p_db_column_name=>'SEGMENT1'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Segment1'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810010151919830597)
,p_db_column_name=>'AVERAGE_COST'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Average Cost'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810009723213830597)
,p_db_column_name=>'ON_HAND_QUANTITY'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'On Hand Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810009335491830597)
,p_db_column_name=>'LIST_PRICE_PER_UNIT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'List Price Per Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810008863282830597)
,p_db_column_name=>'CATEGORY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810011351874830598)
,p_db_column_name=>'ON_HAND_QUANTITY_DATE'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'On hand quantity date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3688386070053534725)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'646553'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_ITEM_DESCRIPTION:SEGMENT1:AVERAGE_COST:ON_HAND_QUANTITY:LIST_PRICE_PER_UNIT:CATEGORY:ON_HAND_QUANTITY_DATE'
,p_break_on=>'ORG_ITEM_DESCRIPTION:SEGMENT1:AVERAGE_COST:ON_HAND_QUANTITY:LIST_PRICE_PER_UNIT:CATEGORY'
,p_break_enabled_on=>'ORG_ITEM_DESCRIPTION:SEGMENT1:AVERAGE_COST:ON_HAND_QUANTITY:LIST_PRICE_PER_UNIT:CATEGORY'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3693700059245037866)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3810008108032830596)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3688391647733565873)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3695553537573721593)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3693700059245037866)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1002:&SESSION.::&DEBUG.:RP,1002::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810007302822830592)
,p_name=>'P40_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3688391647733565873)
,p_prompt=>'End date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810007709621830593)
,p_name=>'P40_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3688391647733565873)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3695553135335721589)
,p_name=>'refresh1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3695553218893721590)
,p_event_id=>wwv_flow_imp.id(3695553135335721589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3688391647733565873)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3695553302651721591)
,p_name=>'refresh2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3695553345623721592)
,p_event_id=>wwv_flow_imp.id(3695553302651721591)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3688391647733565873)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
