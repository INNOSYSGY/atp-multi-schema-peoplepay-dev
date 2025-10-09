prompt --application/pages/page_08002
begin
--   Manifest
--     PAGE: 08002
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
 p_id=>8002
,p_name=>'rptRemittances'
,p_step_title=>'Employees Payments'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806720991694815451)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3845959247078778434)
,p_plug_name=>'Employees Payments'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.emp_company_no_hist "Empl. No.",',
'    a.first_name_hist',
'    || '' ''',
'    || a.surname_hist "Employee Name",',
'    a.bank_account_no_hist   "Employee Account No.",',
'    a.bank_branch_id_hist    "Bank Branch",',
'    a.net_pay                "Net Pay"',
'FROM',
'    pa_pmg_payrolldtl a',
'    ',
'    --where employment_class_hist = UPPER(:P8002_EMPLOYMENT_CLASS)',
'    where a.EARNINGS_PERIOD_ID=DECODE(:P8002_PERIODS_NEW,''1'',EARNINGS_PERIOD_ID,:P8002_PERIODS_NEW)',
'    AND payment_mode_hist = UPPER(:P8002_PAYMENT_MODE)',
'    --AND period_start = to_date(:P8002_PERIOD, ''DD-MON-YYYY'')',
'    and a.org_id=17832;',
'   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8002_PAYMENT_MODE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3845959400107778434)
,p_name=>'rpt_remittances'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BSINGH'
,p_internal_uid=>14290685767669274
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3845960144106778437)
,p_db_column_name=>'Employee Name'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3845960519495778437)
,p_db_column_name=>'Employee Account No.'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee Account No.'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3845960917966778438)
,p_db_column_name=>'Bank Branch'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Bank Branch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3845961326994778438)
,p_db_column_name=>'Net Pay'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846008814549088276)
,p_db_column_name=>'Empl. No.'
,p_display_order=>15
,p_column_identifier=>'F'
,p_column_label=>'Empl. No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3845962594390784402)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'142939'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Empl. No.:Bank Branch:Employee Name:Employee Account No.:Net Pay:'
,p_break_on=>'Bank Branch:0:0:0:0:0'
,p_break_enabled_on=>'Bank Branch:0:0:0:0:0'
,p_sum_columns_on_break=>'Net Pay'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3846186245207805814)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Scotia'
,p_report_seq=>10
,p_report_alias=>'145176'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Empl. No.:Bank Branch:Employee Name:Employee Account No.:Net Pay:'
,p_break_on=>'Bank Branch:0:0:0:0:0'
,p_break_enabled_on=>'Bank Branch:0:0:0:0:0'
,p_sum_columns_on_break=>'Net Pay'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3846186634006805814)
,p_report_id=>wwv_flow_imp.id(3846186245207805814)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Bank Branch'
,p_operator=>'='
,p_expr=>'Bank Of Nova Scotia'
,p_condition_sql=>'"Bank Branch" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Bank Of Nova Scotia''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3846188555795831924)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'GBTI'
,p_report_seq=>10
,p_report_alias=>'145199'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Empl. No.:Bank Branch:Employee Name:Employee Account No.:Net Pay:'
,p_break_on=>'Bank Branch:0:0:0:0:0'
,p_break_enabled_on=>'Bank Branch:0:0:0:0:0'
,p_sum_columns_on_break=>'Net Pay'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3846188934206831924)
,p_report_id=>wwv_flow_imp.id(3846188555795831924)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Bank Branch'
,p_operator=>'='
,p_expr=>'Guyana Bank For Trade And Industries'
,p_condition_sql=>'"Bank Branch" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Guyana Bank For Trade And Industries''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3846193908666913030)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Republic Bank Camp Street'
,p_report_seq=>10
,p_report_alias=>'145252'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Empl. No.:Bank Branch:Employee Name:Employee Account No.:Net Pay:'
,p_break_on=>'Bank Branch:0:0:0:0:0'
,p_break_enabled_on=>'Bank Branch:0:0:0:0:0'
,p_sum_columns_on_break=>'Net Pay'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3846194231710913031)
,p_report_id=>wwv_flow_imp.id(3846193908666913030)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Bank Branch'
,p_operator=>'='
,p_expr=>'Republic Bank Camp Street Sub-Branch'
,p_condition_sql=>'"Bank Branch" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Republic Bank Camp Street Sub-Branch''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3846196625516923570)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Republic Bank Rose Hall'
,p_report_seq=>10
,p_report_alias=>'145280'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Empl. No.:Bank Branch:Employee Name:Employee Account No.:Net Pay:'
,p_break_on=>'Bank Branch:0:0:0:0:0'
,p_break_enabled_on=>'Bank Branch:0:0:0:0:0'
,p_sum_columns_on_break=>'Net Pay'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3846197076242923571)
,p_report_id=>wwv_flow_imp.id(3846196625516923570)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'Bank Branch'
,p_operator=>'='
,p_expr=>'Republic Bank Rose Hall Branch'
,p_condition_sql=>'"Bank Branch" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''Republic Bank Rose Hall Branch''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3845963138740789970)
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
 p_id=>wwv_flow_imp.id(3845713801445606910)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3845963138740789970)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3846281371459389906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3845963138740789970)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3845709726753606870)
,p_name=>'P8002_PAYMENT_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3845959247078778434)
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3854287402555521285)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3846281065908388007)
,p_name=>'P8002_PERIODS_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3845959247078778434)
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a, b',
'from (',
'        SELECT earn_description  A',
'        ,  id b, Earn_year, earn_month',
'        FROM vw_earnall A  ',
'        Where Exists (Select 1',
'                      from PA_PMG_PAYROLLDTL B',
'                      where a.id=B.EARNINGS_PERIOD_ID)',
'        And Org_Id=:P1355_Organisation',
'        )',
'order by Earn_year desc, earn_month desc, b desc',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'1'
,p_lov_cascade_parent_items=>'P1355_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3845713430319606907)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8002_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3845713605244606908)
,p_event_id=>wwv_flow_imp.id(3845713430319606907)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3845959247078778434)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
