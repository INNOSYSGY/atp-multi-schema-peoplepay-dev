prompt --application/pages/page_00642
begin
--   Manifest
--     PAGE: 00642
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>642
,p_name=>'rptNonTransaction'
,p_step_title=>'Listing of Non-Transacted Between Given Period'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825295292278993317)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694981071050456398)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3711838138660657513)
,p_plug_name=>'Listing of Non-Transacted Between Given Period'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'"SEGMENT1" "ITEM NO",b.INVENTORY_ITEM_ID,item_status,TRANSACTION_ID,',
'CURRENT_QUANTITY_ORDERED,',
'(SELECT DESCRIPTION FROM TBLORGANIZATION WHERE ORGANIZATION_ID=A.ORGANIZATION_ID)',
'"ORGANIZATION",',
' A."ONHAND_ID",',
'"ON_HAND_QUANTITY",',
'"AVAILABLE_QUANTITY",',
'"AVERAGE_COST",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGE_DATE",',
'--"DOSAGE_FORM",',
'--trim(ORG_ITEM_DESCRIPTION)||'': ''||segment1||case when drug_strength is null then '''' else '' (''||drug_strength||'')'' end',
'"ORG_ITEM_DESCRIPTION",',
'min_stock_quantity ,max_stock_quantity ',
' ,maximum_order_quantity ,MINIMUM_ORDER_QUANTITY ',
' ,HOLD_DAYS ,RE_ORDER_LEVEL',
'from tblonhand a join tblinventoryitem b on A.inventory_item_id=b.inventory_item_id',
'where A.ORGANIZATION_ID = 449',
'and B.INVENTORY_ASSET_FLAG=''N'' ',
'and not exists(select 1',
'               from tblmisctransdetail c join tblinventoryitem d on c.inventory_item_id=d.inventory_item_id  ',
'               join tblmisctrans e on e.Misc_Trans_Id = c.Misc_Trans_Id',
'               where b.segment1 = d.segment1',
'               and E.DATE_REQUESTED between :P642_START_DATE and :P642_END_DATE',
'               )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P642_START_DATE,P642_END_DATE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3711838096976657513)
,p_name=>'rptNonTransacted'
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
,p_internal_uid=>162403625751941750
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808700472408033490)
,p_db_column_name=>'ITEM NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Item No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808700115540033490)
,p_db_column_name=>'INVENTORY_ITEM_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Inventory Item Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808699629023033490)
,p_db_column_name=>'ITEM_STATUS'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Item Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808699243959033489)
,p_db_column_name=>'TRANSACTION_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Transaction Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808698834950033489)
,p_db_column_name=>'CURRENT_QUANTITY_ORDERED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Curr Qtity Ordered'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808698445209033489)
,p_db_column_name=>'ORGANIZATION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Organization'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808698114902033489)
,p_db_column_name=>'ONHAND_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Onhand Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808697690538033489)
,p_db_column_name=>'ON_HAND_QUANTITY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'On Hand Qtity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808697321897033489)
,p_db_column_name=>'AVAILABLE_QUANTITY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Available Qtity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808696880237033489)
,p_db_column_name=>'AVERAGE_COST'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Avg Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808696470131033488)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808696071610033488)
,p_db_column_name=>'LAST_CHANGE_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Change Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808695623608033488)
,p_db_column_name=>'ORG_ITEM_DESCRIPTION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Org Item Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808695262051033488)
,p_db_column_name=>'MIN_STOCK_QUANTITY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Min Stock Qtity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808694912036033488)
,p_db_column_name=>'MAX_STOCK_QUANTITY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Max Stock Qtity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808694517311033488)
,p_db_column_name=>'MAXIMUM_ORDER_QUANTITY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Max Order Qtity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808694117712033488)
,p_db_column_name=>'MINIMUM_ORDER_QUANTITY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Min Order Qtity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808693649163033487)
,p_db_column_name=>'HOLD_DAYS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Hold Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3808693309697033487)
,p_db_column_name=>'RE_ORDER_LEVEL'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Re Order Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3711827842495651085)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'655488'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ITEM NO:ORG_ITEM_DESCRIPTION:ITEM_STATUS:CURRENT_QUANTITY_ORDERED:ON_HAND_QUANTITY:AVAILABLE_QUANTITY:AVERAGE_COST:MIN_STOCK_QUANTITY:MAX_STOCK_QUANTITY:MAXIMUM_ORDER_QUANTITY:MINIMUM_ORDER_QUANTITY:HOLD_DAYS:RE_ORDER_LEVEL:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3808692427394033487)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3711838138660657513)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3693263241434338024)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3694981071050456398)
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
 p_id=>wwv_flow_imp.id(3808691689810033487)
,p_name=>'P642_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3711838138660657513)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
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
 p_id=>wwv_flow_imp.id(3808692094029033487)
,p_name=>'P642_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3711838138660657513)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start  Date'
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
 p_id=>wwv_flow_imp.id(3693262857350338020)
,p_name=>'refresh1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P642_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693262980014338021)
,p_event_id=>wwv_flow_imp.id(3693262857350338020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3711838138660657513)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3693263019681338022)
,p_name=>'refresh2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P642_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3693263135929338023)
,p_event_id=>wwv_flow_imp.id(3693263019681338022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3711838138660657513)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
