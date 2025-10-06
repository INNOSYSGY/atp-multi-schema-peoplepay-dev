prompt --application/pages/page_01506
begin
--   Manifest
--     PAGE: 01506
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1506
,p_name=>'rptNegativePayments'
,p_alias=>'RPTNEGATIVEPAYMENTS'
,p_step_title=>'rptNegativePayments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(171482499571805510)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3148571598724642563)
,p_plug_name=>'Listing of Employee with Negative or Zero Payments'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.*',
'from PA_PMG_PAYROLLDTLNEG a join hr_rcm_employee b on a.emp_id=b.id',
'join hr_rcm_individual c on c.id=b.ind_id',
'where earnings_period_id=:P1506_ORGANISATION_PERIODS'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1506_ORGANISATION_PERIODS'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3148571402083642562)
,p_name=>'Listing of Employee with Negative Payments'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PPLERP'
,p_internal_uid=>3208846089384912770
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280644060736291349)
,p_db_column_name=>'SURNAME'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SURNAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280638408781291344)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FIRST_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280637991847291344)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_COMPANY_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280637642816291344)
,p_db_column_name=>'ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:1507:&SESSION.::&DEBUG.:RP,1507:P1507_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280637199863291344)
,p_db_column_name=>'EMP_ID'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280636866874291343)
,p_db_column_name=>'TIME_TAX_EARNINGS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Time Tax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TIME_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280636464884291343)
,p_db_column_name=>'TIME_NONTAX_EARNINGS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Time Nontax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TIME_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280636026270291343)
,p_db_column_name=>'PIECE_TAX_EARNINGS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Piece Tax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PIECE_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280635604934291343)
,p_db_column_name=>'PIECE_NONTAX_EARNINGS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Piece Nontax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PIECE_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280635231933291343)
,p_db_column_name=>'ALLOWANCE_TAXABLE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Allowance Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ALLOWANCE_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280634804851291343)
,p_db_column_name=>'ALLOWANCE_NONTAXABLE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Allowance Nontaxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ALLOWANCE_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280634460141291343)
,p_db_column_name=>'INCENTIVES_TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Incentives Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'INCENTIVES_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280634023302291342)
,p_db_column_name=>'INCENTIVES_NONTAXABLE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Incentives Nontaxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'INCENTIVES_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280633684808291342)
,p_db_column_name=>'BENEFIT_TAXABLE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Benefit Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFIT_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280633271931291342)
,p_db_column_name=>'BENEFIT_NONTAXABLE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Benefit Nontaxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'BENEFIT_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280632849796291342)
,p_db_column_name=>'MISC_TAX_PAYMENT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Misc Tax Payment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MISC_TAX_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280632427587291342)
,p_db_column_name=>'MISC_NONTAX_PAYMENT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Misc Nontax Payment'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MISC_NONTAX_PAYMENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280632033009291342)
,p_db_column_name=>'TOTAL_TAX_EARNINGS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Total Tax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_TAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280631633329291342)
,p_db_column_name=>'TOTAL_NONTAX_EARNINGS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Total Nontax Earnings'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_NONTAX_EARNINGS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280631191762291341)
,p_db_column_name=>'GROSS_TAXABLE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Gross Taxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GROSS_TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280630870620291341)
,p_db_column_name=>'GROSS_NONTAXABLE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Gross Nontaxable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'GROSS_NONTAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280630393049291341)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'NIB/SS Employee'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'NIS_EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280630042565291341)
,p_db_column_name=>'NIS_EMPLOYER'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'NIB/SS Employer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'NIS_EMPLOYER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280629606694291341)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280629279653291341)
,p_db_column_name=>'MISC_DEDUCTION_SUM'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Misc Deduction Sum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MISC_DEDUCTION_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280628884906291341)
,p_db_column_name=>'MEDICAL_SUM'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Medical Sum'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MEDICAL_SUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280643649290291346)
,p_db_column_name=>'UNION_DUES'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Union Dues'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'UNION_DUES'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280643258104291346)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TOTAL_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280642857796291346)
,p_db_column_name=>'NET_PAY'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NET_PAY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280642424965291345)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280642082364291345)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280641679207291345)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280641202909291345)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280640854936291345)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280640458661291345)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280640070596291345)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280639655055291344)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280639213903291344)
,p_db_column_name=>'PAY_BATCH_ID'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Pay Batch Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PAY_BATCH_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3280638831477291344)
,p_db_column_name=>'EDUCATION_LEVY'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Education Levy'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EDUCATION_LEVY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3282104049265625025)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>49
,p_column_identifier=>'AN'
,p_column_label=>'Migrate pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(4022432237732608)
,p_db_column_name=>'ORGDTL_ID'
,p_display_order=>59
,p_column_identifier=>'AO'
,p_column_label=>'Orgdtl Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27652644638278459)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>69
,p_column_identifier=>'AP'
,p_column_label=>'Position Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27652694896278460)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>79
,p_column_identifier=>'AQ'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27652801213278461)
,p_db_column_name=>'ORGDTL_NAME'
,p_display_order=>89
,p_column_identifier=>'AR'
,p_column_label=>'Orgdtl Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27652969184278462)
,p_db_column_name=>'IND_ID'
,p_display_order=>99
,p_column_identifier=>'AS'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653067331278463)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>109
,p_column_identifier=>'AT'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653163682278464)
,p_db_column_name=>'DEPARTMENT_NAME'
,p_display_order=>119
,p_column_identifier=>'AU'
,p_column_label=>'Department Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653209380278465)
,p_db_column_name=>'SALARY_ID'
,p_display_order=>129
,p_column_identifier=>'AV'
,p_column_label=>'Salary Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653335330278466)
,p_db_column_name=>'BASIC_PERSONAL_RATE'
,p_display_order=>139
,p_column_identifier=>'AW'
,p_column_label=>'Basic Personal Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653388421278467)
,p_db_column_name=>'BASIC_PERSONAL_RATE_YTD'
,p_display_order=>149
,p_column_identifier=>'AX'
,p_column_label=>'Basic Personal Rate Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653481550278468)
,p_db_column_name=>'WKLOCATION_NAME'
,p_display_order=>159
,p_column_identifier=>'AY'
,p_column_label=>'Wklocation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653663535278469)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>169
,p_column_identifier=>'AZ'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653749577278470)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>179
,p_column_identifier=>'BA'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653862743278471)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>189
,p_column_identifier=>'BB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653964970278472)
,p_db_column_name=>'TAX_AMOUNT_YTD'
,p_display_order=>199
,p_column_identifier=>'BC'
,p_column_label=>'Tax Amount Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27653977209278473)
,p_db_column_name=>'TOTAL_DEDUCTION_YTD'
,p_display_order=>209
,p_column_identifier=>'BD'
,p_column_label=>'Total Deduction Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654131607278474)
,p_db_column_name=>'NET_PAY_YTD'
,p_display_order=>219
,p_column_identifier=>'BE'
,p_column_label=>'Net Pay Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654235140278475)
,p_db_column_name=>'GROSS_NONTAXABLE_YTD'
,p_display_order=>229
,p_column_identifier=>'BF'
,p_column_label=>'Gross Nontaxable Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654324691278476)
,p_db_column_name=>'GROSS_TAXABLE_YTD'
,p_display_order=>239
,p_column_identifier=>'BG'
,p_column_label=>'Gross Taxable Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654372738278477)
,p_db_column_name=>'NIS_EMPLOYEE_YTD'
,p_display_order=>249
,p_column_identifier=>'BH'
,p_column_label=>'Nis Employee Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654509608278478)
,p_db_column_name=>'TIME_TAX_EARNINGS_YTD'
,p_display_order=>259
,p_column_identifier=>'BI'
,p_column_label=>'Time Tax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654644291278479)
,p_db_column_name=>'TIME_NONTAX_EARNINGS_YTD'
,p_display_order=>269
,p_column_identifier=>'BJ'
,p_column_label=>'Time Nontax Earnings Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654678906278480)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>279
,p_column_identifier=>'BK'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654850038278481)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>289
,p_column_identifier=>'BL'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27654952217278482)
,p_db_column_name=>'EMPLOYMENT_TYPE'
,p_display_order=>299
,p_column_identifier=>'BM'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(27655051096278483)
,p_db_column_name=>'NIS_EMPLOYER_YTD'
,p_display_order=>309
,p_column_identifier=>'BN'
,p_column_label=>'Nis Employer Ytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3148567400935642557)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'681813'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ID:SURNAME:FIRST_NAME:NET_PAY:EMP_COMPANY_NO:TOTAL_TAX_EARNINGS:TOTAL_NONTAX_EARNINGS:GROSS_TAXABLE:GROSS_NONTAXABLE:NIS_EMPLOYER:NIS_EMPLOYEE:MEDICAL_SUM:UNION_DUES:TOTAL_DEDUCTION:PAY_STATUS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1979095613272368)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(171482499571805510)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1506_RETURN_VALUE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3178351546331168741)
,p_name=>'P1506_RETURN_VALUE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3148571598724642563)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3277839853534776584)
,p_name=>'P1506_ORGANISATION_PERIODS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3148571598724642563)
,p_prompt=>'Organisation periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)||'' ''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id=a.org_id',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and x.payment_type=a.payment_type)',
'and exists(select 1',
'           from PA_PMG_PAYROLLDTLNEG w',
'           where a.id=w.EARNINGS_PERIOD_ID',
'           )',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_display_null=>'YES'
,p_cSize=>30
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2001565678272288)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1506_ORGANISATION_PERIODS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2002076676272286)
,p_event_id=>wwv_flow_imp.id(2001565678272288)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3148571598724642563)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
