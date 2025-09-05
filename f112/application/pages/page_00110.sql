prompt --application/pages/page_00110
begin
--   Manifest
--     PAGE: 00110
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
 p_id=>110
,p_name=>'rptOraclePayrollChecks'
,p_alias=>'RPTORACLEPAYROLLCHECKS'
,p_step_title=>'Oracle Payroll Checks'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3265303378039240496)
,p_plug_name=>'Employee Without Vendor/Paysite Codes'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent8:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.first_name, b.surname,emp_company_no,c.position_name, c.org_structure, d.personal_rate, d.daily_rate, d.hourly_rate, d.payment_mode, d.start_date, d.end_date, d.id pkey, b.vendor_id, b.vendor_id vendor_name,',
'b.paysite_code, b.id link_id',
'from hr_hcf_organisation a join hr_rcm_individual b on b.bank_branch_id = a.id',
'join hr_rcm_employee c on b.id = c.ind_id',
'join hr_rcm_salary d on d.emp_id = c.id ',
'join pa_pcf_earningperiod e on (e.payment_type=c.payment_type and e.employment_class_id = c.employment_class_id and e.compute_gross= c.compute_gross and e.org_id= c.org_id)',
'where (d.end_date is null or d.end_date > trunc(current_date))',
'and (b.vendor_id is null or b.paysite_code is null)',
'and d.payment_mode =''CHEQUE''',
'and short_name !=''RBGL'' --republic bank is excluded',
'and c.EMPLOYMENT_CLASS_ID != 109636 ',
'and e.id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and organisation_type =''BANK''',
'and (c.date_separated is null or c.date_separated > trunc(current_date) )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P110_PAYROLL_START_PERIODS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3265303493257240497)
,p_max_row_count=>'1000000'
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
,p_owner=>'GPL'
,p_internal_uid=>212224589619461132
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184461840622245973)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184461505714245973)
,p_db_column_name=>'SURNAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184461093590245973)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184460635443245973)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184460332256245972)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184459925916245972)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184459445181245972)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184459068227245972)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184458725831245972)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184458315735245972)
,p_db_column_name=>'START_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184457927356245972)
,p_db_column_name=>'END_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184457517099245972)
,p_db_column_name=>'PKEY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Salary Record'
,p_column_link=>'f?p=&APP_ID.:1282:&SESSION.::&DEBUG.:RP,1282:P1282_ID:#PKEY#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184463525650245975)
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Vendor Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184463086980245973)
,p_db_column_name=>'VENDOR_NAME'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Vendor Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3184412135449245942)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184462706182245973)
,p_db_column_name=>'PAYSITE_CODE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Paysite Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184462273695245973)
,p_db_column_name=>'LINK_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Individual'
,p_column_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1261_ID:#LINK_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3265686233069290511)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'811660'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PKEY:FIRST_NAME:SURNAME:EMP_COMPANY_NO:POSITION_NAME:ORG_STRUCTURE:PERSONAL_RATE:DAILY_RATE:HOURLY_RATE:PAYMENT_MODE:START_DATE:END_DATE::VENDOR_ID:VENDOR_NAME:PAYSITE_CODE:LINK_ID'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3296904464185055152)
,p_plug_name=>'Natural Code Invoices Line Upload'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null upl, null INVOICE_ID,	Net_Pay AMOUNT,	coa_code||''-''||natural_account_code DIST_CODE_CONCATENATED, ''ITEM''	LINE_TYPE_LOOKUP_CODE, null	TAXABLE_FLAG, null	TAX_CODE_OVERRIDE_FLAG,',
'null TAX_RATE_CODE, null	TAX_REGIME_CODE, null	TAX, null	TAX_JURISDICTION_CODE, null	TAX_STATUS_CODE, null	TAX_RATE, null	Messages',
'from hr_rcm_employee c join pa_pmg_payrolldtl d on d.emp_id = c.id',
'join hr_hcf_orgstructuredtl a  on c.orgdtl_id = a.id',
'join pa_pcf_earningperiod x on x.id = d.earnings_period_id',
'where payment_mode_hist IN (''BANK'', ''CHEQUE'')',
'and earnings_period_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and x.payment_type = :P110_PAYMENT_TYPE',
'',
'union',
'select null upl, null INVOICE_ID, 0	AMOUNT, ''1-01-F-22-13-03-00-00-61010'' DIST_CODE_CONCATENATED,	''TAX'' LINE_TYPE_LOOKUP_CODE, ''N'' TAXABLE_FLAG, ''Y''	TAX_CODE_OVERRIDE_FLAG,',
'''EXEMPT'' TAX_RATE_CODE, ''VAT'' TAX_REGIME_CODE, ''VAT''	Tax, ''VAT'' TAX_JURISDICTION_CODE, ''VAT'' TAX_STATUS_CODE, ''EXEMPT'' TAX_RATE, null	Messages',
'from dual'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P110_PAYROLL_START_PERIODS,P110_PAYMENT_TYPE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3296904335165055151)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>313372449130698490
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184427375266245956)
,p_db_column_name=>'INVOICE_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Invoice Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184426953219245955)
,p_db_column_name=>'TAX'
,p_display_order=>90
,p_column_identifier=>'B'
,p_column_label=>'Tax'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184426533891245955)
,p_db_column_name=>'UPL'
,p_display_order=>100
,p_column_identifier=>'C'
,p_column_label=>'Upl'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184426218102245955)
,p_db_column_name=>'AMOUNT'
,p_display_order=>110
,p_column_identifier=>'D'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184425808982245955)
,p_db_column_name=>'DIST_CODE_CONCATENATED'
,p_display_order=>120
,p_column_identifier=>'E'
,p_column_label=>'Dist Code Concatenated'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184425426099245955)
,p_db_column_name=>'LINE_TYPE_LOOKUP_CODE'
,p_display_order=>130
,p_column_identifier=>'F'
,p_column_label=>'Line Type Lookup Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184424962700245955)
,p_db_column_name=>'TAXABLE_FLAG'
,p_display_order=>140
,p_column_identifier=>'G'
,p_column_label=>'Taxable Flag'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184424619022245955)
,p_db_column_name=>'TAX_CODE_OVERRIDE_FLAG'
,p_display_order=>150
,p_column_identifier=>'H'
,p_column_label=>'Tax Code Override Flag'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184424168539245955)
,p_db_column_name=>'TAX_RATE_CODE'
,p_display_order=>160
,p_column_identifier=>'I'
,p_column_label=>'Tax Rate Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184423804353245955)
,p_db_column_name=>'TAX_REGIME_CODE'
,p_display_order=>170
,p_column_identifier=>'J'
,p_column_label=>'Tax Regime Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184423408768245953)
,p_db_column_name=>'TAX_JURISDICTION_CODE'
,p_display_order=>180
,p_column_identifier=>'K'
,p_column_label=>'Tax Jurisdiction Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184422935701245953)
,p_db_column_name=>'TAX_STATUS_CODE'
,p_display_order=>190
,p_column_identifier=>'L'
,p_column_label=>'Tax Status Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184422613291245953)
,p_db_column_name=>'TAX_RATE'
,p_display_order=>200
,p_column_identifier=>'M'
,p_column_label=>'Tax Rate'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184422217220245952)
,p_db_column_name=>'MESSAGES'
,p_display_order=>210
,p_column_identifier=>'N'
,p_column_label=>'Messages'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3296489746736027284)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'812013'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'UPL:INVOICE_ID:AMOUNT:DIST_CODE_CONCATENATED:LINE_TYPE_LOOKUP_CODE:TAXABLE_FLAG:TAX_CODE_OVERRIDE_FLAG:TAX_RATE_CODE:TAX_REGIME_CODE:TAX:TAX_JURISDICTION_CODE:TAX_STATUS_CODE:TAX_RATE:MESSAGES:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3296906583191055173)
,p_plug_name=>'Natural Code Invoice Line '
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    invoice_id,',
'    net_pay,',
'    dept_code,',
'    line_type,',
'    t_flag,',
'    t_override_flag,',
'    t_rate_code,',
'    t_regime,',
'    tax,',
'    tax_jurisdiction,',
'    tax_status,',
'    t_rate,',
'    id,',
'    oracle_chk_sum_id,',
'    entry_date,',
'    entered_by,',
'    last_changed_by,',
'    last_changed_date',
'FROM  pa_pmg_pay_oraclechk_dtl',
'where earnings_period_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and payment_type= :P110_PAYMENT_TYPE '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P110_PAYROLL_START_PERIODS,P110_PAYMENT_TYPE'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308401014362770246)
,p_name=>'INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Invoice Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309286462454680897)
,p_name=>'NET_PAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PAY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Net Pay'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309286573237680898)
,p_name=>'DEPT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Dept Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309286687643680899)
,p_name=>'LINE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Line Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309286773519680900)
,p_name=>'T_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'T_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'T Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309286845118680901)
,p_name=>'T_OVERRIDE_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'T_OVERRIDE_FLAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'T Override Flag'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309286973455680902)
,p_name=>'T_RATE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'T_RATE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'T Rate Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287044147680903)
,p_name=>'T_REGIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'T_REGIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'T Regime'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287190154680904)
,p_name=>'TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Tax'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287226538680905)
,p_name=>'TAX_JURISDICTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAX_JURISDICTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Tax Jurisdiction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287298585680906)
,p_name=>'TAX_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAX_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Tax Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287456535680907)
,p_name=>'T_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'T_RATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'T Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287568921680908)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287611497680909)
,p_name=>'ORACLE_CHK_SUM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORACLE_CHK_SUM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287700429680910)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287861360680911)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309287962264680912)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309288056992680913)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3308400930818770245)
,p_internal_uid=>255322027180990880
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3309292648304682546)
,p_interactive_grid_id=>wwv_flow_imp.id(3308400930818770245)
,p_static_id=>'810428'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3309292694363682546)
,p_report_id=>wwv_flow_imp.id(3309292648304682546)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309293245809682547)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3308401014362770246)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309293736318682548)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3309286462454680897)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97.33330000000001
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309294250805682550)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3309286573237680898)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>190
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309294783480682551)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3309286687643680899)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309295225823682553)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3309286773519680900)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309295743006682554)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3309286845118680901)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>121.4445
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309296200394682556)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3309286973455680902)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309296780276682557)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3309287044147680903)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309297292571682559)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3309287190154680904)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309297740190682560)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3309287226538680905)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>102.6667
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309298212207682562)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3309287298585680906)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>100.5556
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309298701373682563)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3309287456535680907)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>84
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309299250236682565)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3309287568921680908)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309299719318682566)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3309287611497680909)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94.7778
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309300223392682567)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3309287700429680910)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309300757007682569)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3309287861360680911)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309301249672682570)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3309287962264680912)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309301732516682572)
,p_view_id=>wwv_flow_imp.id(3309292694363682546)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3309288056992680913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3296908408650055191)
,p_plug_name=>'Oracle Vendor Invoices Details'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with payroll as (select Null Upl, to_char(d.period_start,''MON'')||'' PAYROLL ''||to_char(d.period_start,''YYYY'') invoice_num, null Invoice_ID,',
'a.vendor_id, net_pay, to_char(d.period_start,''MON'')||'' PAYROLL ''||to_char(d.period_start,''YYYY'')||'' ''||INITCAP(EMPLOYMENT_CLASS_hist)||'' ''||INITCAP(compute_gross_hist) group_id,a.Paysite_Code VENDOR_SITE_CODE,d.period_start, ''Payroll-Immediate'' TERMS'
||'_NAME,',
'''GPL PAYROLL'' source, 81 ORG_ID,DECODE(d.payment_mode_hist,''CHEQUE'', ''CHECK'', d.payment_mode_hist) PAYMENT_METHOD_CODE',
', ''GYD'' INVOICE_CURRENCY_CODE,	''N'' CALC_TAX_DURING_IMPORT_FLAG,NULL		Messages, a.vendor_id Vendor_Name',
'from hr_hcf_organisation a join hr_rcm_individual b on b.bank_branch_id = a.id',
'join hr_rcm_employee c on b.id = c.ind_id',
'join pa_pmg_payrolldtl d on d.emp_id = c.id',
'where organisation_type=''BANK''',
'and d.payment_mode_hist IN (''BANK'', ''CHEQUE'')',
'and D.earnings_period_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and C.payment_type = :P110_PAYMENT_TYPE) ',
'select  Upl, invoice_num||'' ''||rownum invoice_num, Invoice_ID, vendor_id, net_pay, group_id, VENDOR_SITE_CODE,period_start, TERMS_NAME, source,  ORG_ID, PAYMENT_METHOD_CODE, ',
'INVOICE_CURRENCY_CODE,	CALC_TAX_DURING_IMPORT_FLAG, Messages,Vendor_Name',
'from payroll'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P110_PAYMENT_TYPE,P110_PAYROLL_START_PERIODS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3296908311661055190)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PEOPLEPAY'
,p_internal_uid=>313368472634698451
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184442330454245964)
,p_db_column_name=>'UPL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Upl'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184441834711245964)
,p_db_column_name=>'INVOICE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Invoice Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184441452208245964)
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vendor Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184441059802245964)
,p_db_column_name=>'NET_PAY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184440646000245964)
,p_db_column_name=>'GROUP_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Group Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184440277542245963)
,p_db_column_name=>'VENDOR_SITE_CODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Vendor Site Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184439930518245963)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184439435565245963)
,p_db_column_name=>'TERMS_NAME'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Terms Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184439130337245963)
,p_db_column_name=>'SOURCE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184438685918245963)
,p_db_column_name=>'ORG_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184438324951245963)
,p_db_column_name=>'PAYMENT_METHOD_CODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Payment Method Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184437878447245963)
,p_db_column_name=>'INVOICE_CURRENCY_CODE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Invoice Currency Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184437528111245963)
,p_db_column_name=>'CALC_TAX_DURING_IMPORT_FLAG'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Calc Tax During Import Flag'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184437102845245962)
,p_db_column_name=>'MESSAGES'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Messages'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184436665707245961)
,p_db_column_name=>'INVOICE_NUM'
,p_display_order=>160
,p_column_identifier=>'Q'
,p_column_label=>'Invoice Num'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3184442660638245964)
,p_db_column_name=>'VENDOR_NAME'
,p_display_order=>170
,p_column_identifier=>'R'
,p_column_label=>'Vendor Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3184412135449245942)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3296887547949824305)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'811868'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'INVOICE_ID:INVOICE_NUM:VENDOR_ID:NET_PAY:GROUP_ID:VENDOR_SITE_CODE:PERIOD_START:TERMS_NAME:SOURCE:ORG_ID:PAYMENT_METHOD_CODE:INVOICE_CURRENCY_CODE:CALC_TAX_DURING_IMPORT_FLAG:MESSAGES::VENDOR_NAME'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3296908454602055192)
,p_plug_name=>'Oracle Payroll Checks (Only Approved and Archived Payrolls can be processed)'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3296925552261269070)
,p_plug_name=>'Oracle Vendor Invoices Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    invoice_number,',
'    invoice_id, vendor_id Inv_id,',
'    vendor_id,',
'    net_pay,',
'    group_id,',
'    paysite_code,',
'    id,',
'  --  ''link'' Approve,',
'    entry_date,',
'    entered_by,',
'    last_changed_by,',
'    last_changed_date,',
'    verified_by,',
'    verified_date',
'FROM pa_pmg_pay_oraclechecks_sum',
'where earnings_period_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and payment_type= :P110_PAYMENT_TYPE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P110_PAYMENT_TYPE,P110_PAYROLL_START_PERIODS'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3233819047035300492)
,p_name=>'INV_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INV_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Vendor Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3184412135449245942)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3296640800914538711)
,p_name=>'APPROVE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Approve'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_link_target=>'javascript:$.event.trigger("approveChange","#ID#");'
,p_link_text=>'<span class="t-Icon fa check-circle  aria-hidden="true"></span>Approve'
,p_link_attributes=>'class="t-Button t-Button--icon t-Button--success t-Button--iconLeft"'
,p_filter_is_required=>false
,p_static_id=>'APPROVE'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308398496123770221)
,p_name=>'INVOICE_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Invoice Number'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308398680315770222)
,p_name=>'INVOICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INVOICE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Invoice Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308398695133770223)
,p_name=>'VENDOR_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VENDOR_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Vendor Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308398854322770224)
,p_name=>'NET_PAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NET_PAY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Net Pay'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'999G999G999G999G999G999G990'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308398960247770225)
,p_name=>'GROUP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GROUP_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Group Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399032009770226)
,p_name=>'PAYSITE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYSITE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Paysite Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399114341770227)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Link'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399199460770228)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399313898770229)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399437161770230)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399514451770231)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399601936770232)
,p_name=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399701552770233)
,p_name=>'VERIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERIFIED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Verified Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399887105770234)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3308399909285770235)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3309289035986680923)
,p_name=>'PK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pk Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3308398404582770220)
,p_internal_uid=>255319500944990855
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3309198485185475593)
,p_interactive_grid_id=>wwv_flow_imp.id(3308398404582770220)
,p_static_id=>'653817'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3309198588268475593)
,p_report_id=>wwv_flow_imp.id(3309198485185475593)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3280637387693116775)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3233819047035300492)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>321
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309199003349475597)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3308398496123770221)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>192
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309199577832475600)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3308398680315770222)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309200023931475602)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3308398695133770223)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>85
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309200581524475604)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3308398854322770224)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>108
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309201048913475606)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3308398960247770225)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>150
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309201496180475607)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3308399032009770226)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309202006319475609)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3308399114341770227)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309202509022475610)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3308399199460770228)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309203065923475612)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3308399313898770229)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309203549423475613)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3308399437161770230)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>131
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309204001082475615)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3308399514451770231)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>168
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309204574898475617)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3308399601936770232)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309205041940475618)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3308399701552770233)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309208202573476895)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3308399887105770234)
,p_is_visible=>false
,p_is_frozen=>true
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309335330808364801)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3309289035986680923)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3312315033049388798)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3296640800914538711)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3215256145424603961)
,p_view_id=>wwv_flow_imp.id(3309198588268475593)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(3308398854322770224)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3184447820474245966)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_button_name=>'ADD_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3184447336993245966)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_button_name=>'PROCESS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Process'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_pay_oraclechecks_sum',
'where earnings_period_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and payment_type= :P110_PAYMENT_TYPE'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3184446978413245966)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3184446567013245966)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_button_name=>'VERIFY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Verify'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_pay_oraclechecks_sum',
'where earnings_period_id in (SELECT a_field',
'                   FROM ',
'                     xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P110_PAYROLL_START_PERIODS,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(500) path ''/'')',
')',
'and payment_type= :P110_PAYMENT_TYPE',
'AND verified_by IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3186659428834827837)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3184446221182245966)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3184412444800245943)
,p_branch_name=>'CLEAR_SCREEN'
,p_branch_action=>'f?p=&APP_ID.:110:&SESSION.::&DEBUG.:RP,110::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3184447820474245966)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184443359411245965)
,p_name=>'P110_TEST'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184443757449245965)
,p_name=>'P110_INVOICE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184444208360245965)
,p_name=>'P110_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184444612419245965)
,p_name=>'P110_START_INVOICE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_prompt=>'Start Invoice'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184445001159245965)
,p_name=>'P110_PAYROLL_START_PERIODS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_prompt=>'Payroll Period Start'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with payroll as (',
'SELECT DISTINCT TO_CHAR(a.START_DATE ,''DD-MON-YYYY'')||'' ''|| Upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')))||',
''' (''||Initcap(compute_gross)||'')'' AS EXPR1,  a.id AS EXPR2, compute_gross, START_DATE',
'FROM PA_PCF_EARNINGPERIOD a join pa_pmg_payrollhd b on a.id = b.earnings_period_id',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'AND EMPLOYMENT_CLASS_ID !=109636 --hard coded to exclude pensioners  ',
'and b.pay_status =''AR''          ',
'AND PAYMENT_TYPE= :P110_PAYMENT_TYPE',
'--and compute_gross !=''DAILY_RATE''',
')select EXPR1, EXPR2 ',
' from payroll',
' ORDER BY compute_gross, START_DATE DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P110_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184445418054245965)
,p_name=>'P110_SEQ_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184445791924245965)
,p_name=>'P110_PAYMENT_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3296908454602055192)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_TYPE_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3184420079899245949)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_PAYROLL_START_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184419583196245949)
,p_event_id=>wwv_flow_imp.id(3184420079899245949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3296925552261269070)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184419112303245944)
,p_event_id=>wwv_flow_imp.id(3184420079899245949)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3296908408650055191)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184418580006245944)
,p_event_id=>wwv_flow_imp.id(3184420079899245949)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3296906583191055173)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184418110229245944)
,p_event_id=>wwv_flow_imp.id(3184420079899245949)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3296904464185055152)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184417553889245944)
,p_event_id=>wwv_flow_imp.id(3184420079899245949)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3265303378039240496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3184417179858245944)
,p_name=>'dy_get_data'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3296925552261269070)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184416660757245944)
,p_event_id=>wwv_flow_imp.id(3184417179858245944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var i, selectedIds ="",selectedID,  ',
'    model = this.data.model;  ',
'  ',
'for ( i = 0; i < this.data.selectedRecords.length; i++ ) {  ',
'    selectedIds = model.getValue( this.data.selectedRecords[i], "ID");',
'    selectedID = model.getValue( this.data.selectedRecords[i], "INVOICE_ID");  ',
'',
'}  ',
'  ',
'$s("P110_ID", selectedIds);',
'$s("P110_INVOICE_ID", selectedID); ',
''))
,p_da_action_comment=>'loops through interactive grid row to get current information that is highlighted for columns specified. '
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3184416254493245944)
,p_name=>'dy_approve'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3296925552261269070)
,p_triggering_element=>'ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'approveChange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184415745623245944)
,p_event_id=>wwv_flow_imp.id(3184416254493245944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_TEST'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'        update pa_pmg_pay_oraclechk_dtl',
'            set INVOICE_ID = :P110_INVOICE_ID',
'        where ORACLE_CHK_SUM_ID=:P110_ID;',
'        ',
'        select 1 into :P110_TEST',
'        from dual;',
'        ',
'        return :P110_TEST;',
'end;'))
,p_attribute_07=>'P110_INVOICE_ID,P110_ID,P110_TEST'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184415273012245944)
,p_event_id=>wwv_flow_imp.id(3184416254493245944)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_TEST'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'$(this.triggeringElement).parent().data(''ID'')'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3184414838220245943)
,p_name=>'refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3296925552261269070)
,p_triggering_element=>'INVOICE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184414353145245943)
,p_event_id=>wwv_flow_imp.id(3184414838220245943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P110_INVOICE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'            select :INVOICE_ID into :P110_INVOICE_ID',
'            from dual;',
'        return :P110_INVOICE_ID;',
'end;'))
,p_attribute_07=>'INVOICE_ID,P110_INVOICE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3184413973104245943)
,p_name=>'SHOW_PROCESS'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P110_START_INVOICE'
,p_condition_element=>'P110_START_INVOICE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184412957385245943)
,p_event_id=>wwv_flow_imp.id(3184413973104245943)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3184447336993245966)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3184413482039245943)
,p_event_id=>wwv_flow_imp.id(3184413973104245943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3184447336993245966)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3184421241560245952)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_vendor_summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_previous number:=0; v_current number:=0; v_cnt number:=1; v_earn_start date;',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
'',
'begin',
'',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P110_PAYROLL_START_PERIODS);',
'    ',
'',
'     FOR i IN 1..l_selected.COUNT loop',
'',
'        select start_date into v_earn_start',
'        from pa_pcf_earningperiod',
'        where id = l_selected(i);',
'',
'            merge into pa_pmg_pay_oraclechecks_sum',
'            using (',
'                    with payroll as (select  to_char(period_start,''MON'')||'' PAYROLL ''||to_char(period_start,''YYYY'') invoice_number, null Invoice_ID,',
'                    case when payment_mode =''CHEQUE'' then to_number(b.vendor_id) else to_number(a.vendor_id) end vendor_id, sum(net_pay) net_pay,',
'                    to_char(period_start,''MON'')||'' PAYROLL ''||to_char(period_start,''YYYY'') group_id, d.EMPLOYMENT_CLASS_hist, d.compute_gross_hist,',
'                    case when payment_mode =''CHEQUE'' then b.Paysite_Code else  a.Paysite_Code end Paysite_Code',
'                    from hr_hcf_organisation a join hr_rcm_individual b on b.bank_branch_id = a.id',
'                    join hr_rcm_employee c on b.id = c.ind_id',
'                    join pa_pmg_payrolldtl d on d.emp_id = c.id       ',
'                    join hr_rcm_salary w on w.emp_id= c.id',
'                    where organisation_type =''BANK''',
'                    --and (w.end_date is null or w.end_date >= :P110_PAYROLL_START_PERIODS)',
'                    and short_name !=''RBGL'' --republic bank is excluded',
'                    and c.EMPLOYMENT_CLASS_ID != 109636 ',
'                    and payment_mode IN (''BANK'', ''CHEQUE'')',
'                    and earnings_period_id = l_selected(i)',
'                    and payment_type = :P110_PAYMENT_TYPE',
'                    group by  to_char(period_start,''MON'')||'' PAYROLL ''||to_char(period_start,''YYYY''),  d.EMPLOYMENT_CLASS_hist, d.compute_gross_hist,',
'                    case when payment_mode =''CHEQUE'' then to_number(b.vendor_id) else to_number(a.vendor_id) end,',
'                    case when payment_mode =''CHEQUE'' then b.Paysite_Code else  a.Paysite_Code end )',
'                    select  invoice_number||'' ''||rownum invoice_number, Invoice_ID, vendor_id, net_pay,group_id||'' ''||INITCAP(EMPLOYMENT_CLASS_hist)||'' ''||INITCAP(compute_gross_hist) group_id, Paysite_Code, :P110_START_INVOICE + rownum-1 CMP_INVOICE_'
||'ID from payroll a',
'                                                                                                                                            ) source',
'                on (pa_pmg_pay_oraclechecks_sum.invoice_number =source.invoice_number and',
'                    nvl(pa_pmg_pay_oraclechecks_sum.vendor_id,1) =  nvl(source.vendor_id ,1)',
'                )',
'                when matched then',
'                    update set',
'                        pa_pmg_pay_oraclechecks_sum.net_pay    = source.net_pay              ',
'                when not matched then   ',
'                    INSERT  (earnings_period_id, INVOICE_ID, invoice_number, vendor_id, net_pay, group_id, paysite_code,period_start, payment_type)',
'                    values (l_selected(i), source.CMP_INVOICE_ID, source.invoice_number, source.vendor_id, source.net_pay, source.group_id, source.Paysite_Code,v_earn_start ,:P110_PAYMENT_TYPE);',
'',
'      end loop;              ',
'',
'',
'  FOR W IN 1..l_selected.COUNT loop',
'',
'    for I in (select ID, vendor_id,Period_Start, Payment_Type,INVOICE_ID,earnings_period_id',
'              from pa_pmg_pay_oraclechecks_sum ',
'              where  earnings_period_id = l_selected(w)',
'              and payment_type = :P110_PAYMENT_TYPE',
'             order  by vendor_id) loop',
'        ',
'                ',
'              if v_cnt = 1 then ',
'                v_current := i.vendor_id;',
'              else',
'                  select vendor_id into v_previous ',
'                  from pa_pmg_pay_oraclechecks_sum',
'                  where ID= i.ID - 1;',
'                  ',
'                  v_current := i.vendor_id;',
'              end if;',
'              ',
'         for J in ( select distinct Net_Pay, coa_code||''-''||nvl(natural_account_code,'''') Dept_Code,	''ITEM'' Line_Type, null T_Flag, null	T_Override_Flag, null T_Rate_Code, null T_REGIME, null	Tax, null TAX_JURISDICTION, null TAX_STATUS, null T_RAte   '
||'               ',
'                    from hr_rcm_employee c join pa_pmg_payrolldtl d on d.emp_id = c.id',
'                    join hr_hcf_orgstructuredtl a  on c.orgdtl_id = a.id',
'                    join pa_pcf_earningperiod x on x.id = d.earnings_period_id',
'                    join hr_rcm_employee v on v.id = d.emp_id',
'                    join hr_rcm_individual t on t.id= v.ind_id',
'                    join hr_hcf_organisation w on w.id = t.bank_branch_id',
'                    where payment_mode_hist IN (''BANK'', ''CHEQUE'')',
'                    and x.id =  I.earnings_period_id',
'                    and c.EMPLOYMENT_CLASS_ID != 109636 ',
'                    and w.vendor_id =  i.vendor_id',
'                    order by  coa_code||''-''||nvl(natural_account_code,'''')',
'                  ',
'                  ) loop',
'                    ',
'              begin      ',
'                    insert into pa_pmg_pay_oraclechk_dtl(earnings_period_id, Period_Start, Payment_Type, oracle_chk_sum_id, invoice_id, net_pay, dept_code, line_type, t_flag,t_override_flag,t_rate_code,  t_regime, tax, tax_jurisdiction, tax_status, t'
||'_rate)',
'                    values (i.earnings_period_id,  i.Period_Start, i.Payment_Type, i.id, I.invoice_id, j.net_pay, j.dept_code, j.line_type, j.t_flag, j.t_override_flag, j.t_rate_code,  j.t_regime, j.tax, j.tax_jurisdiction, j.tax_status, j.t_rate);',
'              ',
'             if  v_previous != v_current then',
'              begin',
'              ',
'                   insert into pa_pmg_pay_oraclechk_dtl(Period_Start, Payment_Type, oracle_chk_sum_id, invoice_id, net_pay, dept_code, line_type, t_flag,t_override_flag,t_rate_code,  t_regime, tax, tax_jurisdiction, tax_status, t_rate)',
'                   select i.Period_Start, i.Payment_Type, i.id, I.INVOICE_ID, 0	Net_Pay, j.Dept_Code,	''TAX'' Line_Type, ''N'' T_Flag, ''Y''	T_Override_Flag, ''EXEMPT'' T_Rate_Code, ''VAT'' T_REGIME, ''VAT''	Tax, ''VAT'' TAX_JURISDICTION, ''VAT'' TAX_STATUS, ''EXEMPT'
||''' T_RAte',
'                   from dual;',
'                   ',
'               exception',
'                when others then null;',
'              end;    ',
'              ',
'             end if;',
'              ',
'              exception',
'                when others then null;',
'              end;',
'                ',
'         end loop;                 ',
'               ',
'    end loop;',
'end loop;',
'',
'',
'end;',
'',
'    commit;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3184447336993245966)
,p_process_success_message=>'System successfully processed Oracle financials checks for the payroll.'
,p_internal_uid=>3068637107703932247
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3184448469096245966)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3296925552261269070)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Oracle Vendor Invoices Summary - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3068664335239932261
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3184420925267245949)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VERIFY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Update Pa_Pmg_Pay_Oraclechecks_Sum',
'SET verified_by = :APP_USER',
'    , VERIFIED_DATE = current_date',
'where period_start = :P110_PAYROLL_START_PERIODS',
'and earnings_period_id = :P110_PAYROLL_START_PERIODS',
'and payment_type = :P110_PAYMENT_TYPE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3184446567013245966)
,p_internal_uid=>3068636791410932244
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3184420436747245949)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     ',
'       l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
'',
'begin',
'',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P110_PAYROLL_START_PERIODS);',
'    ',
'',
'     FOR i IN 1..l_selected.COUNT loop',
'',
'        delete',
'        from PA_PMG_PAY_ORACLECHECKS_SUM',
'        where earnings_period_id = l_selected(I)',
'        and payment_type = :P110_PAYMENT_TYPE;',
'',
'    END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3184446978413245966)
,p_process_success_message=>'Records successfully deleted..'
,p_internal_uid=>3068636302890932244
);
wwv_flow_imp.component_end;
end;
/
