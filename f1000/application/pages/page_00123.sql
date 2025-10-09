prompt --application/pages/page_00123
begin
--   Manifest
--     PAGE: 00123
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>123
,p_name=>'rpttimeclockfacet'
,p_step_title=>'Timeclock Faceted Search'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825577735270150707)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694016522991307773)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Tabs--large:t-Tabs--simple:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_list_id=>wwv_flow_imp.id(3696437832792676276)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3694057988090406393)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>3371237801798025892
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(3694058076101406393)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'show_charts', 'N',
  'show_current_facets', 'N',
  'show_total_row_count', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3694058076101406393)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:js-showMaximizeButton:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.ID,',
'       A.WORK_LOCATION_NAME,',
'       A.EMP_ID,',
'       A.WORK_DATE,',
'       A.TIME_IN,',
'       A.TIME_OUT,',
'       A.TIME_IN_1,',
'       A.TIME_OUT_1,',
'  --     A.TIME_IN_2,',
'   --    A.TIME_OUT_2,',
' --      A.TIME_IN_3,',
' --      A.TIME_OUT_3,',
'   --    A.WORK_LOCATION_ID,',
'       A.EMP_COMPANY_NO,',
'    --   A.TOTAL_HOURS,',
'  --     A.TIME_LOST,',
'   --    A.PAYROLL_HOURS,',
'       A.REMARKS,',
'       A.LOAD_BY,',
'       A.LOAD_DATE,',
'       A.LAST_CHANGED_BY,',
'       A.LAST_CHANGED_DATE,',
'      A.EARNINGS_PERIOD_ID,',
'   --    A.EMP_ENTITLE_ID,',
'  --     A.NORMAL_TIME,',
'  --     A.OVER_TIME,',
'     --  A.DOUBLE_TIME,',
'   --    A.EMP_ENTITLE_ID_OT,',
'       --A.EMP_ENTITLE_ID_DB,',
'      -- A.STATUS,',
'       A.FULL_NAME,',
'    --   A.PAYMENT_TYPE,',
'       A.HOURLY_RATE,',
'  --     A.WORK_STATUS,',
' --      A.DEPARTMENT_NAME,',
'--       A.DEPARTMENT_ID,',
'     --  A.DESIGNATION,',
'       A.SHIFT_ID UPLOAD_SHIFT,',
'       A.WKLOCATION_ID,',
'    --   A.TIME_IN_LOST,',
'    --   A.MISC_TIME_LOST,',
'     --  A.TIME_OUT_LOST,',
'    --   A.TOTAL_TIME_LOST,',
'       A.OVERNIGHT,',
'       A.LUNCH_HOUR,',
'       A.ORG_ID,',
'       A.CLOCK_EMP_ID,',
'       B.SHIFT_ID EMP_SHIFT',
'  from HR_ATT_TIMECLOCK_DTL A ',
'  JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID = B.ID ',
'  JOIN hr_att_empcalendar_hd D ON (D.EMP_ID=A.EMP_ID AND TO_DATE(A.WORK_DATE)=TO_DATE(D.WORK_DATE))',
'  where A.org_id=:APP_ORG_ID',
' ',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>500
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>100000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695669089866167165)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>13
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694054913297406360)
,p_query_column_id=>2
,p_column_alias=>'WORK_LOCATION_NAME'
,p_column_display_sequence=>1
,p_column_heading=>'Clock Location '
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694054526315406360)
,p_query_column_id=>3
,p_column_alias=>'EMP_ID'
,p_column_display_sequence=>2
,p_column_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694054056173406360)
,p_query_column_id=>4
,p_column_alias=>'WORK_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Work Date'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694053708043406359)
,p_query_column_id=>5
,p_column_alias=>'TIME_IN'
,p_column_display_sequence=>4
,p_column_heading=>'Time In'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694053316572406359)
,p_query_column_id=>6
,p_column_alias=>'TIME_OUT'
,p_column_display_sequence=>5
,p_column_heading=>'Time Out'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694052890865406359)
,p_query_column_id=>7
,p_column_alias=>'TIME_IN_1'
,p_column_display_sequence=>6
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694052479371406359)
,p_query_column_id=>8
,p_column_alias=>'TIME_OUT_1'
,p_column_display_sequence=>7
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694050919267406358)
,p_query_column_id=>9
,p_column_alias=>'EMP_COMPANY_NO'
,p_column_display_sequence=>11
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695668621877167160)
,p_query_column_id=>10
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>18
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695668513768167159)
,p_query_column_id=>11
,p_column_alias=>'LOAD_BY'
,p_column_display_sequence=>19
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695668355931167158)
,p_query_column_id=>12
,p_column_alias=>'LOAD_DATE'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695668255310167157)
,p_query_column_id=>13
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>21
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695668141253167156)
,p_query_column_id=>14
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>22
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695668102686167155)
,p_query_column_id=>15
,p_column_alias=>'EARNINGS_PERIOD_ID'
,p_column_display_sequence=>23
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695667242086167147)
,p_query_column_id=>16
,p_column_alias=>'FULL_NAME'
,p_column_display_sequence=>31
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695667053143167145)
,p_query_column_id=>17
,p_column_alias=>'HOURLY_RATE'
,p_column_display_sequence=>33
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694016777884307776)
,p_query_column_id=>18
,p_column_alias=>'UPLOAD_SHIFT'
,p_column_display_sequence=>47
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695666472255167139)
,p_query_column_id=>19
,p_column_alias=>'WKLOCATION_ID'
,p_column_display_sequence=>38
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695666028589167134)
,p_query_column_id=>20
,p_column_alias=>'OVERNIGHT'
,p_column_display_sequence=>43
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695665930213167133)
,p_query_column_id=>21
,p_column_alias=>'LUNCH_HOUR'
,p_column_display_sequence=>44
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695665744797167132)
,p_query_column_id=>22
,p_column_alias=>'ORG_ID'
,p_column_display_sequence=>45
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3695665728600167131)
,p_query_column_id=>23
,p_column_alias=>'CLOCK_EMP_ID'
,p_column_display_sequence=>46
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3694016726282307775)
,p_query_column_id=>24
,p_column_alias=>'EMP_SHIFT'
,p_column_display_sequence=>48
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694016585113307774)
,p_name=>'P123_ROTA_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Shift Rota '
,p_source=>'EMP_SHIFT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIFT_ROTATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIFT_CYCLE_NAME||'' ''||B.value_description||''(Rotating Every ''||rotation_days||'' Days)'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a join hr_hcf_lookup b on b.id = a.shift_TYPE_ID',
'where B.table_name = ''TBLSHIFTTYPE''',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_SHR_DED',
'ORDER BY 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694055497696406388)
,p_name=>'P123_TOTAL_HOURS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Total Hours'
,p_source=>'TOTAL_HOURS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC2:<6;|6,6 - 8;6|8,>=8;8|'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'Y',
  'select_multiple', 'Y')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694057038828406391)
