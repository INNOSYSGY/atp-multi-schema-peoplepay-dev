prompt --application/pages/page_01350
begin
--   Manifest
--     PAGE: 01350
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
 p_id=>1350
,p_name=>'rptHRExportforPayroll'
,p_alias=>'RPTHREXPORTFORPAYROLL'
,p_step_title=>'HR Export for Payroll'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825717571127569059)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807158850583545770)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(565595506634317911)
,p_plug_name=>'Tax Deductibles (Free Pays)'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID Employee,',
'       RULE_SOURCE_ID,',
'       EMP_SOURCE_TABLE,',
'       EMP_SOURCE_TABLE_ID,',
'       FREEPAY_NAME,',
'       FREEPAY_NAME_ID,',
'       FREEPAYAMOUNT,ORIG_FREEPAYAMOUNT,',
'       EARNINGS_PERIOD_ID,',
'       REMARKS,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_UPDATED_DATE,',
'       LAST_UPDATED_BY,',
'       case when APPLIED_AS= 0 then ''Before TAX Gross'' else ''After TAX Gross'' end APPLIED_AS',
'  from PA_PCF_EXPORTFREEPAY',
'  where EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(616579671441577428)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>205859713141767228
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616579764729577429)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616579952711577430)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616579967631577431)
,p_db_column_name=>'RULE_SOURCE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Rule Source Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580140356577432)
,p_db_column_name=>'EMP_SOURCE_TABLE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Emp Source Table'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580228650577433)
,p_db_column_name=>'EMP_SOURCE_TABLE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Emp Source Table Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580343057577434)
,p_db_column_name=>'FREEPAY_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Freepay Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580380546577435)
,p_db_column_name=>'FREEPAY_NAME_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Freepay Name Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580524045577436)
,p_db_column_name=>'FREEPAYAMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Freepayamount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580629735577437)
,p_db_column_name=>'ORIG_FREEPAYAMOUNT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Orig Freepayamount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580725784577438)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580763404577439)
,p_db_column_name=>'REMARKS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580919464577440)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616580977066577441)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616581114538577442)
,p_db_column_name=>'LAST_UPDATED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Updated Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616581180635577443)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616581341799577444)
,p_db_column_name=>'APPLIED_AS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Applied As'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(625870679709864978)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2151508'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMPLOYEE:RULE_SOURCE_ID:EMP_SOURCE_TABLE:EMP_SOURCE_TABLE_ID:FREEPAY_NAME:FREEPAY_NAME_ID:FREEPAYAMOUNT:ORIG_FREEPAYAMOUNT:EARNINGS_PERIOD_ID:REMARKS:ENTRY_DATE:ENTERED_BY:LAST_UPDATED_DATE:LAST_UPDATED_BY:APPLIED_AS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(568327199131853252)
,p_plug_name=>'Employees Affected'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(608682606751571477)
,p_plug_name=>'Employees NOT paid'
,p_parent_plug_id=>wwv_flow_imp.id(568327199131853252)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>160
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id,  last_changed_by,  last_changed_date, entered_by, entry_date,  payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed,hourly_rate,Personal_Rate, salary_taxable ',
'from ',
'    (    SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'        EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'        EMPLOYMENT_TYPE_id , date_employed,c.hourly_rate, c.Personal_Rate, c.salary_taxable ',
'        from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'        join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id) ',
'        Join (select x.emp_id, x.start_date, x.end_date, x.hourly_rate, x.Personal_Rate, x.salary_taxable ',
'            from Hr_Rcm_Salary x',
'            where :P1350_START_DATE BETWEEN TRUNC(x.START_DATE) AND TRUNC(NVL(x.END_DATE, trunc(current_date) + 60))',
'            ) C On B.Id = C.Emp_Id',
'        join hr_hcf_position p on p.id = b.position_id',
'        where v_earn.id = :P1350_EARNINGS_PERIOD_ID',
'        and b.orgdtl_id =nvl(:P1350_ORGDTL_ID,b.orgdtl_id)       ',
'        and  exists (select 1',
'                      from pa_pcf_payroll_emp pemp',
'                      where b.id =pemp.emp_id',
'                      and earnings_period_id = :P1350_EARNINGS_PERIOD_ID',
'                     )',
'    ) x',
'where not exists (',
'                        select 1',
'                        from pa_pmg_payrolldtl notpaid',
'                        where earnings_period_id = :P1350_EARNINGS_PERIOD_ID',
'                        and notpaid.emp_id=x.emp_id',
'                 )',
'          '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_START_DATE, P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Current Employees'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(608682731414571478)
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
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>80850181883703043
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608682806276571479)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608682909134571480)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683012771571481)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683084387571482)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683209266571483)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683273639571484)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683418457571485)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683469516571486)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683570703571487)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683690082571488)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683824338571489)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854282232860521260)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683928550571490)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608683982677571491)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3730001999198556470)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608684139747571492)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608684187401571493)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608684297909571494)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(608684390046571495)
,p_db_column_name=>'SALARY_TAXABLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Salary Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854181035973426433)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(608692335779596866)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'400028'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:EMP_ID:EMPLOYMENT_CLASS:EMP_COMPANY_NO:EMPLOYMENT_STATUS:WKLOCATION_ID:PAYMENT_TYPE:EMPLOYMENT_TYPE_ID:DATE_EMPLOYED:HOURLY_RATE:PERSONAL_RATE:SALARY_TAXABLE:LAST_CHANGED_BY:LAST_CHANGED_DATE:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3697877071313742992)
,p_plug_name=>'Employees Paid'
,p_parent_plug_id=>wwv_flow_imp.id(568327199131853252)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ID, ',
'PAY_BATCH_ID,',
'EMP_ID,',
'TIME_TAX_EARNINGS,',
'TIME_NONTAX_EARNINGS,',
'PIECE_TAX_EARNINGS,',
'PIECE_NONTAX_EARNINGS,',
'ALLOWANCE_TAXABLE,',
'ALLOWANCE_NONTAXABLE,',
'INCENTIVES_TAXABLE,',
'INCENTIVES_NONTAXABLE,',
'BENEFIT_TAXABLE,',
'BENEFIT_NONTAXABLE,',
'MISC_TAX_PAYMENT,',
'MISC_NONTAX_PAYMENT,',
'TOTAL_TAX_EARNINGS,',
'TOTAL_NONTAX_EARNINGS,',
'GROSS_TAXABLE,',
'GROSS_NONTAXABLE,',
'NIS_EMPLOYEE,',
'NIS_EMPLOYER,',
'TAX_AMOUNT,',
'MISC_DEDUCTION_SUM,',
'MEDICAL_SUM,',
'UNION_DUES,',
'TOTAL_DEDUCTION,',
'NET_PAY,',
'TIME_TAX_EARNINGS_YTD,',
'TIME_NONTAX_EARNINGS_YTD,',
'PIECE_TAX_EARNINGS_YTD,',
'PIECE_NONTAX_EARNINGS_YTD,',
'ALLOWANCE_TAXABLE_YTD,',
'ALLOWANCE_NONTAXABLE_YTD,',
'INCENTIVES_TAXABLE_YTD,',
'INCENTIVES_NONTAXABLE_YTD,',
'BENEFIT_TAXABLE_YTD,',
'BENEFIT_NONTAXABLE_YTD,',
'MISC_TAX_PAYMENT_YTD,',
'MISC_NONTAX_PAYMENT_YTD,',
'TOTAL_TAX_EARNINGS_YTD,',
'TOTAL_NONTAX_EARNINGS_YTD,',
'GROSS_TAXABLE_YTD,',
'GROSS_NONTAXABLE_YTD,',
'NIS_EMPLOYEE_YTD,',
'NIS_EMPLOYER_YTD,',
'TAX_AMOUNT_YTD,',
'MISC_DEDUCTION_SUM_YTD,',
'MEDICAL_SUM_YTD,',
'UNION_DUES_YTD,',
'TOTAL_DEDUCTION_YTD,',
'NET_PAY_YTD,',
'EMPLOYER_MEDICAL_SUM_YTD,',
'NO_PAY_EARNINGS_YTD,',
'NO_PAY_HOURS_YTD,',
'BASIC_PAY_HOURS_YTD,',
'BASIC_PERSONAL_RATE_YTD,',
'PAY_STATUS,',
'RETRO_TAXES,',
'GROSS_NIS,',
'PRVYTD_ID,',
'PRVYTD_FREEPAY,',
'FREEPAY,',
'NISRATE_ID,',
'TAXRATE_ID,',
'EMPLOYER_MEDICAL_SUM,',
'UNION_NAME,',
'HEALTHPLAN_NAME,',
'case when org_id=18658 and payment_type_hist=''WEEKLY'' then HOURLY_RATE*200 ELSE BASIC_PERSONAL_RATE END BASIC_PERSONAL_RATE,',
'BASIC_PAY_HOURS,',
'NO_PAY_HOURS,',
'NIS_CONTRIBUTION,',
'HOURLY_RATE,',
'NO_PAY_EARNINGS,',
'EARNINGS_PERIOD_ID,',
'PERIOD_START,',
'PERIOD_END,',
'ORG_ID,',
'--POSITION_LOCATION_ID,',
'WKLOCATION_ID,',
'CANCEL_SALARY_ID,',
'PAYROLL_EFFECTIVE,',
'TAX_ADJUSTMENTS,',
'TAX_ADJ_EARNINGS_PRD,',
'TAX_ADJUSTMENTS_DIFF,',
'NO_OF_PERIODS_WORKED,',
'IS_SUPPLEMENTAL,',
'MACHINE_INSERT,',
'MACHINE_UPDATE,',
'ENTERED_BY,',
'ENTRY_DATE,',
'LAST_CHANGED_BY,',
'LAST_CHANGED_DATE,',
'REPORT_TO_HIST,',
'EMPLOYMENT_CLASS_HIST,',
'PAYMENT_TYPE_HIST,',
'PAYMENT_MODE_HIST,',
'EMP_COMPANY_NO_HIST,',
'CONFIRMED_HIST,',
'PERMANENT_STAFF_HIST,',
'SURNAME_HIST,',
'FIRST_NAME_HIST,',
'LOT_STREET_HIST,',
'VILLAGE_NAME_HIST,',
'DISTRICT_NAME_HIST,',
'MARITAL_NAME_HIST,',
'BANK_BRANCH_ID_HIST,',
'BANK_ACCOUNT_NO_HIST,',
'decode(DEPARTMENT_NAME_HIST,null,ORG_STRUCTURE,DEPARTMENT_NAME_HIST) DEPARTMENT_NAME_HIST,',
'POSITION_NAME_HIST,',
'LOCATION_NAME_HIST,',
'REPORT_TO_FNCT_HIST,',
'FREEPAY_YTD,',
'ORGANISATION_NAME,',
'DEPT_SECTION_HIST',
'from #OWNER#.PA_PMG_PAYROLLDTL V',
'WHERE EARNINGS_PERIOD_ID= :P1350_EARNINGS_PERIOD_ID',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3697876891769742981)
,p_name=>'Listing of Employee Paid'
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
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1356:&SESSION.::&DEBUG.::P1356_ID,P1356_PAGE_RETURN:#ID#,1251'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'PUR_INV'
,p_internal_uid=>3170044342238874546
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893395612259942675)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Payslip'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893395248720942674)
,p_db_column_name=>'PAY_BATCH_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Pay Batch Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_BATCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893394835095942674)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893394461809942673)
,p_db_column_name=>'TIME_TAX_EARNINGS'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'TM Tax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893393992132942672)
,p_db_column_name=>'TIME_NONTAX_EARNINGS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'TM Ntax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893393634477942671)
,p_db_column_name=>'PIECE_TAX_EARNINGS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Piece Tax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893393207344942670)
,p_db_column_name=>'PIECE_NONTAX_EARNINGS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Piece Ntax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893392801213942669)
,p_db_column_name=>'ALLOWANCE_TAXABLE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Allow Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893392435732942668)
,p_db_column_name=>'ALLOWANCE_NONTAXABLE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Allow Ntax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893391991809942667)
,p_db_column_name=>'INCENTIVES_TAXABLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Inc Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893391617700942666)
,p_db_column_name=>'INCENTIVES_NONTAXABLE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Inc Nontax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893391240577942665)
,p_db_column_name=>'BENEFIT_TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Ben Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893390834186942664)
,p_db_column_name=>'BENEFIT_NONTAXABLE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Ben Ntax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893390404263942663)
,p_db_column_name=>'MISC_TAX_PAYMENT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Misc Tax Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_TAX_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893390027918942662)
,p_db_column_name=>'MISC_NONTAX_PAYMENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Misc Ntax Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_NONTAX_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893389578938942661)
,p_db_column_name=>'TOTAL_TAX_EARNINGS'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Total Tax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893389237934942660)
,p_db_column_name=>'TOTAL_NONTAX_EARNINGS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Total Ntax Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893388781587942659)
,p_db_column_name=>'GROSS_TAXABLE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Gross Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893388445580942658)
,p_db_column_name=>'GROSS_NONTAXABLE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Gross Ntax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893387996038942656)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nis'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893387608868942655)
,p_db_column_name=>'NIS_EMPLOYER'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'NIB/SS Emplr'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893387219500942654)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Tax Amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TAX_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893386777213942653)
,p_db_column_name=>'MISC_DEDUCTION_SUM'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Misc Ded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_DEDUCTION_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893386465415942652)
,p_db_column_name=>'MEDICAL_SUM'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Medical Sum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MEDICAL_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893386122956942650)
,p_db_column_name=>'UNION_DUES'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Union Dues'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'UNION_DUES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893385680538942649)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Total Ded'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893385341985942648)
,p_db_column_name=>'NET_PAY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NET_PAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893384881491942647)
,p_db_column_name=>'TIME_TAX_EARNINGS_YTD'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Time Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_TAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893384479287942646)
,p_db_column_name=>'TIME_NONTAX_EARNINGS_YTD'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Time Ntax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TIME_NONTAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893384099643942646)
,p_db_column_name=>'PIECE_TAX_EARNINGS_YTD'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Piece Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_TAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893383747046942645)
,p_db_column_name=>'PIECE_NONTAX_EARNINGS_YTD'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Piece Ntax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PIECE_NONTAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893383314702942644)
,p_db_column_name=>'ALLOWANCE_TAXABLE_YTD'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Allowance Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893382912745942643)
,p_db_column_name=>'ALLOWANCE_NONTAXABLE_YTD'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Allowance Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'ALLOWANCE_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893382482624942642)
,p_db_column_name=>'INCENTIVES_TAXABLE_YTD'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Incentives Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893382080503942640)
,p_db_column_name=>'INCENTIVES_NONTAXABLE_YTD'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Incentives Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'INCENTIVES_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893381741943942639)
,p_db_column_name=>'BENEFIT_TAXABLE_YTD'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Benefit Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893381280309942638)
,p_db_column_name=>'BENEFIT_NONTAXABLE_YTD'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Benefit Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BENEFIT_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893380938586942637)
,p_db_column_name=>'MISC_TAX_PAYMENT_YTD'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Misc Tax Payment Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_TAX_PAYMENT_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893380561038942636)
,p_db_column_name=>'MISC_NONTAX_PAYMENT_YTD'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Misc Nontax Payment Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_NONTAX_PAYMENT_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893380089932942635)
,p_db_column_name=>'TOTAL_TAX_EARNINGS_YTD'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Total Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_TAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893379760676942634)
,p_db_column_name=>'TOTAL_NONTAX_EARNINGS_YTD'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Total Nontax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_NONTAX_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893379343202942633)
,p_db_column_name=>'GROSS_TAXABLE_YTD'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Gross Taxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_TAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893378910352942632)
,p_db_column_name=>'GROSS_NONTAXABLE_YTD'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Gross Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NONTAXABLE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893378498429942631)
,p_db_column_name=>'NIS_EMPLOYEE_YTD'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'NIB/SS Employee Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYEE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893378144092942630)
,p_db_column_name=>'NIS_EMPLOYER_YTD'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'NIB/SS Employer Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NIS_EMPLOYER_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893377708977942630)
,p_db_column_name=>'TAX_AMOUNT_YTD'
,p_display_order=>46
,p_column_identifier=>'AT'
,p_column_label=>'Tax Amount Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TAX_AMOUNT_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893377315652942629)
,p_db_column_name=>'MISC_DEDUCTION_SUM_YTD'
,p_display_order=>47
,p_column_identifier=>'AU'
,p_column_label=>'Misc Deduction Sum Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MISC_DEDUCTION_SUM_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893376893223942628)
,p_db_column_name=>'MEDICAL_SUM_YTD'
,p_display_order=>48
,p_column_identifier=>'AV'
,p_column_label=>'Medical Sum Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'MEDICAL_SUM_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893376530442942626)
,p_db_column_name=>'UNION_DUES_YTD'
,p_display_order=>49
,p_column_identifier=>'AW'
,p_column_label=>'Union Dues Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'UNION_DUES_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893376095197942625)
,p_db_column_name=>'TOTAL_DEDUCTION_YTD'
,p_display_order=>50
,p_column_identifier=>'AX'
,p_column_label=>'Total Deduction Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'TOTAL_DEDUCTION_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893375688300942624)
,p_db_column_name=>'NET_PAY_YTD'
,p_display_order=>51
,p_column_identifier=>'AY'
,p_column_label=>'Net Pay Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NET_PAY_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893375315089942623)
,p_db_column_name=>'EMPLOYER_MEDICAL_SUM_YTD'
,p_display_order=>52
,p_column_identifier=>'AZ'
,p_column_label=>'Employer Medical Sum Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'EMPLOYER_MEDICAL_SUM_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893374890922942622)
,p_db_column_name=>'NO_PAY_EARNINGS_YTD'
,p_display_order=>53
,p_column_identifier=>'BA'
,p_column_label=>'No Pay Earnings Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NO_PAY_EARNINGS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893374513047942621)
,p_db_column_name=>'NO_PAY_HOURS_YTD'
,p_display_order=>54
,p_column_identifier=>'BB'
,p_column_label=>'No Pay Hours Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'NO_PAY_HOURS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893374105168942620)
,p_db_column_name=>'BASIC_PAY_HOURS_YTD'
,p_display_order=>55
,p_column_identifier=>'BC'
,p_column_label=>'Basic Pay Hours Ytd'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BASIC_PAY_HOURS_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893373699789942619)
,p_db_column_name=>'BASIC_PERSONAL_RATE_YTD'
,p_display_order=>56
,p_column_identifier=>'BD'
,p_column_label=>'Basic Personal Rate Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'BASIC_PERSONAL_RATE_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893373275888942618)
,p_db_column_name=>'RETRO_TAXES'
,p_display_order=>58
,p_column_identifier=>'BF'
,p_column_label=>'Retro Taxes'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'RETRO_TAXES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893372958234942617)
,p_db_column_name=>'GROSS_NIS'
,p_display_order=>59
,p_column_identifier=>'BG'
,p_column_label=>'Gross Nis'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'GROSS_NIS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893372479618942615)
,p_db_column_name=>'PRVYTD_ID'
,p_display_order=>60
,p_column_identifier=>'BH'
,p_column_label=>'Prvytd Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PRVYTD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893372160929942614)
,p_db_column_name=>'PRVYTD_FREEPAY'
,p_display_order=>61
,p_column_identifier=>'BI'
,p_column_label=>'Prvytd Freepay'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'PRVYTD_FREEPAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893371734887942613)
,p_db_column_name=>'FREEPAY'
,p_display_order=>62
,p_column_identifier=>'BJ'
,p_column_label=>'Freepay'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'FREEPAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893371358661942612)
,p_db_column_name=>'NISRATE_ID'
,p_display_order=>63
,p_column_identifier=>'BK'
,p_column_label=>'Nisrate Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NISRATE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893370883085942611)
,p_db_column_name=>'TAXRATE_ID'
,p_display_order=>64
,p_column_identifier=>'BL'
,p_column_label=>'Taxrate Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAXRATE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893370527451942610)
,p_db_column_name=>'EMPLOYER_MEDICAL_SUM'
,p_display_order=>65
,p_column_identifier=>'BM'
,p_column_label=>'Employer Medical Sum'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'EMPLOYER_MEDICAL_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893370145381942610)
,p_db_column_name=>'BASIC_PERSONAL_RATE'
,p_display_order=>68
,p_column_identifier=>'BP'
,p_column_label=>'Basic Personal Rate'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'BASIC_PERSONAL_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893369676417942609)
,p_db_column_name=>'BASIC_PAY_HOURS'
,p_display_order=>69
,p_column_identifier=>'BQ'
,p_column_label=>'Basic Pay Hours'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'BASIC_PAY_HOURS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893369353579942608)
,p_db_column_name=>'NO_PAY_HOURS'
,p_display_order=>70
,p_column_identifier=>'BR'
,p_column_label=>'No Pay Hours'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_PAY_HOURS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893368877633942607)
,p_db_column_name=>'NIS_CONTRIBUTION'
,p_display_order=>71
,p_column_identifier=>'BS'
,p_column_label=>'NIB/SS Contribution'
,p_column_type=>'NUMBER'
,p_static_id=>'NIS_CONTRIBUTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893368560355942606)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>72
,p_column_identifier=>'BT'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893368151661942605)
,p_db_column_name=>'NO_PAY_EARNINGS'
,p_display_order=>73
,p_column_identifier=>'BU'
,p_column_label=>'No Pay Earnings'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_PAY_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893367737433942604)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>74
,p_column_identifier=>'BV'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854414658122718020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893367355937942603)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>75
,p_column_identifier=>'BW'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD_START'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893366969570942602)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>76
,p_column_identifier=>'BX'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD_END'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893366483227942601)
,p_db_column_name=>'ORG_ID'
,p_display_order=>77
,p_column_identifier=>'BY'
,p_column_label=>'Org id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893366109128942600)
,p_db_column_name=>'CANCEL_SALARY_ID'
,p_display_order=>79
,p_column_identifier=>'CA'
,p_column_label=>'Cancel Salary Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CANCEL_SALARY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893365764344942599)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>80
,p_column_identifier=>'CB'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893365311004942598)
,p_db_column_name=>'TAX_ADJUSTMENTS'
,p_display_order=>81
,p_column_identifier=>'CC'
,p_column_label=>'Tax Adjustments'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_ADJUSTMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893364941207942597)
,p_db_column_name=>'TAX_ADJ_EARNINGS_PRD'
,p_display_order=>82
,p_column_identifier=>'CD'
,p_column_label=>'Tax Adj Earnings Prd'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_ADJ_EARNINGS_PRD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893364531307942596)
,p_db_column_name=>'TAX_ADJUSTMENTS_DIFF'
,p_display_order=>83
,p_column_identifier=>'CE'
,p_column_label=>'Tax Adjustments Diff'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_ADJUSTMENTS_DIFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893364159920942595)
,p_db_column_name=>'NO_OF_PERIODS_WORKED'
,p_display_order=>84
,p_column_identifier=>'CF'
,p_column_label=>'No Of Periods Worked'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'NO_OF_PERIODS_WORKED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893363687124942594)
,p_db_column_name=>'IS_SUPPLEMENTAL'
,p_display_order=>85
,p_column_identifier=>'CG'
,p_column_label=>'Is Supplemental'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'IS_SUPPLEMENTAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893363369991942593)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>89
,p_column_identifier=>'CK'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893362897256942592)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>91
,p_column_identifier=>'CM'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893362519632942591)
,p_db_column_name=>'CONFIRMED_HIST'
,p_display_order=>97
,p_column_identifier=>'CS'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CONFIRMED_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893362161446942590)
,p_db_column_name=>'PERMANENT_STAFF_HIST'
,p_display_order=>98
,p_column_identifier=>'CT'
,p_column_label=>'Permanent Staff'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PERMANENT_STAFF_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893361692270942589)
,p_db_column_name=>'FREEPAY_YTD'
,p_display_order=>111
,p_column_identifier=>'DG'
,p_column_label=>'Freepay Ytd'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FREEPAY_YTD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893361371358942588)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>112
,p_column_identifier=>'DH'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORGANISATION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893360882192942587)
,p_db_column_name=>'DEPT_SECTION_HIST'
,p_display_order=>113
,p_column_identifier=>'DI'
,p_column_label=>'Dept Section'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPT_SECTION_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893360483126942585)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>114
,p_column_identifier=>'DJ'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893360101720942584)
,p_db_column_name=>'UNION_NAME'
,p_display_order=>115
,p_column_identifier=>'DK'
,p_column_label=>'Union Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'UNION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893359704347942583)
,p_db_column_name=>'HEALTHPLAN_NAME'
,p_display_order=>116
,p_column_identifier=>'DL'
,p_column_label=>'Healthplan Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'HEALTHPLAN_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893359372010942582)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>117
,p_column_identifier=>'DM'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893358923371942581)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>118
,p_column_identifier=>'DN'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893358551403942580)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>119
,p_column_identifier=>'DO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893358172329942579)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'DP'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893357687596942578)
,p_db_column_name=>'REPORT_TO_HIST'
,p_display_order=>121
,p_column_identifier=>'DQ'
,p_column_label=>'Report To Hist'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893357299489942577)
,p_db_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_display_order=>122
,p_column_identifier=>'DR'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYMENT_CLASS_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893356933181942576)
,p_db_column_name=>'PAYMENT_TYPE_HIST'
,p_display_order=>123
,p_column_identifier=>'DS'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_TYPE_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893356569390942575)
,p_db_column_name=>'PAYMENT_MODE_HIST'
,p_display_order=>124
,p_column_identifier=>'DT'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAYMENT_MODE_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893356168033942575)
,p_db_column_name=>'EMP_COMPANY_NO_HIST'
,p_display_order=>125
,p_column_identifier=>'DU'
,p_column_label=>'Emp No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_COMPANY_NO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893355678529942573)
,p_db_column_name=>'SURNAME_HIST'
,p_display_order=>126
,p_column_identifier=>'DV'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SURNAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893355338052942572)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>127
,p_column_identifier=>'DW'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893354940714942571)
,p_db_column_name=>'LOT_STREET_HIST'
,p_display_order=>128
,p_column_identifier=>'DX'
,p_column_label=>'Lot Street'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOT_STREET_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893354505254942570)
,p_db_column_name=>'VILLAGE_NAME_HIST'
,p_display_order=>129
,p_column_identifier=>'DY'
,p_column_label=>'Village Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VILLAGE_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893354135957942570)
,p_db_column_name=>'DISTRICT_NAME_HIST'
,p_display_order=>130
,p_column_identifier=>'DZ'
,p_column_label=>'District Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISTRICT_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893353758616942569)
,p_db_column_name=>'MARITAL_NAME_HIST'
,p_display_order=>131
,p_column_identifier=>'EA'
,p_column_label=>'Marital Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MARITAL_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893353345481942568)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>132
,p_column_identifier=>'EB'
,p_column_label=>'Bank Branch'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_BRANCH_ID_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893352957531942567)
,p_db_column_name=>'BANK_ACCOUNT_NO_HIST'
,p_display_order=>133
,p_column_identifier=>'EC'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'BANK_ACCOUNT_NO_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893352507597942566)
,p_db_column_name=>'DEPARTMENT_NAME_HIST'
,p_display_order=>134
,p_column_identifier=>'ED'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEPARTMENT_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893352107292942565)
,p_db_column_name=>'POSITION_NAME_HIST'
,p_display_order=>135
,p_column_identifier=>'EE'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'POSITION_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893351729613942564)
,p_db_column_name=>'LOCATION_NAME_HIST'
,p_display_order=>136
,p_column_identifier=>'EF'
,p_column_label=>'Location Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOCATION_NAME_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893351351227942563)
,p_db_column_name=>'REPORT_TO_FNCT_HIST'
,p_display_order=>137
,p_column_identifier=>'EG'
,p_column_label=>'Report To Fnct'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TO_FNCT_HIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3893395998689942676)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>147
,p_column_identifier=>'EH'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3697865267203738022)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'255314'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:ID:EMP_COMPANY_NO_HIST:SURNAME_HIST:FIRST_NAME_HIST:TIME_TAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:APXWS_CC_001:NIS_EMPLOYEE:TAX_AMOUNT:MISC_DEDUCTION_SUM:TOTAL_DEDUCTION:NET_PAY:'
,p_break_on=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:0:0:0'
,p_break_enabled_on=>'EARNINGS_PERIOD_ID:DEPARTMENT_NAME_HIST:0:0:0'
,p_sum_columns_on_break=>'TIME_TAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:APXWS_CC_001:NIS_EMPLOYEE:TAX_AMOUNT:MISC_DEDUCTION_SUM:TOTAL_DEDUCTION:NET_PAY'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(568898072084167668)
,p_report_id=>wwv_flow_imp.id(3697865267203738022)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'R + S'
,p_format_mask=>'FML999G999G999G999G990'
,p_column_type=>'NUMBER'
,p_column_label=>'Gross'
,p_report_label=>'Gross'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9986102375508734175)
,p_plug_name=>'Employees To Be Paid'
,p_parent_plug_id=>wwv_flow_imp.id(568327199131853252)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID,   emp_id,',
'    EMP_COMPANY_NO,INCLUDE_PAYROLL,separated_status_id,',
'    DOB,',
'    SEX_CODE, SURNAME, FIRST_NAME,MIDDLE_NAME,',
'    STANDARD_HOURS,',
'    STANDARD_DAYS,',
'    EMPLOYMENT_STATUS,',
'    DATE_EMPLOYED,',
'    DATE_SEPARATED,',
'    APPOINTMENT_DATE,',
'    PAYROLL_EFFECTIVE,',
'    PRIMARY_TAX_JOB,   ',
'    LAST_CHANGED_DATE,',
'    LAST_CHANGED_BY, salary_currency,basic_personal_rate,',
'    (select ind_id from hr_rcm_employee x where x.id=y.emp_id) ind_id',
'FROM PA_PCF_PAYROLL_EMP y',
'where org_id =:APP_ORG_ID',
'AND EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_EMPLOYEE,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employees To Be Paid'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(540925942306215489)
,p_name=>'SALARY_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY_CURRENCY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Currency'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(575548891386694057)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'View'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_ID_IND:&EMP_ID.,&IND_ID.'
,p_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(616579348317577424)
,p_name=>'IND_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IND_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(616579364494577425)
,p_name=>'BASIC_PERSONAL_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASIC_PERSONAL_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Basic'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(8553407861432438709)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(8553408042523438710)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(8553408429636438714)
,p_name=>'EMP_COMPANY_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_COMPANY_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Emp No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(8553408514424438715)
,p_name=>'EMPLOYMENT_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYMENT_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employment Status'
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
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8553409109979438721)
,p_name=>'DATE_EMPLOYED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_EMPLOYED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Employed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(8553409529943438725)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8553409618791438726)
,p_name=>'INCLUDE_PAYROLL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCLUDE_PAYROLL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Pay Emp?'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3844647265446735930)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8553409709403438727)
,p_name=>'SEPARATED_STATUS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEPARATED_STATUS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Separated Status Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>120
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(8553409797097438728)
,p_name=>'DOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOB'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Dob'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(8553409908270438729)
,p_name=>'SEX_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEX_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Sex'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>10
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8554577014886221980)
,p_name=>'SURNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SURNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Surname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(8554577109162221981)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(8554577213889221982)
,p_name=>'MIDDLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIDDLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Middle Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(8554577272459221983)
,p_name=>'STANDARD_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STANDARD_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'STD Hours'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>180
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8554577449500221984)
,p_name=>'STANDARD_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STANDARD_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'STD Days'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8554577484723221985)
,p_name=>'DATE_SEPARATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_SEPARATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Separated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8554577569093221986)
,p_name=>'APPOINTMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPOINTMENT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Appointment Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8554577738075221987)
,p_name=>'PAYROLL_EFFECTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_EFFECTIVE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Payroll Effective'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8554577790299221988)
,p_name=>'PRIMARY_TAX_JOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIMARY_TAX_JOB'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Primary Tax Job'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854181035973426433)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8553407699814438707)
,p_internal_uid=>8025575150283570272
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8554582858469223236)
,p_interactive_grid_id=>wwv_flow_imp.id(8553407699814438707)
,p_static_id=>'14733150'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8554583136947223236)
,p_report_id=>wwv_flow_imp.id(8554582858469223236)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(544491978122324375)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(540925942306215489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(585065371338809153)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(575548891386694057)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(616713992390080113)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(616579348317577424)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(616726665515182746)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(616579364494577425)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554584458162223245)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(8553407861432438709)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554585412523223249)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(8553408042523438710)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554586277493223253)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8553408429636438714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554587244762223256)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(8553408514424438715)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554587959217223260)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(8553409109979438721)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554588864335223263)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8553409529943438725)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554589767296223267)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8553409618791438726)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554590747605223270)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(8553409709403438727)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554591571268223273)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(8553409797097438728)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554592484857223277)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8553409908270438729)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554593373940223280)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8554577014886221980)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554594291486223284)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8554577109162221981)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554595200850223287)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(8554577213889221982)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554596076232223291)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(8554577272459221983)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554596982957223294)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(8554577449500221984)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554597928218223298)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(8554577484723221985)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554598799981223301)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(8554577569093221986)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554599754044223304)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(8554577738075221987)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8554600630669223308)
,p_view_id=>wwv_flow_imp.id(8554583136947223236)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(8554577790299221988)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(574902614537057466)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5598273666840186349)
,p_plug_name=>'Summary and Stats'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5598273766568186350)
,p_plug_name=>'Incomes'
,p_parent_plug_id=>wwv_flow_imp.id(5598273666840186349)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PCF_ADHOCPAYMENT.EMP_ID as EMP_ID,',
'    PA_PCF_ADHOCPAYMENT.ADHOC_INC_CODE_ID as INCOME_CODE_ID,',
'    PA_PCF_ADHOCPAYMENT.QUANTITY as QUANTITY,',
'    PA_PCF_ADHOCPAYMENT.RATE as RATE,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID as AMOUNT_PAID  ',
'from PA_PCF_ADHOCPAYMENT PA_PCF_ADHOCPAYMENT join PA_PCF_EARNINGPERIOD V ON V.ID=PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID',
'where  PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID=:P1350_EARNINGS_PERIOD_ID',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=upper(a.payment_type)',
'           )',
'and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'UNION',
'select EMP_ID as EMP_ID,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    QUANTITY as QUANTITY,',
'    UNIT_AMOUNT as RATE,',
'    AMOUNT_PAID as AMOUNT_PAID  ',
'from PA_PCF_ADHOCPAYMENT_HR  join PA_PCF_EARNINGPERIOD V ON V.ID = EARNINGS_PERIOD_ID',
'where  EARNINGS_PERIOD_ID=:P1350_EARNINGS_PERIOD_ID',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=upper(a.payment_type)',
'           )',
'and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_EMPLOYEE,P1350_ORGDTL_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Incomes'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5598274083206186353)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854410127367718012)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5598274291934186355)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(5598274419890186356)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(5598274457678186357)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(5625879361310890015)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854380898807666791)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5598274023587186352)
,p_internal_uid=>5070441474056317917
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5625807645905962116)
,p_interactive_grid_id=>wwv_flow_imp.id(5598274023587186352)
,p_static_id=>'16503922'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5625807872610962117)
,p_report_id=>wwv_flow_imp.id(5625807645905962116)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625808414212962120)
,p_view_id=>wwv_flow_imp.id(5625807872610962117)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5598274083206186353)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>208.93400000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625810231321962129)
,p_view_id=>wwv_flow_imp.id(5625807872610962117)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5598274291934186355)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>63
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625811089334962134)
,p_view_id=>wwv_flow_imp.id(5625807872610962117)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5598274419890186356)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.9883
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625811956615962138)
,p_view_id=>wwv_flow_imp.id(5625807872610962117)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5598274457678186357)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625885382202890234)
,p_view_id=>wwv_flow_imp.id(5625807872610962117)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5625879361310890015)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145.961
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3975416414761214916)
,p_view_id=>wwv_flow_imp.id(5625807872610962117)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(5598274457678186357)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5598273902431186351)
,p_plug_name=>'Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(5598273666840186349)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", "EXPENSE_ID",x."EMP_ID","DEDUCTION_AMOUNT"',
'from "PA_PCF_ADMINDEDUCTION" x ',
'where exists ( ',
'          select 1',
'          FROM pa_pcf_earningperiod a',
'          where X.org_id=a.org_id',
'          and X.employment_class_id=a.employment_class_id',
'          and upper(X.payment_type)=a.payment_type',
'          and x.compute_gross = a.compute_gross',
'          and a.id = :P1350_EARNINGS_PERIOD_ID',
'          and x.datestart between a.start_date and a.end_date',
'          )',
'and deduct_status in (''IP'',''CL'',''SP'')',
'and case when IMPORT_HR_DATA is null then ''PAY_DED'' ',
'else nvl(IMPORT_HR_DATA,''PAY_DED'') end = nvl(:P1350_IMPORT_HR_DEDUCTION, nvl(IMPORT_HR_DATA,''PAY_DED''))',
'and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EMPLOYEE,P1350_ORGDTL_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Deductions'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5598274793668186360)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5598274842601186361)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expense'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(574971705483057414)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5598275017149186362)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854410127367718012)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5598275051381186363)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction Amount'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5598274654339186359)
,p_internal_uid=>5070442104808317924
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5625821341720039447)
,p_interactive_grid_id=>wwv_flow_imp.id(5598274654339186359)
,p_static_id=>'16504059'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5625821618132039447)
,p_report_id=>wwv_flow_imp.id(5625821341720039447)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625822056069039449)
,p_view_id=>wwv_flow_imp.id(5625821618132039447)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(5598274793668186360)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625822981020039454)
,p_view_id=>wwv_flow_imp.id(5625821618132039447)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5598274842601186361)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132.91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625823858624039459)
,p_view_id=>wwv_flow_imp.id(5625821618132039447)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5598275017149186362)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>280.078
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5625824759089039463)
,p_view_id=>wwv_flow_imp.id(5625821618132039447)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5598275051381186363)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>44.011468750000006
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(3975418289989217077)
,p_view_id=>wwv_flow_imp.id(5625821618132039447)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(5598275051381186363)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5625879632024890017)
,p_plug_name=>'Statutory Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(5598273666840186349)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name, dob,PKG_HR_EXPORT_TO_PAYROLL.fn_getNISHREXPORT(earnings_period_id, emp_id, b.Start_Date, ',
'b.End_Date, b.payment_type, ''EMPLOYEE'', :APP_COUNTRY, pkg_global_fnts.fn_calcage(dob,b.end_date)) NIS,',
'PKG_HR_EXPORT_TO_PAYROLL.fn_getTAXHREXPORT(earnings_period_id, emp_id,:APP_COUNTRY, pkg_global_fnts.fn_calcage(dob,b.end_date)) TAX,',
'pkg_global_fnts.fn_calcage(dob,b.end_date) Age',
'from pa_pcf_payroll_emp a join pa_pcf_earningperiod b on b.id = a.earnings_period_id',
'join hr_rcm_employee c on c.id =a.emp_id',
'where earnings_period_id=:P1350_EARNINGS_PERIOD_ID',
'and a.emp_id =nvl(:P1350_EMPLOYEE, a.emp_id)',
'and a.orgdtl_id =nvl(:P1350_ORGDTL_ID, a.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_EMPLOYEE,P1350_ORGDTL_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Statutory Deductions'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(5625879810769890019)
,p_name=>'FULL_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FULL_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Full Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(5625879910851890020)
,p_name=>'DOB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DOB'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'DOB'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5625879989190890021)
,p_name=>'NIB'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Nis'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(5625880125597890022)
,p_name=>'AGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Age'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(5625880601149890027)
,p_name=>'TAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Tax'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(5625879728997890018)
,p_internal_uid=>5098047179467021583
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5629418746186132289)
,p_interactive_grid_id=>wwv_flow_imp.id(5625879728997890018)
,p_static_id=>'16540033'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5629418954696132289)
,p_report_id=>wwv_flow_imp.id(5629418746186132289)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5629419450511132296)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(5625879810769890019)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5629420324214132305)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(5625879910851890020)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5629421159801132311)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(5625879989190890021)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5629422131410132317)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(5625880125597890022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5629530683792423323)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(5625880601149890027)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(527832580098868428)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_function=>'COUNT'
,p_column_id=>wwv_flow_imp.id(5625879910851890020)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(527832688966868427)
,p_view_id=>wwv_flow_imp.id(5629418954696132289)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(5625879989190890021)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5625880914513890030)
,p_plug_name=>'Processing..............'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320:t-Form--noPadding'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_04'
,p_location=>null
,p_plug_source=>'Executing Process All for HR Export.'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7932151876675580350)
,p_plug_name=>'Payroll Rules'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7882598299882618362)
,p_plug_name=>'Reminders'
,p_parent_plug_id=>wwv_flow_imp.id(7932151876675580350)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7893228516502740446)
,p_name=>'Payroll Requirements'
,p_parent_plug_id=>wwv_flow_imp.id(7932151876675580350)
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id earnings_period_id, a.start_date, a.end_date, a.payment_type, Pkg_Global_Fnts.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'') employment_class_id, a.pay_status,	',
'    a.org_id, payment_period_no, epayroll_status, organisation_name, Bank_Account_No, esalary_charges,',
'    charges,esalary_account,psc_retirement_age,employment_age,probation_duration,sick_leave_yrs_service',
'    ,sick_leave_hrs_qualify,nvl(a.tax_method, w.tax_method) tax_method,timesheet_post_method,time_calculation_format',
'    ,nvl(a.Payroll_Type,w.Payroll_Type) Payroll_Type,W.Round_Method      ',
'    , company_year_id , company_year,start_year ,	end_year,start_paid_for,end_paid_for,payroll_cutoff, b.country',
'from pa_pcf_earningperiod a join hr_hcf_organisation b on (a.org_id=b.id)',
'join HR_HCF_COMPANYYEAR z on z.id=a.Company_year_Id',
'join hr_hcf_org_rule w on w.org_id=b.id',
'where b.verified_by is not null',
'and a.VERIFIED_BY is not null',
'and a.id=:P1350_EARNINGS_PERIOD_ID',
'   AND ((trunc(A.start_date) BETWEEN trunc(w.start_date) AND trunc(w.end_date) AND w.end_date IS NOT NULL)',
'    or  (trunc(w.start_date) <= trunc(a.start_date) and trunc(w.end_date) is null ))'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574707158147057711)
,p_query_column_id=>1
,p_column_alias=>'EARNINGS_PERIOD_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Ern Prd'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3854414658122718020)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574707646680057710)
,p_query_column_id=>2
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>2
,p_column_heading=>'Start Date'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574707964619057710)
,p_query_column_id=>3
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'End Date'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574708409422057710)
,p_query_column_id=>4
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>4
,p_column_heading=>'Pay Type'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574708794049057709)
,p_query_column_id=>5
,p_column_alias=>'EMPLOYMENT_CLASS_ID'
,p_column_display_sequence=>5
,p_column_heading=>'Emp Class'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574709189790057709)
,p_query_column_id=>6
,p_column_alias=>'PAY_STATUS'
,p_column_display_sequence=>6
,p_column_heading=>'Pay Status'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574709550760057709)
,p_query_column_id=>7
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>7
,p_column_heading=>'Org ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574709976960057708)
,p_query_column_id=>8
,p_column_alias=>'PAYMENT_PERIOD_NO'
,p_column_display_sequence=>8
,p_column_heading=>'Pay Prd No'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574710375070057708)
,p_query_column_id=>9
,p_column_alias=>'EPAYROLL_STATUS'
,p_column_display_sequence=>9
,p_column_heading=>'Epay Status'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574710830293057708)
,p_query_column_id=>10
,p_column_alias=>'ORGANISATION_NAME'
,p_column_display_sequence=>10
,p_column_heading=>'Org Name'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574711191918057708)
,p_query_column_id=>11
,p_column_alias=>'BANK_ACCOUNT_NO'
,p_column_display_sequence=>11
,p_column_heading=>'Bank Acc. No.'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574711590244057707)
,p_query_column_id=>12
,p_column_alias=>'ESALARY_CHARGES'
,p_column_display_sequence=>12
,p_column_heading=>'Esalary Charges'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574712040580057707)
,p_query_column_id=>13
,p_column_alias=>'CHARGES'
,p_column_display_sequence=>13
,p_column_heading=>'Charges'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574712367724057707)
,p_query_column_id=>14
,p_column_alias=>'ESALARY_ACCOUNT'
,p_column_display_sequence=>14
,p_column_heading=>'Esalary Acc'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574712824792057706)
,p_query_column_id=>15
,p_column_alias=>'PSC_RETIREMENT_AGE'
,p_column_display_sequence=>15
,p_column_heading=>'Psc Retire Age'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574713180924057706)
,p_query_column_id=>16
,p_column_alias=>'EMPLOYMENT_AGE'
,p_column_display_sequence=>16
,p_column_heading=>'Emp Age'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574713566867057706)
,p_query_column_id=>17
,p_column_alias=>'PROBATION_DURATION'
,p_column_display_sequence=>17
,p_column_heading=>'Prob. Duration'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574713957828057706)
,p_query_column_id=>18
,p_column_alias=>'SICK_LEAVE_YRS_SERVICE'
,p_column_display_sequence=>18
,p_column_heading=>'Sick Lv Yrs Srv'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574714411200057705)
,p_query_column_id=>19
,p_column_alias=>'SICK_LEAVE_HRS_QUALIFY'
,p_column_display_sequence=>19
,p_column_heading=>'Sick Lv Hrs Qlfy'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574714778291057705)
,p_query_column_id=>20
,p_column_alias=>'TAX_METHOD'
,p_column_display_sequence=>20
,p_column_heading=>'Tax Method'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574715152614057705)
,p_query_column_id=>21
,p_column_alias=>'TIMESHEET_POST_METHOD'
,p_column_display_sequence=>21
,p_column_heading=>'Timesht Post Meth'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574715555759057704)
,p_query_column_id=>22
,p_column_alias=>'TIME_CALCULATION_FORMAT'
,p_column_display_sequence=>22
,p_column_heading=>'Time Calc. Format'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574715989836057704)
,p_query_column_id=>23
,p_column_alias=>'PAYROLL_TYPE'
,p_column_display_sequence=>23
,p_column_heading=>'Payroll Type'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574716444174057704)
,p_query_column_id=>24
,p_column_alias=>'ROUND_METHOD'
,p_column_display_sequence=>25
,p_column_heading=>'Round Method'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574716770950057704)
,p_query_column_id=>25
,p_column_alias=>'COMPANY_YEAR_ID'
,p_column_display_sequence=>26
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574717223247057703)
,p_query_column_id=>26
,p_column_alias=>'COMPANY_YEAR'
,p_column_display_sequence=>27
,p_column_heading=>'Comp Year'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574717574712057703)
,p_query_column_id=>27
,p_column_alias=>'START_YEAR'
,p_column_display_sequence=>28
,p_column_heading=>'Start Year'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574718038707057703)
,p_query_column_id=>28
,p_column_alias=>'END_YEAR'
,p_column_display_sequence=>29
,p_column_heading=>'End Year'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574718374819057702)
,p_query_column_id=>29
,p_column_alias=>'START_PAID_FOR'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574718798105057702)
,p_query_column_id=>30
,p_column_alias=>'END_PAID_FOR'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574719207305057702)
,p_query_column_id=>31
,p_column_alias=>'PAYROLL_CUTOFF'
,p_column_display_sequence=>32
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574719607504057702)
,p_query_column_id=>32
,p_column_alias=>'COUNTRY'
,p_column_display_sequence=>34
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7893233613431781508)
,p_name=>'Tax Rates'
,p_parent_plug_id=>wwv_flow_imp.id(7932151876675580350)
,p_template=>4072358936313175081
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select tax_Ceiling_Lower,Tax_Percentage_Lower,Tax_Ceiling_Upper,Tax_Percentage_Upper, Consistent Tax_Consistent,payment_type',
'            ,ann_tax_ceiling_lower,ann_tax_ceiling_upper,date_effective tax_date_effective,adj_ceiling_lower,adj_ceiling_upper,',
'            Adj_Ann_Tax_Ceiling_Lower,Adj_Ann_Tax_Ceiling_Upper,  Id Taxrate_Key,daily_tax_ceiling_lower, pro_rate_taxfree, tax_ceiling_upper_fraction, tax_ceiling_upper_b',
'       from hr_hcf_taxrate s',
'  where Date_of_Rate=(',
'        select MAX(date_of_rate)',
'        from hr_hcf_taxrate',
'        where date_of_rate<=(select start_date from pa_pcf_earningperiod where id =:P1350_EARNINGS_PERIOD_ID)',
'                            and org_id=:APP_ORG_SHR_DED',
'                            and upper(country) = upper(:APP_COUNTRY)',
'                            and trim(upper(payment_type))=(select trim(upper(payment_type)) from pa_pcf_earningperiod where id =:P1350_EARNINGS_PERIOD_ID) ',
'                                    )',
'    and s.org_id= :APP_ORG_SHR_DED',
'    and s.payment_type=(select payment_type from pa_pcf_earningperiod where id =:P1350_EARNINGS_PERIOD_ID)',
'    and upper(country) = upper(:APP_COUNTRY)',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574720352924057701)
,p_query_column_id=>1
,p_column_alias=>'TAX_CEILING_LOWER'
,p_column_display_sequence=>1
,p_column_heading=>'TAX CEILING LOWER'
,p_column_format=>'FML999G999G999G999G990'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574720844857057701)
,p_query_column_id=>2
,p_column_alias=>'TAX_PERCENTAGE_LOWER'
,p_column_display_sequence=>2
,p_column_heading=>'TAX PERCENTAGE LOWER'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574721171899057700)
,p_query_column_id=>3
,p_column_alias=>'TAX_CEILING_UPPER'
,p_column_display_sequence=>3
,p_column_heading=>'TAX CEILING UPPER'
,p_column_format=>'FML999G999G999G999G990'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574721621316057700)
,p_query_column_id=>4
,p_column_alias=>'TAX_PERCENTAGE_UPPER'
,p_column_display_sequence=>4
,p_column_heading=>'TAX PERCENTAGE UPPER'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574721974073057700)
,p_query_column_id=>5
,p_column_alias=>'TAX_CONSISTENT'
,p_column_display_sequence=>5
,p_column_heading=>'TAX_CONSISTENT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574722376432057699)
,p_query_column_id=>6
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>27
,p_column_heading=>'Payment Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574722759351057699)
,p_query_column_id=>7
,p_column_alias=>'ANN_TAX_CEILING_LOWER'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574723185274057699)
,p_query_column_id=>8
,p_column_alias=>'ANN_TAX_CEILING_UPPER'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574723614877057699)
,p_query_column_id=>9
,p_column_alias=>'TAX_DATE_EFFECTIVE'
,p_column_display_sequence=>8
,p_column_heading=>'TAX DATE EFFECTIVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574724010391057698)
,p_query_column_id=>10
,p_column_alias=>'ADJ_CEILING_LOWER'
,p_column_display_sequence=>9
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574724417813057698)
,p_query_column_id=>11
,p_column_alias=>'ADJ_CEILING_UPPER'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574724792822057698)
,p_query_column_id=>12
,p_column_alias=>'ADJ_ANN_TAX_CEILING_LOWER'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574725226530057697)
,p_query_column_id=>13
,p_column_alias=>'ADJ_ANN_TAX_CEILING_UPPER'
,p_column_display_sequence=>12
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574725638909057697)
,p_query_column_id=>14
,p_column_alias=>'TAXRATE_KEY'
,p_column_display_sequence=>13
,p_column_heading=>'TAXRATE KEY'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574725997534057697)
,p_query_column_id=>15
,p_column_alias=>'DAILY_TAX_CEILING_LOWER'
,p_column_display_sequence=>14
,p_column_heading=>'DAILY TAX CEILING_LOWER'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574726393874057697)
,p_query_column_id=>16
,p_column_alias=>'PRO_RATE_TAXFREE'
,p_column_display_sequence=>15
,p_column_heading=>'PRO RATE TAXFREE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574726813438057696)
,p_query_column_id=>17
,p_column_alias=>'TAX_CEILING_UPPER_FRACTION'
,p_column_display_sequence=>16
,p_column_heading=>'Tax Ceiling Upper Fraction'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574727244434057696)
,p_query_column_id=>18
,p_column_alias=>'TAX_CEILING_UPPER_B'
,p_column_display_sequence=>17
,p_column_heading=>'Tax Ceiling Upper B'
,p_column_format=>'FML999G999G999G999G990'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(7893235429361786101)
,p_name=>'NIS Rates'
,p_parent_plug_id=>wwv_flow_imp.id(7932151876675580350)
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nis_ceiling,employer_per,employee_per,lower_age,upper_age,consistent nis_consistent,over_60_under_16,date_effective nis_date_effective, id nis_rate_key,',
'         nis_free_ceiling, government_per, gov_employer_per, gov_employee_per,payment_type',
'     from hr_hcf_nisrate s',
'    where Date_of_Rate=(',
'        select MAX(date_of_rate)',
'        from hr_hcf_nisrate',
'        where date_of_rate<=(select start_date from pa_pcf_earningperiod where id =:P1350_EARNINGS_PERIOD_ID)',
'        and	org_id= :APP_ORG_SHR_DED',
'        and payment_type=(select payment_type from pa_pcf_earningperiod where id =:P1350_EARNINGS_PERIOD_ID)',
'        and upper(country) = upper(:APP_COUNTRY) )',
'    and s.org_id=:APP_ORG_SHR_DED',
'    and s.payment_type=(select payment_type from pa_pcf_earningperiod where id= :P1350_EARNINGS_PERIOD_ID)',
'    and upper(country) = upper(:APP_COUNTRY)'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574728040380057695)
,p_query_column_id=>1
,p_column_alias=>'NIS_CEILING'
,p_column_display_sequence=>1
,p_column_heading=>'NIS CEILING'
,p_column_format=>'FML999G999G999G999G990'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574728380169057695)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYER_PER'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYER%'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574728776198057695)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYEE_PER'
,p_column_display_sequence=>3
,p_column_heading=>'EMPLOYEE%'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574729164194057694)
,p_query_column_id=>4
,p_column_alias=>'LOWER_AGE'
,p_column_display_sequence=>4
,p_column_heading=>'LOWER AGE'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574729628425057694)
,p_query_column_id=>5
,p_column_alias=>'UPPER_AGE'
,p_column_display_sequence=>5
,p_column_heading=>'UPPER AGE'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574730027764057693)
,p_query_column_id=>6
,p_column_alias=>'NIS_CONSISTENT'
,p_column_display_sequence=>6
,p_column_heading=>'NIS_CONSISTENT'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574730383687057693)
,p_query_column_id=>7
,p_column_alias=>'OVER_60_UNDER_16'
,p_column_display_sequence=>7
,p_column_heading=>'OVER 60 UNDER 16'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574730840746057693)
,p_query_column_id=>8
,p_column_alias=>'NIS_DATE_EFFECTIVE'
,p_column_display_sequence=>8
,p_column_heading=>'NIS DATE EFFECTIVE'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574731235001057693)
,p_query_column_id=>9
,p_column_alias=>'NIS_RATE_KEY'
,p_column_display_sequence=>9
,p_column_heading=>'NIS RATE KEY'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574731635782057692)
,p_query_column_id=>10
,p_column_alias=>'NIS_FREE_CEILING'
,p_column_display_sequence=>10
,p_column_heading=>'NIS_FREE_CEILING'
,p_column_format=>'FML999G999G999G999G990'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574732043987057692)
,p_query_column_id=>11
,p_column_alias=>'GOVERNMENT_PER'
,p_column_display_sequence=>11
,p_column_heading=>'GOVERNMENT_PER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574732436946057692)
,p_query_column_id=>12
,p_column_alias=>'GOV_EMPLOYER_PER'
,p_column_display_sequence=>12
,p_column_heading=>'GOV_EMPLOYER_PER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574732794197057692)
,p_query_column_id=>13
,p_column_alias=>'GOV_EMPLOYEE_PER'
,p_column_display_sequence=>13
,p_column_heading=>'GOV_EMPLOYEE_PER'
,p_hidden_column=>'Y'
,p_lov_show_nulls=>'YES'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(574733206905057691)
,p_query_column_id=>14
,p_column_alias=>'PAYMENT_TYPE'
,p_column_display_sequence=>23
,p_column_heading=>'Payment Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8495592098487038714)
,p_plug_name=>'Deductions Changes'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8445521494543063028)
,p_plug_name=>'New Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(8495592098487038714)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", x.PAYMENT_TYPE,',
'    "EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'    x."EMP_ID",x."EMP_ID" employee_id,',
'     initcap((select full_name from hr_rcm_employee where id = x.emp_id)) Employee_fullname,',
'         initcap((select employment_class from hr_rcm_employee where id = x.emp_id)) Employment_class,',
'    initcap((select decode(employment_status, ''IN-ACTIVE'',''SEPARATED'',employment_status) from hr_rcm_employee where id = x.emp_id )) Employment_status,',
'    initcap((select emp_company_no from hr_rcm_employee where id = x.emp_id )) emp_company_no,',
'    "DATESTART",',
'    "DISCIPLINE_ID",',
'    "DEDUCT_STATUS",',
'    "AMOUNT_BORROWED",',
'    "AMOUNT_OWING",',
'    "INTEREST_TYPE",',
'    "INTEREST_RATE",',
'    "PERIOD",',
'    "DATE_CLOSE",',
'    "CLOSED_BY",',
'    "DEDUCTION_AMOUNT",',
'    "APPROVED_BY",',
'    "APPROVED_DATE",',
'    "DEDUCTION_NO",',
'    x."REMARKS",',
'    "PREVIOUS_START_DATE",',
'    "CLOSING_EARNING_PERIOD",',
'    "CURRENT_BALANCE",',
'    "DEDUCTION_TYPE",',
'    x."HOURLY_RATE",',
'    "FOR_PRV_YTD_ENTRY",',
'    x."ENTERED_BY",',
'    x."ENTRY_DATE",',
'    x."VERIFIED_BY",',
'    x."VERIFIED_DATE",',
'    x."LAST_CHANGED_BY",',
'    x."LAST_CHANGED_DATE",',
'    x."MACHINE_INSERT",',
'    x."MACHINE_UPDATE",',
'    x."TRANSACTION_TYPE_ID",',
'    x."STATUS",',
'    x.percent_basic',
'   ,x.percent_option',
'    from "PA_PCF_ADMINDEDUCTION" x ',
'    join pa_pcf_earningperiod j on ',
'                    ( j.employment_class_id = x.employment_class_id ',
'                    AND j.payment_type = x.payment_type ',
'                    AND j.org_id = x.org_id',
'                    and j.compute_gross = x.compute_gross)',
'    where exists ( ',
'                  select 1',
'                  FROM VW_USERACCESS A ',
'                  where X.org_id=a.org_id',
'                  and X.employment_class_id=a.employment_class_id',
'                  and upper(X.payment_type)=a.payment_type',
'                  )',
'    AND TRUNC(DATESTART) BETWEEN j.START_PAID_FOR AND j.END_DATE',
'    and x.id = :P1350_EARNINGS_PERIOD_ID',
'    and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
'    and upper(trim(DEDUCTION_TYPE)) = nvl(:P1350_DEDUCTION_TYPE, upper(trim(DEDUCTION_TYPE)))',
'          and exists (select 1',
'                        from pa_pcf_payroll_emp w',
'                        where w.emp_id = x.emp_id',
'                        and w.earnings_period_id = :P1350_EARNINGS_PERIOD_ID)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID,,P1350_DEDUCTION_TYPE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8500342229794947780)
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
,p_owner=>'SHIRAMAN@INNOSYSGY.COM'
,p_internal_uid=>7972509680264079345
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307593133965288563)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307593492733288564)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307593861953288564)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307594261389288565)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307594690210288565)
,p_db_column_name=>'EMP_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307595063439288566)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307595483573288566)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307595898987288567)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307596283350288567)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307596727300288567)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307597046962288568)
,p_db_column_name=>'REMARKS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307597506480288569)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Expense Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307597866470288569)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307598265097288569)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307598693775288570)
,p_db_column_name=>'EMPLOYEE_FULLNAME'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Employee Fullname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307599089050288570)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307599491288288571)
,p_db_column_name=>'DATESTART'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Datestart'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307599929673288571)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307600334471288572)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Deduct Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307600683668288572)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307601139460288573)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Amount Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307601482818288573)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307601906717288573)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307602329637288574)
,p_db_column_name=>'PERIOD'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307602707984288574)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307603100465288574)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307603475735288575)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307603911238288575)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307604246275288576)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307604678277288576)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307605116499288577)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307605479948288577)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307605865704288577)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Current Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307606315581288578)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307606719641288578)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307607069063288579)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307607487147288579)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307607912314288579)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307608297032288580)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307608717040288580)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307609045260288580)
,p_db_column_name=>'STATUS'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307609488906288581)
,p_db_column_name=>'PERCENT_BASIC'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Percent Basic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307609861890288581)
,p_db_column_name=>'PERCENT_OPTION'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Percent Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8500374556117954506)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16862628'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMPLOYEE_COMPUTE_GROSS:SEPARATED_EMPLOYMENT_EMPLOYMENT_CLASS:PAYMENT_TYPE:INCOME_PENSIONABLE:EMP_ID:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:MACHINE_INSERT:ADMIN_PERCENTAGE:REMARKS:EXPENSE_ID:EXPENSE_LKID:EMPLOYEE_ID:EMPLOYEE_FULLNA'
||'ME:EMP_COMPANY_NO:DATESTART:DISCIPLINE_ID:DEDUCT_AMOUNT_BORROWED:AMOUNT_OWING:INTEREST_TYPE:INTEREST_RATE:PERIOD:DATE_CLOSE:CLOSED_BY:DEDUCTION_AMOUNT:APPROVED_BY:APPROVED_DATE:DEDUCTION_NO:PREVIOUS_START_DATE:CLOSING_EARNING_PERIOD:CURRENT_BALANCE:D'
||'EDUCTION_TYPE:HOURLY_RATE:FOR_PRV_YTD_ENTRY:VERIFIED_BY:VERIFIED_DATE:MACHINE_UPDATE:TRANSACTION_TYPE_ID:STATUS:PERCENT_BASIC:PERCENT_OPTION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8500345623740947814)
,p_plug_name=>'Stopped Deductions'
,p_parent_plug_id=>wwv_flow_imp.id(8495592098487038714)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", x.PAYMENT_TYPE,',
'    "EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'    x."EMP_ID",x."EMP_ID" employee_id,',
'     initcap((select full_name from hr_rcm_employee where id = x.emp_id)) Employee_fullname,',
'         initcap((select employment_class from hr_rcm_employee where id = x.emp_id)) Employment_class,',
'    initcap((select decode(employment_status, ''IN-ACTIVE'',''SEPARATED'',employment_status) from hr_rcm_employee where id = x.emp_id )) Employment_status,',
'    initcap((select emp_company_no from hr_rcm_employee where id = x.emp_id )) emp_company_no,',
'    "DATESTART",',
'    "DISCIPLINE_ID",',
'    "DEDUCT_STATUS",',
'    "AMOUNT_BORROWED",',
'    "AMOUNT_OWING",',
'    "INTEREST_TYPE",',
'    "INTEREST_RATE",',
'    "PERIOD",',
'    "DATE_CLOSE",',
'    "CLOSED_BY",',
'    "DEDUCTION_AMOUNT",',
'    "APPROVED_BY",',
'    "APPROVED_DATE",',
'    "DEDUCTION_NO",',
'    x."REMARKS",',
'    "PREVIOUS_START_DATE",',
'    "CLOSING_EARNING_PERIOD",',
'    "CURRENT_BALANCE",',
'    "DEDUCTION_TYPE",',
'    x."HOURLY_RATE",',
'    "FOR_PRV_YTD_ENTRY",',
'    x."ENTERED_BY",',
'    x."ENTRY_DATE",',
'    x."VERIFIED_BY",',
'    x."VERIFIED_DATE",',
'    x."LAST_CHANGED_BY",',
'    x."LAST_CHANGED_DATE",',
'    x."MACHINE_INSERT",',
'    x."MACHINE_UPDATE",',
'    x."TRANSACTION_TYPE_ID",',
'    x."STATUS",',
'    x.percent_basic',
'   ,x.percent_option',
'    from "PA_PCF_ADMINDEDUCTION" x ',
'    join pa_pcf_earningperiod j on ',
'                    ( j.employment_class_id = x.employment_class_id ',
'                    AND j.payment_type = x.payment_type ',
'                    AND j.org_id = x.org_id',
'                    and j.compute_gross = x.compute_gross)',
'    where exists ( ',
'                  select 1',
'                  FROM VW_USERACCESS A ',
'                  where X.org_id=a.org_id',
'                  and X.employment_class_id=a.employment_class_id',
'                  and upper(X.payment_type)=a.payment_type',
'                                   )',
'    AND (START_PAID_FOR between SUSPEND_DATE_START and SUSPEND_DATE_END or',
'    TRUNC(DATE_CLOSE) BETWEEN j.START_PAID_FOR AND j.END_DATE)',
'    AND j.id =:P1350_EARNINGS_PERIOD_ID',
'    and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
'    and upper(trim(DEDUCTION_TYPE)) = nvl(:P1350_DEDUCTION_TYPE, upper(trim(DEDUCTION_TYPE)))',
'   ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID,P1350_DEDUCTION_TYPE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8500345855433947816)
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
,p_owner=>'SHIRAMAN@INNOSYSGY.COM'
,p_internal_uid=>7972513305903079381
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307619817156288603)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307620209877288603)
,p_db_column_name=>'REMARKS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307620596786288604)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307621009449288604)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307621382555288605)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307621761727288606)
,p_db_column_name=>'EMP_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307622167706288606)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307622555374288607)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307622944157288608)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307623420866288608)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307623806899288609)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307611363977288590)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>310
,p_column_identifier=>'AH'
,p_column_label=>'Expense Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307611832045288591)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>320
,p_column_identifier=>'AI'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307612210120288592)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>330
,p_column_identifier=>'AJ'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307612627402288592)
,p_db_column_name=>'EMPLOYEE_FULLNAME'
,p_display_order=>340
,p_column_identifier=>'AK'
,p_column_label=>'Employee Fullname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307612951533288593)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>350
,p_column_identifier=>'AL'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307613380060288593)
,p_db_column_name=>'DATESTART'
,p_display_order=>360
,p_column_identifier=>'AM'
,p_column_label=>'Datestart'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307613745934288594)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>370
,p_column_identifier=>'AN'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307614158709288594)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>380
,p_column_identifier=>'AO'
,p_column_label=>'Deduct Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307614636551288595)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>390
,p_column_identifier=>'AP'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307614951549288596)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>400
,p_column_identifier=>'AQ'
,p_column_label=>'Amount Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307615351015288596)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>410
,p_column_identifier=>'AR'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307615839355288597)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>420
,p_column_identifier=>'AS'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307616185557288597)
,p_db_column_name=>'PERIOD'
,p_display_order=>430
,p_column_identifier=>'AT'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307616640891288598)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>440
,p_column_identifier=>'AU'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307617039503288598)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>450
,p_column_identifier=>'AV'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307617349941288599)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>460
,p_column_identifier=>'AW'
,p_column_label=>'Deduction Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307617813710288600)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>470
,p_column_identifier=>'AX'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307618152479288601)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>480
,p_column_identifier=>'AY'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307618626678288601)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>490
,p_column_identifier=>'AZ'
,p_column_label=>'Deduction No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307619012620288602)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>500
,p_column_identifier=>'BA'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307619396164288602)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>510
,p_column_identifier=>'BB'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307624158578288609)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>520
,p_column_identifier=>'BC'
,p_column_label=>'Current Balance'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307624446348288610)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>530
,p_column_identifier=>'BD'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307624901526288610)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>540
,p_column_identifier=>'BE'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307625268100288611)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>550
,p_column_identifier=>'BF'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307625742223288611)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>560
,p_column_identifier=>'BG'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307626118045288612)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>570
,p_column_identifier=>'BH'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307626517645288612)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>580
,p_column_identifier=>'BI'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307626902289288613)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>590
,p_column_identifier=>'BJ'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307627336849288613)
,p_db_column_name=>'STATUS'
,p_display_order=>600
,p_column_identifier=>'BK'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307627725335288614)
,p_db_column_name=>'PERCENT_BASIC'
,p_display_order=>610
,p_column_identifier=>'BL'
,p_column_label=>'Percent Basic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307628078217288614)
,p_db_column_name=>'PERCENT_OPTION'
,p_display_order=>620
,p_column_identifier=>'BM'
,p_column_label=>'Percent Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8500375073079954526)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16862810'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:ADMIN_PERCENTAGE:REMARKS:EMPLOYEE_COMPUTE_GROSS:SEPARATED_EMPLOYMENT_EMPLOYMENT_CLASS:PAYMENT_TYPE:INCOME_PENSIONABLE:EMP_ID:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:MACHINE_INSERT:EXPENSE_ID:EXPENSE_LKID:EMPLOYEE_ID:EMPLOYEE_FULLNA'
||'ME:EMP_COMPANY_NO:DATESTART:DISCIPLINE_ID:DEDUCT_AMOUNT_BORROWED:AMOUNT_OWING:INTEREST_TYPE:INTEREST_RATE:PERIOD:DATE_CLOSE:CLOSED_BY:DEDUCTION_AMOUNT:APPROVED_BY:APPROVED_DATE:DEDUCTION_NO:PREVIOUS_START_DATE:CLOSING_EARNING_PERIOD:CURRENT_BALANCE:D'
||'EDUCTION_TYPE:HOURLY_RATE:FOR_PRV_YTD_ENTRY:VERIFIED_BY:VERIFIED_DATE:MACHINE_UPDATE:TRANSACTION_TYPE_ID:STATUS:PERCENT_BASIC:PERCENT_OPTION'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9878638640758619846)
,p_plug_name=>'Targeted Deductions '
,p_parent_plug_id=>wwv_flow_imp.id(8495592098487038714)
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x."ID", x.PAYMENT_TYPE,',
'    "EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'    x."EMP_ID",x."EMP_ID" employee_id,',
'     initcap((select full_name from hr_rcm_employee where id = x.emp_id)) Employee_fullname,',
'         initcap((select employment_class from hr_rcm_employee where id = x.emp_id)) Employment_class,',
'    initcap((select decode(employment_status, ''IN-ACTIVE'',''SEPARATED'',employment_status) from hr_rcm_employee where id = x.emp_id )) Employment_status,',
'    initcap((select emp_company_no from hr_rcm_employee where id = x.emp_id )) emp_company_no,',
'    "DATESTART",',
'    "DISCIPLINE_ID",',
'    "DEDUCT_STATUS",',
'    "AMOUNT_BORROWED",',
'    "AMOUNT_OWING",',
'    "INTEREST_TYPE",',
'    "INTEREST_RATE",',
'    "PERIOD",',
'    "DATE_CLOSE",',
'    "CLOSED_BY",',
'    "DEDUCTION_AMOUNT",',
'    "APPROVED_BY",',
'    "APPROVED_DATE",',
'    "DEDUCTION_NO",',
'    x."REMARKS",',
'    "PREVIOUS_START_DATE",',
'    "CLOSING_EARNING_PERIOD",',
'    "CURRENT_BALANCE",',
'    "DEDUCTION_TYPE",',
'    x."HOURLY_RATE",',
'    "FOR_PRV_YTD_ENTRY",',
'    x."ENTERED_BY",',
'    x."ENTRY_DATE",',
'    x."VERIFIED_BY",',
'    x."VERIFIED_DATE",',
'    x."LAST_CHANGED_BY",',
'    x."LAST_CHANGED_DATE",',
'    x."MACHINE_INSERT",',
'    x."MACHINE_UPDATE",',
'    x."TRANSACTION_TYPE_ID",',
'    x."STATUS",',
'    x.percent_basic',
'   ,x.percent_option',
'    from "PA_PCF_ADMINDEDUCTION" x ',
'     join pa_pcf_earningperiod j on ',
'                    ( j.employment_class_id = x.employment_class_id ',
'                    AND j.payment_type = x.payment_type ',
'                    AND j.org_id = x.org_id',
'                    and j.compute_gross = x.compute_gross)',
'    where exists ( ',
'                  select 1',
'                  FROM VW_USERACCESS A',
'                  where X.org_id=a.org_id',
'                  and X.employment_class_id=a.employment_class_id',
'                  and upper(X.payment_type)=a.payment_type',
'                ',
'                  )',
'                AND ',
'                (  (datestart between j.start_date and j.end_date and date_close is null and UPPER(deduct_status)=''IP'') ',
'                or (date_close between j.start_date and j.end_date and datestart <= j.start_date)',
'                or (datestart between j.start_date and j.end_date and date_close between j.start_date and j.end_date )',
'                or (datestart <= j.start_date and date_close is null and UPPER(deduct_status)=''IP'')',
'',
'              --Earningprd between allowance start and end date  ',
'                or (j.start_date between datestart and date_close and j.end_date >= date_close) ',
'                or (j.end_date between datestart and date_close and j.start_date <= datestart)',
'                or (j.start_date between datestart and date_close and j.end_date between datestart and date_close )',
'                or (j.start_date >= datestart and date_close is null and UPPER(deduct_status)=''IP'')',
'                )',
'            and UPPER(deduct_status)!=''SP''',
'            and deduction_no!=''0''',
'            and datestart <= j.end_date',
'            and for_prv_ytd_entry = 0',
'            and upper(deduction_payroll) = upper(j.earnings_type)',
'          --  and deduction_amount >0',
'            and x.VERIFIED_BY is not null    ',
'            and j.id = :P1350_EARNINGS_PERIOD_ID',
'            and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
'            and x.emp_id =nvl(:P1350_EMPLOYEE,x.emp_id)',
'            and upper(trim(DEDUCTION_TYPE)) = nvl(:P1350_DEDUCTION_TYPE, upper(trim(DEDUCTION_TYPE)))',
'            and exists (select 1',
'                        from pa_pcf_payroll_emp w',
'                        where w.emp_id = x.emp_id',
'                        and w.earnings_period_id = :P1350_EARNINGS_PERIOD_ID)',
'',
'',
'      ',
'',
'',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID,P1350_DEDUCTION_TYPE,P1350_EMPLOYEE'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9878638418690619844)
,p_name=>'Listing of Employee Non Statutory Deductions'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.::P1297_ID,P1297_LOAD,P1297_POST_EARN:#ID#,1296,0'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159470688545770)
,p_owner=>'PUR_INV'
,p_internal_uid=>9350805869159751409
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307646017973288645)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307645597460288644)
,p_db_column_name=>'EXPENSE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Expense'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EXPENSE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854449879706782237)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307645177819288643)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410127367718012)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307644814382288643)
,p_db_column_name=>'DATESTART'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATESTART'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307644397775288642)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307643944150288640)
,p_db_column_name=>'AMOUNT_BORROWED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Amount Borrowed'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_BORROWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307643595743288640)
,p_db_column_name=>'AMOUNT_OWING'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Amt Owing'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT_OWING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307643146112288639)
,p_db_column_name=>'INTEREST_RATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Interest Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307642837205288638)
,p_db_column_name=>'PERIOD'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307642440355288638)
,p_db_column_name=>'DATE_CLOSE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Close'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CLOSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307642021296288637)
,p_db_column_name=>'DEDUCTION_AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Installment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307641618476288636)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307641160961288636)
,p_db_column_name=>'PREVIOUS_START_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Previous Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PREVIOUS_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307640775877288635)
,p_db_column_name=>'CLOSING_EARNING_PERIOD'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Closing Earning Period'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSING_EARNING_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307640435752288635)
,p_db_column_name=>'CURRENT_BALANCE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Curr Bal'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_tz_dependent=>'N'
,p_static_id=>'CURRENT_BALANCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307639970370288634)
,p_db_column_name=>'DEDUCTION_TYPE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Deduction Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307639627113288633)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'HOURLY_RATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307639187828288633)
,p_db_column_name=>'FOR_PRV_YTD_ENTRY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'For Prv Ytd Entry'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'FOR_PRV_YTD_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307638788914288632)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307638409227288632)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307638007198288631)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307637544587288631)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307637148279288630)
,p_db_column_name=>'STATUS'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307636778643288630)
,p_db_column_name=>'DEDUCT_STATUS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Deduction Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DEDUCT_STATUS'
,p_rpt_named_lov=>wwv_flow_imp.id(3854449565208782237)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307636397818288629)
,p_db_column_name=>'INTEREST_TYPE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Interest Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INTEREST_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307635972320288628)
,p_db_column_name=>'CLOSED_BY'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Closed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLOSED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307635638156288627)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307635240701288626)
,p_db_column_name=>'DEDUCTION_NO'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Deduct No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_static_id=>'DEDUCTION_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307634800307288626)
,p_db_column_name=>'REMARKS'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307634393045288625)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>41
,p_column_identifier=>'AO'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307633962033288624)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>42
,p_column_identifier=>'AP'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307633625754288624)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>43
,p_column_identifier=>'AQ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307633228942288623)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>44
,p_column_identifier=>'AR'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307632830591288622)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>45
,p_column_identifier=>'AS'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307631949172288621)
,p_db_column_name=>'EXPENSE_LKID'
,p_display_order=>55
,p_column_identifier=>'AT'
,p_column_label=>'Expense Lkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307632366641288622)
,p_db_column_name=>'EMPLOYEE_ID'
,p_display_order=>65
,p_column_identifier=>'AU'
,p_column_label=>'Employee Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307629992076288619)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>75
,p_column_identifier=>'AV'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307629151696288618)
,p_db_column_name=>'PERCENT_BASIC'
,p_display_order=>85
,p_column_identifier=>'AW'
,p_column_label=>'Percent Basic'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307629611089288618)
,p_db_column_name=>'PERCENT_OPTION'
,p_display_order=>95
,p_column_identifier=>'AX'
,p_column_label=>'Percent Option'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307630377367288619)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>105
,p_column_identifier=>'AY'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307630759293288620)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>115
,p_column_identifier=>'AZ'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307631180537288620)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>125
,p_column_identifier=>'BA'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307631600599288621)
,p_db_column_name=>'EMPLOYEE_FULLNAME'
,p_display_order=>135
,p_column_identifier=>'BB'
,p_column_label=>'Employee Fullname'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9820341182497459497)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee Active Deductions'
,p_report_seq=>10
,p_report_alias=>'16862989'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EMP_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:DEDUCTION_TYPE:0:0:0:0'
,p_sum_columns_on_break=>'DEDUCTION_AMOUNT'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(574775873693057620)
,p_report_id=>wwv_flow_imp.id(9820341182497459497)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9878634640336619035)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16862997'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_COMPANY_NO:EMPLOYEE_FULLNAME:EMPLOYMENT_CLASS:EMPLOYMENT_STATUS:EXPENSE_ID:DEDUCTION_TYPE:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:PAYMENT_TYPE:PERCENT_BASIC:PERCENT_OPTION:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9907807539727719938)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'16863001'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:EXPENSE_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:DEDUCTION_TYPE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(574776934634057618)
,p_report_id=>wwv_flow_imp.id(9907807539727719938)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMP_ID" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9960924040612959711)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Deductions'
,p_report_seq=>10
,p_report_alias=>'16863009'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EXPENSE_ID:DEDUCTION_TYPE:EMP_ID:DATESTART:AMOUNT_OWING:DEDUCTION_AMOUNT:CURRENT_BALANCE:DEDUCTION_NO:DEDUCT_STATUS:PERIOD:DATE_CLOSE:'
,p_sort_column_1=>'EMP_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
,p_break_enabled_on=>'EXPENSE_ID:DEDUCTION_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(574777595611057617)
,p_report_id=>wwv_flow_imp.id(9960924040612959711)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8554579457771222005)
,p_plug_name=>'Logs'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8554579570118222006)
,p_plug_name=>'Errors'
,p_parent_plug_id=>wwv_flow_imp.id(8554579457771222005)
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id  as ERROR_ID,',
'     ERROR_CODE as ORA_ERROR_CODE,',
'     ERROR_message as ORA_DESCRIPTION,',
'     ERROR_MESSAGE_DEV as APP_DESCRIPTION,',
'     CREATED_BY as CREATED_BY,',
'     CREATED_ON as CREATION_DATE,',
'     MODULE as MODULE_NAME,',
'    PROCEDURE_NAME,',
'    PACKAGE_NAME,',
'    EARNINGS_PERIOD_ID,',
'    ip_address, CLIENT_MACHINE,',
'    BACKTRACE',
' from ERROR_LOG ',
' where  org_id=:APP_ORG_ID',
' AND EARNINGS_PERIOD_ID = :P1350_EARNINGS_PERIOD_ID',
' and upper(PACKAGE_NAME) LIKE ''%HR_EXPORT_TO_PAYROLL%''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(8554579861957222009)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'RLANGFORD'
,p_internal_uid=>8026747312426353574
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307685302582288715)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Ern Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307685733116288716)
,p_db_column_name=>'ERROR_ID'
,p_display_order=>40
,p_column_identifier=>'U'
,p_column_label=>'Error Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307686063068288717)
,p_db_column_name=>'ORA_ERROR_CODE'
,p_display_order=>50
,p_column_identifier=>'V'
,p_column_label=>'Ora Error Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307686514879288718)
,p_db_column_name=>'ORA_DESCRIPTION'
,p_display_order=>60
,p_column_identifier=>'W'
,p_column_label=>'Ora Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307686911547288718)
,p_db_column_name=>'APP_DESCRIPTION'
,p_display_order=>70
,p_column_identifier=>'X'
,p_column_label=>'App Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307687343465288718)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'Y'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307687650365288719)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>90
,p_column_identifier=>'Z'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307688122007288719)
,p_db_column_name=>'MODULE_NAME'
,p_display_order=>100
,p_column_identifier=>'AA'
,p_column_label=>'Module Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307688501275288720)
,p_db_column_name=>'PROCEDURE_NAME'
,p_display_order=>110
,p_column_identifier=>'AB'
,p_column_label=>'Procedure Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307688851031288720)
,p_db_column_name=>'PACKAGE_NAME'
,p_display_order=>120
,p_column_identifier=>'AC'
,p_column_label=>'Package Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307689261743288721)
,p_db_column_name=>'IP_ADDRESS'
,p_display_order=>130
,p_column_identifier=>'AD'
,p_column_label=>'Ip Address'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307689652164288721)
,p_db_column_name=>'CLIENT_MACHINE'
,p_display_order=>140
,p_column_identifier=>'AE'
,p_column_label=>'Client Machine'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307690085793288722)
,p_db_column_name=>'BACKTRACE'
,p_display_order=>150
,p_column_identifier=>'AF'
,p_column_label=>'Backtrace'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(8556744391183953483)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16863430'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EARNINGS_PERIOD_ID:ERROR_ID:ORA_ERROR_CODE:ORA_DESCRIPTION:APP_DESCRIPTION:CREATED_BY:CREATION_DATE:MODULE_NAME:PROCEDURE_NAME:PACKAGE_NAME:IP_ADDRESS:CLIENT_MACHINE:BACKTRACE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9774395019752699025)
,p_plug_name=>'Import Process'
,p_parent_plug_id=>wwv_flow_imp.id(8554579457771222005)
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID ,',
'    PROCESS_TYPE,',
'    PROCESS_NAME ,',
'    EMP_ID ,',
'    MESSAGE,',
'    LOG_DATE ,',
'    AFFECTED_TABLE,',
'    EARNINGS_PERIOD_ID ,',
'    EXECTIME_STAMP ,',
'    PAYROLL_RUN_NUMBER ,',
'    MACHINE_INSERT ,',
'    MACHINE_UPDATE,',
'    ENTERED_BY ,',
'    ENTRY_DATE,',
'    LAST_CHANGED_BY ,',
'    LAST_CHANGED_DATE ,',
'    PROCESS_ID ,rec_count, process_start, process_end,TIME_ELAPSE',
' from HR_APU_PROCESSFEEDBACKLOG ',
'where org_id=:APP_ORG_ID',
'and earnings_period_id=:P1350_EARNINGS_PERIOD_ID',
'AND upper(PROCESS_TYPE) =''HR EXPORT TO PAYROLL'''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9774394923663699025)
,p_name=>'Report 1'
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
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>9246562374132830590
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307675778044288704)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Ern Prd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307676211851288705)
,p_db_column_name=>'ID'
,p_display_order=>19
,p_column_identifier=>'J'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307676633767288705)
,p_db_column_name=>'PROCESS_TYPE'
,p_display_order=>29
,p_column_identifier=>'K'
,p_column_label=>'Process Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307676961944288706)
,p_db_column_name=>'PROCESS_NAME'
,p_display_order=>39
,p_column_identifier=>'L'
,p_column_label=>'Process Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307677384524288706)
,p_db_column_name=>'EMP_ID'
,p_display_order=>49
,p_column_identifier=>'M'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307677832096288707)
,p_db_column_name=>'MESSAGE'
,p_display_order=>59
,p_column_identifier=>'N'
,p_column_label=>'Message'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307678157254288707)
,p_db_column_name=>'LOG_DATE'
,p_display_order=>69
,p_column_identifier=>'O'
,p_column_label=>'Log Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307678629461288708)
,p_db_column_name=>'AFFECTED_TABLE'
,p_display_order=>79
,p_column_identifier=>'P'
,p_column_label=>'Affected Table'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307678953563288708)
,p_db_column_name=>'EXECTIME_STAMP'
,p_display_order=>89
,p_column_identifier=>'Q'
,p_column_label=>'Exectime Stamp'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307679352450288708)
,p_db_column_name=>'PAYROLL_RUN_NUMBER'
,p_display_order=>99
,p_column_identifier=>'R'
,p_column_label=>'Payroll Run Number'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307679785439288709)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>109
,p_column_identifier=>'S'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307680219327288709)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>119
,p_column_identifier=>'T'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307680632123288710)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>129
,p_column_identifier=>'U'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307681041114288710)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>139
,p_column_identifier=>'V'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307681436289288710)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>149
,p_column_identifier=>'W'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307681780940288711)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>159
,p_column_identifier=>'X'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307682213665288711)
,p_db_column_name=>'PROCESS_ID'
,p_display_order=>169
,p_column_identifier=>'Y'
,p_column_label=>'Process Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307682639712288712)
,p_db_column_name=>'REC_COUNT'
,p_display_order=>179
,p_column_identifier=>'Z'
,p_column_label=>'Rec Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307682952598288712)
,p_db_column_name=>'PROCESS_START'
,p_display_order=>189
,p_column_identifier=>'AA'
,p_column_label=>'Process Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307683412146288713)
,p_db_column_name=>'PROCESS_END'
,p_display_order=>199
,p_column_identifier=>'AB'
,p_column_label=>'Process End'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(532010246427795105)
,p_db_column_name=>'TIME_ELAPSE'
,p_display_order=>209
,p_column_identifier=>'AC'
,p_column_label=>'Time Elapse'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9774393616483695309)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16863363'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'PROCESS_NAME:MESSAGE:LOG_DATE:AFFECTED_TABLE:EXECTIME_STAMP:LAST_CHANGED_BY:LAST_CHANGED_DATE:PROCESS_START:PROCESS_END:TIME_ELAPSE:REC_COUNT:'
,p_sort_column_1=>'PROCESS_START'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'PROCESS_NAME'
,p_sort_direction_2=>'ASC'
,p_sum_columns_on_break=>'TIME_ELAPSE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9872236964142212934)
,p_plug_name=>'HR Incomes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.ID,',
'       EMP_ID, a.id pkey,',
'       first_name, surname,',
'       EMPENT_ID,income_code_id,original_AMOUNT_PAID,',
'       EARNINGS_PERIOD_ID,',
'       SOURCE_NAME,',
'       SOURCE_ID,',
'       QUANTITY,',
'       AMOUNT_PAID,',
'       START_PERIOD_PAID,',
'       END_PERIOD_PAID,',
'       PAY_STATUS,',
'       initcap(UNIT_TYPE) UNIT_TYPE,',
'       UNIT_AMOUNT,',
'       a.ENTERED_BY,',
'       a.ENTRY_DATE,',
'       a.LAST_CHANGED_DATE,',
'      a. LAST_CHANGED_BY,',
'       a.REMARKS,',
'       STD_DETAIL_KEY,',
'       INCREASE_ID,',
'       PAYROLL_LAST_CHANGE_BY,',
'       PAYROLL_LAST_CHANGE_DATE,a.orgdtl_id,',
'       record_count',
'from PA_PCF_ADHOCPAYMENT_HR a join hr_rcm_employee empl on empl.id = a.emp_id',
'join hr_rcm_individual ind on ind.id = empl.ind_id',
'where  EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'and nvl(source_name,''null'') = nvl(:P1350_IMPORT_HR_INCOMES, nvl(source_name,''null''))',
'and not exists (select 1',
'                from PA_PCF_ADHOCPAYMENT b',
'                where a.EMPENT_ID = b.EMPENT_ID',
'                and  b.EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'                )',
'and a.orgdtl_id =nvl(:P1350_ORGDTL_ID,a.orgdtl_id)                '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_EMPLOYEE,P1350_IMPORT_HR_INCOMES,P1350_ORGDTL_ID'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(605128017811050409)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>320
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
 p_id=>wwv_flow_imp.id(605128079975050410)
