prompt --application/pages/page_03012
begin
--   Manifest
--     PAGE: 03012
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
 p_id=>3012
,p_name=>'frmIPEDDashboard'
,p_alias=>'FRMIPEDDASHBOARD'
,p_step_title=>'Comparison Charts'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297886312641715634)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3246625903954603754)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3294717380393082719)
,p_plug_name=>'Days Lost by Leave Type'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3322378373111159707)
,p_region_id=>wwv_flow_imp.id(3294717380393082719)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'none'
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
 p_id=>wwv_flow_imp.id(3322377931766159704)
,p_chart_id=>wwv_flow_imp.id(3322378373111159707)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(DAYS_TAKEN) -sum(HOLIDAYS) value, LEAVE_TYPE, ''Series1'' series',
'from hr_lv_leavehistory A ',
'where org_id=:APP_ORG_ID',
'and extract(month from fromdate)=:P3012_MONTH',
'and extract(year from fromdate)=:P3012_YEAR',
'and verified_by is not null ',
'and approved_by is not null',
'GROUP BY LEAVE_TYPE'))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR,P3012_MONTH'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LEAVE_TYPE'
,p_items_short_desc_column_name=>'VALUE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322377348919159701)
,p_chart_id=>wwv_flow_imp.id(3322378373111159707)
,p_seq=>20
,p_name=>'Series 2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(DAYS_TAKEN) -sum(HOLIDAYS) value, LEAVE_TYPE, ''Series2'' series',
'from hr_lv_leavehistory A ',
'where org_id=:APP_ORG_ID',
'and extract(month from fromdate)=:P3012_MONTH_1',
'and extract(year from fromdate)=:P3012_YEAR_1',
'and verified_by is not null ',
'and approved_by is not null',
'GROUP BY LEAVE_TYPE'))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR_1,P3012_MONTH_1'
,p_series_name_column_name=>'SERIES'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LEAVE_TYPE'
,p_items_short_desc_column_name=>'VALUE'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3294720133093082712)
,p_plug_name=>'Days lost by Leave Type Comparision by Series'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3322376395808159699)
,p_region_id=>wwv_flow_imp.id(3294720133093082712)
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322374692273159696)
,p_chart_id=>wwv_flow_imp.id(3322376395808159699)
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LEAVE_TYPE, sum(DAYS_TAKEN) -sum(HOLIDAYS) value, to_char(fromdate,''Month'') month',
'from hr_lv_leavehistory A ',
'where org_id=:APP_ORG_ID',
'and extract(month from fromdate)=:P3012_MONTH',
'and extract(year from fromdate)=:P3012_YEAR',
'and verified_by is not null ',
'and approved_by is not null',
'GROUP BY LEAVE_TYPE, to_char(fromdate,''Month'')',
''))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR,P3012_MONTH'
,p_series_name_column_name=>'MONTH'
,p_items_value_column_name=>'VALUE'
,p_group_name_column_name=>'MONTH'
,p_items_label_column_name=>'LEAVE_TYPE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322374092507159695)
,p_chart_id=>wwv_flow_imp.id(3322376395808159699)
,p_seq=>20
,p_name=>'Series 2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LEAVE_TYPE, sum(DAYS_TAKEN) -sum(HOLIDAYS) value, to_char(fromdate,''Month'') month',
'from hr_lv_leavehistory A ',
'where org_id=:APP_ORG_ID',
'and extract(month from fromdate)=:P3012_MONTH_1',
'and extract(year from fromdate)=:P3012_YEAR_1',
'and verified_by is not null ',
'and approved_by is not null',
'GROUP BY LEAVE_TYPE, to_char(fromdate,''Month'')',
''))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR_1,P3012_MONTH_1'
,p_series_name_column_name=>'MONTH'
,p_items_value_column_name=>'VALUE'
,p_group_name_column_name=>'MONTH'
,p_items_label_column_name=>'LEAVE_TYPE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3322375962532159698)
,p_chart_id=>wwv_flow_imp.id(3322376395808159699)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(3322375327625159697)
,p_chart_id=>wwv_flow_imp.id(3322376395808159699)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3294722764518082711)
,p_plug_name=>'New Hire by branch Comparision by Series'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3322373244136159694)
,p_region_id=>wwv_flow_imp.id(3294722764518082711)
,p_chart_type=>'line'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322370909710159691)
,p_chart_id=>wwv_flow_imp.id(3322373244136159694)
,p_seq=>10
,p_name=>'Series1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) cnt,LOCATION_DESCRIPTION ',
'from hr_rcm_employee a join hr_rcm_individual b on b.id=a.ind_id',
'join HR_HCF_WORKLOCATION d on d.id=a.WKLOCATION_ID',
'where a.org_id=:APP_ORG_ID',
'and a.verified_by is not null',
'and extract(month from date_employed)=:P3012_MONTH',
'and extract(year from date_employed)=:P3012_YEAR',
'group by LOCATION_DESCRIPTION '))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR,P3012_MONTH'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LOCATION_DESCRIPTION'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322370273390159690)
,p_chart_id=>wwv_flow_imp.id(3322373244136159694)
,p_seq=>20
,p_name=>'Series2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) cnt,LOCATION_DESCRIPTION ',
'from hr_rcm_employee a join hr_rcm_individual b on b.id=a.ind_id',
'join HR_HCF_WORKLOCATION d on d.id=a.WKLOCATION_ID',
'where a.org_id=:APP_ORG_ID',
'and a.verified_by is not null',
'and extract(month from date_employed)=:P3012_MONTH_1',
'and extract(year from date_employed)=:P3012_YEAR_1',
'group by LOCATION_DESCRIPTION '))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR_1,P3012_MONTH_1'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LOCATION_DESCRIPTION'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3322372111222159693)
,p_chart_id=>wwv_flow_imp.id(3322373244136159694)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'auto'
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
 p_id=>wwv_flow_imp.id(3322372667260159693)