,p_name=>'P123_CLOCK_LOCATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Clock Location Name'
,p_source=>'WORK_LOCATION_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_sort_direction=>'ASC'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694057529927406393)
,p_name=>'P123_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Search'
,p_source=>'WORK_LOCATION_NAME,TIME_IN,TIME_OUT,TIME_IN_1,TIME_OUT_1,TIME_IN_2,TIME_OUT_2,TIME_IN_3'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3695665315041167127)
,p_name=>'P123_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Shift'
,p_source=>'UPLOAD_SHIFT'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIFT'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(start_time,''HH:MI PM'')||''--''||to_char(end_time,''HH:MI PM'') SHIFT,id',
'from HR_ATT_SHIFT a',
'where org_id= :APP_ORG_SHR_DED',
'',
'ORDER BY 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3695665409447167128)
,p_name=>'P123_EARNINGS_PERIOD_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Earnings Period'
,p_source=>'EARNINGS_PERIOD_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
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
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3695665510643167129)
,p_name=>'P123_EMP_NAME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Employee Name'
,p_source=>'EMP_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3695665569242167130)
,p_name=>'P123_POSITION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Position Name'
,p_source=>'DESIGNATION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3695669161639167166)
,p_name=>'P123_WORK_LOCATION_NAME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3694057988090406393)
,p_prompt=>'Work Location Name'
,p_source=>'WORK_LOCATION_ID'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORK_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''-- All --'' a, 99999 id',
'from dual',
'union',
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_show_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp.component_end;
end;
/