,p_name=>'SURNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SURNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Surname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>330
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(5598271286720186325)
,p_name=>'ORIGINAL_AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORIGINAL_AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Orig Amt'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>310
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(9987264839891441949)
,p_name=>'PAYROLL_LAST_CHANGE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_LAST_CHANGE_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Payroll Last Change Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987264869336441950)
,p_name=>'PAYROLL_LAST_CHANGE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_LAST_CHANGE_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Payroll Last Change By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265053916441951)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Increase Id'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265124302441952)
,p_name=>'STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STD_DETAIL_KEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Std Detail Key'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265246458441953)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(9987265306721441954)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265410848441955)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265478537441956)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265626290441957)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
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
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265684091441958)
,p_name=>'UNIT_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Unit Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265767887441959)
,p_name=>'UNIT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Unit Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987265893381441960)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Pay Status'
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
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266039769441961)
,p_name=>'END_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'End Period Paid'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266107262441962)
,p_name=>'START_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Start Period Paid'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266238819441963)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(9987266280537441964)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>false
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266380129441965)
,p_name=>'SOURCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOURCE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266506260441966)
,p_name=>'SOURCE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOURCE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'HR Transaction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3722061676564217282)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266565091441967)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266750141441968)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:&EMPENT_ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>false
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266778844441969)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854410127367718012)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
,p_readonly_condition_type=>'ALWAYS'
,p_readonly_for_each_row=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9987266907261441970)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10120725194649001741)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Department'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854315722757558986)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10120725207896001742)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854380898807666791)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10221046293512575233)
,p_name=>'RECORD_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rec Count'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>290
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(10221047481903575245)
,p_name=>'link'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.:222:P222_EMP_ID,P222_EARNINGS_PERIOD_ID,P222_INCOME_CODE,P222_FLAG:&EMP_ID.,&P1350_EARNINGS_PERIOD_ID.,&INCOME_CODE_ID.,&SOURCE_NAME.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10964668706679873380)
,p_name=>'PKEY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PKEY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Pkey'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>300
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10964668780181873381)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10964668922957873382)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9987267015994441971)
,p_internal_uid=>9459434466463573536
,p_is_editable=>true
,p_edit_operations=>'u:d'
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
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9985946145408050984)
,p_interactive_grid_id=>wwv_flow_imp.id(9987267015994441971)
,p_static_id=>'18161'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9985946011089050984)
,p_report_id=>wwv_flow_imp.id(9985946145408050984)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(610378437024892077)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(605128017811050409)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(610379344859892086)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(605128079975050410)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5598563224471674399)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(5598271286720186325)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985935151443050947)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(9987264839891441949)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985935495140050949)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(9987264869336441950)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985936056763050950)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(9987265053916441951)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985936514716050952)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(9987265124302441952)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985937033653050953)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(9987265246458441953)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985937480744050955)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(9987265306721441954)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985938018701050956)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(9987265410848441955)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985938521070050958)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(9987265478537441956)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985939056092050959)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(9987265626290441957)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985939561243050961)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(9987265684091441958)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985939963127050962)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9987265767887441959)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985940505218050964)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(9987265893381441960)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985940988799050965)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(9987266039769441961)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985941493403050967)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(9987266107262441962)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985941996086050968)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(9987266238819441963)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>109
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985942519519050969)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9987266280537441964)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985943037650050971)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9987266380129441965)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985943496418050972)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9987266506260441966)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>186
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985944046111050974)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9987266565091441967)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985944503125050975)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9987266750141441968)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985944983570050977)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9987266778844441969)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>296
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9985945492809050981)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9987266907261441970)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10097678109310604059)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(10120725194649001741)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10215022079595002847)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10221046293512575233)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10218338487406927534)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10221047481903575245)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10236966561445890000)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10120725207896001742)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>174
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10995638297085093955)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(10964668706679873380)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10996563666144594847)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10964668780181873381)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64.9922
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(527832583025848823)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(5598271286720186325)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(10236966563590944385)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_tooltip=>'Totals'
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(9987266238819441963)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(10236969783907958571)
,p_view_id=>wwv_flow_imp.id(9985946011089050984)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(9987266280537441964)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9872906054807461518)
,p_plug_name=>'Import/Display New HR Data for Payroll Specific to Period Selected'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent5:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9878982601961831261)
,p_plug_name=>'Posted Income'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PA_PCF_ADHOCPAYMENT.ID as ID,',
'    PA_PCF_ADHOCPAYMENT.orgdtl_id,',
'    PA_PCF_ADHOCPAYMENT.EMP_ID as EMP_ID,',
'    ind.first_name, ind.surname,',
'    PA_PCF_ADHOCPAYMENT.EMPENT_ID as EMPENT_ID,',
'    PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID as EARNINGS_PERIOD_ID,',
'    PA_PCF_ADHOCPAYMENT.QUANTITY as QUANTITY,',
'    PA_PCF_ADHOCPAYMENT.RATE as RATE,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID as AMOUNT_PAID,',
'    PA_PCF_ADHOCPAYMENT.START_PERIOD_PAID as START_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.END_PERIOD_PAID as END_PERIOD_PAID,',
'    PA_PCF_ADHOCPAYMENT.PAY_STATUS as PAY_STATUS,',
'    PA_PCF_ADHOCPAYMENT.AMOUNT_PAID_INC as AMOUNT_PAID_INC,',
'    PA_PCF_ADHOCPAYMENT.INCREASE_ID as INCREASE_ID,',
'    PA_PCF_ADHOCPAYMENT.BACKUP_EARN_PRD as BACKUP_EARN_PRD,',
'    PA_PCF_ADHOCPAYMENT.PAY_OPTION as PAY_OPTION,',
'    PA_PCF_ADHOCPAYMENT.IS_SUPPLEMENTAL as IS_SUPPLEMENTAL,',
'    PA_PCF_ADHOCPAYMENT.ENTERED_BY as ENTERED_BY,',
'    PA_PCF_ADHOCPAYMENT.ENTRY_DATE as ENTRY_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    PA_PCF_ADHOCPAYMENT.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    PA_PCF_ADHOCPAYMENT.MACHINE_INSERT as MACHINE_INSERT,',
'    BY_PASS_COMPUTATION, ',
'   PA_PCF_ADHOCPAYMENT.REMARKS, ',
'    PA_PCF_ADHOCPAYMENT.EMPENT_ID ENT_LINK, PA_PCF_ADHOCPAYMENT.EMP_ID EMP_LINK',
'from PA_PCF_ADHOCPAYMENT PA_PCF_ADHOCPAYMENT join PA_PCF_EARNINGPERIOD V ON V.ID=PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID',
'join hr_rcm_employee empl on empl.id = PA_PCF_ADHOCPAYMENT.emp_id',
'join hr_rcm_individual ind on ind.id = empl.ind_id',
'where  PA_PCF_ADHOCPAYMENT.EARNINGS_PERIOD_ID=:P1350_EARNINGS_PERIOD_ID',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=upper(a.payment_type)',
'           )',
'and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'and PA_PCF_ADHOCPAYMENT.orgdtl_id =nvl(:P1350_ORGDTL_ID,PA_PCF_ADHOCPAYMENT.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_EMPLOYEE,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Posted Income'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(605128227239050411)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>280
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
 p_id=>wwv_flow_imp.id(605128306703050412)
,p_name=>'SURNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SURNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Surname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>290
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9666921804627867714)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>270
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854315722757558986)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9899004145461239674)
,p_name=>'EMP_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Employee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>260
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID:&ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9899004275672239675)
,p_name=>'ENT_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENT_LINK'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>'Entitlement'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>250
,p_value_alignment=>'RIGHT'
,p_link_target=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:&ENT_LINK.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9899004335191239676)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(9899004463457239677)
,p_name=>'BY_PASS_COMPUTATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BY_PASS_COMPUTATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'By Pass Computation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(9899004580060239678)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(9899004662961239679)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9899004737103239680)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9899004839549239681)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9899004994845239682)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9899005057814239683)
,p_name=>'IS_SUPPLEMENTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_SUPPLEMENTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Is Supplemental'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(9899005196723239684)
,p_name=>'PAY_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(9899005291545239685)
,p_name=>'BACKUP_EARN_PRD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BACKUP_EARN_PRD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Backup Earn Prd'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(9899005329071239686)
,p_name=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCREASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Increase Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>140
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(9899005432017239687)
,p_name=>'AMOUNT_PAID_INC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID_INC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid Inc'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(9899005525980239688)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>1
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
 p_id=>wwv_flow_imp.id(9899005686147239689)
