prompt --application/pages/page_10001
begin
--   Manifest
--     PAGE: 10001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>10001
,p_name=>'frmPAY_Config_dash'
,p_step_title=>'Payroll Configuration Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885163390701547)
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362434113831815235)
,p_plug_name=>'Income Codes by Type'
,p_region_name=>'pie1'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3284435653552905357)
,p_region_id=>wwv_flow_imp.id(4362434113831815235)
,p_chart_type=>'pie'
,p_title=>'Income Codes by Type'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
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
,p_legend_position=>'auto'
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
 p_id=>wwv_flow_imp.id(3284435118599905357)
,p_chart_id=>wwv_flow_imp.id(3284435653552905357)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       a.INCOME_TYPE label,',
'       count(1) value',
'from pa_pcf_incomecode a join HR_RCM_EMPENTITLE b on a.id=income_code_id',
'where org_id=:APP_ORG_SHR_DED',
'group by a.INCOME_TYPE'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4362434658178815240)
,p_plug_name=>'Active Employee Deductions'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3284434207286905357)
,p_region_id=>wwv_flow_imp.id(4362434658178815240)
,p_chart_type=>'bar'
,p_title=>'Active Deductions by Employee '
,p_animation_on_display=>'none'
,p_animation_on_data_change=>'none'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3284432555916905356)
,p_chart_id=>wwv_flow_imp.id(3284434207286905357)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, sum(DEDUCTION_AMOUNT) value   ',
'from PA_PCF_ADMINDEDUCTION p join pa_pcf_deductioncode r on p.expense_id=r.id',
'where UPPER(deduct_status)=''IP''',
'and p.org_id=:APP_ORG_ID',
'and deduction_no!=''0''',
'and datestart <= trunc(current_date)',
'and for_prv_ytd_entry = 0',
'and deduction_amount >0',
'and p.VERIFIED_BY is not null',
'group by DESCRIPTION'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'DESCRIPTION'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'center'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3284433197375905356)
,p_chart_id=>wwv_flow_imp.id(3284434207286905357)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Deduction Name'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(3284433753908905357)
,p_chart_id=>wwv_flow_imp.id(3284434207286905357)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Deduction Amount ($)'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(4362435174006815245)
,p_plug_name=>'Deduction Codes'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3284431680506905356)
,p_region_id=>wwv_flow_imp.id(4362435174006815245)
,p_chart_type=>'donut'
,p_title=>'Deduction Codes'
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'none'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>false
,p_show_value=>true
,p_show_label=>false
,p_show_row=>true
,p_show_start=>true
,p_show_end=>true
,p_show_progress=>true
,p_show_baseline=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_pie_other_threshold=>.05
,p_pie_selection_effect=>'highlight'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3284431122975905355)
,p_chart_id=>wwv_flow_imp.id(3284431680506905356)
,p_seq=>10
,p_name=>'Deduction Codes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       a.DESCRIPTION label,',
'       count(1) value',
'from PA_PCF_DEDUCTIONCODE a join pa_pcf_admindeduction b on a.id=b.expense_id',
'where b.org_id=:APP_ORG_ID        ',
'group by DESCRIPTION'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4658707672502425071)
,p_plug_name=>'Active Employee by Class, Payment and Compute Gross'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3284437051838905358)
,p_region_id=>wwv_flow_imp.id(4658707672502425071)
,p_chart_type=>'funnel'
,p_title=>'Active Periods by Employee '
,p_animation_on_display=>'alphaFade'
,p_animation_on_data_change=>'none'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'none'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_position=>'auto'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'auto'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function( options ){',
'',
'    // Set chart initialization options',
'    options.styleDefaults = {',
'        threeDEffect: "on" ',
'    };',
'    return options;',
'}'))
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3284436517075905358)
,p_chart_id=>wwv_flow_imp.id(3284437051838905358)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.payment_type||'' ''||a.employment_class||''(''||a.compute_gross||'')'' label',
'    ,count(1) value',
'from hr_rcm_employee a join PA_PCF_EARNINGPERIOD b on',
'(a.employment_class_id=b.employment_class_id and a.payment_type=b.payment_type and a.org_id=b.org_id)',
'where a.org_id=:APP_ORG_ID',
'and to_char(current_date,''MON-YYYY'') = to_char(b.start_date,''MON-YYYY'')',
'and pkg_global_fnts.get_lookup_col(a.Employment_Class_ID,''TABLE_VALUE'')  !=''PEN''',
'and  pkg_global_fnts.get_lookup_col(a.EMPLOYMENT_STATUS_ID,''TABLE_VALUE'')  not in (''APPL'',''INVW'')',
'group by a.payment_type||'' ''||a.employment_class||''(''||a.compute_gross||'')'''))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284430222430905354)
,p_name=>'Apply Other Threshold'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10001_OTHER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284429752683905354)
,p_event_id=>wwv_flow_imp.id(3284430222430905354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4362435174006815245)
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var lOther = apex.item(''P10001_OTHER'').getValue();',
'',
'var num = 0.3',
'$("#donut1_jet").ojChart({otherThreshold:num});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284429343456905354)
,p_name=>'Increase'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3303470127264495713)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284428814736905354)
,p_event_id=>wwv_flow_imp.id(3284429343456905354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4362434113831815235)
,p_attribute_01=>'$("#pie1_jet").ojChart({legend:{size:''50%''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284428485657905353)
,p_name=>'Decrease'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3439021887482412342)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284428002534905353)
,p_event_id=>wwv_flow_imp.id(3284428485657905353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4362434113831815235)
,p_attribute_01=>'$("#pie1_jet").ojChart({legend:{size:''30%''}});'
);
wwv_flow_imp.component_end;
end;
/
