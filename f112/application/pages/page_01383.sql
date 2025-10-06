prompt --application/pages/page_01383
begin
--   Manifest
--     PAGE: 01383
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
 p_id=>1383
,p_name=>'rptHRMISMAINDASHBOARD_DIR'
,p_alias=>'RPTHRMISMAINDASHBOARD-DIR'
,p_step_title=>'Directors Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297886312641715634)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4472462284083412390)
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
 p_id=>wwv_flow_imp.id(4472461085414412378)
,p_plug_name=>'Occurences by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472462284083412390)
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
 p_id=>wwv_flow_imp.id(2835911603397081206)
,p_region_id=>wwv_flow_imp.id(4472461085414412378)
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
 p_id=>wwv_flow_imp.id(2835913916298081209)
,p_chart_id=>wwv_flow_imp.id(2835911603397081206)
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
 p_id=>wwv_flow_imp.id(2835913291092081208)
,p_chart_id=>wwv_flow_imp.id(2835911603397081206)
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
 p_id=>wwv_flow_imp.id(2835912679247081208)
,p_chart_id=>wwv_flow_imp.id(2835911603397081206)
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
 p_id=>wwv_flow_imp.id(2835912143040081207)
,p_chart_id=>wwv_flow_imp.id(2835911603397081206)
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
 p_id=>wwv_flow_imp.id(4472462813759412396)
,p_plug_name=>'Total Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472462284083412390)
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
 p_id=>wwv_flow_imp.id(2835914754463081211)
,p_region_id=>wwv_flow_imp.id(4472462813759412396)
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
 p_id=>wwv_flow_imp.id(2835917101713081214)
,p_chart_id=>wwv_flow_imp.id(2835914754463081211)
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
 p_id=>wwv_flow_imp.id(2835916522952081213)
,p_chart_id=>wwv_flow_imp.id(2835914754463081211)
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
 p_id=>wwv_flow_imp.id(2835915937566081213)
,p_chart_id=>wwv_flow_imp.id(2835914754463081211)
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
 p_id=>wwv_flow_imp.id(2835915342618081212)
,p_chart_id=>wwv_flow_imp.id(2835914754463081211)
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
 p_id=>wwv_flow_imp.id(4472463670041412404)
,p_plug_name=>'Total Money Value by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472462284083412390)
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
 p_id=>wwv_flow_imp.id(2835917992736081216)
,p_region_id=>wwv_flow_imp.id(4472463670041412404)
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
 p_id=>wwv_flow_imp.id(2835920275897081220)
,p_chart_id=>wwv_flow_imp.id(2835917992736081216)
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
 p_id=>wwv_flow_imp.id(2835919129319081218)
,p_chart_id=>wwv_flow_imp.id(2835917992736081216)
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
 p_id=>wwv_flow_imp.id(2835919647597081219)
,p_chart_id=>wwv_flow_imp.id(2835917992736081216)
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
 p_id=>wwv_flow_imp.id(2835918511356081217)
,p_chart_id=>wwv_flow_imp.id(2835917992736081216)
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
 p_id=>wwv_flow_imp.id(4472919948889160914)
,p_plug_name=>'Total Absent Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472462284083412390)
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
 p_id=>wwv_flow_imp.id(2835921193177081222)
,p_region_id=>wwv_flow_imp.id(4472919948889160914)
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
 p_id=>wwv_flow_imp.id(2835923487018081224)
,p_chart_id=>wwv_flow_imp.id(2835921193177081222)
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
 p_id=>wwv_flow_imp.id(2835922893685081224)
,p_chart_id=>wwv_flow_imp.id(2835921193177081222)
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
 p_id=>wwv_flow_imp.id(2835922265824081223)
,p_chart_id=>wwv_flow_imp.id(2835921193177081222)
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
 p_id=>wwv_flow_imp.id(2835921660884081223)
,p_chart_id=>wwv_flow_imp.id(2835921193177081222)
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
 p_id=>wwv_flow_imp.id(4473846590712882993)
,p_plug_name=>'Overalls'
,p_parent_plug_id=>wwv_flow_imp.id(4472462284083412390)
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
 p_id=>wwv_flow_imp.id(4472918105944160896)
,p_plug_name=>'Overall Money Value'
,p_parent_plug_id=>wwv_flow_imp.id(4473846590712882993)
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
 p_id=>wwv_flow_imp.id(2835926140243081230)
,p_region_id=>wwv_flow_imp.id(4472918105944160896)
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
 p_id=>wwv_flow_imp.id(2835926632857081231)
,p_chart_id=>wwv_flow_imp.id(2835926140243081230)
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
 p_id=>wwv_flow_imp.id(4473846159292882989)
,p_plug_name=>'Overall Total Hours'
,p_parent_plug_id=>wwv_flow_imp.id(4473846590712882993)
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
 p_id=>wwv_flow_imp.id(2835924689361081227)