,p_name=>'END_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Period Paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9899005717006239690)
,p_name=>'START_PERIOD_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_PERIOD_PAID'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Period Paid'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
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
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(9899005847791239691)
,p_name=>'AMOUNT_PAID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_PAID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Paid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(9899208127736402642)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(9899208269992402643)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(9899208398276402644)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Earnings Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854414658122718020)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9899208468059402645)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854407904010718010)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9899208514873402646)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854410127367718012)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9899208844272402649)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Edit'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>10
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_link_target=>'f?p=&APP_ID.:1298:&SESSION.::&DEBUG.:1298:P1298_ID:&ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(9899208919661402650)
,p_internal_uid=>9371376370130534215
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9898999936099238519)
,p_interactive_grid_id=>wwv_flow_imp.id(9899208919661402650)
,p_static_id=>'750764'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9898999722889238519)
,p_report_id=>wwv_flow_imp.id(9898999936099238519)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(610382352560917081)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(605128227239050411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(610383231256917086)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(605128306703050412)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9669199926554849956)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(9666921804627867714)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898976799080238457)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(9899004145461239674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898977662156238459)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(9899004275672239675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898978537218238461)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(9899004335191239676)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898979486561238463)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(9899004463457239677)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898980394670238466)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(9899004580060239678)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898981273603238468)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(9899004662961239679)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898982112334238470)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(9899004737103239680)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898983046256238473)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(9899004839549239681)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898983908924238475)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(9899004994845239682)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898984821782238478)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(9899005057814239683)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898985729763238480)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(9899005196723239684)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898986672688238482)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(9899005291545239685)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898987592420238485)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9899005329071239686)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898988411421238487)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(9899005432017239687)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898989340340238489)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9899005525980239688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898990297196238492)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9899005686147239689)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898991185796238494)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9899005717006239690)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898992061587238497)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9899005847791239691)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898992940229238499)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9899208127736402642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898993906855238502)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9899208269992402643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74.75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898994719282238505)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9899208398276402644)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>157.25
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898995622960238507)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9899208468059402645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898996510680238510)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(9899208514873402646)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9898999224184238518)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9899208844272402649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(9974075914278991591)
,p_view_id=>wwv_flow_imp.id(9898999722889238519)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(9899005847791239691)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9986251053807009954)
,p_interactive_grid_id=>wwv_flow_imp.id(9899208919661402650)
,p_name=>'Departmental'
,p_static_id=>'872523'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9986250840597009954)
,p_report_id=>wwv_flow_imp.id(9986251053807009954)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9756451044262621391)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(9666921804627867714)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986227916788009892)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(9899004145461239674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986228779864009894)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(9899004275672239675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986229654926009896)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(9899004335191239676)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986230604269009898)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(9899004463457239677)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986231512378009901)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(9899004580060239678)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986232391311009903)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(9899004662961239679)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986233230042009905)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(9899004737103239680)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986234163964009908)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(9899004839549239681)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986235026632009910)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(9899004994845239682)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986235939490009913)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(9899005057814239683)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986236847471009915)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(9899005196723239684)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986237790396009917)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(9899005291545239685)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986238710128009920)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(9899005329071239686)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986239529129009922)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(9899005432017239687)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986240458048009924)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(9899005525980239688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986241414904009927)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(9899005686147239689)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>140
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986242303504009929)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(9899005717006239690)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986243179295009932)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(9899005847791239691)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986244057937009934)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(9899208127736402642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>61
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986245024563009937)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9899208269992402643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986245836990009940)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(9899208398276402644)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986246740668009942)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(9899208468059402645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>149
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986247628388009945)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9899208514873402646)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9986250341892009953)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(9899208844272402649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(10061327031986763026)
,p_view_id=>wwv_flow_imp.id(9986250840597009954)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(9899005847791239691)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9915661302101621271)
,p_plug_name=>'Entitlements Changes'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9915238274922968398)
,p_plug_name=>'New Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(9915661302101621271)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, HR_RCM_EMPENTITLE.ID as pkID, ',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE, amount,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY, income_status, pensionable,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,  ',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    v.employee_status,',
'        v.compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        v.employment_status,',
'        v.employment_class,',
'        v.payment_type,',
'        wklocation_id,',
'   pkg_global_fnts.fn_proratesys( emp_id , amount , x.start_date , x.end_date , HR_RCM_EMPENTITLE.start_date , HR_RCM_EMPENTITLE.end_date , HR_RCM_EMPENTITLE.PRORATION_DAYS ) Amount_Paid',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
' join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type',
'              )          ',
'and x.id = :P1350_EARNINGS_PERIOD_ID',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
'and HR_RCM_EMPENTITLE.start_date BETWEEN X.START_PAID_FOR AND X.END_DATE',
'and exists (select 1',
'            from pa_pcf_payroll_emp x',
'            where v.id = x.emp_id',
'            and x.earnings_period_id = :P1350_EARNINGS_PERIOD_ID)',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9915238540326968400)
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
,p_owner=>'GPL'
,p_internal_uid=>9387405990796099965
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307787283698288875)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307787689617288875)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307788141743288876)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307788525128288876)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307788878358288877)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307789278005288877)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854181035973426433)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307789743206288878)
,p_db_column_name=>'PKID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307790097860288878)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307790537817288879)
,p_db_column_name=>'EMP_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307790886614288880)
,p_db_column_name=>'START_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307791262113288880)
,p_db_column_name=>'END_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307791644581288881)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307792130539288881)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307792445149288882)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307792869865288883)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
end;
/
begin
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307793284961288883)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307793741116288884)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307794135474288884)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854380898807666791)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307794533195288885)
,p_db_column_name=>'TAXABLE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307794936177288885)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Nis Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307795324522288886)
,p_db_column_name=>'AMOUNT'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307795686589288886)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307796072045288887)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307796529154288888)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307796876026288888)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307797337584288889)
,p_db_column_name=>'REMARKS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307797666659288889)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307798068623288890)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307798542091288891)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307798937397288891)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307799313260288892)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307799677672288892)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307800077697288893)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9915658875619558297)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16864530'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:AMOUNT_PAID:ADMIN_STATUS:START_DATE:ENTRY_DATE:QUICK_ENTRY:INCOME_STATUS:PENSIONABLE:'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9915645350917554284)
,p_plug_name=>'Stopped Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(9915661302101621271)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, HR_RCM_EMPENTITLE.ID as pkID, ',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE, amount,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY, income_status, pensionable,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    HR_RCM_EMPENTITLE.START_DATE as START_DATE,',
'    HR_RCM_EMPENTITLE.END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,  ',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    v.employee_status,',
'        v.compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        v.employment_status,',
'        v.employment_class,',
'        v.payment_type,',
'        wklocation_id,',
'   pkg_global_fnts.fn_proratesys( emp_id , amount , x.start_date , x.end_date , HR_RCM_EMPENTITLE.start_date , HR_RCM_EMPENTITLE.end_date , HR_RCM_EMPENTITLE.PRORATION_DAYS ) Amount_Paid',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
' join pa_pcf_earningperiod x on ',
'            ( x.employment_class_id = v.employment_class_id ',
'            AND x.payment_type = v.payment_type ',
'            AND x.org_id = v.org_id',
'            and x.compute_gross = v.compute_gross)',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type         ',
'              )        ',
'and HR_RCM_EMPENTITLE.end_date between x.start_paid_for and x.end_date',
'and x.id = :P1350_EARNINGS_PERIOD_ID',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9915645479205554286)
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
,p_owner=>'GPL'
,p_internal_uid=>9387812929674685851
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307801551260288896)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307802010161288897)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307802346799288897)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307802771685288898)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307803183447288898)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307803640765288899)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307803958744288899)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307804364302288900)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307804836371288900)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307805239623288901)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307805632948288902)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307805967422288902)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307806397288288903)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854181035973426433)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307806770609288903)
,p_db_column_name=>'PKID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307807172365288904)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307807606440288904)
,p_db_column_name=>'EMP_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307808003534288905)
,p_db_column_name=>'START_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307808353702288905)
,p_db_column_name=>'END_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307808770700288906)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307809172859288906)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307809581791288907)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307809947473288907)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307810436871288908)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307810824346288909)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307811155206288909)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854380898807666791)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307811555558288910)
,p_db_column_name=>'TAXABLE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307812030232288911)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Nis Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307812415721288912)
,p_db_column_name=>'AMOUNT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307812744216288913)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307813233367288913)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307813624498288914)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307813951071288914)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307814349466288915)
,p_db_column_name=>'REMARKS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9915682076129681640)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16864673'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_ID:INCOME_TYPE:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:AMOUNT_PAID:ADMIN_STATUS:PERCENTAGE:START_DATE:END_DATE:QUICK_ENTRY:INCOME_STATUS:PENSIONABLE:'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10077686924635784166)
,p_plug_name=>'Targeted Additional Remuneration'
,p_parent_plug_id=>wwv_flow_imp.id(9915661302101621271)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.empent_ID as ID, empent_ID as pkID, ',
'b.EMP_ID as EMP_ID,',
'b.INCOME_TYPE as INCOME_TYPE,',
'INCOME_CODE_ID as INCOME_CODE_ID,',
'case when b.TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE, amount,',
'case when b.NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,',
'income_status, pensionable,',
'b.ADMIN_STATUS as ADMIN_STATUS,',
'PERCENTAGE as PERCENTAGE,',
'case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'b.ENT_EFFECTIVE_DATE as START_DATE,',
'b.ENT_EFFECTIVE_END as END_DATE,',
'    b.compute_gross,       ',
'    b.payment_type',
',pkg_global_fnts.fn_proratesys( c.emp_id , amount , earn.start_date , earn.end_date ,b.ENT_EFFECTIVE_DATE , b.eNT_EFFECTIVE_END , b.PRORATION_DAYS ) Amount_Paid',
'--select count(1)',
'from pa_pcf_payroll_emp c join  pa_pcf_earningperiod earn on earn.id = c.earnings_period_id',
'join vw_earnentitle b  on (earn.id = b.earnings_period_id and c.emp_id = b.emp_id)              ',
'join pa_pcf_incomecode D on D.id = b.income_code_id    ',
'where c.earnings_period_id = :P1350_EARNINGS_PERIOD_ID',
'AND (b.ent_effective_end is null or b.ent_effective_end > earn_end_date or ent_effective_end between earn_start_date and earn_end_date)',
'and upper(b.income_payroll) = upper(earn.earnings_type)   ',
'and UPPER(b.income_status) != ''SP''',
'and d.org_id = pkg_global_fnts.fn_shareRefOrg(c.org_id)         ',
'and c.orgdtl_id=nvl(:P1350_ORGDTL_ID, c.orgdtl_id)',
'and c.emp_id = nvl(:P1350_EMPLOYEE,c.emp_id)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID,P1350_EMPLOYEE'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10077687299354784174)
,p_name=>'Search Employee Rules'
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
,p_owner=>'PPLERP'
,p_internal_uid=>9549854749823915739
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307827917888288936)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1285:&SESSION.::&DEBUG.:1285:P1285_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307827534219288936)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307827080167288935)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307826649234288934)
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
 p_id=>wwv_flow_imp.id(2307824295596288931)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307823933663288931)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854380898807666791)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307823530466288930)
