prompt --application/pages/page_01383
begin
--   Manifest
--     PAGE: 01383
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
 p_id=>1383
,p_name=>'rptHRMISMAINDASHBOARD_DIR'
,p_alias=>'RPTHRMISMAINDASHBOARD-DIR'
,p_step_title=>'Directors Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825437430804077423)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000013402245774179)
,p_plug_name=>'Absence/Latness/Time Off'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000012203576774167)
,p_plug_name=>'Occurences by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000013402245774179)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE'''' ',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id ',
'union',
'select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id,''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in(''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE''''',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in(''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363462721559442995)
,p_region_id=>wwv_flow_imp.id(5000012203576774167)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363465034460442998)
,p_chart_id=>wwv_flow_imp.id(3363462721559442995)
,p_seq=>10
,p_name=>'COUNT'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'LATENESS'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363464409254442997)
,p_chart_id=>wwv_flow_imp.id(3363462721559442995)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363463797409442997)
,p_chart_id=>wwv_flow_imp.id(3363462721559442995)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'OCCURRENCES'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363463261202442996)
,p_chart_id=>wwv_flow_imp.id(3363462721559442995)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000013931921774185)
,p_plug_name=>'Total Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000013402245774179)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE'''' ',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id ',
'union',
'select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id,''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in(''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE''''',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in(''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363465872625443000)
,p_region_id=>wwv_flow_imp.id(5000013931921774185)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363468219875443003)
,p_chart_id=>wwv_flow_imp.id(3363465872625443000)
,p_seq=>20
,p_name=>'TOTAL_HOURS'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_HOURS'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363467641114443002)
,p_chart_id=>wwv_flow_imp.id(3363465872625443000)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363467055728443002)
,p_chart_id=>wwv_flow_imp.id(3363465872625443000)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363466460780443001)
,p_chart_id=>wwv_flow_imp.id(3363465872625443000)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'HOURS'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000014788203774193)
,p_plug_name=>'Total Money Value by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000013402245774179)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE'''' ',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id ',
'union',
'select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id,''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in(''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE''''',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in(''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363469110898443005)
,p_region_id=>wwv_flow_imp.id(5000014788203774193)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363471394059443009)
,p_chart_id=>wwv_flow_imp.id(3363469110898443005)
,p_seq=>30
,p_name=>'TOTAL_MONEY_VALUE'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_MONEY_VALUE'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363470247481443007)
,p_chart_id=>wwv_flow_imp.id(3363469110898443005)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'AMOUNT'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363470765759443008)
,p_chart_id=>wwv_flow_imp.id(3363469110898443005)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363469629518443006)
,p_chart_id=>wwv_flow_imp.id(3363469110898443005)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000471067051522703)
,p_plug_name=>'Total Absent Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000013402245774179)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id,''''Absence'''' as series, ''''#fbce4a'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in (''''UNABS'''',''''Absent'''', ''''UNCABS'''')',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) lateness, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id org_struct_id, ''''Absence'''' as series, ''''#fbce4a'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in (''''UNABS'''',''''Absent'''', ''''UNCABS'''')',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363472311339443011)
,p_region_id=>wwv_flow_imp.id(5000471067051522703)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363474605180443013)
,p_chart_id=>wwv_flow_imp.id(3363472311339443011)
,p_seq=>10
,p_name=>'TOTAL_HOURS'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_HOURS'
,p_items_label_column_name=>'DEPARTMENT'
,p_color=>'&COLOR.'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363474011847443013)
,p_chart_id=>wwv_flow_imp.id(3363472311339443011)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363473383986443012)
,p_chart_id=>wwv_flow_imp.id(3363472311339443011)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'TOTAL HOURS'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363472779046443012)
,p_chart_id=>wwv_flow_imp.id(3363472311339443011)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5001397708875244782)
,p_plug_name=>'Overalls'
,p_parent_plug_id=>wwv_flow_imp.id(5000013402245774179)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000469224106522685)
,p_plug_name=>'Overall Money Value'
,p_parent_plug_id=>wwv_flow_imp.id(5001397708875244782)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE'''' ',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Lateness''''',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value,''''Absence'''' as series, ''''yellow'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in (''''UNABS'''',''''Absent'''', ''''UNCABS'''')',
'        and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Absence''''',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value,''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value IN (''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Time Off'''''';',
'',
'ELSE RETURN',
'',
'''select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE''''',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    ''''Lateness'''' ',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Absence'''' as series, ''''yellow'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in (''''UNABS'''',''''Absent'''', ''''UNCABS'''')',
'        and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    ''''Absence''''',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value IN (''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    ''''Time Off'''''';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363477258405443019)
,p_region_id=>wwv_flow_imp.id(5000469224106522685)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363477751019443020)
,p_chart_id=>wwv_flow_imp.id(3363477258405443019)
,p_seq=>20
,p_name=>'TOTAL_MONEY_VALUE'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_MONEY_VALUE'
,p_items_label_column_name=>'SERIES'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5001397277455244778)
,p_plug_name=>'Overall Total Hours'
,p_parent_plug_id=>wwv_flow_imp.id(5001397708875244782)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE'''' ',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Lateness''''',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value,''''Absence'''' as series, ''''yellow'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in (''''UNABS'''',''''Absent'''', ''''UNCABS'''')',
'        and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Absence''''',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value,''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value IN (''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Time Off'''''';',
'',
'ELSE RETURN',
'',
'''select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Lateness'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''LATE''''',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    ''''Lateness'''' ',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Absence'''' as series, ''''yellow'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value in (''''UNABS'''',''''Absent'''', ''''UNCABS'''')',
'        and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    ''''Absence''''',
'union',
'select',
'    sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, ''''Time Off'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value IN (''''TO'''',''''EE'''')',
'    and a.affect_salary != ''''DEDUCTION''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and org.id = :P1383_DEPARTMENT',
'group by ',
'    ''''Time Off'''''';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363475807523443016)
,p_region_id=>wwv_flow_imp.id(5001397277455244778)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363476336158443017)
,p_chart_id=>wwv_flow_imp.id(3363475807523443016)
,p_seq=>20
,p_name=>'TOTAL_HOURS'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_HOURS'
,p_items_label_column_name=>'SERIES'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000016763433774213)
,p_plug_name=>'Leave'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000016917018774214)
,p_plug_name=>'Occurences by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000016763433774213)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363437671529442943)
,p_region_id=>wwv_flow_imp.id(5000016917018774214)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363440039786442951)
,p_chart_id=>wwv_flow_imp.id(3363437671529442943)
,p_seq=>10
,p_name=>'COUNT'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'COUNT'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363439390649442949)
,p_chart_id=>wwv_flow_imp.id(3363437671529442943)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363438805877442948)
,p_chart_id=>wwv_flow_imp.id(3363437671529442943)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363438238570442946)
,p_chart_id=>wwv_flow_imp.id(3363437671529442943)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'OCCURRENCES'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000137022902311770)
,p_plug_name=>'Total Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000016763433774213)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363440948579442953)
,p_region_id=>wwv_flow_imp.id(5000137022902311770)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363443182638442956)
,p_chart_id=>wwv_flow_imp.id(3363440948579442953)
,p_seq=>10
,p_name=>'TOTAL_HOURS'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_HOURS'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363442023247442955)
,p_chart_id=>wwv_flow_imp.id(3363440948579442953)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363441440573442954)
,p_chart_id=>wwv_flow_imp.id(3363440948579442953)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363442641551442955)
,p_chart_id=>wwv_flow_imp.id(3363440948579442953)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'HOURS'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000137658690311776)
,p_plug_name=>'Total Money Value by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000016763433774213)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'    left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'',
'ELSE RETURN',
'',
'''select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id',
'union',
'select',
'    count(*) count, sum(absence_hours) total_hours, sum(leave_dollar_value) total_money_value, org.unit_name department, org.id dept_id, orgstruct.id orgstruct_id, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'        left join hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    org.unit_name, org.id, orgstruct.id'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363444126013442959)
,p_region_id=>wwv_flow_imp.id(5000137658690311776)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363446364801442962)
,p_chart_id=>wwv_flow_imp.id(3363444126013442959)
,p_seq=>10
,p_name=>'TOTAL_MONEY_VALUE'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_MONEY_VALUE'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363444597364442960)
,p_chart_id=>wwv_flow_imp.id(3363444126013442959)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363445216928442961)
,p_chart_id=>wwv_flow_imp.id(3363444126013442959)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'AMOUNT'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363445774550442962)
,p_chart_id=>wwv_flow_imp.id(3363444126013442959)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000470173747522694)
,p_plug_name=>'Overall Money Value'
,p_parent_plug_id=>wwv_flow_imp.id(5000016763433774213)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h480:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN RETURN ',
'''select',
'    sum(leave_dollar_value) total_money_value, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Casual Leave''''',
'union',
'select',
'    sum(leave_dollar_value) total_money_value, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Uncertified Sick Leave''''',
'union',
'select',
'    sum(leave_dollar_value) total_money_value, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'group by ',
'    ''''Certified Sick Leave'''''';',
'',
'ELSE RETURN',
'',
'''select',
'    sum(leave_dollar_value) total_money_value, ''''Casual Leave'''' as series, ''''green'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CASUAL'''' ',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    ''''Casual Leave''''',
'union',
'select',
'    sum(leave_dollar_value) total_money_value, ''''Uncertified Sick Leave'''' as series, ''''blue'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''UNCERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    ''''Uncertified Sick Leave''''',
'union',
'select',
'    sum(leave_dollar_value) total_money_value, ''''Certified Sick Leave'''' as series, ''''orange'''' as color',
'from',
'    hr_att_timesheetabsence a ',
'    left join hr_hcf_lookup b on a.leave_type  = b.id',
'    left join hr_hcf_orgstructuredtl org on a.orgdtl_id = org.id',
'where',
'    exists(select 1 from vw_employee emp where emp.id = a.emp_id AND emp.org_id = :APP_ORG_ID)',
'    and table_value = ''''CERTSK''''',
'    and a.work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and a.orgdtl_id = :P1383_DEPARTMENT',
'group by ',
'    ''''Certified Sick Leave'''''';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_PERIOD_START,P1383_PERIOD_END,P1383_DEPARTMENT'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363447320379442965)
,p_region_id=>wwv_flow_imp.id(5000470173747522694)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363447829324442966)
,p_chart_id=>wwv_flow_imp.id(3363447320379442965)
,p_seq=>10
,p_name=>'TOTAL_MONEY_VALUE'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'TOTAL_MONEY_VALUE'
,p_items_label_column_name=>'SERIES'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000141171275311811)
,p_plug_name=>'Gender'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000140645132311806)
,p_plug_name=>'By Company'
,p_parent_plug_id=>wwv_flow_imp.id(5000141171275311811)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Females'' label, count(1) value, ''Females'' as series ,  ''green'' as colors',
'from hr_rcm_employee a left outer join VW_POSITION_LOCATION_V3 b on b.emp_id = a.id',
'where b.sex_code=''F''',
'and a.org_id = :APP_ORG_ID',
'and a.date_separated is null',
'group by ''Females'' ',
'union',
'select ''Males'' label, count(1) value, ''Males'' as series ,  ''blue'' as colors',
'from hr_rcm_employee a left outer join VW_POSITION_LOCATION_V3 b on b.emp_id = a.id',
'where b.sex_code=''M''',
'and a.org_id = :APP_ORG_ID',
'and a.date_separated is null',
'group by ''Males'';'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363448984931442968)
,p_region_id=>wwv_flow_imp.id(5000140645132311806)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlightAndExplode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363449526681442968)
,p_chart_id=>wwv_flow_imp.id(3363448984931442968)
,p_seq=>10
,p_name=>'Series 1'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5153150809577157914)
,p_plug_name=>'By Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000141171275311811)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select department_NAME label, count(1) value, ''Females'' as series ,  ''green'' as color',
'from hr_rcm_employee a left outer join VW_POSITION_LOCATION_V3 b on b.emp_id = a.id',
'where b.sex_code=''F''',
'and a.org_id = :APP_ORG_ID',
'and a.date_separated is null',
'group by department_NAME ',
'union',
'select department_NAME label, count(1) value, ''Males'' as series ,  ''blue'' as color',
'from hr_rcm_employee a left outer join VW_POSITION_LOCATION_V3 b on b.emp_id = a.id',
'where b.sex_code=''M''',
'and a.org_id = :APP_ORG_ID',
'and a.date_separated is null',
'group by department_NAME'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363450418516442969)
,p_region_id=>wwv_flow_imp.id(5153150809577157914)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363452151901442971)
,p_chart_id=>wwv_flow_imp.id(3363450418516442969)
,p_seq=>10
,p_name=>'Series 1'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_group_short_desc_column_name=>'LABEL'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideBarEdge'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363450903206442970)
,p_chart_id=>wwv_flow_imp.id(3363450418516442969)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363451469923442971)
,p_chart_id=>wwv_flow_imp.id(3363450418516442969)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000467607490522668)
,p_plug_name=>'Overtime'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000467657313522669)
,p_plug_name=>'Total Money Value by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000467607490522668)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN',
'RETURN ''select a.* from (SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 1.5'''' Series, 1 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 1',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 2'''' Series, 2 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT1''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 2',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 0.5'''' Series, 3 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 3',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1'''' Series, 4 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 4',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1.5'''' Series, 5 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 5',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 2'''' Series, 6 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 6) a order by a.sort_by'';',
'ELSE',
'RETURN ''select a.* from (SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 1.5'''' Series, 1 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 1',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 2'''' Series, 2 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT1''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 2',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 0.5'''' Series, 3 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 3',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1'''' Series, 4 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 4',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1.5'''' Series, 5 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 5',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 2'''' Series, 6',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 6) a ORDER BY a.sort_by'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_DEPARTMENT,P1383_PERIOD_START,P1383_PERIOD_END'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363453308035442974)
,p_region_id=>wwv_flow_imp.id(5000467657313522669)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363455030785442977)
,p_chart_id=>wwv_flow_imp.id(3363453308035442974)
,p_seq=>10
,p_name=>'OVERTIME'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363453825881442975)
,p_chart_id=>wwv_flow_imp.id(3363453308035442974)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363454394597442976)
,p_chart_id=>wwv_flow_imp.id(3363453308035442974)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'AMOUNT'
,p_format_type=>'currency'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5000468444409522677)
,p_plug_name=>'Overall Money Value '
,p_parent_plug_id=>wwv_flow_imp.id(5000467607490522668)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN',
'RETURN ''select a.* from (SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - 1.5'''' Series, 1 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   ''''Overtime - 1.5'''', 1',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - 2'''' Series, 2 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT1''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   ''''Overtime - 2'''', 2',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 0.5'''' Series, 3 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   ''''Overtime - Holiday 0.5'''', 3',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 1'''' Series, 4 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   ''''Overtime - Holiday 1'''', 4',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 1.5'''' Series, 5 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   ''''Overtime - Holiday 1.5'''', 5',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 2'''' Series, 6 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   ''''Overtime - Holiday 2'''', 6) a order by a.sort_by'';',
'ELSE',
'RETURN ''select a.* from (SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - 1.5'''' Series, 1 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   ''''Overtime - 1.5'''', 1',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - 2'''' Series, 2 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT1''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   ''''Overtime - 2'''', 2',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 0.5'''' Series, 3 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   ''''Overtime - Holiday 0.5'''', 3',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 1'''' Series, 4 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   ''''Overtime - Holiday 1'''', 4',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 1.5'''' Series, 5 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'',
'GROUP BY',
'   ''''Overtime - Holiday 1.5'''', 5',
'union',
'SELECT',
'    sum(inc.amount_paid) AMOUNT,  ''''Overtime - Holiday 2'''' Series, 6',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   ''''Overtime - Holiday 2'''', 6) a ORDER BY a.sort_by'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_DEPARTMENT,P1383_PERIOD_START,P1383_PERIOD_END'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363455804974442981)
,p_region_id=>wwv_flow_imp.id(5000468444409522677)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'explode'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363456267458442982)
,p_chart_id=>wwv_flow_imp.id(3363455804974442981)
,p_seq=>10
,p_name=>'OVERTIME'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'SERIES'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5505282711569638718)
,p_plug_name=>'Total Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(5000467607490522668)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1383_DEPARTMENT is null THEN',
'RETURN ''select a.* from (SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 1.5'''' Series, 1 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 1',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 2'''' Series, 2 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT1''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 2',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 0.5'''' Series, 3 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 3',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1'''' Series, 4 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 4',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1.5'''' Series, 5 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 5',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 2'''' Series, 6 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 6) a order by a.sort_by'';',
'ELSE',
'RETURN ''select a.* from (SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 1.5'''' Series, 1 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 1',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - 2'''' Series, 2 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OT1''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 2',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 0.5'''' Series, 3 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 3',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1'''' Series, 4 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''OTH2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 4',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 1.5'''' Series, 5 sort_by',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL1.5''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 5',
'union',
'SELECT',
'    sum(inc.quantity) AMOUNT, unit_name DEPARTMENT, org.id DEPT_ID, orgstruct.id org_struct_id, ''''Overtime - Holiday 2'''' Series, 6',
'FROM',
'    hr_att_timesheetincome inc',
'    JOIN vw_employee emp on inc.emp_id = emp.id',
'    LEFT JOIN hr_hcf_orgstructuredtl org on org.id = emp.orgdtl_id',
'    LEFT JOIN hr_hcf_orgstructurehd orgstruct on org.org_structure_id = orgstruct.id',
'WHERE ',
'    INCOME_CODE = ''''HOL2''''',
'    AND EXISTS(SELECT ',
'                                    1 ',
'                            FROM ',
'                                    VW_EMPLOYEE emp ',
'                            WHERE ',
'                                    emp.id = inc.emp_id)',
'    and work_date between to_date(:P1383_PERIOD_START, ''''DD-MON-YYYY'''') and to_date(:P1383_PERIOD_END, ''''DD-MON-YYYY'''')',
'    and inc.org_id = :APP_ORG_ID',
'    and org.id = :P1383_DEPARTMENT',
'GROUP BY',
'   unit_name,  org.id, orgstruct.id, 6) a ORDER BY a.sort_by'';',
'END IF;'))
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_ajax_items_to_submit=>'P1383_DEPARTMENT,P1383_PERIOD_START,P1383_PERIOD_END'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3363457220734442985)
,p_region_id=>wwv_flow_imp.id(5505282711569638718)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_show_label=>true
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'top'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3363458876535442988)
,p_chart_id=>wwv_flow_imp.id(3363457220734442985)
,p_seq=>10
,p_name=>'OVERTIME'
,p_location=>'REGION_SOURCE'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'AMOUNT'
,p_items_label_column_name=>'DEPARTMENT'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363457668139442986)
,p_chart_id=>wwv_flow_imp.id(3363457220734442985)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'DEPARTMENTS'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3363458348629442987)
,p_chart_id=>wwv_flow_imp.id(3363457220734442985)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'HOURS'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'off'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_zoom_order_seconds=>false
,p_zoom_order_minutes=>false
,p_zoom_order_hours=>false
,p_zoom_order_days=>false
,p_zoom_order_weeks=>false
,p_zoom_order_months=>false
,p_zoom_order_quarters=>false
,p_zoom_order_years=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5153143282949669503)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3363460931885442992)
,p_name=>'P1383_DEPARTMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5153143282949669503)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT A.UNIT_NAME DISPLAY, A.ID RETURN',
'FROM HR_HCF_ORGSTRUCTUREDTL A',
'JOIN HR_HCF_ORGSTRUCTUREHD B ON A.ORG_STRUCTURE_ID = B.ID',
'WHERE B.ORG_ID = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id=a.id',
'          and a.id=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, a.id, w.org_structure_id)         ',
'          )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>2
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3363461275095442993)
,p_name=>'P1383_PERIOD_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5153143282949669503)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_date(''13-'' || to_char(add_months(trunc(current_date), -2), ''MON'') || ''-'' || to_char(add_months(trunc(current_date), -2), ''YYYY''))',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>6
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
 p_id=>wwv_flow_imp.id(3363461663419442993)
