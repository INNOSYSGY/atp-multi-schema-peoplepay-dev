prompt --application/pages/page_01404
begin
--   Manifest
--     PAGE: 01404
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
 p_id=>1404
,p_name=>'frmEbankingRBGL'
,p_alias=>'FRMEBANKINGRBGL'
,p_step_title=>'frmEbankingRBGL'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3011976296220093863)
,p_plug_name=>'eBanking RBGL Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(surname_hist), first_name_hist,  replace(pd.BANK_ACCOUNT_NO,''-'','''') bank_account, pd.AMOUNT net_pay, period_start,pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from pa_pmg_payrolldtl a',
'join hr_rcm_employee b on b.id=a.emp_id',
'join hr_rcm_individual c on c.id=b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''RBGL'' then  ''%RBGL%''',
'                                       else '''' end',
'                                    ',
'and length(trim( replace(pd.BANK_ACCOUNT_NO,''-'','''')))<=12',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'                               ',
'union all',
'',
'select cast(''Total for ''||initcap(pd.BANK_BRANCH_NAME) as varchar2(200)), null,  null bank_account, sum(pd.AMOUNT), null,pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from pa_pmg_payrolldtl a',
'join hr_rcm_employee b on b.id=a.emp_id',
'join hr_rcm_individual c on c.id=b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''RBGL'' then  ''%RBGL%''',
'                                       else '''' end',
'                                     ',
'and length(trim( replace(bank_account_no_hist,''-'','''')))<=12',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'group by pd.BANK_BRANCH_NAME   '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1404_BANK'
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
,p_prn_header_font_color=>'#ffffff'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3011976344158093864)
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
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'APPS'
,p_internal_uid=>2601678519465857536
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119157975197584937)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>20
,p_column_identifier=>'L'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119157564089584935)
,p_db_column_name=>'NET_PAY'
,p_display_order=>40
,p_column_identifier=>'N'
,p_column_label=>'Net pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119157108159584934)
,p_db_column_name=>'BANK_ACCOUNT'
,p_display_order=>50
,p_column_identifier=>'O'
,p_column_label=>'Bank account'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119156707610584933)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>60
,p_column_identifier=>'P'
,p_column_label=>'Period start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119158779359584939)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>70
,p_column_identifier=>'Q'
,p_column_label=>'Bank Branch Id Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1514740102818273822)
,p_db_column_name=>'TO_CHAR(SURNAME_HIST)'
,p_display_order=>80
,p_column_identifier=>'R'
,p_column_label=>'To Char(surname Hist)'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3014764379712504728)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253877'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BANK_BRANCH_ID_HIST:FIRST_NAME_HIST:BANK_ACCOUNT:NET_PAY:PERIOD_START:TO_CHAR(SURNAME_HIST)'
,p_sort_column_1=>'SORT_OPTION'
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
,p_break_on=>'BANK_BRANCH_ID_HIST:0:0:0:0:0'
,p_break_enabled_on=>'BANK_BRANCH_ID_HIST:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3011977438313093875)
,p_plug_name=>'REGION_SELECTOR'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3016345334751483696)
,p_plug_name=>'eBanking Demarara Bank Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  to_char(first_name_hist||'' ''||surname_hist) "Name", o.TRANSITS "Bank Transit", replace(pd.BANK_ACCOUNT_NO,''-'','''') "Bank Account No", pd.AMOUNT "Amount",pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from hr_rcm_employee b join pa_pmg_payrolldtl a on b.id = a.emp_id',
'join hr_rcm_individual c on c.id = b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''DB'' then  ''%DEMERARA%BANK%''',
'        else  '''' end',
'    ',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK''',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'',
'union all',
'',
'select  cast(''Total for ''||initcap(pd.BANK_BRANCH_NAME) as varchar2(200)) "Name", null "Bank Transit", null "Bank Account No", sum(pd.AMOUNT) "Amount",pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from hr_rcm_employee b join pa_pmg_payrolldtl a on b.id = a.emp_id',
'join hr_rcm_individual c on c.id = b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''DB'' then  ''%DEMERARA%BANK%''',
'        else  '''' end',
'',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK''',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'group by pd.BANK_BRANCH_NAME                                ',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
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
,p_prn_header_font_color=>'#ffffff'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3016345507515483697)
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
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RLANGFORD'
,p_internal_uid=>2606047682823247369
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119154245474584912)
,p_db_column_name=>'Name'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119153840714584910)
,p_db_column_name=>'Bank Transit'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'Bank transit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119153473475584909)
,p_db_column_name=>'Bank Account No'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Bank account no'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119153047752584908)
,p_db_column_name=>'Amount'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119154631481584913)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Bank Branch Id Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3016733919233343100)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253914'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Account Value Date:Name:Bank Transit:Bank Account No:Amount:BANK_BRANCH_ID_HIST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3016735577247415356)
,p_plug_name=>'eBanking Scotia Bank Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   o.TRANSITS "Transit No", replace(pd.BANK_ACCOUNT_NO,''-'','''') "Account No", to_char(first_name_hist||'' ''||surname_hist) "Account Owner", pd.AMOUNT "Amount", pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from hr_rcm_employee b join pa_pmg_payrolldtl a on b.id = a.emp_id',
'join hr_rcm_individual c on c.id = b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''BNS'' then  ''%NOVA%SCOTIA%''',
'        else  '''' end',
'      ',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null) ',
'',
'union all',
'',
'select   null "Transit No", null "Account No", cast(''Total for ''||initcap(pd.BANK_BRANCH_NAME) as varchar2(200)) "Account Owner", sum(pd.AMOUNT) "Amount", pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from hr_rcm_employee b join pa_pmg_payrolldtl a on b.id = a.emp_id',
'join hr_rcm_individual c on c.id = b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''BNS'' then  ''%NOVA%SCOTIA%''',
'        else  '''' end',
'       ',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null) ',
'group by pd.BANK_BRANCH_NAME   '))
,p_plug_source_type=>'NATIVE_IR'
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
,p_prn_header_font_color=>'#ffffff'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3016735670899415357)
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
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RLANGFORD'
,p_internal_uid=>2606437846207179029
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119151092426584902)
,p_db_column_name=>'Amount'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119150769462584900)
,p_db_column_name=>'Transit No'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transit no'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119150318899584899)
,p_db_column_name=>'Account No'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Account no'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119149893829584898)
,p_db_column_name=>'Account Owner'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Account owner'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119151540074584903)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Bank Branch Id Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3016749806073451711)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253945'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Transit No:Account No:Account Owner:Amount::BANK_BRANCH_ID_HIST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3016736471900415365)
,p_plug_name=>'eBanking Citizens Bank Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select   replace(pd.BANK_ACCOUNT_NO,''-'','''') "Account No", pd.AMOUNT "Amount", to_char(first_name_hist||'' ''||surname_hist) "Account Owner",pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from hr_rcm_employee b join pa_pmg_payrolldtl a on b.id = a.emp_id',
'join hr_rcm_individual c on c.id = b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''CZB'' then  ''%CITIZENS%BANK%''',
'        else  '''' end',
'     ',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)  ',
'                               ',
'union all',
'',
'select   null "Account No", sum(pd.AMOUNT) "Amount", cast(''Total for ''||initcap(pd.BANK_BRANCH_NAME) as varchar2(200)) "Account Owner", pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from hr_rcm_employee b join pa_pmg_payrolldtl a on b.id = a.emp_id',
'join hr_rcm_individual c on c.id = b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''CZB'' then  ''%CITIZENS%BANK%''',
'        else  '''' end',
'     ',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'group by pd.BANK_BRANCH_NAME                           '))
,p_plug_source_type=>'NATIVE_IR'
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
,p_prn_header_font_color=>'#ffffff'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3016736517725415366)
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
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RLANGFORD'
,p_internal_uid=>2606438693033179038
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119147982983584892)
,p_db_column_name=>'Amount'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119147673597584891)
,p_db_column_name=>'Account No'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Account no'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119147265886584889)
,p_db_column_name=>'Account Owner'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Account owner'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119148385486584894)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Bank Branch Id Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3016757663337601053)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'253972'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Amount:Account No:Account Owner:BANK_BRANCH_ID_HIST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3016737080431415371)
,p_plug_name=>'eBanking GBTI Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pd.AMOUNT Amount, replace(pd.BANK_ACCOUNT_NO,''-'','''') "Account No.", to_char(first_name_hist||'' ''||surname_hist) "Account Name", period_start "Value Date", pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from pa_pmg_payrolldtl a',
'join hr_rcm_employee b on b.id=a.emp_id',
'join hr_rcm_individual c on c.id=b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where (upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''GBTII'' then  ''%BANK%FOR%TRADE%''',
'        else  '''' end',
'        OR',
'        upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''GBTII'' then  ''%GBTI%''',
'        else  '''' end)',
'',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK'' ',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'                               ',
'union all',
'select sum(pd.AMOUNT) Amount, null "Account No.", cast(''Total for ''||initcap(pd.BANK_BRANCH_NAME) as varchar2(200)) "Account Name", null "Value Date", pd.BANK_BRANCH_NAME bank_branch_id_hist',
'from pa_pmg_payrolldtl a',
'join hr_rcm_employee b on b.id=a.emp_id',
'join hr_rcm_individual c on c.id=b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where (upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''GBTII'' then  ''%BANK%FOR%TRADE%''',
'        else  '''' end',
'         OR',
'        upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''GBTII'' then  ''%GBTI%''',
'        else  '''' end)',
'      ',
'and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  pd.PAYMENT_MODE=''BANK''',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'group by pd.BANK_BRANCH_NAME    '))
,p_plug_source_type=>'NATIVE_IR'
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
,p_prn_header_font_color=>'#ffffff'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3016737166936415372)
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
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'RLANGFORD'
,p_internal_uid=>2606439342244179044
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119145357402584883)
,p_db_column_name=>'AMOUNT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119144950746584882)
,p_db_column_name=>'Account No.'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Account no.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119144556562584881)
,p_db_column_name=>'Account Name'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Account name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119144105052584880)
,p_db_column_name=>'Value Date'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Value date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119145743598584885)
,p_db_column_name=>'BANK_BRANCH_ID_HIST'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Bank Branch Id Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3016763347363654092)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'254003'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AMOUNT:Account No.:Account Name:Value Date:BANK_BRANCH_ID_HIST'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3102993954188010591)
,p_plug_name=>'eBanking Parameters'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY_3'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3102996359407010596)
,p_plug_name=>'eBanking ALL Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY_3'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.*',
'from (',
'select to_char(first_name_hist||'' ''||surname_hist) "Account Name", pd.AMOUNT Amount, replace(pd.BANK_ACCOUNT_NO,''-'','''') "Account No.",  period_start "Value Date", initcap(pd.BANK_BRANCH_NAME) Bank, o.TRANSITS BANK_TRANSIT,',
'1 sort_option',
'from pa_pmg_payrolldtl a',
'join HR_RCM_EMPLOYEE b on a.EMP_ID=b.id',
'join HR_RCM_INDIVIDUAL c on b.IND_ID=c.id  ',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null) ',
'and  pd.PAYMENT_MODE= case when :P1404_PAYMENT_MODE=''1'' then to_char(pd.PAYMENT_MODE) when :P1404_PAYMENT_MODE=''2'' then ''BANK'' when :P1404_PAYMENT_MODE=''3'' then ''CHEQUE'' end',
'and (pd.PAYMENT_MODE= ''BANK'' or pd.PAYMENT_MODE= ''CHEQUE'')    ',
'and (''1''= case when trim(:P1404_BANK) is null then ''1'' else '''' end',
'or upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''GBTII'' then  ''%BANK%FOR%TRADE%''',
'                                         when trim(:P1404_BANK) =''DB'' then  ''%DEMERARA%BANK%''',
'                                         when trim(:P1404_BANK) =''BNS'' then  ''%NOVA%SCOTIA%''',
'                                         when trim(:P1404_BANK) =''CB'' then  ''%CITIZENS%BANK%''',
'                                         when trim(:P1404_BANK) =''RBGL'' then  ''%RBGL%''  ',
'                                         when trim(:P1404_BANK) =''BOB'' then  ''%BARODA%''',
'                                         when trim(:P1404_BANK) =''NBS'' then  ''%BUILDING%SOCIETY%''',
'else  '''' end)',
'and (''1''= case when trim(:P1404_SUB_BRANCH) is null then ''1'' else '''' end',
'or pd.BANK_BRANCH_ID = :P1404_SUB_BRANCH)',
'---Summaries',
'union all',
'select cast(''Total for ''||initcap(pd.BANK_BRANCH_NAME) as varchar2(200)) "Account Name", sum(pd.AMOUNT) Amount, null "Account No.",  null  "Value Date", initcap(pd.BANK_BRANCH_NAME) Bank, null,',
'9999 sort_option',
'from pa_pmg_payrolldtl a',
'join hr_rcm_employee b on b.id=a.emp_id',
'join hr_rcm_individual c on c.id=b.ind_id',
'join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'where EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null)',
'and  pd.PAYMENT_MODE= case when :P1404_PAYMENT_MODE=''1'' then to_char(pd.PAYMENT_MODE) when :P1404_PAYMENT_MODE=''2'' then ''BANK'' when :P1404_PAYMENT_MODE=''3'' then ''CHEQUE'' end',
'and (pd.PAYMENT_MODE= ''BANK'' or pd.PAYMENT_MODE= ''CHEQUE'')     ',
'and (''1''= case when trim(:P1404_BANK) is null then ''1'' else '''' end',
'or upper(pd.BANK_BRANCH_NAME) like case when trim(:P1404_BANK) =''GBTII'' then  ''%BANK%FOR%TRADE%''',
'                                         when trim(:P1404_BANK) =''DB'' then  ''%DEMERARA%BANK%''',
'                                         when trim(:P1404_BANK) =''BNS'' then  ''%NOVA%SCOTIA%''',
'                                         when trim(:P1404_BANK) =''CB'' then  ''%CITIZENS%BANK%''',
'                                         when trim(:P1404_BANK) =''RBGL'' then  ''%RBGL%''   ',
'                                         when trim(:P1404_BANK) =''BOB'' then  ''%BARODA%''',
'                                         when trim(:P1404_BANK) =''NBS'' then  ''%BUILDING%SOCIETY%''',
'else  '''' end)',
'and (''1''= case when trim(:P1404_SUB_BRANCH) is null then ''1'' else '''' end',
'or pd.BANK_BRANCH_ID = :P1404_SUB_BRANCH)',
'group by initcap(pd.BANK_BRANCH_NAME)',
'',
') b',
'order by Bank,sort_option'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output_show_link=>'Y'
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
,p_prn_header_font_color=>'#ffffff'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3102996549633010596)
,p_name=>'eNIS Output'
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
,p_download_formats=>'HTML:CSV:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'PPLERP'
,p_internal_uid=>2692698724940774268
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119136597698584862)
,p_db_column_name=>'AMOUNT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119136257346584860)
,p_db_column_name=>'Account No.'
,p_display_order=>20
,p_column_identifier=>'K'
,p_column_label=>'Account no.'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119135819703584859)
,p_db_column_name=>'Account Name'
,p_display_order=>30
,p_column_identifier=>'L'
,p_column_label=>'Account name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119135475908584858)
,p_db_column_name=>'Value Date'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Value date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119135076251584857)
,p_db_column_name=>'BANK'
,p_display_order=>50
,p_column_identifier=>'N'
,p_column_label=>'Bank'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119137403245584864)
,p_db_column_name=>'BANK_TRANSIT'
,p_display_order=>60
,p_column_identifier=>'O'
,p_column_label=>'Bank Transit'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3119137035443584863)
,p_db_column_name=>'SORT_OPTION'
,p_display_order=>70
,p_column_identifier=>'P'
,p_column_label=>'Sort Option'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3102997556819010599)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'254094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'BANK:Account Name:AMOUNT:Account No.:Value Date::BANK_TRANSIT:SORT_OPTION'
,p_break_on=>'BANK:0:0:0:0:0'
,p_break_enabled_on=>'BANK:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537565711432594069)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3011976296220093863)
,p_button_name=>'Export_GBTI_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.:RP:P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_LIST.,&P1404_PAY_PERIODS.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537566114843594071)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3011976296220093863)
,p_button_name=>'Export_RBGL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.:RP,:P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_LIST.,&P1404_PAY_PERIODS.'
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3806736716975971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537569760628594088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3016735577247415356)
,p_button_name=>'Export_SB'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.:RP:P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_LIST.,&P1404_PAY_PERIODS.'
,p_security_scheme=>wwv_flow_imp.id(3806736716975971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537578167545594132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3016737080431415371)
,p_button_name=>'Export_GBTI'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.:RP:P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_LIST.,&P1404_PAY_PERIODS.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537578843183594135)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1404_RETURN_NAME.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537572648929594102)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3016345334751483696)
,p_button_name=>'Export_DM'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.:RP:P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_LIST.,&P1404_PAY_PERIODS.'
,p_security_scheme=>wwv_flow_imp.id(3806736716975971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537575265526594115)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3016736471900415365)
,p_button_name=>'Export_Citizen'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.:RP:P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_LIST.,&P1404_PAY_PERIODS.'
,p_security_scheme=>wwv_flow_imp.id(3806736716975971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537579248663594136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_button_name=>'EXECUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(537566460766594072)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3011976296220093863)
,p_button_name=>'DownloadTXT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Download TXT File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:9119:&SESSION.::&DEBUG.:RP,:P9119_BANK_ID,P9119_EARNING_PERIOD:&P1404_BANK.,&P1404_LIST.'
,p_security_scheme=>wwv_flow_imp.id(3806736716975971898)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(537587635820594181)
,p_branch_name=>'ebanking'
,p_branch_action=>'f?p=&APP_ID.:1404:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119155096187584956)
,p_name=>'P1404_LIST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119155472137584957)
,p_name=>'P1404_MSG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_use_cache_before_default=>'NO'
,p_source=>'You can only purge a batch on the same date it was uploaded on.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119155882057584958)
,p_name=>'P1404_SHUTLE_PERIODS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_prompt=>'PERIOD START'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT expr1,a.id',
'FROM VW_EARNPAID A JOIN pa_pmg_payrollhd b ON A.ID=b.EARNINGS_PERIOD_ID',
'WHERE PAYMENT_TYPE=:P1404_PAYMENT_FREQUENCY',
'AND EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE)=:P1404_PAY_PERIODS',
'and A.ORG_ID=:P1404_COMPANY_NAME',
'order by payroll_date desc'))
,p_lov_cascade_parent_items=>'P1404_PAY_PERIODS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>5
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119156257859584959)
,p_name=>'P1404_PAYMENT_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_prompt=>'Payment Mode'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:BANK & CHEQUE;1,BANK;2,CHEQUE;3'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119157186913584961)
,p_name=>'P1404_BANK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_prompt=>'Bank'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,UPPER(short_name) short_name',
'from vw_organisation w',
'where organisation_type=''BANK''',
'AND PARENT_ORG_ID is  null',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the parent bank only not the branches. Ensure  that all branches as the parent bank set at the organisation screen for banks.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119157580447584962)
,p_name=>'P1404_PAY_PERIODS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_prompt=>'Pay Periods'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD    ',
'      WHERE ORG_ID =:APP_ORG_ID',
'      )',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_lov_cascade_parent_items=>'P1404_PAYMENT_FREQUENCY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119157930341584962)
,p_name=>'P1404_PAYMENT_FREQUENCY'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_prompt=>'Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(payment_type) a, payment_type b',
'from hr_rcm_employee',
'where org_id=:P1404_COMPANY_NAME'))
,p_lov_cascade_parent_items=>'P1404_COMPANY_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119158328789584963)
,p_name=>'P1404_COMPANY_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_prompt=>'Company Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOFTWARE_USER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from vw_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and x.ID=:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119158728016584965)
,p_name=>'P1404_RETURN_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3102993954188010591)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(537586210232594176)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(537579248663594136)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(537586661456594178)
,p_event_id=>wwv_flow_imp.id(537586210232594176)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1404_LIST'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'replace(:P1404_SHUTLE_PERIODS,'':'',''-'')'
,p_attribute_07=>'P1404_SHUTLE_PERIODS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(537587216798594179)
,p_event_id=>wwv_flow_imp.id(537586210232594176)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
