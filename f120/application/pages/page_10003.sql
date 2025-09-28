prompt --application/pages/page_10003
begin
--   Manifest
--     PAGE: 10003
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
 p_id=>10003
,p_name=>'frmRecruitment_Dash'
,p_alias=>'FRMRECRUITMENT-DASH'
,p_step_title=>'Recruitment Dash Board'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892462384379471)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'04'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4227758611733745753)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4231106085639983904)
,p_plug_name=>'New_Hire'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3224938563222793044)
,p_region_id=>wwv_flow_imp.id(4231106085639983904)
,p_chart_type=>'dial'
,p_width=>'240'
,p_height=>'360'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_stack=>'off'
,p_stack_label=>'off'
,p_connect_nulls=>'Y'
,p_value_text_type=>'number'
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
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_indicator_size=>.5
,p_gauge_inner_radius=>.7
,p_gauge_plot_area=>'on'
,p_gauge_start_angle=>90
,p_gauge_angle_extent=>360
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3224939020924793047)
,p_chart_id=>wwv_flow_imp.id(3224938563222793044)
,p_seq=>10
,p_name=>'Number Hired'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(sum(case when FINAL_DECISION = ''SHOULD_HIRE'' then 1 ',
'                   else 0',
'                end),0) value,  count(*) max_value, ''Total Hired'' label',
'from  HR_INV_SESSION',
'where DATE_INTERVIEWED between :P10003_START_DATE and :P10003_END_DATE'))
,p_ajax_items_to_submit=>'P10003_START_DATE ,P10003_END_DATE'
,p_items_value_column_name=>'VALUE'
,p_items_max_value=>'MAX_VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4231106784941983911)
,p_plug_name=>'Age Sex Comparison'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3224939977120793050)
,p_region_id=>wwv_flow_imp.id(4231106784941983911)
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
,p_legend_position=>'auto'
,p_overview_rendered=>'off'
,p_horizontal_grid=>'auto'
,p_vertical_grid=>'auto'
,p_gauge_orientation=>'circular'
,p_gauge_plot_area=>'on'
,p_show_gauge_value=>true
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3224942227368793053)
,p_chart_id=>wwv_flow_imp.id(3224939977120793050)
,p_seq=>20
,p_name=>'Female'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT case when  pkg_global_fnts.fn_calcage(dob,current_date) < 18 then ''<18''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 18 and 30  then ''18-30''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 31 and 45  then ''31-45''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 46 and 60  then ''46-60''',
'            else ''>60'' end age_range,',
'    ''FEMALE'' sex_code,count(1) value',
'FROM hr_apl_individual a',
'where exists(select 1',
'           from HR_APL_JOBREQUEST b',
'           where b.applicant_id=a.id',
'           and date_applied between :P10003_START_DATE and :P10003_END_DATE ',
'           )',
'and sex_code =''FEMALE''',
'group BY case when  pkg_global_fnts.fn_calcage(dob,current_date) < 18 then ''<18''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 18 and 30  then ''18-30''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 31 and 45  then ''31-45''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 46 and 60  then ''46-60''',
'            else ''>60'' end'))
,p_ajax_items_to_submit=>'P10003_START_DATE ,P10003_END_DATE'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'AGE_RANGE'
,p_items_short_desc_column_name=>'SEX_CODE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(3224941635261793052)
,p_chart_id=>wwv_flow_imp.id(3224939977120793050)
,p_seq=>30
,p_name=>'Male'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT case when  pkg_global_fnts.fn_calcage(dob,current_date) < 18 then ''<18''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 18 and 30  then ''18-30''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 31 and 45  then ''31-45''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 46 and 60  then ''46-60''',
'            else ''>60'' end age_range,',
'    ''MALE'' sex_code, count(1) value',
'FROM hr_apl_individual a',
'where exists(select 1',
'           from HR_APL_JOBREQUEST b',
'           where b.applicant_id=a.id',
'           and date_applied between :P10003_START_DATE and :P10003_END_DATE ',
'           )',
'and sex_code =''MALE''',
'group BY case when  pkg_global_fnts.fn_calcage(dob,current_date) < 18 then ''<18''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 18 and 30  then ''18-30''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 31 and 45  then ''31-45''',
'            when  pkg_global_fnts.fn_calcage(dob,current_date) between 46 and 60  then ''46-60''',
'            else ''>60'' end'))
,p_ajax_items_to_submit=>'P10003_START_DATE ,P10003_END_DATE'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'AGE_RANGE'
,p_items_short_desc_column_name=>'SEX_CODE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_items_label_display_as=>'PERCENT'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(3224940497428793050)
,p_chart_id=>wwv_flow_imp.id(3224939977120793050)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Age'
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
 p_id=>wwv_flow_imp.id(3224941081731793052)