,p_db_column_name=>'TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307823115879288929)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Nis Deduction'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307822710032288929)
,p_db_column_name=>'AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307821527730288927)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307821101150288927)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307820305621288925)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307817101466288921)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307819517390288924)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307815889508288918)
,p_db_column_name=>'INCOME_STATUS'
,p_display_order=>120
,p_column_identifier=>'AD'
,p_column_label=>'Income Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307816277260288919)
,p_db_column_name=>'PENSIONABLE'
,p_display_order=>130
,p_column_identifier=>'AE'
,p_column_label=>'Pensionable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854181035973426433)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307828658929288938)
,p_db_column_name=>'PKID'
,p_display_order=>140
,p_column_identifier=>'AF'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307828272749288937)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>150
,p_column_identifier=>'AG'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10077695910177784192)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16864816'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:INCOME_TYPE:ID:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:AMOUNT_PAID:ADMIN_STATUS:PERCENTAGE:START_DATE:END_DATE:QUICK_ENTRY:INCOME_STATUS:PENSIONABLE:PKID'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9915661507987621273)
,p_plug_name=>'Employees Turn Over'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple:t-Form--noPadding'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9915664991834621308)
,p_plug_name=>'Newly Hired Employees'
,p_parent_plug_id=>wwv_flow_imp.id(9915661507987621273)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed, pkg_global_fnts.fn_hourlyrate(b.id, end_date) hourly_rate,',
' pkg_global_fnts.fn_PersonalRate(b.id, end_date) Personal_Rate, date_separated, separated_status',
'from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id and b.EMPLOYMENT_CLASS_ID = v_earn.EMPLOYMENT_CLASS_ID)',
'where b.date_employed between start_paid_for and end_date                                 ',
'and v_earn.id = :P1350_EARNINGS_PERIOD_ID',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
'and exists (select 1',
'            from pa_pcf_payroll_emp x',
'            where b.id = x.emp_id',
'            and x.earnings_period_id = :P1350_EARNINGS_PERIOD_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Newly Hired Employees'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9915665129272621309)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID:#EMP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GPL'
,p_internal_uid=>9387832579741752874
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307649809250288653)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307650232018288653)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307650587157288654)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307650990818288654)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307651416512288655)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307651797322288655)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307652189087288655)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307652616172288656)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307652949926288657)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307653399295288657)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307653822379288658)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854282232860521260)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307654196901288658)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307654569660288659)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3730001999198556470)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307655039390288659)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307655353531288660)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307655753371288660)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307656214214288661)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307656582499288661)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9915768534471238251)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16863095'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:EMP_COMPANY_NO:EMPLOYMENT_STATUS:PAYMENT_TYPE:EMPLOYMENT_CLASS:WKLOCATION_ID:EMPLOYMENT_TYPE_ID:ORG_STRUCTURE:POSITION_ID:DATE_EMPLOYED:HOURLY_RATE:PERSONAL_RATE:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9920523395667241196)
,p_plug_name=>'Newly Separated Employees'
,p_parent_plug_id=>wwv_flow_imp.id(9915661507987621273)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  b.id emp_id,  b.last_changed_by,  b.last_changed_date, b.entered_by, b.entry_date,  b.payment_type , ',
'EMP_COMPANY_NO , EMPLOYMENT_STATUS, EMPLOYMENT_CLASS , ORG_STRUCTURE, "POSITION_ID" , WKLOCATION_ID , ',
'EMPLOYMENT_TYPE_id , date_employed, pkg_global_fnts.fn_hourlyrate(b.id, end_date) hourly_rate,',
' pkg_global_fnts.fn_PersonalRate(b.id, end_date) Personal_Rate, date_separated, separated_status',
'from hr_rcm_individual a join hr_rcm_employee b on a.id = b.ind_id   ',
'join pa_pcf_earningperiod v_earn on (b.compute_gross = v_earn.compute_gross and b.payment_type= v_earn.payment_type and b.org_id = v_earn.org_id and b.EMPLOYMENT_CLASS_ID = v_earn.EMPLOYMENT_CLASS_ID)',
'where b.date_separated between START_PAID_FOR and END_DATE                             ',
'and v_earn.id = :P1350_EARNINGS_PERIOD_ID',
'and orgdtl_id =nvl(:P1350_ORGDTL_ID,orgdtl_id)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Newly Separated Employees'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9920523529838241197)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID:#EMP_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'GPL'
,p_internal_uid=>9392690980307372762
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307657704278288663)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307658124139288663)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307658514121288664)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307658925353288664)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307659271978288664)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307659685616288665)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307660045283288665)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307660479660288666)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307660856072288666)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307661291852288666)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307661695895288667)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854282232860521260)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307662059409288667)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307662537540288668)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3730001999198556470)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307662868932288668)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307663333932288669)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307663726459288669)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307664114260288669)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307664533457288670)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9986107867163744310)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16863174'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:EMP_ID:EMP_COMPANY_NO:EMPLOYMENT_STATUS:WKLOCATION_ID:EMPLOYMENT_TYPE_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:DATE_EMPLOYED:HOURLY_RATE:PERSONAL_RATE:DATE_SEPARATED:SEPARATED_STATUS:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9915661645636621274)
,p_plug_name=>'HR Anomalies'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(472082493343114418)
,p_plug_name=>'Missing Basic Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(9915661645636621274)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from pa_pcf_payroll_emp a',
'where not exists (select 1',
'                  from hr_rcm_empentitle b',
'                  where a.emp_id = b.emp_id                 ',
'                  and income_code_id in (select id from pa_pcf_incomecode where statutory_income=1 and org_id = :APP_ORG_ID)',
'                  and end_date is null',
'                  )',
'and earnings_period_id =:P1350_EARNINGS_PERIOD_ID                ',
'AND  earnings_period_id =:P1350_EARNINGS_PERIOD_ID                 '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(472082615033114419)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID_IND,P1281_ID:#IND_ID#,#EMP_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'APPS'
,p_internal_uid=>61362656733304219
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472082665433114420)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472082855043114421)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472082921099114422)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083006933114423)
,p_db_column_name=>'DOB'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083132633114424)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083211853114425)
,p_db_column_name=>'STANDARD_HOURS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Standard Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083350509114426)
,p_db_column_name=>'STANDARD_DAYS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Standard Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083393296114427)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083511430114428)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083649338114429)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083672868114430)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083799329114431)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472083945489114432)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084011483114433)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084082488114434)
,p_db_column_name=>'BASIC_PERSONAL_RATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Basic Personal Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084197886114435)
,p_db_column_name=>'BASIC_PAY_HOURS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Basic Pay Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084333683114436)
,p_db_column_name=>'NO_PAY_HOURS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'No Pay Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084411273114437)
,p_db_column_name=>'NO_PAY_PERSONAL_RATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'No Pay Personal Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084524919114438)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084616098114439)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084745869114440)
,p_db_column_name=>'NO_OF_PERIODS_WORKED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'No Of Periods Worked'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084846514114441)
,p_db_column_name=>'ORG_ID'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084884540114442)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472084966517114443)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085125710114444)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085237337114445)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085334151114446)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085446278114447)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085537747114448)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085566422114449)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(472085742226114450)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565594544895317901)
,p_db_column_name=>'SURNAME'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565594657676317902)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565594659651317903)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565594793264317904)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Include Payroll'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565594904128317905)
,p_db_column_name=>'SEPARATED_STATUS_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Separated Status Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565594988062317906)
,p_db_column_name=>'IND_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565595156756317907)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Work Unit'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854315722757558986)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(565595207078317908)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Salary Currency'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(565613831726332780)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1548939'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_COMPANY_NO:FIRST_NAME:SURNAME:SEX_CODE:DATE_EMPLOYED:DATE_SEPARATED:EMPLOYMENT_STATUS:PAYROLL_EFFECTIVE:PAYMENT_TYPE:COMPUTE_GROSS:SALARY_CURRENCY:ORGDTL_ID:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8510454706035426516)
,p_plug_name=>'Employee Data'
,p_parent_plug_id=>wwv_flow_imp.id(9915661645636621274)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>9
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  e.full_name||(case when nvl(e.date_separated,current_date) < current_date then ''(Separated)'' else '''' end) as ts_employee,e.date_employed,ts_module,ts_area, ts_issue,ts_identifier, emp_id',
'from (select * from hr_rcm_employee x where x.org_id =:APP_ORG_ID) e',
'join pa_pcf_earningperiod w on (e.payment_type=w.payment_type and e.employment_class_id =w.employment_class_id ',
'                            and e.org_id =w.org_id and e.compute_gross = w.compute_gross)',
'join ',
'(',
'      --check for individual not verified',
'      (select e.id emp_id, to_char(''EMPLOYEE'') as ts_module,to_char(''INDIVIDUAL'') as ts_area, to_char(''NOT VERIFIED'') as ts_issue, to_char(''DATE-EMPLOYED'' ||'' - ''||nvl(to_char(e.date_employed,''YYYY-MON-DD''),''  -  -    '' )) ts_identifier',
'       from Hr_Rcm_employee e',
'       where date_separated is null',
'       and exists ',
'          (select 1 ',
'          from Hr_Rcm_individual i ',
'          where i.id = e.ind_id',
'          and (i.verified_by is null or i.verified_date is null)',
'          )',
'      )',
'      UNION',
'      --check for duplicate national identifiers',
'      (select e.id emp_id, to_char(''EMPLOYEE'') as ts_module,to_char(''INDIVIDUAL'') as ts_area, to_char(''DUPLICATE NATIONAL IDENTIFIER'') as ts_issue, to_char(''DATE-EMPLOYED'' ||'' - ''||nvl(to_char(e.date_employed,''YYYY-MON-DD''),''  -  -    '' )) ts_identif'
||'ier',
'       from Hr_Rcm_employee e',
'       where date_separated is null',
'       and exists ',
'          (select 1 ',
'          from Hr_Rcm_natidentifier ni ',
'          where ni.id = e.ind_id',
'          group by ni.id,upper(id_type),upper(id_number)',
'          having count(1) > 1',
'          )',
'      )',
'      UNION',
'      --check for salary overlap',
'      (select s1.emp_id, to_char(''EMPLOYEE'') as ts_module,to_char(''SALARY'') as ts_area, to_char(''OVERLAP'') as ts_issue, to_char(s1.start_date,''YYYY-MON-DD'') ||'' - ''||nvl(to_char(s1.end_date,''YYYY-MON-DD''),''  -  -    '' ) ts_identifier',
'       from Hr_Rcm_Salary s1',
'       where exists ',
'          (select 1 ',
'          from Hr_Rcm_Salary s2 ',
'          where s2.emp_id = s1.emp_id',
'          and s1.id != s2.id',
'          and',
'                (',
'                s1.start_date between s2.start_date and nvl(s2.end_date,current_date) or',
'                s1.end_date between s2.start_date and nvl(s2.end_date,current_date) or',
'                s2.start_date between s1.start_date and nvl(s1.end_date,current_date) or',
'                s2.end_date between s1.start_date and nvl(s1.end_date,current_date)',
'                )',
'            )',
'        )',
'        UNION',
'        --check for emprule overlap',
'        (select r1.emp_id, to_char(''EMPLOYEE'') as ts_module,to_char(upper(lk.table_description)||'' - ''||upper(lk.table_value)) as ts_area, to_char(''OVERLAP'') as ts_issue, to_char(r1.start_date,''YYYY-MON-DD'')||''-''||nvl(to_char(r1.end_date,''YYYY-MON-DD'
||'''),''  -  -    '' ) ts_identifier',
'          from Hr_Rcm_emprule r1',
'          join hr_hcf_lookup lk on lk.id = r1.rule_option and upper(trim(lk.value_description)) != ''DAY_AVAILABLE''',
'          where exists ',
'          (select 1 ',
'          from Hr_Rcm_emprule r2 ',
'          where r2.emp_id = r1.emp_id',
'          and r2.rule_option = r1.rule_option',
'          and r1.id != r2.id',
'          and',
'                (',
'                r1.start_date between r2.start_date and nvl(r2.end_date,current_date) or',
'                r1.end_date between r2.start_date and nvl(r2.end_date,current_date) or',
'                r2.start_date between r1.start_date and nvl(r1.end_date,current_date) or',
'                r2.end_date between r1.start_date and nvl(r1.end_date,current_date)',
'                )',
'            )',
'        )',
'        UNION',
'        --check for deduction overlap',
'        (select d1.emp_id, to_char(''EMPLOYEE'') as ts_module,to_char(''DEDUCTION''||''-''||to_char(upper(d1.deduction_type))) as ts_area, to_char(''OVERLAP'')||''-''||to_char(upper(d.description)) as ts_issue, to_char(d1.datestart,''YYYY-MON-DD'')||'' - ''||nvl(t'
||'o_char(d1.date_close,''YYYY-MON-DD''),''  -  -    '' ) ts_identifier',
'          from pa_pcf_admindeduction d1',
'          join hr_rcm_employee e on e.id = d1.emp_id and e.date_separated is null',
'          join pa_pcf_deductioncode d on d.id = d1.expense_id and d.prv_active_dup = 1 and (d1.date_close is null or d1.date_close > current_date)',
'          where d1.deduct_status = ''IP''',
'          and d1.date_close is null',
'          and exists ',
'          (select 1 ',
'              from pa_pcf_admindeduction d2',
'              where d2.emp_id = d1.emp_id',
'              and d2.expense_id = d1.expense_id',
'              and d2.deduction_type = d1.deduction_type',
'              and d2.deduct_status = ''IP''',
'              and d2.date_close is null',
'              and d2.id != d1.id',
'              and',
'                    (',
'                    d1.datestart between d2.datestart and nvl(d2.date_close,current_date) or',
'                    d1.date_close between d2.datestart and nvl(d2.date_close,current_date) or',
'                    d2.datestart between d1.datestart and nvl(d1.date_close,current_date) or',
'                    d2.date_close between d1.datestart and nvl(d1.date_close,current_date)',
'                    )',
'            )',
'        )',
'        UNION',
'        --check for deduction amount does not match spinoff calculation FOR EMPLOYEE',
'        (select d1.emp_id, to_char(''EMPLOYEE'') as ts_module,to_char(''DEDUCTION''||''-''||to_char(upper(d1.deduction_type))) as ts_area, to_char(''INCORRECT CALCULATION'')||''-''||to_char(upper(d.description)) as ts_issue, to_char(d1.datestart,''YYYY-MON-DD'')'
||'||'' - ''||nvl(to_char(d1.date_close,''YYYY-MON-DD''),''  -  -    '' )||''SALARY-''||to_char(s.personal_rate) ||''   DEDUCTION_AMOUNT-''||to_char(d1.deduction_amount) ts_identifier',
'          from pa_pcf_admindeduction d1',
'          join pa_pcf_deductioncode d on d.id = d1.expense_id and d1.deduct_status = ''IP'' and (d1.date_close is null or d1.date_close > current_date)',
'          join hr_rcm_employee e on e.id = d1.emp_id and e.date_separated is null',
'          JOIN HR_RCM_SALARY S ON S.EMP_ID = D1.EMP_ID AND D1.DATESTART+3 BETWEEN S.START_DATE AND NVL(S.END_DATE,current_date)',
'          where D.PERCENT_OPTION_DEDCODE != ''FIXED_RATE''',
'          and D.EXPENSE_CODE = ''PENSION''',
'          and d1.deduct_status = ''IP''',
'          and d1.date_close is null',
'          and round(d1.deduction_amount) != case when d1.deduction_type = ''EMPLOYEE'' then round(s.personal_rate * d.employee_ded_per) else round(s.personal_rate * d.employer_ded_per) end',
'        )',
'',
') ts_s on e.id = ts_s.emp_id',
'where date_separated is null',
'and W.id =:P1350_EARNINGS_PERIOD_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Employee Data'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8510454931875426518)
,p_name=>'TS_EMPLOYEE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TS_EMPLOYEE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ts Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>10
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>511
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
 p_id=>wwv_flow_imp.id(8510454972992426519)
