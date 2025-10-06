prompt --application/pages/page_01442
begin
--   Manifest
--     PAGE: 01442
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1442
,p_name=>'frmEmpMainCalendarNew'
,p_step_title=>'Employee Calendar'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603894171983398503)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.legend-list {list-style: none; margin: 0;}',
'.legend.fc-event { display: inline-block; padding: 0 4px; width: 72px; text-align: center; }'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3597591528995467447)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="legend-list fc">',
'  <strong class="legend fc-event apex-cal-green">Green</strong>Completed Attendance.',
'  <strong class="legend fc-event apex-cal-yellow">Yellow</strong>Individuals.',
'  <strong class="legend fc-event apex-cal-orange">Orange</strong>Employees.',
'  <strong class="legend fc-event apex-cal-brown">Brown</strong>salary.',
'  <strong class="legend fc-event apex-cal-cyan">Cyan</strong>&nbsp;&nbsp;Medical History Details.',
'  <strong class="legend fc-event apex-cal-silver">Silver</strong>Employee Movement.',
'  <strong class="legend fc-event apex-cal-lime">Lime</strong>Employee Leave History.',
'  <strong class="legend fc-event apex-cal-gray">Gray</strong>Employee Separation and Uncertified Leave.',
'  <strong class="legend fc-event apex-cal-blue">Blue</strong>Not classified on key.',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3597868180870795376)
,p_plug_name=>'Employee Calendar (Navigate to specific month then select filter bar options above)'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.id',
', case when HR_PROCESS_TABLE=''HR_ATT_ACTIVITYATTENDANCE'' then ''Employee Activity''',
'                                         when HR_PROCESS_TABLE=''HR_RCM_EMPLOYEE'' then ''Personal file''',
'                                         when HR_PROCESS_TABLE=''HR_MOV_SEPARATIONBENEFIT'' then ''Employee separation benefits''',
'                                         when HR_PROCESS_TABLE=''HR_GRI_DISCIPLINEEMP'' then ''Disciplinary Actions''',
'                                         when HR_PROCESS_TABLE=''HR_LV_LEAVEHISTORY'' then ''Leave History''',
'                                         when HR_PROCESS_TABLE=''HR_MOV_EMPMOVEMENT_NEW'' then ''Employee movement''',
'                                         when HR_PROCESS_TABLE=''HR_RCM_SALARY'' then ''Salary adjustments''',
'                                         when HR_PROCESS_TABLE=''HR_MED_MEDICALHISTORYDTL'' then ''Employee Medical''',
'                                         when HR_PROCESS_TABLE=''HR_APP_MERITINCREMENT'' then ''Performance appraisal''',
'                                         when HR_PROCESS_TABLE=''PA_PCF_ADMINDEDUCTION'' then ''Salary deduction''',
'else ''Unknown process'' end ||'' for ''||initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')'' end name',
', HR_PROCESS_DETAIL  description',
', calendar_legend.calendar_colour ',
'    ( upper(trim(HR_PROCESS_TABLE))',
'     , b.id ) css_class',
',WORK_DATE START_DATE',
',WORK_DATE END_DATE',
', case when hr_process_table =''HR_MOV_EMPMOVEMENT_NEW'' then ''f?p=''||:APP_ID||'':51:''||:APP_SESSION||''::NO::''||APP_URL_LINK_PAGE||'':''||to_char(hr_process_id) ',
' else ''f?p=''||:APP_ID||'':''||SUBSTR(app_url_link_page, 2,4) ||'':''||:APP_SESSION||''::NO::''||APP_URL_LINK_PAGE||'':''||to_char(APP_URL_LINK_PAGE_ID) end APP_URL_LINK',
'from HR_ATT_EMPCALENDAR_HD a JOIN HR_ATT_EMPCALENDAR_DTL B ON a.id=b.EMP_CAL_ID',
'join  HR_RCM_EMPLOYEE X on a.EMP_ID=X.id',
'join hr_rcm_individual w on w.id=x.ind_id',
'where x.org_id=:APP_ORG_ID',
'and a.emp_id=nvl(:P1442_EMPLOYEE,a.emp_id)',
'and HR_PROCESS_TABLE =nvl(:P1442_PROCESS,HR_PROCESS_TABLE)',
'and trunc(WORK_DATE) between :P1442_START and :P1442_END',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS z ',
'              where x.org_id = z.org_id',
'              and x.employment_class_id = z.employment_class_id',
'              and upper(x.payment_type) = z.payment_type           ',
'              )  ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain z',
'             where NVL(z.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER))',
'          where  t.id = x.ORGDTL_ID',
'          and x.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, x.ORGDTL_ID, k.org_structure_id)         ',
'          )',
''))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P1442_EMPLOYEE,P1442_PROCESS,P1442_START,P1442_END'
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
 p_id=>wwv_flow_imp.id(3598326124895367434)
,p_plug_name=>'Filter Bar'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3531193480051248782)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3598326124895367434)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3598325520121367428)
,p_name=>'P1442_END'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3598326124895367434)
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
 p_id=>wwv_flow_imp.id(3598325638085367429)
,p_name=>'P1442_START'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3598326124895367434)
,p_item_default=>'TRUNC(current_date,''YEAR'') '
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(3598325903958367432)
,p_name=>'P1442_EMPLOYEE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3598326124895367434)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')''  end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists (select 1',
'              from HR_ATT_EMPCALENDAR_DTL w',
'              where w.emp_id=x.id',
'              and trunc(START_TIME) between :P1442_START and :P1442_END)              ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1442_START,P1442_END'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3598325991237367433)
,p_name=>'P1442_PROCESS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3598326124895367434)
,p_prompt=>'Process'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case when HR_PROCESS_TABLE=''HR_ATT_ACTIVITYATTENDANCE'' then ''Employee Activity''',
'                                         when HR_PROCESS_TABLE=''HR_RCM_EMPLOYEE'' then ''Personal file''',
'                                         when HR_PROCESS_TABLE=''HR_MOV_SEPARATIONBENEFIT'' then ''Employee separation benefits''',
'                                         when HR_PROCESS_TABLE=''HR_GRI_DISCIPLINEEMP'' then ''Disciplinary Actions''',
'                                         when HR_PROCESS_TABLE=''HR_LV_LEAVEHISTORY'' then ''Leave History''',
'                                         when HR_PROCESS_TABLE=''HR_MOV_EMPMOVEMENT'' then ''Employee movement''',
'                                         when HR_PROCESS_TABLE=''HR_RCM_SALARY'' then ''Salary adjustments''',
'                                         when HR_PROCESS_TABLE=''HR_MED_MEDICALHISTORYDTL'' then ''Employee Medical''',
'                                         when HR_PROCESS_TABLE=''HR_APP_MERITINCREMENT'' then ''Performance appraisal''',
'                                         when HR_PROCESS_TABLE=''PA_PCF_ADMINDEDUCTION'' then ''Salary deduction''',
'else ''Unknown process'' end a, HR_PROCESS_TABLE b',
'from HR_ATT_EMPCALENDAR_DTL',
'where emp_id=:P1442_EMPLOYEE',
'and trunc(START_TIME) between :P1442_START and :P1442_END'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P1442_EMPLOYEE,P1442_START,P1442_END'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3598325813513367431)
,p_name=>'refresh_calendar'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1442_EMPLOYEE,P1442_PROCESS,P1442_START,P1442_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3598325756873367430)
,p_event_id=>wwv_flow_imp.id(3598325813513367431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3597868180870795376)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
