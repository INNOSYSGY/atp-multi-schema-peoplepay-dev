prompt --application/pages/page_10006
begin
--   Manifest
--     PAGE: 10006
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
 p_id=>10006
,p_name=>'frmLeaveCalendar_dash'
,p_step_title=>'Leave Calendar'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885415547704719)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.legend-list {list-style: none; margin: 0;}',
'.legend.fc-event { display: inline-block; padding: 0 4px; width: 72px; text-align: center; }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3228970766187718713)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="legend-list fc">',
'  <strong class="legend fc-event apex-cal-blue">Blue</strong>Other.',
'  <strong class="legend fc-event apex-cal-green">Green</strong>Annual Leave.',
'  <strong class="legend fc-event apex-cal-yellow">Yellow</strong>Maternity Leave.',
'  <strong class="legend fc-event apex-cal-orange">Orange</strong>Certified Sick.',
'  <strong class="legend fc-event apex-cal-brown">Brown</strong>Industrial Injury.',
'  <strong class="legend fc-event apex-cal-cyan">Cyan</strong>Casual Leave.',
'  <strong class="legend fc-event apex-cal-silver">Silver</strong>Special Leave.',
'  <strong class="legend fc-event apex-cal-lime">Lime</strong>Compassionate Leave.',
'  <strong class="legend fc-event apex-cal-gray">Gray</strong>NoPay leave.',
'  <strong class="legend fc-event apex-cal-red">Red</strong>UnCertified Sick',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3229247418063046642)
,p_plug_name=>'Employee Leave Calendar (select filter options above, Navigate to specific month)'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.id',
',case when a.remarks is not null then '' for '' else '''' end|| ''Valued at''||to_char(LEAVE_DOLLAR_VALUE,''$999,999,999'')  ||'' Occupation: ''||POSITION_NAME_HIST||'' at ''||LOCATION_NAME_HIST name',
', DAYS_TAKEN-HOLIDAYS||'' day(s) ''||  b.value_description ||'' for ''||initcap(A.SURNAME_HIST || '', '' || nvl(A.FIRST_NAME_HIST, '''')) ||'' ''||nvl(A.MIDDLE_NAME,'''') ||''(No.:''||A.EMP_COMPANY_NO_HIST||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(A.EMPLOYMENT_CLASS_I'
||'D, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')'' end    description',
', calendar_legend.leave_cal_colour ',
'    (TABLE_VALUE) css_class',
',FROMDATE START_DATE',
',TODATE END_DATE',
', ''f?p=''||:APP_ID||'':1417:''||:APP_SESSION||''::NO::P1417_ID:''||a.id APP_URL_LINK',
'from hr_lv_leavehistory a join  HR_RCM_EMPLOYEE X on a.EMP_ID = X.id',
'JOIN HR_RCM_EMPLEAVEENTITLE V ON V.id = A.EMPLVENT_ID',
'join hr_hcf_lookup b on V.leave_type_id = B.id',
'where x.org_id=:APP_ORG_ID',
'and a.emp_id=nvl(:P10006_EMPLOYEE,a.emp_id)',
'and trunc(FROMDATE) between :P10006_START and :P10006_END',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS w ',
'              where x.org_id = w.org_id',
'              and x.employment_class_id = w.employment_class_id',
'              and upper(x.payment_type) = w.payment_type',
'              )  '))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P10006_EMPLOYEE,P10006_START,P10006_END'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'additional_calendar_views', 'list:navigation',
  'css_class', 'CSS_CLASS',
  'display_column', 'DESCRIPTION',
  'end_date_column', 'END_DATE',
  'event_sorting', 'AUTOMATIC',
  'maximum_events_day', '20',
  'multiple_line_event', 'Y',
  'show_time', 'N',
  'show_tooltip', 'Y',
  'show_weekend', 'Y',
  'start_date_column', 'START_DATE',
  'supplemental_information', '&NAME.',
  'view_edit_link', '&APP_URL_LINK.')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3229705362087618700)
,p_plug_name=>'Filter Bar'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3284216480163238833)
,p_name=>'P10006_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3229705362087618700)
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
 p_id=>wwv_flow_imp.id(3284216851067238833)
,p_name=>'P10006_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3229705362087618700)
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
 p_id=>wwv_flow_imp.id(3284217699044238834)
,p_name=>'P10006_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3229705362087618700)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')''  end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists (select 1',
'              from hr_lv_leavehistory w',
'              where w.emp_id=x.id)              ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3284215492666238830)
,p_name=>'refresh_calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P10006_EMPLOYEE,P10006_START,P10006_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3284214994992238830)
,p_event_id=>wwv_flow_imp.id(3284215492666238830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3229247418063046642)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
