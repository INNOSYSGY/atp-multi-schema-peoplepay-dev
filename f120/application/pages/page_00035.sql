prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_name=>'rptAssetItemTransHistory'
,p_step_title=>'Asset Item Trans History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603894039286395832)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3395436008960116364)
,p_plug_name=>'Asset Item History Analysis'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'ASSET_TRANSACTION_ID TRANSACTION_ID, ',
'B.INVENTORY_ITEM_ID, ',
'ORG_ITEM_DESCRIPTION,',
'UPPER(segment1),',
'TRANSACTION_SOURCE_NAME, ',
'TO_CHAR(TRANSACTION_DATE,''DD-MON-YYYY HH:MI'') TRANSACTION_DATE,',
'B.INVENTORY_ITEM_ID Edit,',
'(select DESCRIPTION from TBLORGANIZATION X where ORGANIZATION_ID = nvl(c.ORGANIZATION_ID, d.ORGANIZATION_ID_DEST)) ORGANIZATION_ID, ',
'TRANSACTION_SOURCE_ID, ',
'TRANSACTION_QUANTITY,PURCHASE_price',
'FROM TBLASSETHISTORY A JOIN TBLINVENTORYITEM b on A.INVENTORY_ITEM_ID=B.INVENTORY_ITEM_ID',
'left outer JOIN TBLASSETPOHEADER C on c.PO_HEADER_ID = TRANSACTION_SOURCE_ID',
'left outer JOIN TBLASSETREQ e on e.ASSET_REQ_NO = TRANSACTION_SOURCE_ID',
'left outer JOIN TBLASSETMISCTRANS d on d.MISC_TRANS_ID = TRANSACTION_SOURCE_ID',
'where trunc(TRANSACTION_DATE) between :P35_START_DATE and :P35_END_DATE',
'and upper(TRIM(reason)) =''COMPLETED''',
'and ASSET_PROCESS_ID != 71',
'ORDER BY B.INVENTORY_ITEM_ID, ASSET_TRANSACTION_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P35_START_DATE,P35_END_DATE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3395435577296116327)
,p_name=>'Item History Analysis'
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GTT'
,p_internal_uid=>493820879769247727
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471845778529660031)
,p_db_column_name=>'TRANSACTION_QUANTITY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Transaction Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471846184094660031)
,p_db_column_name=>'TRANSACTION_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Transaction Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471846574780660031)
,p_db_column_name=>'PURCHASE_PRICE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Purchase Price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471842585381660028)
,p_db_column_name=>'INVENTORY_ITEM_ID'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Inventory Item Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471843001865660029)
,p_db_column_name=>'ORG_ITEM_DESCRIPTION'
,p_display_order=>34
,p_column_identifier=>'P'
,p_column_label=>'Org Item Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471843443835660029)
,p_db_column_name=>'UPPER(SEGMENT1)'
,p_display_order=>44
,p_column_identifier=>'Q'
,p_column_label=>'Upper(segment1)'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471843826395660029)
,p_db_column_name=>'TRANSACTION_SOURCE_NAME'
,p_display_order=>54
,p_column_identifier=>'R'
,p_column_label=>'Transaction Source Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471844178140660030)
,p_db_column_name=>'TRANSACTION_DATE'
,p_display_order=>64
,p_column_identifier=>'S'
,p_column_label=>'Transaction Date'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471844607364660030)
,p_db_column_name=>'EDIT'
,p_display_order=>74
,p_column_identifier=>'T'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471844972070660030)
,p_db_column_name=>'ORGANIZATION_ID'
,p_display_order=>84
,p_column_identifier=>'U'
,p_column_label=>'Organization Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3471845447339660031)
,p_db_column_name=>'TRANSACTION_SOURCE_ID'
,p_display_order=>94
,p_column_identifier=>'V'
,p_column_label=>'Transaction Source Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3395430345265116282)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'857320'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'TRANSACTION_ID:TRANSACTION_QUANTITY:PURCHASE_PRICE:INVENTORY_ITEM_ID:ORG_ITEM_DESCRIPTION:UPPER(SEGMENT1):TRANSACTION_SOURCE_NAME:TRANSACTION_DATE:EDIT:ORGANIZATION_ID:TRANSACTION_SOURCE_ID'
,p_sort_column_1=>'TRANSACTION_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'TRANSACTION_DATE'
,p_sort_direction_2=>'ASC'
,p_break_on=>'EDIT:0:0:0:0:0'
,p_break_enabled_on=>'EDIT:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3503747257783884681)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3471841876411660018)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3503747257783884681)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1002:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3471841491400660017)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3503747257783884681)
,p_button_name=>'P35_SEARCH'
,p_button_static_id=>'P290_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3471847440776660036)
,p_name=>'P35_START_DATE'
,p_item_sequence=>9
,p_item_plug_id=>wwv_flow_imp.id(3395436008960116364)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
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
 p_id=>wwv_flow_imp.id(3471847773812660038)
,p_name=>'P35_END_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3395436008960116364)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3469658985430248837)
,p_name=>'refresh_region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3469659116543248838)
,p_event_id=>wwv_flow_imp.id(3469658985430248837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3395436008960116364)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3469659242645248839)
,p_name=>'refresh_region1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3469659251175248840)
,p_event_id=>wwv_flow_imp.id(3469659242645248839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3395436008960116364)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