,p_chart_id=>wwv_flow_imp.id(3224939977120793050)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
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
 p_id=>wwv_flow_imp.id(4231107079552983914)
,p_plug_name=>'Locations'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(3224943701098793059)
,p_region_id=>wwv_flow_imp.id(4231107079552983914)
,p_chart_type=>'donut'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
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
,p_legend_rendered=>'off'
,p_legend_position=>'auto'
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
 p_id=>wwv_flow_imp.id(3224944169240793060)
,p_chart_id=>wwv_flow_imp.id(3224943701098793059)
,p_seq=>10
,p_name=>'New'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.id, count(1) value,b.location_description label',
'from hr_hcf_jobopening a join hr_hcf_worklocation b on b.id = a.wklocation_id',
'where APPLICATION_START between :P10003_START_DATE and :P10003_END_DATE',
'group by b.id, b.location_description'))
,p_ajax_items_to_submit=>'P10003_START_DATE ,P10003_END_DATE'
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'ALL'
,p_threshold_display=>'onIndicator'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4231109259794983936)
,p_plug_name=>'Chart Explanation'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p> Chart 1 Shows, Vacancies for Jobs with the Classification </p>',
'<p> Chart 2 Shows, Total applicants hired in the period </p>',
'<p> Chart 3 Shows, Age vs Sex applications for the period </p>',
'<p> Chart 4 Shows  Vacancies by work locations </p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4449358550039614637)
,p_plug_name=>'Recruitment Data Points'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:t-Form--noPadding'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(1) Percent , b.description label, b.job_classification value',
'from  hr_hcf_job b join hr_hcf_jobopening a  on b.id = a.job_id',
'where application_start between :P10003_START_DATE and :P10003_END_DATE',
'group by   b.description,B.job_classification'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_ajax_items_to_submit=>'P10003_START_DATE,P10003_END_DATE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'VALUE',
  'attribute_02', 'LABEL',
  'attribute_05', '4',
  'attribute_07', 'BOX',
  'attribute_08', 'Y',
  'attribute_09', 'PERCENT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3224937453320793041)
,p_name=>'P10003_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4227758611733745753)
,p_item_default=>'trunc(current_date,''MM'') '
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3224937846459793042)
,p_name=>'P10003_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4227758611733745753)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224945168143793062)
,p_name=>'refr_st'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_START_DATE'
,p_condition_element=>'P10003_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224945626164793063)
,p_event_id=>wwv_flow_imp.id(3224945168143793062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4449358550039614637)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224946054569793063)
,p_name=>'refresh_end'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_END_DATE'
,p_condition_element=>'P10003_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224946532408793064)
,p_event_id=>wwv_flow_imp.id(3224946054569793063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4449358550039614637)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224946922328793064)
,p_name=>'refr_hr'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224947469107793064)
,p_event_id=>wwv_flow_imp.id(3224946922328793064)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4231106085639983904)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224947831877793065)
,p_name=>'refr_end'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224948348111793065)
,p_event_id=>wwv_flow_imp.id(3224947831877793065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4231106085639983904)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224948795308793065)
,p_name=>'refr_endage_sex'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224949218665793066)
,p_event_id=>wwv_flow_imp.id(3224948795308793065)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4231106784941983911)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224949698684793066)
,p_name=>'refr_endlocation'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224950196027793067)
,p_event_id=>wwv_flow_imp.id(3224949698684793066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4231107079552983914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224950533134793067)
,p_name=>'refr_age_sex'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224951066881793067)
,p_event_id=>wwv_flow_imp.id(3224950533134793067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4231106784941983911)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3224951486730793068)
,p_name=>'refr_location'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10003_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3224951984749793068)
,p_event_id=>wwv_flow_imp.id(3224951486730793068)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4231107079552983914)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3224944790333793061)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'htp.p(''<script>',
'      var obj = JSON.parse(''''{ "name":"John", "age":30, "city":"New York"}'''');',
'      </script>'');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2803152797135796487
);
wwv_flow_imp.component_end;
end;
/
