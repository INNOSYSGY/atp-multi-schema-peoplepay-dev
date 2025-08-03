prompt --application/pages/page_01404
begin
--   Manifest
--     PAGE: 01404
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
 p_id=>1404
,p_name=>'frmEbankingRBGL'
,p_alias=>'FRMEBANKINGRBGL'
,p_step_title=>'eBANKING '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169505298554533148)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3308677835120083084)
,p_plug_name=>'eBanking Parameters'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3308680240339083089)
,p_plug_name=>'eBanking ALL Output'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.*',
'from (',
'',
'select first_name_hist||'' ''||surname_hist "Destination / Customer Name", ',
'o.ORGANISATION_NAME||''(''||o.TRANSITS||'')'' "Branch Name",',
'ps.BANK_ACCOUNT_NO "Destination / Customer Acct #",',
'ps.amount Amount,',
'd.BANK_ACCOUNT_TYPE "Account Type Code",',
'ps.Transaction_Code "Transaction Code",',
'to_char(a.period_start,''ddmmyy'')  "Value Date (ddmmyy)",',
'''Local Dollars (00)'' "Currency Code",',
'''0000201544203'' "Originator Account #", ',
'ps.Reference "Reference"',
'',
'from pa_pmg_payrolldtl a',
'join HR_RCM_EMPLOYEE b on a.EMP_ID=b.id',
'join HR_RCM_INDIVIDUAL c on b.IND_ID=c.id ',
'join PA_PMG_PAY_DISBURSEMENT ps on ps.PAYSLIP_ID=a.id',
'join HR_HCF_ORGANISATION o on o.id=ps.BANK_BRANCH_ID ',
'join hr_rcm_disbursement d on d.id=ps.DISBURSE_ID  ',
'where EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P1404_PAY_PERIODS',
'and  a.earnings_period_id in (select regexp_substr(:P1404_SHUTLE_PERIODS,''[^:]+'', 1, level) from dual ',
'                               connect by regexp_substr(:P1404_SHUTLE_PERIODS, ''[^:]+'', 1, level) is not null) ',
'',
'and ps.BANK_BRANCH_ID=case when :P1404_BANK=0 then ps.BANK_BRANCH_ID else to_number(:P1404_BANK) end',
') b',
''))
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3308680430565083089)
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
,p_internal_uid=>497588860507645441
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3324820478630657355)
,p_db_column_name=>'AMOUNT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136743628834925606)
,p_db_column_name=>'Destination / Customer Name'
,p_display_order=>20
,p_column_identifier=>'Q'
,p_column_label=>'Destination &#x2F; Customer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136743683763925607)
,p_db_column_name=>'Branch Name'
,p_display_order=>30
,p_column_identifier=>'R'
,p_column_label=>'Branch Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136743781046925608)
,p_db_column_name=>'Destination / Customer Acct #'
,p_display_order=>40
,p_column_identifier=>'S'
,p_column_label=>'Destination &#x2F; Customer Acct #'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136743869549925609)
,p_db_column_name=>'Account Type Code'
,p_display_order=>50
,p_column_identifier=>'T'
,p_column_label=>'Account Type Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(136873962453536399)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136743954193925610)
,p_db_column_name=>'Transaction Code'
,p_display_order=>60
,p_column_identifier=>'U'
,p_column_label=>'Transaction Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(136758152847110910)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136744130210925611)
,p_db_column_name=>'Value Date (ddmmyy)'
,p_display_order=>70
,p_column_identifier=>'V'
,p_column_label=>'Value Date (ddmmyy)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136744142275925612)
,p_db_column_name=>'Currency Code'
,p_display_order=>80
,p_column_identifier=>'W'
,p_column_label=>'Currency Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136744317269925613)
,p_db_column_name=>'Originator Account #'
,p_display_order=>90
,p_column_identifier=>'X'
,p_column_label=>'Originator Account #'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(136744402929925614)
,p_db_column_name=>'Reference'
,p_display_order=>100
,p_column_identifier=>'Y'
,p_column_label=>'Reference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3308681437751083092)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'254094'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'Destination / Customer Name:Branch Name:Destination / Customer Acct #:AMOUNT:Account Type Code:Transaction Code:Value Date (ddmmyy):Currency Code:Originator Account #:Reference:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(136744745220925618)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3308680240339083089)
,p_button_name=>'Export'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:9120:&SESSION.::&DEBUG.::P9120_BANK,P9120_EARNING_PERIOD,P9120_PAY_PERIODS:&P1404_BANK.,&P1404_SHUTLE_PERIODS.,&P1404_PAY_PERIODS.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3324826482111657369)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(169505298554533148)
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
 p_id=>wwv_flow_imp.id(3324826149163657369)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(169505298554533148)
,p_button_name=>'EXECUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3324816637083657338)
,p_branch_name=>'ebanking'
,p_branch_action=>'f?p=&APP_ID.:1404:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324822032186657359)
,p_name=>'P1404_LIST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324822408136657360)
,p_name=>'P1404_MSG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
,p_use_cache_before_default=>'NO'
,p_source=>'You can only purge a batch on the same date it was uploaded on.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324822818056657361)
,p_name=>'P1404_SHUTLE_PERIODS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324823193858657362)
,p_name=>'P1404_PAYMENT_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324824122912657364)
,p_name=>'P1404_BANK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
,p_prompt=>'Bank'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name, id',
'from vw_organisation w',
'where organisation_type=''BANK''',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_null_value=>'0'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select the parent bank only not the branches. Ensure  that all branches as the parent bank set at the organisation screen for banks.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324824516446657365)
,p_name=>'P1404_PAY_PERIODS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324824866340657365)
,p_name=>'P1404_PAYMENT_FREQUENCY'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324825264788657366)
,p_name=>'P1404_COMPANY_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3324825664015657368)
,p_name=>'P1404_RETURN_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3308677835120083084)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3324818111203657342)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3324826149163657369)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3324817573089657340)
,p_event_id=>wwv_flow_imp.id(3324818111203657342)
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
 p_id=>wwv_flow_imp.id(3324817074326657340)
,p_event_id=>wwv_flow_imp.id(3324818111203657342)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
