prompt --application/pages/page_08013
begin
--   Manifest
--     PAGE: 08013
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
 p_id=>8013
,p_name=>'rptniscontribution60'
,p_page_mode=>'MODAL'
,p_step_title=>'NIB/SS Contribution over 60 by Period'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3857207430672840862)
,p_plug_name=>'Listing NIB/SS of Contribution by Period'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select a.emp_company_no_hist "Emp No.",',
'       a.department_name_hist "Department",',
'       b.employment_class "Employment Class",',
'       a.surname_hist ||'',''|| a.first_name_hist "Employee Name",',
'       c.id_number "NIS Number",',
'       trunc((current_date - to_date(d.dob, ''dd-mm-yyyy''))/ 365.25)  "Age",',
'       a.gross_taxable "Actual Earnings",',
'       CASE  WHEN  a.gross_taxable >=256800 THEN ''$256,000''',
'             WHEN a.gross_taxable >=1 and a.gross_taxable <256800 THEN ',
'             CAST(''$''||trim(to_char(a.gross_taxable,''999,999,999'')) AS varchar(100)) ',
'             ELSE null ',
'             END as "Insurable Earnings",',
'       a.nis_employee "Employee 5.6%",',
'       a.nis_employer "Employer 8.4%",',
'       a.no_of_periods_worked "Period Worked"',
'       from pa_pmg_payrolldtl a',
'       join hr_rcm_employee b',
'       on a.emp_id = b.id',
'       join hr_rcm_natidentifier c',
'       on c.ind_id = b.ind_id',
'       join hr_rcm_individual d ',
'       on b.ind_id=d.id',
'       where c.id_type = upper(''NIS NUMBER'')',
'       and trunc((current_date - to_date(d.dob, ''dd-mm-yyyy''))/ 365.25)>=60',
'       --and b.employment_class =upper(:P8013_EMPLOYMENT_CLASS)',
'       AND a.period_start = to_date(:P8013_EARNINGS_PERIOD, ''DD-MON-YYYY'');',
'       '))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3857207345505840862)
,p_name=>'rptNIScontribution'
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
,p_owner=>'JAY.KHAN'
,p_internal_uid=>29722593541745982
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846242527079585193)
,p_db_column_name=>'Emp No.'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Emp No.'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846242980729585193)
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
 p_id=>wwv_flow_imp.id(3846243304485585193)
,p_db_column_name=>'NIS Number'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'NIB/SS Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846243686448585193)
,p_db_column_name=>'Actual Earnings'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Actual Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846244088223585194)
,p_db_column_name=>'Insurable Earnings'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Insurable Earnings'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846244504963585194)
,p_db_column_name=>'Employee 5.6%'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Employee 5.6%'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846244937614585194)
,p_db_column_name=>'Employer 8.4%'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Employer 8.4%'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846245362792585195)
,p_db_column_name=>'Period Worked'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Period Worked'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846242127582585192)
,p_db_column_name=>'Age'
,p_display_order=>18
,p_column_identifier=>'K'
,p_column_label=>'Age'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3845079090355935314)
,p_db_column_name=>'Employment Class'
,p_display_order=>28
,p_column_identifier=>'L'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3845079451921935317)
,p_db_column_name=>'Department'
,p_display_order=>38
,p_column_identifier=>'M'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3856943516626513545)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Reports'
,p_report_seq=>10
,p_report_alias=>'149995'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Emp No.:Employee Name:NIS Number:Actual Earnings:Insurable Earnings:Employee 5.6%:Employer 8.4%:Period Worked::Age'
,p_sum_columns_on_break=>'Actual Earnings:Employee 5.6%:Employer 8.4%'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3857203386973834894)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'149991'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Employment Class:Emp No.:Employee Name:Age:NIS Number:Actual Earnings:Insurable Earnings:Employee 5.6%:Employer 8.4%:Period Worked:'
,p_break_on=>'Employment Class:0:0:0:0:0'
,p_break_enabled_on=>'Employment Class:0:0:0:0:0'
,p_sum_columns_on_break=>'Actual Earnings:Employee 5.6%:Employer 8.4%'
,p_count_columns_on_break=>'Employee Name'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3857208035513840863)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3846241428247585191)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3857208035513840863)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-play-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3846241020827585190)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3857208035513840863)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8012:&SESSION.::&DEBUG.:RP,8012::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3846246526139585196)
,p_name=>'P8013_EMPLOYMENT_CLASS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3857207430672840862)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3846246951542585197)
,p_name=>'P8013_EARNINGS_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3857207430672840862)
,p_prompt=>'Earnings Period'
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
