prompt --application/pages/page_10005
begin
--   Manifest
--     PAGE: 10005
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
 p_id=>10005
,p_name=>'frmActivity_Dash'
,p_alias=>'FRMACTIVITY-DASH'
,p_step_title=>'Att. Management Dashboard'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885947246709907)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(155174108260094538)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3245701251986437459)
,p_plug_name=>'Filter Bar'
,p_parent_plug_id=>wwv_flow_imp.id(155174108260094538)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3245241748142862769)
,p_plug_name=>'Employee Attendance Calendar'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>42
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  sub_job||''-''||projecT   description',
',period_start START_DATE',
',period_end END_DATE',
',employee',
'from PROCORE_TIMESHEET_IMPORT a join  HR_RCM_EMPLOYEE X on a.EMP_ID = X.id',
'where x.orgdtl_id=:P10005_ORG_STRUCTURE',
'and trunc(work_date) between :P10005_START and :P10005_END',
'and classification =:P10005_PERIOD_TYPE'))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P10005_ORG_STRUCTURE,P10005_START,P10005_END,P10005_PERIOD_TYPE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'display_column', 'DESCRIPTION',
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '20',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'supplemental_information', '&EMPLOYEE.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3256491978137859668)
,p_plug_name=>'Attendance Gantt Chart'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent8:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>32
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  sub_job||''-''||lv.projecT Parent,',
'         employee "Task Name",',
'        lv.period_start "From",',
'        lv.period_end "To",',
'        lv.employee_id,',
'        lv.Id     ',
'from PROCORE_TIMESHEET_IMPORT lv join hr_rcm_employee emp on emp.id =EMP_ID',
'where orgdtl_id = :P10005_ORG_STRUCTURE',
'and work_date between :P10005_START AND :P10005_END',
'AND CLASSIFICATION = NVL(:P10005_PERIOD_TYPE, CLASSIFICATION)'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.GANTT_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'PARENT',
  'attribute_02', 'Task Name',
  'attribute_05', 'From',
  'attribute_06', 'To',
  'attribute_10', 'P10005_START',
  'attribute_11', '30:22:18:8')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(169308485152082535)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3245701251986437459)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-search'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3251942183468145287)
,p_name=>'P10005_ORG_STRUCTURE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3245701251986437459)
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
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3253122191076105298)
,p_name=>'P10005_PERIOD_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3245701251986437459)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct classification a, classification b',
'from PROCORE_TIMESHEET_IMPORT lv join hr_rcm_employee emp on emp.id =EMP_ID',
'where orgdtl_id = :P10005_ORG_STRUCTURE',
'and work_date between :P10005_START AND :P10005_END'))
,p_lov_cascade_parent_items=>'P10005_ORG_STRUCTURE,P10005_START,P10005_END'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3287193284863036306)
,p_name=>'P10005_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3245701251986437459)
,p_item_default=>'TRUNC(current_date,''YEAR'') '
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3287193629193036307)
,p_name=>'P10005_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3245701251986437459)
,p_item_default=>'ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(155174185731094539)
,p_name=>'refresh_regions_orgstruc'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10005_ORG_STRUCTURE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155174281024094540)
,p_event_id=>wwv_flow_imp.id(155174185731094539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'resfh_gantt'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3256491978137859668)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155174398666094541)
,p_event_id=>wwv_flow_imp.id(155174185731094539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh_calendar'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3245241748142862769)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(155174510408094542)
,p_name=>'refresh_regions_position'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10005_PERIOD_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155174619169094543)
,p_event_id=>wwv_flow_imp.id(155174510408094542)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>'refresh_gantt'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3256491978137859668)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(155174696424094544)
,p_event_id=>wwv_flow_imp.id(155174510408094542)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh_gcalenar'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3245241748142862769)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
