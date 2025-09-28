prompt --application/pages/page_00177
begin
--   Manifest
--     PAGE: 00177
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>177
,p_name=>'rptAdminPayrollDeduction'
,p_alias=>'RPTADMINPAYROLLDEDUCTION'
,p_step_title=>'Listing of Employee Payroll Deductions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3505889056501935406)
,p_plug_name=>'Listing of Employee Payroll Deductions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pay_slipno, a.deduction_no,  amount_deducted,  a.status_code, amount_deducted_total, amount_deducted_ytd,',
'    deduction_type, adm_deduction_id,  a.expense_code, a.emp_id, a.entered_by, a.entry_date, a.last_changed_by,adm_deduction_id admin_ded_id,',
'    a.last_changed_date, a.group_medical, a.union_deduction, b.PERIOD_START, description',
'FROM pa_pmg_payrolldeduction a join pa_pmg_payrolldtl b on b.id = a.pay_slipno',
'join pa_pcf_deductioncode c on c.expense_code = a.expense_code',
'where adm_deduction_id = :P1297_ID',
'AND b.ORG_ID =:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1297_ID'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3505888834433935404)
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>410395809203501106
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535412903939917296)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585704140532447)
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535407779959917282)
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
 p_id=>wwv_flow_imp.id(3535406538662917280)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535405739128917278)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535402984265917272)
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
 p_id=>wwv_flow_imp.id(3535402275552917270)
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
 p_id=>wwv_flow_imp.id(3535401415606917269)
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
 p_id=>wwv_flow_imp.id(3535391523214905058)
,p_db_column_name=>'PAY_SLIPNO'
,p_display_order=>53
,p_column_identifier=>'CM'
,p_column_label=>'Pay Slipno'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535391406197905057)
,p_db_column_name=>'AMOUNT_DEDUCTED'
,p_display_order=>63
,p_column_identifier=>'CN'
,p_column_label=>'Amount Deducted'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535391294332905056)
,p_db_column_name=>'STATUS_CODE'
,p_display_order=>73
,p_column_identifier=>'CO'
,p_column_label=>'Status Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535391257355905055)
,p_db_column_name=>'AMOUNT_DEDUCTED_TOTAL'
,p_display_order=>83
,p_column_identifier=>'CP'
,p_column_label=>'Amount Deducted Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535391189924905054)
,p_db_column_name=>'AMOUNT_DEDUCTED_YTD'
,p_display_order=>93
,p_column_identifier=>'CQ'
,p_column_label=>'Amount Deducted Ytd'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535391018455905053)
,p_db_column_name=>'ADM_DEDUCTION_ID'
,p_display_order=>103
,p_column_identifier=>'CR'
,p_column_label=>'Adm Deduction Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535390902962905052)
,p_db_column_name=>'EXPENSE_CODE'
,p_display_order=>113
,p_column_identifier=>'CS'
,p_column_label=>'Expense Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535351013967892201)
,p_db_column_name=>'GROUP_MEDICAL'
,p_display_order=>123
,p_column_identifier=>'CT'
,p_column_label=>'Group Medical'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535350915700892200)
,p_db_column_name=>'UNION_DEDUCTION'
,p_display_order=>133
,p_column_identifier=>'CU'
,p_column_label=>'Union Deduction'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632356345784240867)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535350884101892199)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>143
,p_column_identifier=>'CV'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535350738065892198)
,p_db_column_name=>'ADMIN_DED_ID'
,p_display_order=>153
,p_column_identifier=>'CW'
,p_column_label=>'Admin Ded Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535350600662892197)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>163
,p_column_identifier=>'CX'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3505885056079934595)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'362335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DEDUCTION_TYPE:EMP_ID:PERIOD_START:DESCRIPTION:DEDUCTION_NO:AMOUNT_DEDUCTED:AMOUNT_DEDUCTED_YTD:AMOUNT_DEDUCTED_TOTAL:STATUS_CODE:GROUP_MEDICAL:UNION_DEDUCTION:'
,p_sort_column_1=>'PERIOD_START'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'EMP_ID'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'DEDUCTION_TYPE:EMP_ID:0:0:0:0'
,p_break_enabled_on=>'DEDUCTION_TYPE:EMP_ID:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3520024776282668243)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee Active Deductions'
,p_report_seq=>10
,p_report_alias=>'362311'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DEDUCTION_TYPE:EMP_ID:DEDUCTION_NO'
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
 p_id=>wwv_flow_imp.id(3535399399489917263)
,p_report_id=>wwv_flow_imp.id(3520024776282668243)
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
 p_id=>wwv_flow_imp.id(3535057955471035498)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'362327'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:DEDUCTION_NO:DEDUCTION_TYPE'
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
 p_id=>wwv_flow_imp.id(3535397889032917253)
,p_report_id=>wwv_flow_imp.id(3535057955471035498)
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
 p_id=>wwv_flow_imp.id(3614763772218730287)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Active Deductions'
,p_report_seq=>10
,p_report_alias=>'362319'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DEDUCTION_TYPE:EMP_ID:DEDUCTION_NO'
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
 p_id=>wwv_flow_imp.id(3535398624992917259)
,p_report_id=>wwv_flow_imp.id(3614763772218730287)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'DEDUCT_STATUS'
,p_operator=>'='
,p_expr=>'IN PROCESS'
,p_condition_sql=>'"DEDUCT_STATUS" = #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# = ''IN PROCESS''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3535350575382892196)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3505889056501935406)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1297:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
