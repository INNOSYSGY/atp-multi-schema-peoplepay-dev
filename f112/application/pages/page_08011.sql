prompt --application/pages/page_08011
begin
--   Manifest
--     PAGE: 08011
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
 p_id=>8011
,p_name=>'rptpayereportbyperiod'
,p_step_title=>'PAYE Report by Period'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3318425078573104195)
,p_plug_name=>'PAYE by Employment Class'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3330411278596725569)
,p_plug_name=>'Listing of Paye'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct(c.id_number) "TIN",',
'       a.surname_hist ||'',''|| a.first_name_hist "Employee Name",',
'       a.time_tax_earnings "Taxable Income",',
'       a.tax_amount "Amount Income Tax",',
'       a.tax_amount "Tax Payable",',
'       a.period_start "Period Start"',
'       FROM pa_pmg_payrolldtl a',
'       JOIN hr_rcm_employee b',
'       ON a.emp_id = b.id',
'       JOIN hr_rcm_natidentifier c',
'       ON c.ind_id = b.ind_id',
'       WHERE c.id_type = upper(''TIN'')',
'       AND a.payment_mode_hist = UPPER(:P8011_PAYMENT_MODE)',
'       AND a.employment_class_hist = UPPER(:P8011_EMPLOYMENT_CLASS)',
'       AND a.period_start = to_date(:P8011_PERIOD, ''DD-MON-YYYY'')',
'       and a.org_id=17832;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_required_role=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3330411234685725569)
,p_name=>'rptPaye'
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
,p_owner=>'RSPRINGER'
,p_internal_uid=>29108288438566712
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318415071462951860)
,p_db_column_name=>'TIN'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318415502816951860)
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
 p_id=>wwv_flow_imp.id(3318415931630951860)
,p_db_column_name=>'Taxable Income'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Taxable Income'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318416285928951861)
,p_db_column_name=>'Amount Income Tax'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Amount Income Tax'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318416703615951861)
,p_db_column_name=>'Tax Payable'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Tax Payable'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318414812370951858)
,p_db_column_name=>'Period Start'
,p_display_order=>16
,p_column_identifier=>'G'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3330408432522724513)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'145809'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIN:Employee Name:Taxable Income:Amount Income Tax:Tax Payable:Period Start'
,p_sum_columns_on_break=>'Taxable Income:Amount Income Tax:Tax Payable'
,p_count_columns_on_break=>'TIN:Employee Name'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3317667797313640742)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3318425078573104195)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3318417469581951867)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3318425078573104195)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-play-circle-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318417931618951871)
,p_name=>'P8011_EMPLOYMENT_CLASS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3330411278596725569)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VALUE_DESCRIPTION B, VALUE_DESCRIPTION a',
'from  table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTCLASS'')) a',
'where  ORG_ID=:APP_ORG_ID',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318418321881951872)
,p_name=>'P8011_PAYMENT_MODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3330411278596725569)
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3326454853024652850)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318418721458951872)
,p_name=>'P8011_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3330411278596725569)
,p_prompt=>'Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a,',
'    b',
'FROM',
'    (',
'        SELECT DISTINCT',
'            TO_CHAR(start_date, ''MONTH'')',
'            || '' ''',
'            || EXTRACT(YEAR FROM start_date) a,',
'            start_date b',
'        FROM',
'            pa_pcf_earningperiod',
'    )',
'    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
