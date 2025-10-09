prompt --application/pages/page_00066
begin
--   Manifest
--     PAGE: 00066
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
 p_id=>66
,p_name=>'rptEmployeeNew'
,p_step_title=>'Employee Search Center'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(571577838282799188)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* td[headers ~="image"] img {',
'  border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;',
'  width: 75px;',
'  height: 75px;',
'}  */',
'',
'td[headers ~="image"] img {',
'  border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;',
'  width: 75px;',
'  height: 75px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(565596632522317922)
,p_plug_name=>'Camex Legacy Payroll Data'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  emp_no,',
'    emp_name,',
'    department,',
'    designation,',
'    basic,',
'    rate,',
'    over_time_hours,',
'    over_time_amount,',
'    double_hours,',
'    double_time_amount,',
'    bonus,',
'    c_allow,',
'    r_allow,',
'    act,',
'    t_allow,',
'    e_allow,',
'    out_all,',
'    meal_allow,',
'    lpa,',
'    tot_earn,',
'    reg_nis,',
'    pension,',
'    paye,',
'    trm_fin,',
'    tot_ded,',
'    net_pay,',
'    emp_id,',
'    earnings_period_id,',
'    payment_type,',
'    payroll_date,',
'    migrated,',
'    no_pay_hours,',
'    no_pay_amount,',
'    sal_adv,',
'    halftime_hours,',
'    halftime_amount,',
'    id,',
'    basic_income_id,',
'    over_time_income_id,',
'    double_time_income_id,',
'    bonus_income_id,',
'    c_allow_income_id,',
'    r_allow_income_id,',
'    act_income_id,',
'    t_allow_income_id,',
'    e_allow_income_id,',
'    out_all_income_id,',
'    meal_allow_income_id,',
'    lpa_income_id,',
'    tot_earn_income_id,',
'    trm_fin_deduct_id,',
'    halftime_amount_income_id,',
'    no_pay_amount_ded_id,',
'    sal_adv_ded_id,',
'    reg_nis_ded_id,',
'    pension_ded_id,',
'    c_allow2,',
'    loaded,',
'    nontax_ot,',
'    shortage,',
'    tax_ot',
'from aa_old_payrolls AA',
'--WHERE  EARNINGS_PERIOD_ID = :P66_EARNING_PERIOD                 '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'G_PARSING_SCHEMA'
,p_plug_display_when_cond2=>'CAMEX'
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
 p_id=>wwv_flow_imp.id(565596693421317923)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>154876735121507723
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616572613286574708)
,p_db_column_name=>'ID'
,p_display_order=>350
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616572875364574711)
,p_db_column_name=>'EMP_NO'
,p_display_order=>360
,p_column_identifier=>'B'
,p_column_label=>'Emp No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616572968322574712)
,p_db_column_name=>'EMP_NAME'
,p_display_order=>370
,p_column_identifier=>'C'
,p_column_label=>'Emp Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573093421574713)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>380
,p_column_identifier=>'D'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573244196574714)
,p_db_column_name=>'DESIGNATION'
,p_display_order=>390
,p_column_identifier=>'E'
,p_column_label=>'Designation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573279238574715)
,p_db_column_name=>'BASIC'
,p_display_order=>400
,p_column_identifier=>'F'
,p_column_label=>'Basic'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573446164574716)
,p_db_column_name=>'RATE'
,p_display_order=>410
,p_column_identifier=>'G'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573473112574717)
,p_db_column_name=>'OVER_TIME_HOURS'
,p_display_order=>420
,p_column_identifier=>'H'
,p_column_label=>'Over Time Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573628700574718)
,p_db_column_name=>'OVER_TIME_AMOUNT'
,p_display_order=>430
,p_column_identifier=>'I'
,p_column_label=>'Over Time Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573692444574719)
,p_db_column_name=>'DOUBLE_HOURS'
,p_display_order=>440
,p_column_identifier=>'J'
,p_column_label=>'Double Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573766929574720)
,p_db_column_name=>'DOUBLE_TIME_AMOUNT'
,p_display_order=>450
,p_column_identifier=>'K'
,p_column_label=>'Double Time Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616573955900574721)
,p_db_column_name=>'BONUS'
,p_display_order=>460
,p_column_identifier=>'L'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574004327574722)
,p_db_column_name=>'C_ALLOW'
,p_display_order=>470
,p_column_identifier=>'M'
,p_column_label=>'C Allow'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574148797574723)
,p_db_column_name=>'R_ALLOW'
,p_display_order=>480
,p_column_identifier=>'N'
,p_column_label=>'R Allow'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574214460574724)
,p_db_column_name=>'ACT'
,p_display_order=>490
,p_column_identifier=>'O'
,p_column_label=>'Act'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574272526574725)
,p_db_column_name=>'T_ALLOW'
,p_display_order=>500
,p_column_identifier=>'P'
,p_column_label=>'T Allow'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574431857574726)
,p_db_column_name=>'E_ALLOW'
,p_display_order=>510
,p_column_identifier=>'Q'
,p_column_label=>'E Allow'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574478303574727)
,p_db_column_name=>'OUT_ALL'
,p_display_order=>520
,p_column_identifier=>'R'
,p_column_label=>'Out All'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574610192574728)
,p_db_column_name=>'MEAL_ALLOW'
,p_display_order=>530
,p_column_identifier=>'S'
,p_column_label=>'Meal Allow'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574742705574729)
,p_db_column_name=>'LPA'
,p_display_order=>540
,p_column_identifier=>'T'
,p_column_label=>'Lpa'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574775349574730)
,p_db_column_name=>'TOT_EARN'
,p_display_order=>550
,p_column_identifier=>'U'
,p_column_label=>'Tot Earn'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574903524574731)
,p_db_column_name=>'REG_NIS'
,p_display_order=>560
,p_column_identifier=>'V'
,p_column_label=>'Reg Nis'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616574966802574732)
,p_db_column_name=>'PENSION'
,p_display_order=>570
,p_column_identifier=>'W'
,p_column_label=>'Pension'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575079119574733)
,p_db_column_name=>'PAYE'
,p_display_order=>580
,p_column_identifier=>'X'
,p_column_label=>'Paye'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575218428574734)
,p_db_column_name=>'TRM_FIN'
,p_display_order=>590
,p_column_identifier=>'Y'
,p_column_label=>'Trm Fin'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575317942574735)
,p_db_column_name=>'TOT_DED'
,p_display_order=>600
,p_column_identifier=>'Z'
,p_column_label=>'Tot Ded'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575441592574736)
,p_db_column_name=>'NET_PAY'
,p_display_order=>610
,p_column_identifier=>'AA'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575497578574737)
,p_db_column_name=>'EMP_ID'
,p_display_order=>620
,p_column_identifier=>'AB'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575590949574738)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>630
,p_column_identifier=>'AC'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575708298574739)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>640
,p_column_identifier=>'AD'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575761360574740)
,p_db_column_name=>'PAYROLL_DATE'
,p_display_order=>650
,p_column_identifier=>'AE'
,p_column_label=>'Payroll Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575957836574741)
,p_db_column_name=>'MIGRATED'
,p_display_order=>660
,p_column_identifier=>'AF'
,p_column_label=>'Migrated'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616575989630574742)
,p_db_column_name=>'NO_PAY_HOURS'
,p_display_order=>670
,p_column_identifier=>'AG'
,p_column_label=>'No Pay Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576108967574743)
,p_db_column_name=>'NO_PAY_AMOUNT'
,p_display_order=>680
,p_column_identifier=>'AH'
,p_column_label=>'No Pay Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576221786574744)
,p_db_column_name=>'SAL_ADV'
,p_display_order=>690
,p_column_identifier=>'AI'
,p_column_label=>'Sal Adv'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576335723574745)
,p_db_column_name=>'HALFTIME_HOURS'
,p_display_order=>700
,p_column_identifier=>'AJ'
,p_column_label=>'Halftime Hours'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576403826574746)
,p_db_column_name=>'HALFTIME_AMOUNT'
,p_display_order=>710
,p_column_identifier=>'AK'
,p_column_label=>'Halftime Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576470870574747)
,p_db_column_name=>'BASIC_INCOME_ID'
,p_display_order=>720
,p_column_identifier=>'AL'
,p_column_label=>'Basic Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576595991574748)
,p_db_column_name=>'OVER_TIME_INCOME_ID'
,p_display_order=>730
,p_column_identifier=>'AM'
,p_column_label=>'Over Time Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576712414574749)
,p_db_column_name=>'DOUBLE_TIME_INCOME_ID'
,p_display_order=>740
,p_column_identifier=>'AN'
,p_column_label=>'Double Time Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576790914574750)
,p_db_column_name=>'BONUS_INCOME_ID'
,p_display_order=>750
,p_column_identifier=>'AO'
,p_column_label=>'Bonus Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616576991890577401)
,p_db_column_name=>'C_ALLOW_INCOME_ID'
,p_display_order=>760
,p_column_identifier=>'AP'
,p_column_label=>'C Allow Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577137487577402)
,p_db_column_name=>'R_ALLOW_INCOME_ID'
,p_display_order=>770
,p_column_identifier=>'AQ'
,p_column_label=>'R Allow Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577226366577403)
,p_db_column_name=>'ACT_INCOME_ID'
,p_display_order=>780
,p_column_identifier=>'AR'
,p_column_label=>'Act Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577270630577404)
,p_db_column_name=>'T_ALLOW_INCOME_ID'
,p_display_order=>790
,p_column_identifier=>'AS'
,p_column_label=>'T Allow Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577375319577405)
,p_db_column_name=>'E_ALLOW_INCOME_ID'
,p_display_order=>800
,p_column_identifier=>'AT'
,p_column_label=>'E Allow Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577481425577406)
,p_db_column_name=>'OUT_ALL_INCOME_ID'
,p_display_order=>810
,p_column_identifier=>'AU'
,p_column_label=>'Out All Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577585945577407)
,p_db_column_name=>'MEAL_ALLOW_INCOME_ID'
,p_display_order=>820
,p_column_identifier=>'AV'
,p_column_label=>'Meal Allow Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577688230577408)
,p_db_column_name=>'LPA_INCOME_ID'
,p_display_order=>830
,p_column_identifier=>'AW'
,p_column_label=>'Lpa Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577806133577409)
,p_db_column_name=>'TOT_EARN_INCOME_ID'
,p_display_order=>840
,p_column_identifier=>'AX'
,p_column_label=>'Tot Earn Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577900679577410)
,p_db_column_name=>'TRM_FIN_DEDUCT_ID'
,p_display_order=>850
,p_column_identifier=>'AY'
,p_column_label=>'Trm Fin Deduct Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616577982860577411)
,p_db_column_name=>'HALFTIME_AMOUNT_INCOME_ID'
,p_display_order=>860
,p_column_identifier=>'AZ'
,p_column_label=>'Halftime Amount Income Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578139954577412)
,p_db_column_name=>'NO_PAY_AMOUNT_DED_ID'
,p_display_order=>870
,p_column_identifier=>'BA'
,p_column_label=>'No Pay Amount Ded Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578165995577413)
,p_db_column_name=>'SAL_ADV_DED_ID'
,p_display_order=>880
,p_column_identifier=>'BB'
,p_column_label=>'Sal Adv Ded Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578327635577414)
,p_db_column_name=>'REG_NIS_DED_ID'
,p_display_order=>890
,p_column_identifier=>'BC'
,p_column_label=>'Reg Nis Ded Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578434725577415)
,p_db_column_name=>'PENSION_DED_ID'
,p_display_order=>900
,p_column_identifier=>'BD'
,p_column_label=>'Pension Ded Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578514759577416)
,p_db_column_name=>'C_ALLOW2'
,p_display_order=>910
,p_column_identifier=>'BE'
,p_column_label=>'C Allow2'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578603601577417)
,p_db_column_name=>'LOADED'
,p_display_order=>920
,p_column_identifier=>'BF'
,p_column_label=>'Loaded'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578707644577418)
,p_db_column_name=>'NONTAX_OT'
,p_display_order=>930
,p_column_identifier=>'BG'
,p_column_label=>'Nontax Ot'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578791918577419)
,p_db_column_name=>'SHORTAGE'
,p_display_order=>940
,p_column_identifier=>'BH'
,p_column_label=>'Shortage'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(616578900062577420)
,p_db_column_name=>'TAX_OT'
,p_display_order=>950
,p_column_identifier=>'BI'
,p_column_label=>'Tax Ot'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(616601349428580866)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2058814'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_NO:EMP_NAME:DEPARTMENT:DESIGNATION:BASIC:RATE:OVER_TIME_HOURS:OVER_TIME_AMOUNT:DOUBLE_HOURS:DOUBLE_TIME_AMOUNT:BONUS:C_ALLOW:R_ALLOW:ACT:T_ALLOW:E_ALLOW:OUT_ALL:MEAL_ALLOW:LPA:TOT_EARN:REG_NIS:PENSION:PAYE:TRM_FIN:TOT_DED:NET_PAY:EMP_ID:EARNIN'
||'GS_PERIOD_ID:PAYMENT_TYPE:PAYROLL_DATE:MIGRATED:NO_PAY_HOURS:NO_PAY_AMOUNT:SAL_ADV:HALFTIME_HOURS:HALFTIME_AMOUNT:BASIC_INCOME_ID:OVER_TIME_INCOME_ID:DOUBLE_TIME_INCOME_ID:BONUS_INCOME_ID:C_ALLOW_INCOME_ID:R_ALLOW_INCOME_ID:ACT_INCOME_ID:T_ALLOW_INCO'
||'ME_ID:E_ALLOW_INCOME_ID:OUT_ALL_INCOME_ID:MEAL_ALLOW_INCOME_ID:LPA_INCOME_ID:TOT_EARN_INCOME_ID:TRM_FIN_DEDUCT_ID:HALFTIME_AMOUNT_INCOME_ID:NO_PAY_AMOUNT_DED_ID:SAL_ADV_DED_ID:REG_NIS_DED_ID:PENSION_DED_ID:C_ALLOW2:LOADED:NONTAX_OT:SHORTAGE:TAX_OT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(590039000829513772)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(590039096035513773)
,p_plug_name=>'Camex Legacy Data Bio'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PERSURNAME,',
'       PERADDR,',
'       PERDOB,',
'       PERSEX,',
'       PERMSTATUS,',
'       PERDESIG,',
'       desigdescr,',
'       PERDEPT,',
'       DEPTDESCRC,',
'       PERDOE,',
'       PERPAYTYPE,',
'       PERPAYMTHD,',
'       PERBASIC,',
'       PERBASHRS,',
'       PERNISNO,',
'       PERNSTATUS,',
'       PERESTATUS,',
'       PERTAXCODE,',
'       PERWORKED,',
'       PERPENSION,',
'       PERFRSNAME,',
'       PERINITIAL,',
'       PERADDR2,',
'       PERADDR3,',
'       PERDOSC,',
'       PERLASTPAY,',
'       PERFRSTPAY,',
'       PERLASTREC,',
'       PEREMPLENO,',
'       PERPHONE,',
'       PERNETAMT,',
'       PERNETYTD,',
'       PERFREEPAY,',
'       PERDOCRGTX,',
'       ID,',
'       SALUTATION,',
'       MARITAL_STATUS',
'  from IMP_EMPLOYEE a join IMP_DESIGNATIONS b on b.desigcode = a.PERDESIG',
'  JOIN IMP_PAYDEPT C ON C.DEPTCODEC=A.PERDEPT'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'G_PARSING_SCHEMA'
,p_plug_display_when_cond2=>'CAMEX'
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
 p_id=>wwv_flow_imp.id(590039174540513774)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TEMPLATE_APPV8'