,p_chart_id=>wwv_flow_imp.id(3322373244136159694)
,p_axis=>'y2'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(3322371494702159692)
,p_chart_id=>wwv_flow_imp.id(3322373244136159694)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3294725453293082710)
,p_plug_name=>'New Hire by sex Comparision by Series'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:i-h320:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3322369402461159689)
,p_region_id=>wwv_flow_imp.id(3294725453293082710)
,p_chart_type=>'bar'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'none'
,p_hover_behavior=>'dim'
,p_stack=>'on'
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322367695258159684)
,p_chart_id=>wwv_flow_imp.id(3322369402461159689)
,p_seq=>10
,p_name=>'Series1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sex_code,count(1) cnt,LOCATION_DESCRIPTION ',
'from hr_rcm_employee a join hr_rcm_individual b on b.id=a.ind_id',
'join HR_HCF_WORKLOCATION d on d.id=a.WKLOCATION_ID',
'where a.org_id=:APP_ORG_ID',
'and a.verified_by is not null',
'and extract(month from date_employed)=:P3012_MONTH',
'and extract(year from date_employed)=:P3012_YEAR',
'group by sex_code,LOCATION_DESCRIPTION ',
'',
''))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR,P3012_MONTH'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LOCATION_DESCRIPTION'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3322367145027159684)
,p_chart_id=>wwv_flow_imp.id(3322369402461159689)
,p_seq=>20
,p_name=>'Series2'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sex_code,count(1) cnt,LOCATION_DESCRIPTION ',
'from hr_rcm_employee a join hr_rcm_individual b on b.id=a.ind_id',
'join HR_HCF_WORKLOCATION d on d.id=a.WKLOCATION_ID',
'where a.org_id=:APP_ORG_ID',
'and a.verified_by is not null',
'and extract(month from date_employed)=:P3012_MONTH_1',
'and extract(year from date_employed)=:P3012_YEAR_1',
'group by sex_code,LOCATION_DESCRIPTION ',
'',
''))
,p_max_row_count=>20
,p_ajax_items_to_submit=>'P3012_YEAR_1,P3012_MONTH_1'
,p_items_value_column_name=>'CNT'
,p_items_label_column_name=>'LOCATION_DESCRIPTION'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3322368346475159685)
,p_chart_id=>wwv_flow_imp.id(3322369402461159689)
,p_axis=>'x'
,p_is_rendered=>'on'
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
 p_id=>wwv_flow_imp.id(3322368888344159686)
,p_chart_id=>wwv_flow_imp.id(3322369402461159689)
,p_axis=>'y'
,p_is_rendered=>'on'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3322380717569159720)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3246625903954603754)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3322379069333159711)
,p_name=>'P3012_MONTH_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3246625903954603754)
,p_prompt=>'Month for Comparison Series2'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;1,February;2,March;3,April;4,May;5,June;6,July;7,August;8,September;9,October;10,November;11,December;12'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3322379525865159712)
,p_name=>'P3012_YEAR_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3246625903954603754)
,p_prompt=>'Year for Comparison Series2'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:2017;2017,2018;2018,2019;2019,2020;2020,2021;2021,2022;2022,2023;2023,2024;2024,2025;2025'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3322379939713159712)
,p_name=>'P3012_MONTH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3246625903954603754)
,p_prompt=>'Month Series1'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:January;1,February;2,March;3,April;4,May;5,June;6,July;7,August;8,September;9,October;10,November;11,December;12'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3322380360306159715)
,p_name=>'P3012_YEAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3246625903954603754)
,p_prompt=>'Year Series1'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:2017;2017,2018;2018,2019;2019,2020;2020,2021;2021,2022;2022,2023;2023,2024;2024,2025;2025'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3322366560722159669)
,p_name=>'REFRESHH_ALL'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P3012_YEAR,P3012_MONTH,P3012_YEAR_1,P3012_MONTH_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322366095487159666)
,p_event_id=>wwv_flow_imp.id(3322366560722159669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3294717380393082719)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322365578026159665)
,p_event_id=>wwv_flow_imp.id(3322366560722159669)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3294720133093082712)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322365105213159665)
,p_event_id=>wwv_flow_imp.id(3322366560722159669)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3294722764518082711)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322364579653159664)
,p_event_id=>wwv_flow_imp.id(3322366560722159669)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3294725453293082710)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
