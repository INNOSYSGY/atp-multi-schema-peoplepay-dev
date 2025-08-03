prompt --application/pages/page_08009
begin
--   Manifest
--     PAGE: 08009
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>8009
,p_name=>'rptOvertimeSummary'
,p_step_title=>'rptOvertimeSummary'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3318799518124659564)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3330202037324124650)
,p_plug_name=>'Overtime Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct',
'b.PAY_SLIPNO,',
'a.EARNINGS_PERIOD_ID,',
'a.EMP_COMPANY_NO_HIST "Empl. No.",',
'a. DEPARTMENT_NAME_HIST "DEPT",',
'a.first_name_hist||'' ''||a.surname_hist "Employee Name",',
'a.BASIC_PERSONAL_RATE "Basic Pay",',
'nvl((select c.QUANTITY from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT''),0) "Overtime 1/2Hr", ',
'nvl((select c.QUANTITY from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT1''),0) "Overtime 2Hr", ',
'nvl((select c.INCOME_AMOUNT from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT''),0) +',
'nvl((select c.INCOME_AMOUNT from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT1''),0) "Overtime",',
'(nvl((select c.INCOME_AMOUNT from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT''),0) +',
'nvl((select c.INCOME_AMOUNT from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT1''),0))*100/a.BASIC_PERSONAL_RATE "% Basic Pay",',
'(nvl((select c.INCOME_AMOUNT_YTD from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT''),0) +',
'nvl((select c.INCOME_AMOUNT_YTD from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=a.id and  c.INCOME_CODE=''OT1''),0))*100/a.BASIC_PERSONAL_RATE_YTD "% Basic Pay to Date"',
'from PA_PMG_PAYROLLDTL a  ',
'join PA_PMG_PAYROLLINCOME b on b.PAY_SLIPNO=a.id',
'where a.EARNINGS_PERIOD_ID=DECODE(:P8009_PERIODS_NEW,''1'',a.EARNINGS_PERIOD_ID,:P8009_PERIODS_NEW)',
'--where EMPLOYMENT_CLASS_HIST=''SENIOR STAFF MANAGER''',
'--and PERIOD_START=''01/08/19''',
'and (b.INCOME_CODE=''OT'' or b.INCOME_CODE=''OT1'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8009_PERIODS_NEW'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3330201930490124650)
,p_name=>'rptMedicalDeduction'
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
,p_owner=>'AHERRERA'
,p_internal_uid=>29317592634167631
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318770680397130080)
,p_db_column_name=>'DEPT'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Dept'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318771116737130080)
,p_db_column_name=>'Employee Name'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318177812880219856)
,p_db_column_name=>'Basic Pay'
,p_display_order=>23
,p_column_identifier=>'I'
,p_column_label=>'Basic Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318177950047219857)
,p_db_column_name=>'Overtime 1/2Hr'
,p_display_order=>33
,p_column_identifier=>'J'
,p_column_label=>'Overtime 1&#x2F;2hr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178037550219858)
,p_db_column_name=>'Overtime 2Hr'
,p_display_order=>43
,p_column_identifier=>'K'
,p_column_label=>'Overtime 2hr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178119228219859)
,p_db_column_name=>'Overtime'
,p_display_order=>53
,p_column_identifier=>'L'
,p_column_label=>'Overtime'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178216343219860)
,p_db_column_name=>'% Basic Pay'
,p_display_order=>63
,p_column_identifier=>'M'
,p_column_label=>'% Basic Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178423142219862)
,p_db_column_name=>'% Basic Pay to Date'
,p_display_order=>73
,p_column_identifier=>'O'
,p_column_label=>'% Basic Pay To Date'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178550196219863)
,p_db_column_name=>'Empl. No.'
,p_display_order=>83
,p_column_identifier=>'P'
,p_column_label=>'Empl. No.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178833059219866)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>93
,p_column_identifier=>'Q'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3318178865539219867)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>103
,p_column_identifier=>'R'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3330198128652111254)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'149365'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>'Empl. No.:DEPT:Employee Name:Basic Pay:Overtime 1/2Hr:Overtime 2Hr:Overtime:% Basic Pay:% Basic Pay to Date:'
,p_sum_columns_on_break=>'Medical Employee:Medical Employer:Total Medical:Basic Pay:Overtime 1/2Hr:Overtime 2Hr:Overtime'
,p_avg_columns_on_break=>'% Basic Pay:% Basic Pay to Date'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3318801894707684684)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3318799518124659564)
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
 p_id=>wwv_flow_imp.id(3318801403310679929)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3318799518124659564)
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3318774217622130092)
,p_button_sequence=>10
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3318773803719130091)
,p_button_sequence=>20
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3318773149475130088)
,p_name=>'P8009_PERIODS_NEW'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3330202037324124650)
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a, b',
'from (',
'        SELECT earn_description  A',
'        ,  id b, Earn_year, earn_month',
'        FROM vw_earnall A  ',
'        Where Exists (Select 1',
'                      from PA_PMG_PAYROLLDTL B',
'                      where a.id=B.EARNINGS_PERIOD_ID)',
'        And Org_Id=17832',
'        )',
'order by Earn_year desc, earn_month desc, b desc',
''))
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp.component_end;
end;
/
