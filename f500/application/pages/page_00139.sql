prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_name=>'rpttimeclockhd'
,p_alias=>'RPTTIMECLOCKHD'
,p_step_title=>'Timeclock Summary'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825296363170004470)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3773015463583046791)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_component_template_options=>'#DEFAULT#:t-Tabs--simple:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(3696156460692530039)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3773015576158046792)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3775951892289285214)
,p_plug_name=>'Timeclock Header'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID,',
'       EARNING_PERIOD_ID,',
'       WORK_DATE,',
'       AVAILABLE_FOR_WORK,',
'       DID_EMPLOYEE_WORK,',
'       REMARKS,',
'       PAY_STATUS,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       MACHINE_INSERT,',
'       MACHINE_UPDATE,',
'       MIGRATE_PK,',
'       ASSIGNED_SHIFT,',
'        hours_worked,',
'        approved_overtime,',
'       -- double_time,',
'        normal_time,',
'        over_time,',
'        time_in_lost,',
'        time_out_lost,',
'        total_time_lost,',
'        lunch_hour',
' ',
'  from HR_ATT_EMPCALENDAR_HD',
'  where upper(remarks) like upper(''%LOADED%'')',
'  and TO_DATE(WORK_DATE) BETWEEN TO_DATE(:P139_WORK_START) AND TO_DATE(:P139_WORK_END)',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P139_WORK_START,P139_WORK_END'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3775951978336285214)
,p_name=>'rpttimeclockhd'
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
,p_owner=>'BASU'
,p_internal_uid=>186854038582716258
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781382325382275139)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781381904132275139)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988535409144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781381519154275138)
,p_db_column_name=>'EARNING_PERIOD_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Earning Period '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853992524515144148)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781381042430275138)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781380640828275137)
,p_db_column_name=>'AVAILABLE_FOR_WORK'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Available For Work'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781380329034275137)
,p_db_column_name=>'DID_EMPLOYEE_WORK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Did Employee Work'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781379926329275136)
,p_db_column_name=>'REMARKS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781379481630275136)
,p_db_column_name=>'HOURS_WORKED'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Hours Worked'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781379104648275135)
,p_db_column_name=>'PAY_STATUS'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Pay Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781378721496275135)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781378313927275134)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781377877304275134)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781377499509275133)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781377047165275133)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781376692884275132)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781376231481275132)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Migrate Pk'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781375909740275131)
,p_db_column_name=>'ASSIGNED_SHIFT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Assigned Shift'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3727757921382989616)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781375435460275131)
,p_db_column_name=>'OVER_TIME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Over Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781375102501275130)
,p_db_column_name=>'TOTAL_TIME_LOST'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Total Time Lost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3781374702846275129)
,p_db_column_name=>'APPROVED_OVERTIME'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Approved Overtime'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3774636080366977264)
,p_db_column_name=>'NORMAL_TIME'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Normal Time'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3774635999779977263)
,p_db_column_name=>'TIME_IN_LOST'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Time In Lost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3774635918666977262)
,p_db_column_name=>'TIME_OUT_LOST'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Time Out Lost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3774635753236977261)
,p_db_column_name=>'LUNCH_HOUR'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Lunch Hour'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3775961802300290808)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'30506'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EARNING_PERIOD_ID:EMP_ID:WORK_DATE:PAY_STATUS:ASSIGNED_SHIFT:HOURS_WORKED:OVER_TIME:TOTAL_TIME_LOST:REMARKS:NORMAL_TIME:TIME_IN_LOST:TIME_OUT_LOST:LUNCH_HOUR'
,p_sort_column_1=>'WORK_DATE'
,p_sort_direction_1=>'ASC'
,p_break_on=>'EARNING_PERIOD_ID:EMP_ID:0:0:0:0'
,p_break_enabled_on=>'EARNING_PERIOD_ID:EMP_ID:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3759402145743768741)
,p_report_id=>wwv_flow_imp.id(3775961802300290808)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'ASSIGNED_SHIFT'
,p_operator=>'is not null'
,p_condition_sql=>'"ASSIGNED_SHIFT" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3781383027924275142)
,p_name=>'P139_EARNINGS_PERIOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3773015576158046792)
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
,p_grid_column=>8
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
 p_id=>wwv_flow_imp.id(3781383341390275142)
,p_name=>'P139_WORK_END'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3773015576158046792)
,p_prompt=>'Work End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3781383791233275143)
,p_name=>'P139_WORK_START'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3773015576158046792)
,p_prompt=>'Work Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3781384145288275143)
,p_name=>'P139_POSITION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3773015576158046792)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'POSITION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''; Grade ''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID) a, b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Position--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3781384622757275144)
,p_name=>'P139_DEPARTMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3773015576158046792)
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
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3781385015497275145)
,p_name=>'P139_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3773015576158046792)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
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
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Employee--'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>3031561666792084173
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3781373217510275125)
,p_name=>'dy_refresh1'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3781372720543275125)
,p_event_id=>wwv_flow_imp.id(3781373217510275125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3775951892289285214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3781372270547275124)
,p_name=>'dy_refresh2'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3781371815631275124)
,p_event_id=>wwv_flow_imp.id(3781372270547275124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3775951892289285214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3781371333077275123)
,p_name=>'dy_refresh3'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_POSITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3781370863472275123)
,p_event_id=>wwv_flow_imp.id(3781371333077275123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3775951892289285214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3781370499210275122)
,p_name=>'dy_refereh4'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_WORK_START'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3781369960455275122)
,p_event_id=>wwv_flow_imp.id(3781370499210275122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3775951892289285214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3781369627107275121)
,p_name=>'dy_refresh5'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_WORK_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3781369057901275121)
,p_event_id=>wwv_flow_imp.id(3781369627107275121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3775951892289285214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3781368713498275120)
,p_name=>'dy_refresh7'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_EARNINGS_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3781368217081275120)
,p_event_id=>wwv_flow_imp.id(3781368713498275120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3775951892289285214)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
