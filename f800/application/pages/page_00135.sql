prompt --application/pages/page_00135
begin
--   Manifest
--     PAGE: 00135
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>135
,p_name=>'rpttimeclockloadtopayroll'
,p_alias=>'RPTTIMECLOCKLOADTOPAYROLL'
,p_step_title=>'Load to Payroll'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825436139759062413)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709766799717391361)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>1
,p_list_id=>wwv_flow_imp.id(3696297162931597265)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709766882607391362)
,p_plug_name=>'RDS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709767082642391364)
,p_plug_name=>'Double Time'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709767316157391367)
,p_plug_name=>'Results Double Time'
,p_parent_plug_id=>wwv_flow_imp.id(3709767082642391364)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3709767111803391365)
,p_name=>'Absent Time'
,p_template=>4072358936313175081
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--scrollBody:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P135_SEARH_OPTION = ''ABS''',
'then return ''SELECT',
'    a.emp_id,',
'    a.emp_id employee,',
'    13826 expense_code_id,',
'    110 transaction_type_id,',
'    264 status,',
'    ''''system'''' approved_by,',
'    trunc(current_date) approved_date,',
'    :P69_EARNINGS_PERIOD_ABS earnings_period_id_2,',
'    round(SUM(nvl(total_time_lost, 0)),1) period,',
'    pkg_global_fnts.fn_hourlyrate(a.emp_id, trunc(current_date)) * SUM(nvl(total_time_lost, 0)) time_loss_earnings,',
'    start_date,',
'    end_date,',
'    ''''System computation of time loss from timeclock.'''' remarks',
'FROM',
'    hr_att_timeclock_upload   a',
'    JOIN pa_pcf_earningperiod      b ON a.earnings_period_id = b.id',
'WHERE',
'',
'    a.total_time_lost > 0',
'    AND a.total_time_lost IS NOT NULL',
'    AND upper(a.status) = upper(''''IMPORTED'''')',
'    AND a.earnings_period_id = :P135_EARNINGS_PERIOD',
'    AND a.department_id = nvl(:P135_DEPARTMENT, a.department_id)',
'    AND upper(a.payment_type) = upper(nvl(:P135_PAYMENT_TYPE, a.payment_type))',
'GROUP BY',
'    emp_id,',
'    earnings_period_id,',
'    start_date,',
'    end_date'';',
'   else ',
'   return ''select null from dual'';',
'   end if;',
'  '))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P135_EARNINGS_PERIOD,P135_DEPARTMENT,P135_PAYMENT_TYPE,P135_SEARH_OPTION'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727215041802951338)
,p_query_column_id=>1
,p_column_alias=>'NULL'
,p_column_display_sequence=>1
,p_column_heading=>'Null'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709767445875391368)
,p_plug_name=>'Results Absent Time'
,p_parent_plug_id=>wwv_flow_imp.id(3709767111803391365)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3709767222974391366)
,p_name=>'Timesheet Income (OT & DD)'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent6:t-Region--scrollBody:margin-top-md'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P135_SEARH_OPTION =''OT''',
'then ',
'return ''SELECT',
'            emp_id,',
'            earnings_period_id,',
'            round(nvl(SUM(over_time), 0),1) quantity,',
'            pkg_global_fnts.fn_hourlyrate(a.emp_id, trunc(current_date)) * 1.5 hourly_rate,',
'            ( pkg_global_fnts.fn_hourlyrate(a.emp_id, trunc(current_date)) * 1.5 ) * SUM(over_time) amount_paid,',
'            start_date,',
'            end_date,',
'            ''''TIME'''' pay_option,',
'            ''''System transfer from timesheet load.'''' remarks',
'        FROM',
'            hr_att_timeclock_upload   a',
'            JOIN pa_pcf_earningperiod      b ON a.earnings_period_id = b.id',
'        WHERE',
'',
'            a.emp_entitle_id_ot IS NOT NULL',
'            AND a.over_time IS NOT NULL',
'            AND nvl(a.over_time, 0) != 0',
'            AND a.earnings_period_id = :P135_EARNINGS_PERIOD',
'            AND a.normal_time > 0',
'           AND upper(a.status) = upper(''''IMPORTED'''')',
'           AND a.department_id = nvl(:P135_DEPARTMENT, a.department_id)',
'           AND upper(a.payment_type) = upper(nvl(:P135_PAYMENT_TYPE, a.payment_type))',
'',
'        GROUP BY',
'            emp_id,',
'            earnings_period_id,',
'            start_date,',
'            end_date'';',
'',
'else return  ''SELECT',
'            emp_id,',
'            earnings_period_id,',
'            round(nvl(SUM(double_time), 0),1) quantity,',
'            pkg_global_fnts.fn_hourlyrate(a.emp_id, trunc(current_date)) * 2 hourly_rate,',
'            ( pkg_global_fnts.fn_hourlyrate(a.emp_id, trunc(current_date)) * 2 ) * SUM(double_time) amount_paid,',
'            start_date,',
'            end_date,',
'            ''''time'''' pay_option,',
'            ''''System transfer from timesheet load.'''' remarks',
'        FROM',
'            hr_att_timeclock_upload   a',
'            JOIN pa_pcf_earningperiod      b ON a.earnings_period_id = b.id',
'        WHERE',
'            a.emp_entitle_id_db IS NOT NULL',
'            AND a.normal_time > 0',
'            AND a.double_time IS NOT NULL',
'            AND nvl(a.double_time, 0) != 0',
'            AND a.earnings_period_id =:P135_EARNINGS_PERIOD',
'            AND upper(a.status) = upper(''''IMPORTED'''')',
'            AND a.department_id = nvl(:P135_DEPARTMENT, a.department_id)',
'            AND upper(a.payment_type) = upper(nvl(:P135_PAYMENT_TYPE, a.payment_type))',
'        GROUP BY',
'            emp_id,',
'            earnings_period_id,',
'            start_date,',
'            end_date'';',
'                    ',
'        end if;'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P135_EARNINGS_PERIOD,P135_DEPARTMENT,P135_PAYMENT_TYPE,P135_SEARH_OPTION'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727216127935951340)
,p_query_column_id=>1
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>1
,p_column_heading=>'Emp Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727216476891951340)
,p_query_column_id=>2
,p_column_alias=>'EARNINGS_PERIOD_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Earnings Period Id'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727216854245951341)
,p_query_column_id=>3
,p_column_alias=>'QUANTITY'
,p_column_display_sequence=>3
,p_column_heading=>'Quantity'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727217261515951342)
,p_query_column_id=>4
,p_column_alias=>'HOURLY_RATE'
,p_column_display_sequence=>4
,p_column_heading=>'Hourly Rate'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727217675353951343)
,p_query_column_id=>5
,p_column_alias=>'AMOUNT_PAID'
,p_column_display_sequence=>5
,p_column_heading=>'Amount Paid'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727218081646951343)
,p_query_column_id=>6
,p_column_alias=>'START_DATE'
,p_column_display_sequence=>6
,p_column_heading=>'Start Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727218450639951344)
,p_query_column_id=>7
,p_column_alias=>'END_DATE'
,p_column_display_sequence=>7
,p_column_heading=>'End Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727218914305951344)
,p_query_column_id=>8
,p_column_alias=>'PAY_OPTION'
,p_column_display_sequence=>8
,p_column_heading=>'Pay Option'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3727219245900951345)
,p_query_column_id=>9
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>9
,p_column_heading=>'Remarks'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709767519548391369)
,p_plug_name=>'Results Overtime'
,p_parent_plug_id=>wwv_flow_imp.id(3709767222974391366)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709768699298391380)
,p_plug_name=>'Quick Search'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>11
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3727220322646951346)
,p_name=>'P135_SEARH_OPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3709768699298391380)
,p_prompt=>'Searh Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Overtime;OT,Absent Time;ABS'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Type--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3727220674905951347)
,p_name=>'P135_EARNINGS_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3709768699298391380)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EARNINGS_PERIOD_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)',
'  ||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION g on g.id = a.org_id',
'where a.org_id = :APP_ORG_ID',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Earnings Period--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3727221136136951347)
,p_name=>'P135_PAYMENT_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3709768699298391380)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_TYPE_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Payment Type--'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3727221526625951347)
,p_name=>'P135_DEPARTMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3709768699298391380)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_STRUCTURE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and n.org_id=:APP_ORG_SHR_DED',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and a.org_id= :APP_ORG_ID)',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Department--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
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
wwv_flow_imp.component_end;
end;
/