,p_region_id=>wwv_flow_imp.id(4473846159292882989)
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
 p_id=>wwv_flow_imp.id(2835925217996081228)
,p_chart_id=>wwv_flow_imp.id(2835924689361081227)
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
 p_id=>wwv_flow_imp.id(4472465645271412424)
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
 p_id=>wwv_flow_imp.id(4472465798856412425)
,p_plug_name=>'Occurences by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472465645271412424)
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
 p_id=>wwv_flow_imp.id(2835886553367081154)
,p_region_id=>wwv_flow_imp.id(4472465798856412425)
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
 p_id=>wwv_flow_imp.id(2835888921624081162)
,p_chart_id=>wwv_flow_imp.id(2835886553367081154)
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
 p_id=>wwv_flow_imp.id(2835888272487081160)
,p_chart_id=>wwv_flow_imp.id(2835886553367081154)
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
 p_id=>wwv_flow_imp.id(2835887687715081159)
,p_chart_id=>wwv_flow_imp.id(2835886553367081154)
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
 p_id=>wwv_flow_imp.id(2835887120408081157)
,p_chart_id=>wwv_flow_imp.id(2835886553367081154)
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
 p_id=>wwv_flow_imp.id(4472585904739949981)
,p_plug_name=>'Total Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472465645271412424)
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
 p_id=>wwv_flow_imp.id(2835889830417081164)
,p_region_id=>wwv_flow_imp.id(4472585904739949981)
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
 p_id=>wwv_flow_imp.id(2835892064476081167)
,p_chart_id=>wwv_flow_imp.id(2835889830417081164)
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
 p_id=>wwv_flow_imp.id(2835890905085081166)
,p_chart_id=>wwv_flow_imp.id(2835889830417081164)
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
 p_id=>wwv_flow_imp.id(2835890322411081165)
,p_chart_id=>wwv_flow_imp.id(2835889830417081164)
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
 p_id=>wwv_flow_imp.id(2835891523389081166)
,p_chart_id=>wwv_flow_imp.id(2835889830417081164)
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
 p_id=>wwv_flow_imp.id(4472586540527949987)
,p_plug_name=>'Total Money Value by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472465645271412424)
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
 p_id=>wwv_flow_imp.id(2835893007851081170)
,p_region_id=>wwv_flow_imp.id(4472586540527949987)
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
 p_id=>wwv_flow_imp.id(2835895246639081173)
,p_chart_id=>wwv_flow_imp.id(2835893007851081170)
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
 p_id=>wwv_flow_imp.id(2835893479202081171)
,p_chart_id=>wwv_flow_imp.id(2835893007851081170)
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
 p_id=>wwv_flow_imp.id(2835894098766081172)
,p_chart_id=>wwv_flow_imp.id(2835893007851081170)
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
 p_id=>wwv_flow_imp.id(2835894656388081173)
,p_chart_id=>wwv_flow_imp.id(2835893007851081170)
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
 p_id=>wwv_flow_imp.id(4472919055585160905)
,p_plug_name=>'Overall Money Value'
,p_parent_plug_id=>wwv_flow_imp.id(4472465645271412424)
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
 p_id=>wwv_flow_imp.id(2835896202217081176)
,p_region_id=>wwv_flow_imp.id(4472919055585160905)
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
 p_id=>wwv_flow_imp.id(2835896711162081177)
,p_chart_id=>wwv_flow_imp.id(2835896202217081176)
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
 p_id=>wwv_flow_imp.id(4472590053112950022)
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
 p_id=>wwv_flow_imp.id(4472589526969950017)
,p_plug_name=>'By Company'
,p_parent_plug_id=>wwv_flow_imp.id(4472590053112950022)
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
 p_id=>wwv_flow_imp.id(2835897866769081179)
,p_region_id=>wwv_flow_imp.id(4472589526969950017)
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
 p_id=>wwv_flow_imp.id(2835898408519081179)
,p_chart_id=>wwv_flow_imp.id(2835897866769081179)
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
 p_id=>wwv_flow_imp.id(4625599691414796125)
,p_plug_name=>'By Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472590053112950022)
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
 p_id=>wwv_flow_imp.id(2835899300354081180)
,p_region_id=>wwv_flow_imp.id(4625599691414796125)
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
 p_id=>wwv_flow_imp.id(2835901033739081182)
,p_chart_id=>wwv_flow_imp.id(2835899300354081180)
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
 p_id=>wwv_flow_imp.id(2835899785044081181)
,p_chart_id=>wwv_flow_imp.id(2835899300354081180)
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
 p_id=>wwv_flow_imp.id(2835900351761081182)
,p_chart_id=>wwv_flow_imp.id(2835899300354081180)
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
 p_id=>wwv_flow_imp.id(4472916489328160879)
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
 p_id=>wwv_flow_imp.id(4472916539151160880)