,p_name=>'DATE_EMPLOYED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATE_EMPLOYED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Date Employed'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
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
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(8510455151968426520)
,p_name=>'TS_MODULE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TS_MODULE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Ts Module'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>8
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
 p_id=>wwv_flow_imp.id(8510455210347426521)
,p_name=>'TS_AREA'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TS_AREA'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ts Area'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(8510455259392426522)
,p_name=>'TS_ISSUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TS_ISSUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ts Issue'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(8510455377191426523)
,p_name=>'TS_IDENTIFIER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TS_IDENTIFIER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Ts Identifier'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>150
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
 p_id=>wwv_flow_imp.id(8510455493026426524)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(8510454771547426517)
,p_internal_uid=>7982622222016558082
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(8511919080413827412)
,p_interactive_grid_id=>wwv_flow_imp.id(8510454771547426517)
,p_static_id=>'14306512'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(8511919355884827413)
,p_report_id=>wwv_flow_imp.id(8511919080413827412)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511919761162827415)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(8510454931875426518)
,p_is_visible=>true
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511920706609827422)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(8510454972992426519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511921607576827427)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(8510455151968426520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511922489741827431)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(8510455210347426521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511923357966827435)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(8510455259392426522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511924326344827438)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(8510455377191426523)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(8511925162922827443)
,p_view_id=>wwv_flow_imp.id(8511919355884827413)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(8510455493026426524)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9924257000503272270)
,p_plug_name=>'Listing of Possible Duplicating Payments'
,p_parent_plug_id=>wwv_flow_imp.id(9915661645636621274)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent7:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT id, emp_id, empent_id, earnings_period_id, source_name, source_id, quantity, amount_paid, start_period_paid, end_period_paid,',
'    pay_status, income_code_id, unit_type, unit_amount, remarks, std_detail_key, increase_id, payroll_last_change_by, payroll_last_change_date',
'FROM pa_pcf_adhocpayment_hr a',
'where earnings_period_id = :P1350_EARNINGS_PERIOD_ID',
'and exists (select 1',
'               from pa_pcf_adhocpayment b',
'               where a.emp_id = b.emp_id',
'               and a.empent_id = b.empent_id',
'               and a.earnings_period_id = b.earnings_period_id',
'               and earnings_period_id = :P1350_EARNINGS_PERIOD_ID',
'               )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Listing of Possible Duplicating Payments'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(9924257129737272271)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'GPL'
,p_internal_uid=>9396424580206403836
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307742105049288808)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307742468520288808)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307742897367288809)
,p_db_column_name=>'EMPENT_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854407904010718010)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307743276618288809)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854414658122718020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307743590636288809)
,p_db_column_name=>'SOURCE_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Source Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307744002351288810)
,p_db_column_name=>'SOURCE_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Source Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307744418214288810)
,p_db_column_name=>'QUANTITY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307744815252288811)
,p_db_column_name=>'AMOUNT_PAID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amount Paid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307745196661288811)
,p_db_column_name=>'START_PERIOD_PAID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Start Period Paid'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307745592625288812)
,p_db_column_name=>'END_PERIOD_PAID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'End Period Paid'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307746007726288812)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307746406581288812)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854380898807666791)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307746838239288813)
,p_db_column_name=>'UNIT_TYPE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Unit Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307747229978288813)
,p_db_column_name=>'UNIT_AMOUNT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Unit Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307747618155288814)
,p_db_column_name=>'REMARKS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307747998464288814)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307748412588288815)
,p_db_column_name=>'INCREASE_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Increase Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307748791552288815)
,p_db_column_name=>'PAYROLL_LAST_CHANGE_BY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Payroll Last Change By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2307749176505288815)
,p_db_column_name=>'PAYROLL_LAST_CHANGE_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Payroll Last Change Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(9925687570403474918)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'16864021'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EARNINGS_PERIOD_ID:INCOME_CODE_ID:EMP_ID:EMPENT_ID:QUANTITY:AMOUNT_PAID:PAY_STATUS:UNIT_TYPE:UNIT_AMOUNT:REMARKS:'
,p_break_on=>'EARNINGS_PERIOD_ID:INCOME_CODE_ID:0:0:0:0'
,p_break_enabled_on=>'EARNINGS_PERIOD_ID:INCOME_CODE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9985870880836827960)
,p_plug_name=>'Region_Selector'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'REGION_POSITION_08'
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10229711724511069332)
,p_plug_name=>'HR Deductions'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select x."ID", Period,',
'    "EXPENSE_ID","EXPENSE_ID" expense_LKID,',
'    x."EMP_ID",x."EMP_ID" employee_id,',
'    ind.first_name,ind.surname,',
'    "DEDUCTION_AMOUNT",',
'    "DEDUCTION_NO",',
'    x."REMARKS",',
'    "DEDUCTION_TYPE",',
'    x."ENTERED_BY",',
'    x."ENTRY_DATE",',
'    x."LAST_CHANGED_BY",',
'    x."LAST_CHANGED_DATE",',
'    x."MACHINE_INSERT",',
'    x."ORGDTL_ID",',
'     record_count, earnings_period_id',
'    from pa_pcf_adhocdeduction x join hr_rcm_employee empl on empl.id=x.emp_id',
'    join hr_rcm_individual ind on ind.id = empl.ind_id',
'    where EARNINGS_PERIOD_ID = :P1350_EARNINGS_PERIOD_ID',
'    and   nvl(IMPORT_HR_DATA,''NULL'')= nvl(:P1350_IMPORT_HR_DEDUCTION, nvl(IMPORT_HR_DATA,''NULL''))',
'    and emp_id =nvl(:P1350_EMPLOYEE, emp_id)',
'    and x.orgdtl_id =nvl(:P1350_ORGDTL_ID,x.orgdtl_id)',
'    and UPPER(TRIM(DEDUCTION_TYPE))=nvl(:P1350_DEDUCTION_TYPE, UPPER(TRIM(DEDUCTION_TYPE)))',
'    --x.period = 0 --note recurring deductions is will be based on a rull.',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1350_EARNINGS_PERIOD_ID,P1350_IMPORT_HR_DEDUCTION,P1350_EMPLOYEE,P1350_ORGDTL_ID,P1350_DEDUCTION_TYPE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'HR Deductions'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(532010705188795110)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Earnings Period Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(605128372171050413)
,p_name=>'FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'First Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(605128491937050414)
,p_name=>'SURNAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SURNAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Surname'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(609799267223082536)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(609799361059082537)
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
 p_id=>wwv_flow_imp.id(3973294949349911254)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Periods'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10213176540484575762)