,p_name=>'P1383_PERIOD_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5153143282949669503)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    to_date(''10-'' || to_char(add_months(trunc(current_date), -1), ''MON'') || ''-'' || to_char(add_months(trunc(current_date), -1), ''YYYY''))',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>10
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3363478270820443023)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_START_DATE,P1383_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363478808580443023)
,p_event_id=>wwv_flow_imp.id(3363478270820443023)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5153150809577157914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3363479164013443024)
,p_name=>'refrshend'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363479750216443024)
,p_event_id=>wwv_flow_imp.id(3363479164013443024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5153150809577157914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3363480120980443025)
,p_name=>'refresh_charts_start'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_PERIOD_START'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363480646555443025)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000468444409522677)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363481156117443026)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5505282711569638718)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363481602421443026)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000467657313522669)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363482155672443026)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000469224106522685)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363482574646443027)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000471067051522703)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363483141739443027)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000012203576774167)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363483618862443027)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000013931921774185)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363484100660443028)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000014788203774193)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363484565969443028)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000470173747522694)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363485151803443029)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000016917018774214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363485630133443029)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000137022902311770)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363486085867443030)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000137658690311776)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363486659740443030)
,p_event_id=>wwv_flow_imp.id(3363480120980443025)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5001397277455244778)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3363487031632443030)
,p_name=>'refresh_charts_end'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_PERIOD_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363487478286443031)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000468444409522677)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363487970772443031)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5505282711569638718)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363488501823443032)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000467657313522669)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363489001209443032)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000469224106522685)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363489551724443032)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000471067051522703)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363490060012443033)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000012203576774167)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363490468947443033)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000013931921774185)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363491038970443034)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000014788203774193)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363491496755443034)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000470173747522694)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363492023829443034)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000016917018774214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363492483532443035)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000137022902311770)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363493061487443035)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000137658690311776)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363493469982443036)
,p_event_id=>wwv_flow_imp.id(3363487031632443030)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5001397277455244778)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3363493905185443036)
,p_name=>'refresh_charts_dept'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363494384140443037)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000468444409522677)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363494932162443037)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5505282711569638718)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363495453513443038)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000467657313522669)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363495880518443038)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000469224106522685)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363496377375443038)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000471067051522703)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363496911205443039)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000012203576774167)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363497379282443040)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000013931921774185)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363497932254443040)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000014788203774193)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363498406744443040)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000470173747522694)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363498905026443041)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000016917018774214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363499445180443041)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000137022902311770)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363499882544443042)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5000137658690311776)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3363500462038443043)
,p_event_id=>wwv_flow_imp.id(3363493905185443036)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5001397277455244778)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
