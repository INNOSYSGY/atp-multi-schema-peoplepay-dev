prompt --application/pages/page_10002
begin
--   Manifest
--     PAGE: 10002
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
 p_id=>10002
,p_name=>'frmHR_Config_dash'
,p_step_title=>'HR Dashboard Configuration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4424844486436424140)
,p_plug_name=>'Position Statistics By Employees'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton::t-Region--hideHeader js-addHiddenHeadingRoleDesc:::t-Region--scrollBody:::::::::'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3284417190865695792)
,p_region_id=>wwv_flow_imp.id(4424844486436424140)
,p_chart_type=>'bar'
,p_title=>'Positions By Employees'
,p_height=>'2000'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'horizontal'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
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
,p_show_group_name=>false
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
 p_id=>wwv_flow_imp.id(3284416642811695792)
,p_chart_id=>wwv_flow_imp.id(3284417190865695792)
,p_seq=>10
,p_name=>'Position'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(trim(X.POSITION_NAME)) label',
',COUNT(1) VALUE',
'from HR_RCM_EMPLOYEE X JOIN HR_HCF_POSITION A ON x.position_id=a.ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=A.DEF_WORK_LOCATION_ID',
'WHERE X.org_id=:APP_ORG_ID and',
'A.start_date <= trunc(current_date)',
'and (A.end_date is null or A.end_date> trunc(current_date))',
'group by INITCAP(trim(X.POSITION_NAME))',
'',
'',
'/*select INITCAP(trim(X.POSITION_NAME)) label',
',COUNT(1) VALUE',
'from HR_RCM_EMPLOYEE X JOIN HR_HCF_WORKLOCATIONPOSITION A ON a.id=X.POSITION_LOCATION_ID',
'JOIN HR_HCF_POSITION b on b.id=a.position_id',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=A.WKLOCATION_ID',
'WHERE X.org_id=:APP_ORG_ID',
'and b.start_date <= trunc(current_date)',
'and (b.end_date is null or b.end_date> trunc(current_date))',
'group by INITCAP(trim(X.POSITION_NAME))*/'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_color=>'#349691'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3291583088176784572)
,p_chart_id=>wwv_flow_imp.id(3284417190865695792)
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
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3291583118382784573)
,p_chart_id=>wwv_flow_imp.id(3284417190865695792)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4721118045107033976)
,p_plug_name=>'Organisation Structure by Employees'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton::t-Region--hideHeader js-addHiddenHeadingRoleDesc:::t-Region--scrollBody:::::::::'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3284418530535695793)
,p_region_id=>wwv_flow_imp.id(4721118045107033976)
,p_chart_type=>'funnel'
,p_title=>'Organisation Structure By Employees'
,p_height=>'700'
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
 p_id=>wwv_flow_imp.id(3284418083621695793)
,p_chart_id=>wwv_flow_imp.id(3284418530535695793)
,p_seq=>10
,p_name=>'Tasks'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(unit_name)||''(''||initcap(pkg_global_fnts.Get_Lookup_Col(d.CLASSIFICATION,''VALUE_DESCRIPTION''))||'')'' label',
',COUNT(1) Employees',
'from HR_RCM_EMPLOYEE X JOIN HR_HCF_POSITION A ON x.position_id=a.ID',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=A.DEF_WORK_LOCATION_ID',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=A.ORGDTL_ID',
'WHERE X.org_id=:APP_ORG_ID',
'group by initcap(unit_name)||''(''||initcap(pkg_global_fnts.Get_Lookup_Col(d.CLASSIFICATION,''VALUE_DESCRIPTION''))||'')''',
'',
'',
'/*select initcap(unit_name)||''(''||initcap(pkg_global_fnts.Get_Lookup_Col(d.CLASSIFICATION,''VALUE_DESCRIPTION''))||'')'' label',
',COUNT(1) Employees',
'from HR_RCM_EMPLOYEE X JOIN HR_HCF_WORKLOCATIONPOSITION A ON a.id=X.POSITION_LOCATION_ID',
'JOIN HR_HCF_POSITION b on b.id=a.position_id',
'JOIN HR_HCF_WORKLOCATION C ON C.ID=A.WKLOCATION_ID',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=b.ORGDTL_ID',
'WHERE X.org_id=:APP_ORG_ID',
'group by initcap(unit_name)||''(''||initcap(pkg_global_fnts.Get_Lookup_Col(d.CLASSIFICATION,''VALUE_DESCRIPTION''))||'')''*/'))
,p_items_value_column_name=>'EMPLOYEES'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284410771223695790)
,p_name=>'Apply Other Threshold'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10002_OTHER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284413501210695791)
,p_name=>'Increase'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3303470127264495713)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284412931307695790)
,p_event_id=>wwv_flow_imp.id(3284413501210695791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4424844486436424140)
,p_attribute_01=>'$("#pie1_jet").ojChart({legend:{size:''50%''}});'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284412562307695790)
,p_name=>'Decrease'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3439021887482412342)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284412018811695790)
,p_event_id=>wwv_flow_imp.id(3284412562307695790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4424844486436424140)
,p_attribute_01=>'$("#pie1_jet").ojChart({legend:{size:''30%''}});'
);
wwv_flow_imp.component_end;
end;
/