,p_name=>'RECORD_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rec Count'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>190
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(10221046009088575230)
,p_name=>'link'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_LINK'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_link_target=>'f?p=&APP_ID.:222:&SESSION.::&DEBUG.::P222_FLAG,P222_EARNINGS_PERIOD_ID,P222_EMP_ID:DED,&P1350_EARNINGS_PERIOD_ID.,&EMP_ID.'
,p_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229497051909541355)
,p_name=>'ORGDTL_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORGDTL_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Work Unit'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854315722757558986)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229497393330541359)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(10229497476435541360)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
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
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229497641360541361)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(10229497895425541364)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Entry Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
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
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229498036567541365)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(10229498338990541368)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Deduction Type'
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
 p_id=>wwv_flow_imp.id(10229498678140541372)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
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
 p_id=>wwv_flow_imp.id(10229498835741541373)
,p_name=>'DEDUCTION_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Deduction No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
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
 p_id=>wwv_flow_imp.id(10229499129127541376)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Installment'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990D00'
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
 p_id=>wwv_flow_imp.id(10229517063491450737)
,p_name=>'EMPLOYEE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Employee Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229517115452450738)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854410127367718012)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(10229517185186450739)
,p_name=>'EXPENSE_LKID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_LKID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Expense Lkid'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
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
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229517352821450740)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Expense'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3854449879706782237)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10229517462054450741)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10229517481530450742)
,p_internal_uid=>9701684931999582307
,p_is_editable=>true
,p_edit_operations=>'d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>true
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9922990798409340177)
,p_interactive_grid_id=>wwv_flow_imp.id(10229517481530450742)
,p_name=>'Separated'
,p_static_id=>'3065051'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>wwv_flow_imp.id(2109991503728697139)
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9922990561444340178)
,p_report_id=>wwv_flow_imp.id(9922990798409340177)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(609805301171083835)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(609799267223082536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922957420381340334)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10229497051909541355)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922961086429340318)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(10229497393330541359)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922961965933340315)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(10229497476435541360)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922962892001340311)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(10229497641360541361)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922965547981340300)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(10229497895425541364)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922966424919340297)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(10229498036567541365)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922969150112340286)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10229498338990541368)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922972810398340271)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(10229498678140541372)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922973698987340268)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10229498835741541373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922976353433340257)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10229499129127541376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922986437137340212)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10229517063491450737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922987341329340206)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10229517115452450738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>223.45
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922988253065340200)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10229517185186450739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922989177727340194)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10229517352821450740)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922990068068340185)
,p_view_id=>wwv_flow_imp.id(9922990561444340178)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10229517462054450741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(10229388031872801233)
,p_report_id=>wwv_flow_imp.id(9922990798409340177)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(10229517115452450738)
,p_operator=>'C'
,p_is_case_sensitive=>false
,p_expression=>'Separated'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(9922997960004202620)
,p_interactive_grid_id=>wwv_flow_imp.id(10229517481530450742)
,p_name=>'Active Deductions'
,p_static_id=>'3064991'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>wwv_flow_imp.id(2017324631510847641)
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(9922997723039202621)
,p_report_id=>wwv_flow_imp.id(9922997960004202620)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(609805781643083836)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(609799267223082536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922964581976202777)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10229497051909541355)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922968248024202761)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(10229497393330541359)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922969127528202758)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(10229497476435541360)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922970053596202754)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(10229497641360541361)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922972709576202743)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(10229497895425541364)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922973586514202740)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(10229498036567541365)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922976311707202729)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10229498338990541368)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922979971993202714)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(10229498678140541372)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922980860582202711)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10229498835741541373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922983515028202700)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10229499129127541376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922993598732202655)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10229517063491450737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922994502924202649)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10229517115452450738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922995414660202643)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10229517185186450739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922996339322202637)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10229517352821450740)
,p_is_visible=>false
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9922997229663202628)
,p_view_id=>wwv_flow_imp.id(9922997723039202621)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10229517462054450741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10229493447311541626)
,p_interactive_grid_id=>wwv_flow_imp.id(10229517481530450742)
,p_static_id=>'3063977'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10229493210346541627)
,p_report_id=>wwv_flow_imp.id(10229493447311541626)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(532410346479827267)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(532010705188795110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(609806267950083837)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(609799267223082536)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(610384745053928575)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(605128372171050413)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(610385601754928580)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(605128491937050414)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3979737581233804878)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3973294949349911254)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229460069283541783)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(10229497051909541355)
,p_is_visible=>true
,p_is_frozen=>false
,p_break_order=>15
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229463735331541767)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(10229497393330541359)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229464614835541764)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(10229497476435541360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229465540903541760)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(10229497641360541361)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229468196883541749)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(10229497895425541364)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229469073821541746)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(10229498036567541365)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229471799014541735)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(10229498338990541368)
,p_is_visible=>true
,p_is_frozen=>false
,p_break_order=>10
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229475459300541720)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(10229498678140541372)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229476347889541717)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10229498835741541373)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>207
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229479002335541706)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(10229499129127541376)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229489086039541661)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(10229517063491450737)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229489990231541655)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(10229517115452450738)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>345
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229490901967541649)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(10229517185186450739)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229491826629541643)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(10229517352821450740)
,p_is_visible=>true
,p_is_frozen=>false
,p_break_order=>5
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
,p_break_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10229492716970541634)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10229517462054450741)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10535589822430249917)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10213176540484575762)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10535845779328949718)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10221046009088575230)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(527832878890861278)
,p_view_id=>wwv_flow_imp.id(10229493210346541627)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(10229499129127541376)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574900927359057467)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10229711724511069332)
,p_button_name=>'PROCESS_DED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Process'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574804968759057589)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9872236964142212934)
,p_button_name=>'PROCESS_HRPAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Process'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574901270288057467)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10229711724511069332)
,p_button_name=>'PURGE_DED'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574805375284057589)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(9872236964142212934)
,p_button_name=>'PURGE_HRPAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574694109239057738)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(574902614537057466)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574783320791057610)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(8554579570118222006)
,p_button_name=>'SEARCH_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574694464355057737)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(574902614537057466)
,p_button_name=>'EMPLOYEE_TO_PAY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Employees To Pay'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574791094561057602)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9774395019752699025)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575548490292694053)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(8554579570118222006)
,p_button_name=>'PURGE_LOGS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Logs'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574694921051057736)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(574902614537057466)
,p_button_name=>'PROCESS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Process All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574695257274057736)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(574902614537057466)
,p_button_name=>'PURGE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge All'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3807159470688545770)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(574695660877057736)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(574902614537057466)
,p_button_name=>'RECOMPUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Recompute'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(574970724980057422)
,p_branch_action=>'f?p=&APP_ID.:1350:&SESSION.::&DEBUG.::P1350_EARNINGS_PERIOD_ID:&P1350_EARNINGS_PERIOD_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(568327129122853251)
,p_name=>'P1350_ORGDTL_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_prompt=>'Search by Work Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select od.unit_name, od.id',
'from hr_hcf_orgstructuredtl od',
'where exists (select 1',
'              from pa_pcf_payroll_emp payep',
'              where payep.orgdtl_id = od.id',
'              and earnings_period_id =:P1350_EARNINGS_PERIOD_ID',
'              )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1350_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(568329116770853271)
,p_name=>'P1350_DEDUCTION_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8495592098487038714)
,p_prompt=>'Deduction Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Employee;EMPLOYEE,Employer;EMPLOYER'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Both--'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(568329157174853272)
,p_name=>'P1350_HR_DEDUCTION_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10229711724511069332)
,p_prompt=>'Hr Deduction Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Employee;EMPLOYEE,Employer;EMPLOYER'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Both--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307664716548288504)
,p_name=>'P1350_INIT_SEARCH_1_2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8445521494543063028)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307728240854288724)
,p_name=>'P1350_CONDITION_FOR-PAYMENT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(7882598299882618362)
,p_prompt=>'Conditions For Payment'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The following conditions must exist before an employee is selected for payment:',
'1. Must be included on the payroll.',
'2. Payroll effective date must be less than or equal to the payroll cut off date.',
'3. Date of employment must be less than or equal to the earnings period end date.',
'4. Salary must be greater than zero.',
'5. Must have one of these employment status of Active',
'6. Must be verified. ',
'7. Must be alive or have died during the earnings period.',
'8. Must not be separated or separated during the earnings period.',
'9. Earnings Period start date must find a valid salary record to use; i.e. earnings period date must be either between start and end dates ',
'   of a closed salary records or greater than and equal to and active record.'))
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307881719760288456)
,p_name=>'P1350_COUNT_VALUE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9985870880836827960)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307882165935288415)
,p_name=>'P1350_IMPORT_HR_DEDUCTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10229711724511069332)
,p_prompt=>'Transactions Types'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HREXPORTPAYROLLDED'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from table(pkg_global_fnts.get_lookup_value(''TBLHREXPORTTOPAYROLLDED'')) a',
'where a.org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Note Short Payments occur due to cut off date being less than earnings period end date.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307882174375288683)
,p_name=>'P1350_PAY_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_prompt=>'Pay Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||w.company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  join HR_HCF_COMPANYYEAR w on w.id = PA_PCF_EARNINGPERIOD.company_year_id  ',
'      WHERE PA_PCF_EARNINGPERIOD.ORG_ID =:APP_ORG_ID    ',
'      and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where PA_PCF_EARNINGPERIOD.org_id=a.org_id      ',
'              and PA_PCF_EARNINGPERIOD.payment_type=a.payment_type ',
'              and PA_PCF_EARNINGPERIOD.employment_class_id=a.employment_class_id ',
'                    )',
'      ) ',
'ORDER BY C DESC, D DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>15
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307882545213288683)
,p_name=>'P1350_EARNINGS_PERIOD_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EARNINGS_PERIOD_ALL_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id,Earn_pay_status,A.START_PAID_FOR,A.END_PAID_FOR,EARNINGS_TYPE',
'from VW_EARNall a --NOTPAID a',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type)=upper(a.payment_type))',
'and EXTRACT(year FROM end_date)||EXTRACT(month FROM end_date) =:P1350_PAY_PERIOD ',
'order by start_date desc, end_date desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1350_PAY_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_help_text=>'System will show only unpaid or unexecuted earning period.'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307883457839288684)
,p_name=>'P1350_EMPLOYEE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Search by Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee||''(Emp:-''||EMP_COMPANY_NO||'')'' Label, id',
'from VW_AVAILEMPLOYEEFULL w',
'where exists (select 1',
'                from PA_PCF_PAYROLL_EMP a ',
'                where w.id = a.emp_id',
'                and EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID       ',
'                and a.orgdtl_id = nvl(:P1350_ORGDTL_ID , a.orgdtl_id)        ',
'              )           '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1350_EARNINGS_PERIOD_ID,P1350_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307883887917288685)
,p_name=>'P1350_START_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307884210076288685)
,p_name=>'P1350_END_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307884699726288686)
,p_name=>'P1350_PAY_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9872906054807461518)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307897473519288708)
,p_name=>'P1350_IMPORT_HR_INCOMES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9872236964142212934)
,p_prompt=>'Transactions Types'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HREXPORTPAYROLLINC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from table(pkg_global_fnts.get_lookup_value(''TBLHREXPORTTOPAYROLLINC'')) a',
'where a.org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Note Short Payments occur due to cut off date being less than earnings period end date.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307939111112288698)
,p_name=>'P1350_INIT_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9915238274922968398)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307964648845288701)
,p_name=>'P1350_INIT_SEARCH_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9915645350917554284)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2307990078497288707)
,p_name=>'P1350_INIT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10077686924635784166)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(574903506693057460)
,p_validation_name=>'CHK_NULL_DATE'
,p_validation_sequence=>9
,p_validation=>':P1350_START_DATE IS NULL OR :P1350_END_DATE IS NULL'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Either Start Paid for date or End Paid for date is null.'
,p_validation_condition=>'PROCESS, PURGE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(574903860729057460)
,p_validation_name=>'chk _start_withPernprd'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    st_paid_for date; en_paid_for date;',
'',
'begin',
'   select start_paid_for, end_paid_for into st_paid_for, en_paid_for',
'    from pa_pcf_earningperiod',
'    where id = :P1350_EARNINGS_PERIOD_ID;',
'',
'    if :P1350_START_DATE < st_paid_for or :P1350_START_DATE > en_paid_for then',
'   ',
'        return ''The start date entered is outside of the Paid for periods.'';',
'    ',
'    elsif :P1350_END_DATE < st_paid_for or :P1350_END_DATE > en_paid_for then',
'        return ''The end date entered is outside of the Paid for periods.'';',
'    else',
'        return '' '';',
'    end if;',
'    ',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'PROCESS, PURGE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574934171991057442)
,p_name=>'refresh_employee_to_be_paid'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574934715735057441)
,p_event_id=>wwv_flow_imp.id(574934171991057442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9986102375508734175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574935101435057441)
,p_name=>'refresh_employee_turn_over'
,p_event_sequence=>11
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574935625129057441)
,p_event_id=>wwv_flow_imp.id(574935101435057441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'Newly Hired'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915664991834621308)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574936459096057440)
,p_event_id=>wwv_flow_imp.id(574935101435057441)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'Newly Separated'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9920523395667241196)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574936891878057440)
,p_name=>'refresh_entitlement_changes'
,p_event_sequence=>12
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575550617975694074)
,p_event_id=>wwv_flow_imp.id(574936891878057440)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'refresh Targeted Additionaal'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10077686924635784166)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574937403056057440)
,p_event_id=>wwv_flow_imp.id(574936891878057440)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'fresh new Additional Remuneration'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915238274922968398)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574938307265057439)
,p_event_id=>wwv_flow_imp.id(574936891878057440)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'refresh stop entitlement'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915645350917554284)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575550677377694075)
,p_name=>'refresh Deduction Changes'
,p_event_sequence=>13
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575550790746694076)
,p_event_id=>wwv_flow_imp.id(575550677377694075)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Target Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878638640758619846)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575550922222694077)
,p_event_id=>wwv_flow_imp.id(575550677377694075)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Target New Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8445521494543063028)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575550956441694078)
,p_event_id=>wwv_flow_imp.id(575550677377694075)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Target Stopped Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8500345623740947814)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574905958728057457)
,p_name=>'refresh HR Incomes EARN'
,p_event_sequence=>14
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574906516921057457)
,p_event_id=>wwv_flow_imp.id(574905958728057457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(591668172811678840)
,p_name=>'refresh HR Incomes trans'
,p_event_sequence=>24
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(591668322068678841)
,p_event_id=>wwv_flow_imp.id(591668172811678840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575551059126694079)
,p_name=>'Refresh Posted Income'
,p_event_sequence=>34
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575551223055694080)
,p_event_id=>wwv_flow_imp.id(575551059126694079)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Posted'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878982601961831261)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574938735401057439)
,p_name=>'Refresh HR Deduction EARN'
,p_event_sequence=>44
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574939201241057439)
,p_event_id=>wwv_flow_imp.id(574938735401057439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575551333533694081)
,p_name=>'refresh Summary stats'
,p_event_sequence=>54
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575551404921694082)
,p_event_id=>wwv_flow_imp.id(575551333533694081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Incomes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273766568186350)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575551500219694083)
,p_event_id=>wwv_flow_imp.id(575551333533694081)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273902431186351)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575551566840694084)
,p_event_id=>wwv_flow_imp.id(575551333533694081)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'statutory Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625879632024890017)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575551666452694085)
,p_name=>'HR Anomalies'
,p_event_sequence=>64
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574968304894057424)
,p_event_id=>wwv_flow_imp.id(575551666452694085)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Employee Data'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8510454706035426516)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574933763613057442)
,p_event_id=>wwv_flow_imp.id(575551666452694085)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'possible Duplicate Payments'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9924257000503272270)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574968722482057423)
,p_name=>'refresh_payroll_rules'
,p_event_sequence=>74
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574969200742057423)
,p_event_id=>wwv_flow_imp.id(574968722482057423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh requirements'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7893228516502740446)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574969656508057423)
,p_event_id=>wwv_flow_imp.id(574968722482057423)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh NIS'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7893235429361786101)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574970166523057422)
,p_event_id=>wwv_flow_imp.id(574968722482057423)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Refresh Taxes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(7893233613431781508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(591667872471678837)
,p_name=>'Refresh logs'
,p_event_sequence=>84
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(591667990942678838)
,p_event_id=>wwv_flow_imp.id(591667872471678837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'refresh Payroll Process'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9774395019752699025)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(591668084891678839)
,p_event_id=>wwv_flow_imp.id(591667872471678837)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh Logs'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8554579570118222006)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574905056080057457)
,p_name=>'assign_for_date'
,p_event_sequence=>94
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1350_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574905648523057457)
,p_event_id=>wwv_flow_imp.id(574905056080057457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1350_START_DATE,,P1350_END_DATE,P1350_PAY_STATUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select start_paid_for, end_paid_for,pay_status',
'from pa_pcf_earningperiod',
'where id = :P1350_EARNINGS_PERIOD_ID'))
,p_attribute_07=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574907320466057456)
,p_name=>'refresh deductions Trans'
,p_event_sequence=>104
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_IMPORT_HR_DEDUCTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574907782448057456)
,p_event_id=>wwv_flow_imp.id(574907320466057456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574908186569057456)
,p_name=>'Process_ALL'
,p_event_sequence=>114
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574694921051057736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574908712236057455)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625880914513890030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574909247864057455)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    p_out_return varchar2(10);',
'begin',
'',
'     pkg_hr_export_to_payroll.imp_employees_to_pay(:P1350_EARNINGS_PERIOD_ID); ',
'',
'    for I in  (',
'                select value_description , table_value, source_name',
'                from hr_hcf_lookup',
'                where table_name =''TBLHREXPORTTOPAYROLLINC'' ',
'                and org_id = :APP_ORG_SHR_DED',
'                and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'                union',
'                select value_description ,table_value, source_name',
'                from hr_hcf_lookup',
'                where table_name = ''TBLHREXPORTTOPAYROLLDED''',
'                and org_id = :APP_ORG_SHR_DED',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'               )loop',
'',
'     begin         ',
'         pkg_hr_export_to_payroll.sp_import_hr_payrolldate(i.source_name, :P1350_EARNINGS_PERIOD_ID, i.table_value, :APP_ORG_ID, ',
'                 :P1350_START_DATE, :P1350_END_DATE);',
'    exception',
'        when others then null;',
'    end;',
'    end loop;',
'',
'--clean up duplicates',
'        delete',
'        from PA_PCF_ADHOCPAYMENT_HR a ',
'        where EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'        and  exists (select 1',
'                        from PA_PCF_ADHOCPAYMENT b',
'                        where a.income_code_id = b.adhoc_inc_code_id',
'                        and  b.EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'                        );',
'                        ',
'        -- if :G_PARSING_SCHEMA !=''STARFISH'' then',
'        --    PKG_PAYROLL_FREEPAY.Export_freepay_main (:P1350_EARNINGS_PERIOD_ID,  1, p_out_return);',
'        -- end if;',
'end;'))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID,P1350_START_DATE,P1350_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574909673601057455)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded data for the select payroll.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574910247519057454)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625880914513890030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574910747542057454)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574911170468057454)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574911658131057453)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#PURGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574912150653057453)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9986102375508734175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574912741413057453)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8554579570118222006)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575547977097694048)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'refresh_employees'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1350_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(532010344503795106)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'refresh_logs'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9774395019752699025)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616579570174577427)
,p_event_id=>wwv_flow_imp.id(574908186569057456)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'refresh_freepays'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(565595506634317911)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574913060761057452)
,p_name=>'process_HR_INC'
,p_event_sequence=>124
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574804968759057589)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574913563561057452)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    p_out_return varchar2(10);',
'begin',
'  for I in  (',
'                select value_description , table_value, source_name',
'                from hr_hcf_lookup',
'                where table_name =''TBLHREXPORTTOPAYROLLINC'' ',
'                and org_id = :APP_ORG_SHR_DED     ',
'                AND table_value = NVL(:P1350_IMPORT_HR_INCOMES, table_value)      ',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'               )loop',
'',
'  begin',
'    pkg_hr_export_to_payroll.sp_import_hr_payrolldate (I.SOURCE_NAME, :P1350_EARNINGS_PERIOD_ID, I.table_value, :APP_ORG_ID, :P1350_START_DATE, :P1350_END_DATE);',
'  exception',
'        when others then null;',
'   end;',
'  END LOOP;',
'',
'        delete',
'        from PA_PCF_ADHOCPAYMENT_HR a ',
'        where EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'        and  exists (select 1',
'                        from PA_PCF_ADHOCPAYMENT b',
'                        where a.income_code_id = b.adhoc_inc_code_id',
'                        and  b.EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'                        );',
'            -- if :G_PARSING_SCHEMA !=''STARFISH'' then',
'            --      PKG_PAYROLL_FREEPAY.Export_freepay_main (:P1350_EARNINGS_PERIOD_ID,  1, p_out_return);',
'            -- end if;',
'end;',
'',
' '))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID,P1350_IMPORT_HR_INCOMES,APP_ORG_ID,P1350_START_DATE,P1350_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574914090897057452)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded data for the select payroll.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574914624037057452)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574915085216057451)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574915631755057451)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#PURGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574916072551057451)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9986102375508734175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574916596205057451)
,p_event_id=>wwv_flow_imp.id(574913060761057452)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8554579570118222006)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574916969240057450)
,p_name=>'process_HR_DED'
,p_event_sequence=>134
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574900927359057467)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574917456994057450)
,p_event_id=>wwv_flow_imp.id(574916969240057450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' for I in  (',
'                select value_description ,table_value, source_name',
'                from hr_hcf_lookup',
'                where table_name = ''TBLHREXPORTTOPAYROLLDED''',
'                and org_id = :APP_ORG_SHR_DED',
'                AND table_value =NVL(:P1350_IMPORT_HR_DEDUCTION, table_value)',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'               )loop',
'',
'    begin',
'        pkg_hr_export_to_payroll.sp_import_hr_payrolldate (I.source_name, :P1350_EARNINGS_PERIOD_ID, I.table_value, :APP_ORG_ID, :P1350_START_DATE, :P1350_END_DATE);',
'',
'     exception',
'        when others then null;',
'    end;',
' END LOOP;',
'end;'))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID,P1350_IMPORT_HR_DEDUCTION,APP_ORG_ID,P1350_START_DATE,P1350_END_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574917961322057450)
,p_event_id=>wwv_flow_imp.id(574916969240057450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded data for the select payroll.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574918504076057450)
,p_event_id=>wwv_flow_imp.id(574916969240057450)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574918986127057449)
,p_event_id=>wwv_flow_imp.id(574916969240057450)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574919473527057449)
,p_event_id=>wwv_flow_imp.id(574916969240057450)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JQUERY_SELECTOR'
,p_affected_elements=>'#PURGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574920016751057449)
,p_event_id=>wwv_flow_imp.id(574916969240057450)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8554579570118222006)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574920390530057449)
,p_name=>'Purge_ALL'
,p_event_sequence=>144
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574695257274057736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616581426701577445)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625880914513890030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574921425535057448)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    for I in  (',
'                select value_description , table_value, source_name_alt',
'                from hr_hcf_lookup',
'                where table_name =''TBLHREXPORTTOPAYROLLINC'' ',
'                and org_id = :APP_ORG_SHR_DED',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'                 and source_name_alt is not null',
'                union',
'                select value_description ,table_value, source_name_alt',
'                from hr_hcf_lookup',
'                where table_name = ''TBLHREXPORTTOPAYROLLDED''',
'                and org_id = :APP_ORG_SHR_DED',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'                 and source_name_alt is not null',
'               )loop',
'     begin',
'',
'         pkg_hr_export_to_payroll.sp_purge_hr_payrolldate(i.source_name_alt, :P1350_EARNINGS_PERIOD_ID);',
'         pkg_hr_export_to_payroll.del_employees_to_be_paid(:P1350_EARNINGS_PERIOD_ID);',
'',
'        delete',
'        from HR_APU_PROCESSFEEDBACKLOG ',
'        where org_id=:APP_ORG_ID',
'        and earnings_period_id=:P1350_EARNINGS_PERIOD_ID',
'        AND upper(PROCESS_TYPE) =''HR EXPORT TO PAYROLL'';',
'        ',
'    exception',
'        when others then null;',
'    end;',
'    end loop;',
'',
'    delete',
'    from pa_pcf_exportfreepay',
'    where EARNINGS_PERIOD_ID = :P1350_EARNINGS_PERIOD_ID;',
'',
'end;',
''))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574921894891057448)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully purged data for the select payroll.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616581484115577446)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625880914513890030)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574922414069057448)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574922917700057448)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574920947037057448)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9986102375508734175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568329940357853279)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'refresh_summary_income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273766568186350)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568329975740853280)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'refresh_summary_deduction'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273902431186351)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(532010636170795109)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'refresh_summary_stat'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625879632024890017)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(616579478996577426)
,p_event_id=>wwv_flow_imp.id(574920390530057449)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'refresh_freepay'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(565595506634317911)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574923279826057447)
,p_name=>'Purge_HR_INC'
,p_event_sequence=>154
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574805375284057589)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574923832467057447)
,p_event_id=>wwv_flow_imp.id(574923279826057447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    for I in  (',
'                select value_description , table_value, source_name_alt',
'                from hr_hcf_lookup',
'                where table_name =''TBLHREXPORTTOPAYROLLINC'' ',
'                and org_id = :APP_ORG_SHR_DED        ',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date)) ',
'                 and source_name_alt is not null       ',
'               )loop',
'     begin          ',
'         pkg_hr_export_to_payroll.sp_purge_hr_payrolldate(i.source_name_alt, :P1350_EARNINGS_PERIOD_ID);',
'      exception',
'        when others then null;',
'    end;',
'    end loop;',
'',
'end;',
''))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574924315235057447)
,p_event_id=>wwv_flow_imp.id(574923279826057447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully purged data for the select payroll.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574924824468057446)
,p_event_id=>wwv_flow_imp.id(574923279826057447)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574925332303057446)
,p_event_id=>wwv_flow_imp.id(574923279826057447)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574925713698057446)
,p_name=>'Purge_HR_DED'
,p_event_sequence=>164
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574901270288057467)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574926179538057446)
,p_event_id=>wwv_flow_imp.id(574925713698057446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    for I in  (              ',
'                select value_description ,table_value, source_name_alt',
'                from hr_hcf_lookup',
'                where table_name = ''TBLHREXPORTTOPAYROLLDED''',
'                and org_id = :APP_ORG_SHR_DED',
'                 and start_period <= trunc(current_date)',
'                and (end_period is null or end_period >=  trunc(current_date))',
'                 and source_name_alt is not null',
'               )loop',
'    begin          ',
'         pkg_hr_export_to_payroll.sp_purge_hr_payrolldate(i.source_name_alt, :P1350_EARNINGS_PERIOD_ID);',
'     exception',
'        when others then null;',
'    end;',
'    end loop;',
'',
'end;',
''))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574926730225057446)
,p_event_id=>wwv_flow_imp.id(574925713698057446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully purged data for the select payroll.'' );',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574927235213057445)
,p_event_id=>wwv_flow_imp.id(574925713698057446)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574927671988057445)
,p_event_id=>wwv_flow_imp.id(574925713698057446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574929043829057444)
,p_name=>'show_purge'
,p_event_sequence=>174
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1350_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574929470501057444)
,p_event_id=>wwv_flow_imp.id(574929043829057444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'show purge'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609801646285082559)
,p_event_id=>wwv_flow_imp.id(574929043829057444)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'show purge HRPAY'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574805375284057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574930496936057444)
,p_event_id=>wwv_flow_imp.id(574929043829057444)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'show purge ded'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574901270288057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609801526881082558)
,p_event_id=>wwv_flow_imp.id(574929043829057444)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'show purge ded'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574901270288057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574932006870057443)
,p_event_id=>wwv_flow_imp.id(574929043829057444)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'show purge HRPAY'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574805375284057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609801402903082557)
,p_event_id=>wwv_flow_imp.id(574929043829057444)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'show purge'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574939593939057439)
,p_name=>'set_counter'
,p_event_sequence=>184
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_IMPORT_HR_INCOMES'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574940117175057438)
,p_event_id=>wwv_flow_imp.id(574939593939057439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1350_COUNT_VALUE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_deduction number:=0;',
'   v_income number:=0;',
'',
'begin  ',
'',
'    select count(1) into v_deduction',
'    from "PA_PCF_ADMINDEDUCTION" x ',
'    where exists ( ',
'                select 1',
'                FROM pa_pcf_earningperiod a',
'                where X.org_id = a.org_id',
'                and X.employment_class_id = a.employment_class_id',
'                and upper(X.payment_type) = a.payment_type',
'                and x.compute_gross       = a.compute_gross',
'                and a.id                  = :P1350_EARNINGS_PERIOD_ID',
'                and x.datestart between a.start_date and a.end_date             ',
'                )',
'    and deduct_status =''IP''',
'    and nvl(IMPORT_HR_DATA,''NULL'') =  nvl(:P1350_IMPORT_HR_DATA, nvl(IMPORT_HR_DATA,''NULL''))',
'    and not exists (select 1',
'                    from pa_pmg_payrolldeduction payded',
'                    where payded.adm_deduction_id = x.id);',
'',
'        select count(1) into v_income',
'        from PA_PCF_ADHOCPAYMENT_HR',
'        where source_name =nvl(:P1350_IMPORT_HR_DATA,source_name)',
'        and EARNINGS_PERIOD_ID =:P1350_EARNINGS_PERIOD_ID',
'        and pay_status=''N'';',
'',
'        return v_deduction + v_income;',
'   ',
'end;',
''))
,p_attribute_07=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(528895290900807903)
,p_event_id=>wwv_flow_imp.id(574939593939057439)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh_income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574940474031057438)
,p_name=>'hide_show_purge'
,p_event_sequence=>194
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_COUNT_VALUE'
,p_condition_element=>'P1350_COUNT_VALUE'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574941025837057438)
,p_event_id=>wwv_flow_imp.id(574940474031057438)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574941466210057438)
,p_event_id=>wwv_flow_imp.id(574940474031057438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574941922220057437)
,p_name=>'show_hide_process'
,p_event_sequence=>204
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1350_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574942444517057437)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'show_process'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574694921051057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609802103629082564)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'show_purge'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574943365822057437)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'show_recompute'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695660877057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609802028625082563)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'show_process_hrpay'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574804968759057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574944860671057436)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'show_process_ded'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574900927359057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609801909548082562)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>'show_process_ded'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574900927359057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574945412804057436)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'show_process_hrpay'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574804968759057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609801821573082561)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>'show_recompute'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695660877057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574946931099057435)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'show_purge'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609801692824082560)
,p_event_id=>wwv_flow_imp.id(574941922220057437)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_name=>'show_process'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574694921051057736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574947290476057435)
,p_name=>'RECOMPUTE'
,p_event_sequence=>214
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574695660877057736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574947777514057434)
,p_event_id=>wwv_flow_imp.id(574947290476057435)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'   pkg_generators.Recompute_posting (:P1350_EARNINGS_PERIOD_ID, :P1350_START_DATE);',
'end;    '))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574948323061057434)
,p_event_id=>wwv_flow_imp.id(574947290476057435)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess( ''System successfully recomputed for the amount paid due to changes in rate or unit amount.'' );'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574948813073057434)
,p_event_id=>wwv_flow_imp.id(574947290476057435)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574949171455057434)
,p_name=>'disable_buttons'
,p_event_sequence=>224
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_PAY_STATUS'
,p_condition_element=>'P1350_PAY_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574949733464057433)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574950205425057433)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574694921051057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574950655531057433)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574805375284057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574951171093057433)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695660877057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574951745730057432)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574901270288057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574952173269057432)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574900927359057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574952718120057431)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574804968759057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574953228492057431)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574804968759057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574953696907057431)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574900927359057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574954149889057431)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695660877057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574954708569057431)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574901270288057467)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574955152114057430)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574694921051057736)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574955721591057430)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574805375284057589)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574956171502057430)
,p_event_id=>wwv_flow_imp.id(574949171455057434)
,p_event_result=>'FALSE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574695257274057736)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574956564961057430)
,p_name=>'Import_employees_to_Pay'
,p_event_sequence=>234
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574694464355057737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574957109229057429)
,p_event_id=>wwv_flow_imp.id(574956564961057430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_hr_export_to_payroll.imp_employees_to_pay(:P1350_EARNINGS_PERIOD_ID);',
'end;'))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574957596728057429)
,p_event_id=>wwv_flow_imp.id(574956564961057430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded employees for Payment.'');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574958075895057429)
,p_event_id=>wwv_flow_imp.id(574956564961057430)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9986102375508734175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574958590690057429)
,p_event_id=>wwv_flow_imp.id(574956564961057430)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8554579570118222006)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(528895378321807904)
,p_event_id=>wwv_flow_imp.id(574956564961057430)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'refresh_employ_lov'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1350_EMPLOYEE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574958968813057428)
,p_name=>'show_Hide_employee'
,p_event_sequence=>244
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_condition_element=>'P1350_EARNINGS_PERIOD_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574959534227057428)
,p_event_id=>wwv_flow_imp.id(574958968813057428)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574694464355057737)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574960005358057427)
,p_event_id=>wwv_flow_imp.id(574958968813057428)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(574694464355057737)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574960361625057427)
,p_name=>'refresh_regions'
,p_event_sequence=>254
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574960870011057427)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574961386385057427)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574961924792057427)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9986102375508734175)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574962357011057426)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273766568186350)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574962921403057426)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273902431186351)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(634995093436590044)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'Income Posted'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878982601961831261)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(532010855787795111)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Targeted Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878638640758619846)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(532010934257795112)
,p_event_id=>wwv_flow_imp.id(574960361625057427)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Targeted income'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10077686924635784166)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(574966881790057424)
,p_name=>'refresh_stat'
,p_event_sequence=>284
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(574967378248057424)
,p_event_id=>wwv_flow_imp.id(574966881790057424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625879632024890017)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575548625156694054)
,p_name=>'purge_and_refresh'
,p_event_sequence=>294
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575548490292694053)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575548689376694055)
,p_event_id=>wwv_flow_imp.id(575548625156694054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'purge'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete',
'from error_log',
'where lower(package_name) like ''pkg_hr_export_to_payroll%''',
'and earnings_period_id =:P1350_EARNINGS_PERIOD_ID;'))
,p_attribute_02=>'P1350_EARNINGS_PERIOD_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575548781853694056)
,p_event_id=>wwv_flow_imp.id(575548625156694054)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh_region'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8554579570118222006)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(609799819802082541)
,p_name=>'refresh_breadcrumb'
,p_event_sequence=>304
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574694921051057736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609799921253082542)
,p_event_id=>wwv_flow_imp.id(609799819802082541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(574902614537057466)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(609800013822082543)
,p_name=>'refresh_breadcrumb1'
,p_event_sequence=>314
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574695257274057736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(609800060963082544)
,p_event_id=>wwv_flow_imp.id(609800013822082543)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(574902614537057466)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(568327344068853253)
,p_name=>'refresh Regions'
,p_event_sequence=>324
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_ORGDTL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327389931853254)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Employees paid'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3697877071313742992)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327512789853255)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'Employees Not paid'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(608682606751571477)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327574269853256)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'new hired'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915664991834621308)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327736112853257)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'new Separated'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9920523395667241196)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327777313853258)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>'targettd Entitlement'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10077686924635784166)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327864893853259)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>'New Entitlement'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915238274922968398)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568327960320853260)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>'Stopped Entitlement'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915645350917554284)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328133901853261)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>'Stopped Entitlement'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9915645350917554284)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328179715853262)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>'targeted Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878638640758619846)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328347024853263)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>'New Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8445521494543063028)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328448747853264)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>'Stopped Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8500345623740947814)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328502293853265)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>'HR Incomes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328631269853266)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>'Posted Incomes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878982601961831261)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328699318853267)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>'HR Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328749599853268)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>'Summary Incomes'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273766568186350)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328937237853269)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_name=>'Summary Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5598273902431186351)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568328977131853270)
,p_event_id=>wwv_flow_imp.id(568327344068853253)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>'Summary Stat Ded'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5625879632024890017)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(568329298054853273)
,p_name=>'Refresh_HR_Deduction'
,p_event_sequence=>334
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_HR_DEDUCTION_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568329404727853274)
,p_event_id=>wwv_flow_imp.id(568329298054853273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'HR Deductions'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(568329462730853275)
,p_name=>'Refresh Deduction'
,p_event_sequence=>344
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_DEDUCTION_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568329589005853276)
,p_event_id=>wwv_flow_imp.id(568329462730853275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'targeted'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9878638640758619846)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568329748210853277)
,p_event_id=>wwv_flow_imp.id(568329462730853275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'New'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8445521494543063028)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(568329835037853278)
,p_event_id=>wwv_flow_imp.id(568329462730853275)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'Stopped'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(8500345623740947814)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(532010391915795107)
,p_name=>'refresh_log'
,p_event_sequence=>354
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(574695257274057736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(532010547552795108)
,p_event_id=>wwv_flow_imp.id(532010391915795107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9774395019752699025)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(565595341811317909)
,p_name=>'refresh_Missing_basic'
,p_event_sequence=>364
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1350_EARNINGS_PERIOD_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(565595456428317910)
,p_event_id=>wwv_flow_imp.id(565595341811317909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(472082493343114418)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(574806616572057588)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9872236964142212934)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Process Resulting in Payments - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46974067041189153
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(609799453429082538)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10229711724511069332)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'HR Deductions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>81966903898214103
);
wwv_flow_imp.component_end;
end;
/