,p_plug_name=>'Total Money Value by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472916489328160879)
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
 p_id=>wwv_flow_imp.id(2835902189873081185)
,p_region_id=>wwv_flow_imp.id(4472916539151160880)
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
 p_id=>wwv_flow_imp.id(2835903912623081188)
,p_chart_id=>wwv_flow_imp.id(2835902189873081185)
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
 p_id=>wwv_flow_imp.id(2835902707719081186)
,p_chart_id=>wwv_flow_imp.id(2835902189873081185)
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
 p_id=>wwv_flow_imp.id(2835903276435081187)
,p_chart_id=>wwv_flow_imp.id(2835902189873081185)
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
 p_id=>wwv_flow_imp.id(4472917326247160888)
,p_plug_name=>'Overall Money Value '
,p_parent_plug_id=>wwv_flow_imp.id(4472916489328160879)
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
 p_id=>wwv_flow_imp.id(2835904686812081192)
,p_region_id=>wwv_flow_imp.id(4472917326247160888)
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
 p_id=>wwv_flow_imp.id(2835905149296081193)
,p_chart_id=>wwv_flow_imp.id(2835904686812081192)
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
 p_id=>wwv_flow_imp.id(4977731593407276929)
,p_plug_name=>'Total Hours by Department'
,p_parent_plug_id=>wwv_flow_imp.id(4472916489328160879)
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
 p_id=>wwv_flow_imp.id(2835906102572081196)
,p_region_id=>wwv_flow_imp.id(4977731593407276929)
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
 p_id=>wwv_flow_imp.id(2835907758373081199)
,p_chart_id=>wwv_flow_imp.id(2835906102572081196)
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
 p_id=>wwv_flow_imp.id(2835906549977081197)
,p_chart_id=>wwv_flow_imp.id(2835906102572081196)
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
 p_id=>wwv_flow_imp.id(2835907230467081198)
,p_chart_id=>wwv_flow_imp.id(2835906102572081196)
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
 p_id=>wwv_flow_imp.id(4625592164787307714)
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
 p_id=>wwv_flow_imp.id(2835909813723081203)
,p_name=>'P1383_DEPARTMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4625592164787307714)
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
 p_id=>wwv_flow_imp.id(2835910156933081204)
,p_name=>'P1383_PERIOD_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4625592164787307714)
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
 p_id=>wwv_flow_imp.id(2835910545257081204)
,p_name=>'P1383_PERIOD_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4625592164787307714)
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
 p_id=>wwv_flow_imp.id(2835927152658081234)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_START_DATE,P1383_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835927690418081234)
,p_event_id=>wwv_flow_imp.id(2835927152658081234)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4625599691414796125)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2835928045851081235)
,p_name=>'refrshend'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835928632054081235)
,p_event_id=>wwv_flow_imp.id(2835928045851081235)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4625599691414796125)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2835929002818081236)
,p_name=>'refresh_charts_start'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_PERIOD_START'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835929528393081236)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472917326247160888)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835930037955081237)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4977731593407276929)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835930484259081237)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472916539151160880)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835931037510081237)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472918105944160896)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835931456484081238)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472919948889160914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835932023577081238)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472461085414412378)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835932500700081238)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472462813759412396)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835932982498081239)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472463670041412404)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835933447807081239)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472919055585160905)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835934033641081240)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472465798856412425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835934511971081240)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472585904739949981)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835934967705081241)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472586540527949987)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835935541578081241)
,p_event_id=>wwv_flow_imp.id(2835929002818081236)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4473846159292882989)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2835935913470081241)
,p_name=>'refresh_charts_end'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_PERIOD_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835936360124081242)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472917326247160888)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835936852610081242)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4977731593407276929)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835937383661081243)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472916539151160880)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835937883047081243)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472918105944160896)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835938433562081243)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472919948889160914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835938941850081244)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472461085414412378)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835939350785081244)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472462813759412396)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835939920808081245)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472463670041412404)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835940378593081245)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472919055585160905)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835940905667081245)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472465798856412425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835941365370081246)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472585904739949981)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835941943325081246)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472586540527949987)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835942351820081247)
,p_event_id=>wwv_flow_imp.id(2835935913470081241)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4473846159292882989)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2835942787023081247)
,p_name=>'refresh_charts_dept'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1383_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835943265978081248)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472917326247160888)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835943814000081248)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4977731593407276929)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835944335351081249)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472916539151160880)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835944762356081249)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472918105944160896)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835945259213081249)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472919948889160914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835945793043081250)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472461085414412378)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835946261120081251)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472462813759412396)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835946814092081251)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472463670041412404)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835947288582081251)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472919055585160905)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835947786864081252)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472465798856412425)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835948327018081252)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472585904739949981)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835948764382081253)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4472586540527949987)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2835949343876081254)
,p_event_id=>wwv_flow_imp.id(2835942787023081247)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4473846159292882989)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