,p_internal_uid=>62206625009645339
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039335146513775)
,p_db_column_name=>'PERSURNAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Persurname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039351059513776)
,p_db_column_name=>'PERADDR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Peraddr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039548244513777)
,p_db_column_name=>'PERDOB'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Perdob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039594418513778)
,p_db_column_name=>'PERSEX'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Persex'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039726185513779)
,p_db_column_name=>'PERMSTATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Permstatus'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039778765513780)
,p_db_column_name=>'PERDESIG'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Perdesig'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039877423513781)
,p_db_column_name=>'DESIGDESCR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Desigdescr'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590039955891513782)
,p_db_column_name=>'PERDEPT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Perdept'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590040060575513783)
,p_db_column_name=>'DEPTDESCRC'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Deptdescrc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590040157360513784)
,p_db_column_name=>'PERDOE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Perdoe'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(590040265545513785)
,p_db_column_name=>'PERPAYTYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Perpaytype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593190583949406436)
,p_db_column_name=>'PERPAYMTHD'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Perpaymthd'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593190699861406437)
,p_db_column_name=>'PERBASIC'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Perbasic'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593190803238406438)
,p_db_column_name=>'PERBASHRS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Perbashrs'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593190927944406439)
,p_db_column_name=>'PERNISNO'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Pernisno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191017010406440)
,p_db_column_name=>'PERNSTATUS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Pernstatus'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191132336406441)
,p_db_column_name=>'PERESTATUS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Perestatus'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191159592406442)
,p_db_column_name=>'PERTAXCODE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Pertaxcode'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191331292406443)
,p_db_column_name=>'PERWORKED'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Perworked'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191397746406444)
,p_db_column_name=>'PERPENSION'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Perpension'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191515648406445)
,p_db_column_name=>'PERFRSNAME'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Perfrsname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191594778406446)
,p_db_column_name=>'PERINITIAL'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Perinitial'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191677827406447)
,p_db_column_name=>'PERADDR2'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Peraddr2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191819247406448)
,p_db_column_name=>'PERADDR3'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Peraddr3'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191855784406449)
,p_db_column_name=>'PERDOSC'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Perdosc'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593191951266406450)
,p_db_column_name=>'PERLASTPAY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Perlastpay'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192080139406451)
,p_db_column_name=>'PERFRSTPAY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Perfrstpay'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192208465406452)
,p_db_column_name=>'PERLASTREC'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Perlastrec'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192320735406453)
,p_db_column_name=>'PEREMPLENO'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Perempleno'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192399895406454)
,p_db_column_name=>'PERPHONE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Perphone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192524611406455)
,p_db_column_name=>'PERNETAMT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Pernetamt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192593696406456)
,p_db_column_name=>'PERNETYTD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Pernetytd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192708370406457)
,p_db_column_name=>'PERFREEPAY'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Perfreepay'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192808141406458)
,p_db_column_name=>'PERDOCRGTX'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Perdocrgtx'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593192871853406459)
,p_db_column_name=>'ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593193033751406460)
,p_db_column_name=>'SALUTATION'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Salutation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(593193114839406461)
,p_db_column_name=>'MARITAL_STATUS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Marital Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(528011288504452805)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1172914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PERSURNAME:PERADDR:PERDOB:PERSEX:PERMSTATUS:PERDESIG:DESIGDESCR:PERDEPT:DEPTDESCRC:PERDOE:PERPAYTYPE:PERPAYMTHD:PERBASIC:PERBASHRS:PERNISNO:PERNSTATUS:PERESTATUS:PERTAXCODE:PERWORKED:PERPENSION:PERFRSNAME:PERINITIAL:PERADDR2:PERADDR3:PERDOSC:PERLASTP'
||'AY:PERFRSTPAY:PERLASTREC:PEREMPLENO:PERPHONE:PERNETAMT:PERNETYTD:PERFREEPAY:PERDOCRGTX:ID:SALUTATION:MARITAL_STATUS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(674558787038713233)
,p_plug_name=>'Employees By Nationality'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElECT  NATIONALITY, FIRST_NAME, SURNAME, DOB,ind.id id_ind, emp.id emp_id,',
'pkg_global_fnts.get_lookup_col(employment_class_id, ''VALUE_DESCRIPTION'') EMPLOYMENT_CLASS, POSITION_NAME,',
'PKG_GLOBAL_FNTS.fn_getCurNISTAXNO(ind.id , ''NATIONAL ID'' ,SYSDATE  )  NATIONAL_ID,',
'PKG_GLOBAL_FNTS.fn_getCurNISTAXNO(ind.id , ''NIS NUMBER'' ,SYSDATE  )  NIS,',
'PKG_GLOBAL_FNTS.fn_getCurNISTAXNO(ind.id , ''TIN'' ,SYSDATE  )  TIN,',
'date_separated, SEPARATED_status',
'--pkg_global_fnts.get_lookup_col(separated_status, ''VALUE_DESCRIPTION'')  separated_status',
'FROM HR_RCM_INDIVIDUAL ind JOIN HR_RCM_EMPLOYEE EMP on ind.id = emp.ind_id',
'where org_id =:APP_ORG_ID',
'order by date_separated desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>':G_PARSING_SCHEMA = ''GAFOORS'''
,p_plug_display_when_cond2=>'PLSQL'
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
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(674558889644713234)
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
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR,P1281_ID_IND:#EMP_ID#,66,#ID_IND##ID#,66,#TRUE_IND_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_owner=>'APPS'
,p_internal_uid=>263838931344903034
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674559426467713239)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>50
,p_column_identifier=>'A'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694886498447523203)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>190
,p_column_identifier=>'B'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694888914014523227)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>430
,p_column_identifier=>'C'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694890714947523245)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>440
,p_column_identifier=>'D'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694890851380523246)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>450
,p_column_identifier=>'E'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694890880927523247)
,p_db_column_name=>'SURNAME'
,p_display_order=>460
,p_column_identifier=>'F'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891053065523248)
,p_db_column_name=>'DOB'
,p_display_order=>470
,p_column_identifier=>'G'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891116927523249)
,p_db_column_name=>'NATIONAL_ID'
,p_display_order=>480
,p_column_identifier=>'H'
,p_column_label=>'National Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891191295523250)
,p_db_column_name=>'NIS'
,p_display_order=>490
,p_column_identifier=>'I'
,p_column_label=>'Nis'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891286789517601)
,p_db_column_name=>'TIN'
,p_display_order=>500
,p_column_identifier=>'J'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891412174517602)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>510
,p_column_identifier=>'K'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891490595517603)
,p_db_column_name=>'ID_IND'
,p_display_order=>520
,p_column_identifier=>'L'
,p_column_label=>'Id Ind'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(694891635516517604)
,p_db_column_name=>'EMP_ID'
,p_display_order=>530
,p_column_identifier=>'M'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(694901145018513236)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2841812'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NATIONALITY:FIRST_NAME:SURNAME:DOB:EMPLOYMENT_CLASS:POSITION_NAME:DATE_SEPARATED:SEPARATED_STATUS:NATIONAL_ID:NIS:TIN:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(694904579860471848)
,p_report_id=>wwv_flow_imp.id(694901145018513236)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DATE_SEPARATED'
,p_operator=>'is null'
,p_condition_sql=>'"DATE_SEPARATED" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(694905025896468532)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated Employees'
,p_report_seq=>10
,p_report_alias=>'2841851'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NATIONALITY:FIRST_NAME:SURNAME:DOB:EMPLOYMENT_CLASS:POSITION_NAME:DATE_SEPARATED:SEPARATED_STATUS:NATIONAL_ID:NIS:TIN:'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(694905439017468530)
,p_report_id=>wwv_flow_imp.id(694905025896468532)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DATE_SEPARATED'
,p_operator=>'is not null'
,p_condition_sql=>'"DATE_SEPARATED" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3840558641209192469)
,p_plug_name=>'Listing of Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v."ID", v.transaction_type_id,COMPUTE_GROSS,employee_status,employment_type_id,emp_grade_id,',
'"EMP_COMPANY_NO",',
'"IND_ID",',
'"REPORT_TO",',
'w.id true_ind_id,',
'"CONFIRMED",',
'"PERMANENT_STAFF",',
'initcap("EMPLOYMENT_STATUS") EMPLOYMENT_STATUS,',
'initcap("EMPLOYMENT_CLASS") EMPLOYMENT_CLASS,',
'"PAYMENT_TYPE",',
'"DATE_EMPLOYED",',
'"SHIRT",',
'"SHOE",',
'"TROUSERS",',
'"CAP_SIZE",',
'"WAIST",',
'"DATE_INTERVIEWED",',
'"INTERVIEWED_BY",',
'"REPORT_TO_FUNCTIONAL",',
'"APPOINTMENT_DATE",',
'"CONTRACT_STAFF",',
'"BADGE",',
'"DATE_SEPARATED",',
'"REHIRED",',
'v."PRIMARY_TAX_JOB",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'"APPLICATION_DATE",',
'"JOB_APPLIED_FOR",',
'"UNION_CODE",',
'"SEPARATED_STATUS",',
'"PAYROLL_EFFECTIVE",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."LAST_CHANGED_BY",',
'v."LAST_CHANGED_DATE",',
'"POSITION_NAME",',
'"UNION_CODE_ID",',
'union_join_date,',
'separated_status_id,',
'position_id, ',
'wklocation_id,',
'V.appointment_end_date,',
'PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date)) yrs_srv,',
'CASE when "INCLUDE_PAYROLL"=''Y'' then ''Yes'' else ''No'' end "INCLUDE_PAYROLL",',
'pkg_global_fnts.fn_hourlyrate(v.id,sysdate) hourly_rate,',
'pkg_global_fnts.fn_personalrate(v.id,sysdate) personal_rate,',
'pkg_global_fnts.fn_getsysadditionSum(v.id) Other_sys_all,',
'pkg_global_fnts.fn_personalrate(v.id,sysdate) + pkg_global_fnts.fn_getsysadditionSum(v.id) Gross',
',(Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_position c on  m.id=c.orgdtl_id',
'where c.id =v.position_id) org_structure,',
'decode(nvl(dbms_lob.getlength(w.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',w.id)||''" height="75" width="75" />'') detail_img     ',
'                    ,dbms_lob.getlength(w.PHOTO)  image     ',
'              ,w.id Ind_link, shift_id, surname||'', ''||first_name Employee',
'from "HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'left outer join hr_hcf_orgstructuredtl od on od.id = v.orgdtl_id',
'where v.org_id=:APP_ORG_ID ',
'and nvl(od.org_structure_id,1) = nvl(:P66_ORG_STRUCTURE_1, nvl(od.org_structure_id,1))',
'and v.EMPLOYMENT_CLASS_ID =CASE WHEN :APP_ORG_ID =699 THEN v.EMPLOYMENT_CLASS_ID  ',
'                                ELSE  TO_NUMBER(nvl(:P66_EMPLOYMENT_CLASS_1, v.EMPLOYMENT_CLASS_ID))',
'                            END',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type             ',
'              )  ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain z',
'             where NVL(z.grade_id, nvl(v.emp_grade_id,1)) = nvl(v.emp_grade_id,1)',
'             and user_name=:APP_USER) ',
'             /*',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'          where  nvl(t.id,1)= nvl(v.ORGDTL_ID,1)',
'          and nvl(v.ORGDTL_ID,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(v.ORGDTL_ID,1), k.org_structure_id)         ',
'          )',
'          */'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P66_ORG_STRUCTURE_1,P66_EMPLOYMENT_CLASS_1'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(3840558113567192463)
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
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_NAVIGATOR,P1281_ID_IND,GLOBAL_EMP,GLOBAL_IND:#ID#,66,#TRUE_IND_ID#,#ID#,#TRUE_IND_ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>154490073090891615
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751197637535987193)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751198453804987200)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'In Payroll'
,p_column_type=>'STRING'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751198888676987203)
,p_db_column_name=>'PERMANENT_STAFF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Permanent Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERMANENT_STAFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751199284781987207)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751199603064987210)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751200061828987214)
,p_db_column_name=>'IND_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Name                     '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'IND_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854371014107666782)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751200426857987217)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751200883580987220)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751201203719987223)
,p_db_column_name=>'SHIRT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Shirt'
,p_column_type=>'STRING'
,p_static_id=>'SHIRT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751201671657987228)
,p_db_column_name=>'SHOE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Shoe'
,p_column_type=>'STRING'
,p_static_id=>'SHOE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751202040597987232)
,p_db_column_name=>'TROUSERS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Trousers'
,p_column_type=>'STRING'
,p_static_id=>'TROUSERS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751202476863987235)
,p_db_column_name=>'CAP_SIZE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cap Size'
,p_column_type=>'STRING'
,p_static_id=>'CAP_SIZE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751202894568987237)
,p_db_column_name=>'WAIST'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Waist'
,p_column_type=>'STRING'
,p_static_id=>'WAIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751203201049987240)
,p_db_column_name=>'DATE_INTERVIEWED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Date Interviewed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_INTERVIEWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751203632882987243)
,p_db_column_name=>'INTERVIEWED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interviewed By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'INTERVIEWED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751204092971987246)
,p_db_column_name=>'REPORT_TO_FUNCTIONAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Report To Functional'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'REPORT_TO_FUNCTIONAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751204454277987249)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPOINTMENT_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751204791680987251)
,p_db_column_name=>'CONTRACT_STAFF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Contract Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONTRACT_STAFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751205566161987256)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751205972991987259)
,p_db_column_name=>'REHIRED'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Rehired'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'REHIRED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751206313840987262)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRIMARY_TAX_JOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751206786194987266)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751207200261987269)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751207532703987272)
,p_db_column_name=>'APPLICATION_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751207915946987275)
,p_db_column_name=>'JOB_APPLIED_FOR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Job Applied For'
,p_column_type=>'STRING'
,p_static_id=>'JOB_APPLIED_FOR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751208303788987277)
,p_db_column_name=>'UNION_CODE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Union Name'
,p_column_type=>'STRING'
,p_static_id=>'UNION_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751208798951987281)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_static_id=>'SEPARATED_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751209156709987284)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751209588125987286)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751209926513987290)
,p_db_column_name=>'REPORT_TO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Report To'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'REPORT_TO'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751210328249987294)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751210798101987297)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751211140615987300)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751211958183987309)
,p_db_column_name=>'UNION_CODE_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Union Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'UNION_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751212755134987315)
,p_db_column_name=>'YRS_SRV'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Yrs Srv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'YRS_SRV'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751213197799987318)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751213903128987326)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Transaction type id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751197242211987190)
,p_db_column_name=>'SEPARATED_STATUS_ID'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Separated Status Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751196012021987180)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854282232860521260)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751196490774987183)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762868478130635225)
,p_db_column_name=>'BADGE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Badge'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3702405636383858900)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3850535505912657325)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3702405725633858901)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3702406226718858906)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3702406348342858907)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3226792605849387696)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704181810080764859)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>540
,p_column_identifier=>'BC'
,p_column_label=>'Emp Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854383333898666794)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704181985433764860)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>550
,p_column_identifier=>'BD'
,p_column_label=>'Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3713592203721677760)
,p_db_column_name=>'IND_LINK'
,p_display_order=>560
,p_column_identifier=>'BE'
,p_column_label=>'Ind Link'
,p_column_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP,1261:P1261_ID:#IND_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>'PKG_SECURITY.GET_REGION_ACCESS(''FRMINDIVIDUAL'') > 0 '
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3695760210179957910)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>570
,p_column_identifier=>'BG'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3822076704958446892)
,p_db_column_name=>'APPOINTMENT_END_DATE'
,p_display_order=>580
,p_column_identifier=>'BH'
,p_column_label=>'Appointment End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563060104956097541)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>590
,p_column_identifier=>'BI'
,p_column_label=>'Shift Rotation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3707128708215016865)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563060299374097543)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>610
,p_column_identifier=>'BK'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2132400747560790418)
,p_db_column_name=>'IMAGE'
,p_display_order=>630
,p_column_identifier=>'BM'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:HR_RCM_INDIVIDUAL:PHOTO:ID::MIMETYPE:FILENAME:::::'
,p_static_id=>'image'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2132401166300790422)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>640
,p_column_identifier=>'BO'
,p_column_label=>'Detail Img'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2139476115989308017)
,p_db_column_name=>'UNION_JOIN_DATE'
,p_display_order=>650
,p_column_identifier=>'BP'
,p_column_label=>'Union Join Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(537564075239092704)
,p_db_column_name=>'TRUE_IND_ID'
,p_display_order=>660
,p_column_identifier=>'BQ'
,p_column_label=>'True Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674558446015713229)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>670
,p_column_identifier=>'BR'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':G_PARSING_SCHEMA = ''GAFOORS'''
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674558467881713230)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>680
,p_column_identifier=>'BS'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':G_PARSING_SCHEMA = ''GAFOORS'''
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674558630174713231)
,p_db_column_name=>'OTHER_SYS_ALL'
,p_display_order=>690
,p_column_identifier=>'BT'
,p_column_label=>'Other Sys All'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':G_PARSING_SCHEMA = ''GAFOORS'''
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(674558716936713232)
,p_db_column_name=>'GROSS'
,p_display_order=>700
,p_column_identifier=>'BU'
,p_column_label=>'Gross'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':G_PARSING_SCHEMA = ''GAFOORS'''
,p_display_condition2=>'PLSQL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3814241878605695471)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated Employees'
,p_report_seq=>10
,p_report_alias=>'272417'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'IND_ID:DATE_EMPLOYED:DATE_SEPARATED:YRS_SRV:POSITION_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:IND_LINK'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3708640845910612093)
,p_report_id=>wwv_flow_imp.id(3814241878605695471)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS'
,p_operator=>'is not null'
,p_condition_sql=>'"SEPARATED_STATUS" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3832754115515671286)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'272429'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_STRUCTURE:POSITION_ID:EMP_COMPANY_NO:IND_ID:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV:WKLOCATION_ID:EMP_GRADE_ID:APPOINTMENT_END_DATE:SHIFT_ID:EMPLOYMENT_TYPE_ID:UNION_CODE:UNION_JOIN_DATE:HOURLY_RATE:PERSONAL_RATE:OTHER_SYS_ALL:GROSS:I'
||'ND_LINK:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(682721565085557512)
,p_report_id=>wwv_flow_imp.id(3832754115515671286)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS'
,p_operator=>'is null'
,p_condition_sql=>'"SEPARATED_STATUS" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(19081998382427060273)
,p_plug_name=>'Employees Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", v.transaction_type_id,COMPUTE_GROSS,employment_type_id,emp_grade_id, v.id PK_value,',
'"EMP_COMPANY_NO",',
'"IND_ID",',
'"REPORT_TO",',
'"CONFIRMED",',
'"PERMANENT_STAFF",',
'initcap("EMPLOYMENT_STATUS") EMPLOYMENT_STATUS,',
'initcap("EMPLOYMENT_CLASS") EMPLOYMENT_CLASS,',
'"PAYMENT_TYPE",',
'"DATE_EMPLOYED",',
'"SHIRT",',
'"SHOE",',
'"TROUSERS",',
'"CAP_SIZE",',
'"WAIST",',
'"DATE_INTERVIEWED",',
'"INTERVIEWED_BY",',
'"REPORT_TO_FUNCTIONAL",',
'"APPOINTMENT_DATE",',
'"CONTRACT_STAFF",',
'"BADGE",',
'"DATE_SEPARATED",',
'"REHIRED",',
'v."PRIMARY_TAX_JOB",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'"APPLICATION_DATE",',
'"JOB_APPLIED_FOR",',
'"UNION_CODE",',
'"SEPARATED_STATUS",',
'"PAYROLL_EFFECTIVE",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."LAST_CHANGED_BY",',
'v."LAST_CHANGED_DATE",',
'"POSITION_NAME",',
'"UNION_CODE_ID",separated_status_id,',
'position_id, ',
'wklocation_id,',
'PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date )) yrs_srv,',
'CASE when "INCLUDE_PAYROLL"=''Y'' then ''Yes'' else ''No'' end "INCLUDE_PAYROLL"',
',(Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_position c on  m.id=c.orgdtl_id',
'where c.id =v.position_id) ORG_STRUCTURE,',
'/*decode(nvl(dbms_lob.getlength(w.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',w.id)||''" height="75" width="75" />'') detail_img */',
'                   dbms_lob.getlength(PHOTO)  image         ',
'              ,w.id Ind_link, shift_id, surname||'', ''||first_name Employee',
'from "#OWNER#"."HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'WHERE ORG_ID= :APP_ORG_ID',
'AND EMPLOYMENT_CLASS_ID=  :P66_EMPLOYMENT_CLASS',
'and exists(',
'              select 1',
'              FROM VW_USERACCESS A  ',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)             ',
'              )    ',
'             ',
'union',
'select v."ID", v.transaction_type_id,COMPUTE_GROSS,employment_type_id,emp_grade_id, v.id PK_value,',
'"EMP_COMPANY_NO",',
'"IND_ID",',
'"REPORT_TO",',
'"CONFIRMED",',
'"PERMANENT_STAFF",',
'initcap("EMPLOYMENT_STATUS") EMPLOYMENT_STATUS,',
'initcap("EMPLOYMENT_CLASS") EMPLOYMENT_CLASS,',
'"PAYMENT_TYPE",',
'"DATE_EMPLOYED",',
'"SHIRT",',
'"SHOE",',
'"TROUSERS",',
'"CAP_SIZE",',
'"WAIST",',
'"DATE_INTERVIEWED",',
'"INTERVIEWED_BY",',
'"REPORT_TO_FUNCTIONAL",',
'"APPOINTMENT_DATE",',
'"CONTRACT_STAFF",',
'"BADGE",',
'"DATE_SEPARATED",',
'"REHIRED",',
'v."PRIMARY_TAX_JOB",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'"APPLICATION_DATE",',
'"JOB_APPLIED_FOR",',
'"UNION_CODE",',
'"SEPARATED_STATUS",',
'"PAYROLL_EFFECTIVE",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."LAST_CHANGED_BY",',
'v."LAST_CHANGED_DATE",',
'"POSITION_NAME",',
'"UNION_CODE_ID",separated_status_id,',
'position_id, ',
'wklocation_id,',
'PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date -4/24)) yrs_srv,',
'CASE when "INCLUDE_PAYROLL"=''Y'' then ''Yes'' else ''No'' end "INCLUDE_PAYROLL"',
',(Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_position c on  m.id=c.orgdtl_id',
'where c.id =v.position_id) ORG_STRUCTURE,',
'/*decode(nvl(dbms_lob.getlength(w.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',w.id)||''" height="75" width="75" />'') detail_img        */',
'                dbms_lob.getlength(PHOTO)  image  ',
'              ,w.id Ind_link, shift_id, surname||'', ''||first_name Employee',
'from "#OWNER#"."HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'WHERE ORG_ID= :APP_ORG_ID',
'AND EMPLOYMENT_CLASS_ID =:P66_EMPLOYMENT_CLASS',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type',
'              and v.id= case when pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1 then a.employee_no else decode(pkg_global_fnts.fn_selfserveuser(:APP_ORG_ID),1,a.employee_no,v.id) end',
'              )',
'            '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P66_ORG_STRUCTURE,P66_EMPLOYMENT_CLASS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1'))
,p_plug_display_when_cond2=>'PLSQL'
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(19081998621545060278)
,p_name=>'Customers'
,p_max_row_count=>'100000'
,p_max_row_count_message=>'This query returns more than #MAX_ROW_COUNT# rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID:#ID#'
,p_detail_link_text=>'<img src="#APEX_FILES#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'MIKE'
,p_internal_uid=>15860062175713588942
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751187431698987109)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Selected Customer'
,p_column_link=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.:50:P50_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#themes/theme_13/ed-item.gif" alt="Edit" />'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751171167300986963)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>27
,p_column_identifier=>'BI'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751171518163986966)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>37
,p_column_identifier=>'BJ'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751171983221986971)
,p_db_column_name=>'IND_ID'
,p_display_order=>47
,p_column_identifier=>'BK'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854371014107666782)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751172366136986975)
,p_db_column_name=>'REPORT_TO'
,p_display_order=>57
,p_column_identifier=>'BL'
,p_column_label=>'Report To'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854414658122718020)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751172738847986980)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>67
,p_column_identifier=>'BM'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751173149697986983)
,p_db_column_name=>'PERMANENT_STAFF'
,p_display_order=>77
,p_column_identifier=>'BN'
,p_column_label=>'Permanent Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751173532292986987)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>87
,p_column_identifier=>'BO'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751173903634986990)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>97
,p_column_identifier=>'BP'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751174353178986993)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>107
,p_column_identifier=>'BQ'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751174770603986998)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>117
,p_column_identifier=>'BR'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751177150520987020)
,p_db_column_name=>'DATE_INTERVIEWED'
,p_display_order=>177
,p_column_identifier=>'BX'
,p_column_label=>'Date Interviewed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751177574274987023)
,p_db_column_name=>'INTERVIEWED_BY'
,p_display_order=>187
,p_column_identifier=>'BY'
,p_column_label=>'Interviewed By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751177902875987026)
,p_db_column_name=>'REPORT_TO_FUNCTIONAL'
,p_display_order=>197
,p_column_identifier=>'BZ'
,p_column_label=>'Report To Functional'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751178369102987029)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>207
,p_column_identifier=>'CA'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751178734227987032)
,p_db_column_name=>'CONTRACT_STAFF'
,p_display_order=>217
,p_column_identifier=>'CB'
,p_column_label=>'Contract Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751179581854987038)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>237
,p_column_identifier=>'CD'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751179968483987042)
,p_db_column_name=>'REHIRED'
,p_display_order=>247
,p_column_identifier=>'CE'
,p_column_label=>'Rehired'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751180356716987045)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>257
,p_column_identifier=>'CF'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751180746987987049)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>267
,p_column_identifier=>'CG'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751181070645987052)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>277
,p_column_identifier=>'CH'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751181493340987054)
,p_db_column_name=>'APPLICATION_DATE'
,p_display_order=>287
,p_column_identifier=>'CI'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751181833744987057)
,p_db_column_name=>'JOB_APPLIED_FOR'
,p_display_order=>297
,p_column_identifier=>'CJ'
,p_column_label=>'Job Applied For'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751182272579987060)
,p_db_column_name=>'UNION_CODE'
,p_display_order=>307
,p_column_identifier=>'CK'
,p_column_label=>'Union Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751182622799987063)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>317
,p_column_identifier=>'CL'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751183025357987067)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>327
,p_column_identifier=>'CM'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751183480618987070)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>337
,p_column_identifier=>'CN'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751183807714987074)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>347
,p_column_identifier=>'CO'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751184280117987078)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>357
,p_column_identifier=>'CP'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751184627839987082)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>367
,p_column_identifier=>'CQ'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751185028518987085)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>377
,p_column_identifier=>'CR'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751185412068987089)
,p_db_column_name=>'UNION_CODE_ID'
,p_display_order=>387
,p_column_identifier=>'CS'
,p_column_label=>'Union Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751185895965987092)
,p_db_column_name=>'SEPARATED_STATUS_ID'
,p_display_order=>397
,p_column_identifier=>'CT'
,p_column_label=>'Separated Status Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751186277317987097)
,p_db_column_name=>'YRS_SRV'
,p_display_order=>427
,p_column_identifier=>'CW'
,p_column_label=>'Yrs Srv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751186638934987101)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>437
,p_column_identifier=>'CX'
,p_column_label=>'Include Payroll'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751187049271987104)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>447
,p_column_identifier=>'CY'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751170431365986954)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>457
,p_column_identifier=>'DA'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854282232860521260)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3702405536372858899)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>477
,p_column_identifier=>'DC'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3850535505912657325)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3751170792390986958)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>487
,p_column_identifier=>'DB'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704182137085764862)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>507
,p_column_identifier=>'DE'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3730001999198556470)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704182241054764863)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>517
,p_column_identifier=>'DF'
,p_column_label=>'Grade Scale'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854383333898666794)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694276342022663497)
,p_db_column_name=>'SHIRT'
,p_display_order=>527
,p_column_identifier=>'DG'
,p_column_label=>'Shirt'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694276506511663498)
,p_db_column_name=>'SHOE'
,p_display_order=>537
,p_column_identifier=>'DH'
,p_column_label=>'Shoe'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694276632599663499)
,p_db_column_name=>'TROUSERS'
,p_display_order=>547
,p_column_identifier=>'DI'
,p_column_label=>'Trousers'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694276643040663500)
,p_db_column_name=>'CAP_SIZE'
,p_display_order=>557
,p_column_identifier=>'DJ'
,p_column_label=>'Cap Size'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694276804498663501)
,p_db_column_name=>'WAIST'
,p_display_order=>567
,p_column_identifier=>'DK'
,p_column_label=>'Waist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694276909517663502)
,p_db_column_name=>'BADGE'
,p_display_order=>577
,p_column_identifier=>'DL'
,p_column_label=>'Badge'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3694277085798663504)
,p_db_column_name=>'IND_LINK'
,p_display_order=>597
,p_column_identifier=>'DN'
,p_column_label=>'Ind Link'
,p_column_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP,1261:P1261_ID:#IND_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3701217487367348757)
,p_db_column_name=>'PK_VALUE'
,p_display_order=>607
,p_column_identifier=>'DO'
,p_column_label=>'Pk Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563059949613097539)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>617
,p_column_identifier=>'DP'
,p_column_label=>'Shift Rotation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3707128708215016865)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3563060054669097540)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>627
,p_column_identifier=>'DQ'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2132400804121790419)
,p_db_column_name=>'IMAGE'
,p_display_order=>637
,p_column_identifier=>'DR'
,p_column_label=>'Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'IMAGE:HR_RCM_INDIVIDUAL:PHOTO:ID::::::::'
,p_static_id=>'image'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3697322604638141454)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'893830'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IND_ID:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV:WKLOCATION_ID:COMPUTE_GROSS:EMPLOYMENT_STATUS:EMPLOYMENT_TYPE_ID:EMP_GRADE_ID:IND_LINK'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3697322965659141455)
,p_report_id=>wwv_flow_imp.id(3697322604638141454)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS_ID'
,p_operator=>'is not null'
,p_condition_sql=>'"SEPARATED_STATUS_ID" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(19082013167143060315)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'272156'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'IND_ID:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV:WKLOCATION_ID:COMPUTE_GROSS:EMPLOYMENT_STATUS:EMPLOYMENT_TYPE_ID:EMP_GRADE_ID:IND_LINK::PK_VALUE:SHIFT_ID:EMPLOYEE:IMAGE'
,p_sort_column_1=>'CUSTOMER_NAME'
,p_sort_direction_1=>'ASC'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3697322175136137298)
,p_report_id=>wwv_flow_imp.id(19082013167143060315)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS_ID'
,p_operator=>'is null'
,p_condition_sql=>'"SEPARATED_STATUS_ID" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23660256952292642439)
,p_plug_name=>'Employee Search Center'
,p_icon_css_classes=>'app-customer-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>70
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'  ',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Find, Filter and Organise Employees. </p>'');',
'  else',
'     sys.htp.p(''<p>''||apex_escape.html(t)||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'HTML',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23660257316528642442)
,p_plug_name=>'Search_top'
,p_parent_plug_id=>wwv_flow_imp.id(23660256952292642439)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694277238266663505)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(19081998382427060273)
,p_button_name=>'ADD_CUSTOMER_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--gapLeft'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add Employee'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P66_ENTRY_SCREEN.:&SESSION.::&DEBUG.:&P66_ENTRY_SCREEN.:P51_RETURN_VALUE:66'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3751164778570986916)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3840558641209192469)
,p_button_name=>'ADD_CUSTOMER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Add Employee'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109::'
,p_icon_css_classes=>'fa-table-new'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782159764598906737)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(19081998382427060273)
,p_button_name=>'FACET_LIST'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Facet List'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1280:&SESSION.::&DEBUG.:1280::'
,p_button_condition=>'1280'
,p_button_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-list-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782159535258905411)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(19081998382427060273)
,p_button_name=>'FACET_CARDS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Facet Cards'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150::'
,p_button_condition=>'150'
,p_button_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-layout-nav-right-cards'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782158953322902298)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3840558641209192469)
,p_button_name=>'FACET_CARDS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Facet Cards'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:150:&SESSION.::&DEBUG.:150::'
,p_button_condition=>'150'
,p_button_condition_type=>'CURRENT_PAGE_NOT_EQUAL_CONDITION'
,p_icon_css_classes=>'fa-layout-nav-right-cards'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3709063943526740690)
,p_name=>'P66_ORG_STRUCTURE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(19081998382427060273)
,p_prompt=>'Org Structure'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where exists (select 1 ',
'              from hr_rcm_employee e',
'              where ohd.org_id = e.org_id)',
'and ohd.org_id = :P66_ORGANISATION',
'order by 1    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Value--'
,p_lov_cascade_parent_items=>'P66_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3709064536298740696)
,p_name=>'P66_ORG_STRUCTURE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3840558641209192469)
,p_prompt=>'Organisation Structure'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select org_structure_name osn, id',
'from hr_hcf_orgstructurehd ohd',
'where exists (select 1 ',
'              from hr_rcm_employee e join vw_useraccess v on (e.payment_type = v.payment_type',
'                                                            and e.employment_class_id = v.employment_class_id',
'                                                            and e.org_id = v.org_id)',
'              where ohd.org_id = e.org_id)',
'and ohd.org_id = :P66_ORGANISATION_1',
'and (DATE_ENDED is null or DATE_ENDED > trunc(sysdate))',
'order by 1    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P66_ORGANISATION_1'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3720261037992610245)
,p_name=>'P66_ENTRY_SCREEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3840558641209192469)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(sum(case when emP_hist_change=0 then 1281 else 109 end ),1281) output',
'from hr_hcf_org_rule',
'where org_id = :APP_ORG_ID',
'and start_date < trunc(current_date)',
'and (end_date > trunc(current_date) or end_date is null)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751189484698987142)
,p_name=>'P66_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(19081998382427060273)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search by Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE EXISTS (SELECT 1',
'              FROM HR_RCM_EMPLOYEE B ',
'              where a.id=ORG_ID)',
'and a.id =:APP_ORG_ID',
'ORDER BY 1       '))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751189808952987143)
,p_name=>'P66_EMPLOYMENT_CLASS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(19081998382427060273)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,id',
'from table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTCLASS'')) A',
'where exists (select 1',
'              from HR_RCM_EMPLOYEE B join VW_USERACCESS x on (b.EMPLOYMENT_CLASS_ID=x.EMPLOYMENT_CLASS_ID and b.payment_type=x.payment_type and b.org_id=x.org_id)',
'              join hr_hcf_orgstructuredtl od on od.id = b.orgdtl_id',
'              AND od.org_structure_id=:P66_ORG_STRUCTURE  ',
'              AND A.ID=b.EMPLOYMENT_CLASS_ID)     ',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select Value--'
,p_lov_null_value=>'1'
,p_lov_cascade_parent_items=>'P66_ORG_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751216366208987350)
,p_name=>'P66_ORGANISATION_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3840558641209192469)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search by Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE EXISTS (SELECT 1',
'              FROM HR_RCM_EMPLOYEE B ',
'              where a.id=ORG_ID)',
'and a.id =:APP_ORG_ID',
'ORDER BY 1       '))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3751216669039987351)
,p_name=>'P66_EMPLOYMENT_CLASS_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3840558641209192469)
,p_prompt=>'Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,id',
'from table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTCLASS'')) A',
'where exists (select 1',
'              from HR_RCM_EMPLOYEE B ',
'              join VW_USERACCESS x on (b.EMPLOYMENT_CLASS_ID=x.EMPLOYMENT_CLASS_ID and b.payment_type=x.payment_type and b.org_id=x.org_id)',
'              join hr_hcf_orgstructuredtl od on od.id = b.orgdtl_id',
'              where od.org_structure_id=NVL(:P66_ORG_STRUCTURE_1, od.org_structure_id)   ',
'              AND A.ID=b.EMPLOYMENT_CLASS_ID)     ',
'ORDER BY 1',
'',
'',
'',
'/*select VALUE_DESCRIPTION,id',
'from table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''TBLEMPLOYMENTCLASS'')) A',
'where exists (select 1',
'              from HR_RCM_EMPLOYEE B join VW_USERACCESS x on (b.EMPLOYMENT_CLASS_ID=x.EMPLOYMENT_CLASS_ID and b.payment_type=x.payment_type and b.org_id=x.org_id)',
'              WHERE b.ORG_ID=:P66_ORGANISATION_1',
'              AND A.ID=b.EMPLOYMENT_CLASS_ID)           ',
'            ',
'ORDER BY 1*/'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_cascade_parent_items=>'P66_ORG_STRUCTURE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3760245738710114527)
,p_name=>'P66_EMP_GOTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(23660257316528642442)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(:EMP_HIST_FLAG,0,1281, 51)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3711923886975830708)
,p_name=>'get_sel_class1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_EMPLOYMENT_CLASS_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3711923778372830707)
,p_event_id=>wwv_flow_imp.id(3711923886975830708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3840558641209192469)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3709062693591740677)
,p_name=>'get_sel_class'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P66_EMPLOYMENT_CLASS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3709062592186740676)
,p_event_id=>wwv_flow_imp.id(3709062693591740677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(19081998382427060273)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
