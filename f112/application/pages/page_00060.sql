prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_name=>'frmLeaveRosterCalendar'
,p_step_title=>'Leave Roster Calendar'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297886312641715634)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.legend-list {list-style: none; margin: 0;}',
'.legend.fc-event { display: inline-block; padding: 8 8px; width: 72px; text-align: center; }',
'.t-Tabs-link {',
'    font-weight:bolder;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'08'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3199146946991157439)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3199444443699661512)
,p_plug_name=>'TAB'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3202969289737092880)
,p_plug_name=>'Leave  Roster Gantt Chart'
,p_parent_plug_id=>wwv_flow_imp.id(3199444443699661512)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent8:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  lv.leave_type "Parent Task",',
'        ind.First_name || '' '' || ind.Surname "Task Name",',
'        lv.fromdate "From",',
'        lv.todate "To",',
'        lv.emp_id,',
'        lv.Id     ',
'from hr_rcm_individual ind',
'join hr_rcm_employee emp',
'on emp.ind_id = ind.id',
'join hr_lv_leavehistory LV',
'on LV.emp_id = emp.id',
'and lv.org_id = :APP_ORG_ID'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.GANTT_CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Parent Task',
  'attribute_02', 'Task Name',
  'attribute_05', 'From',
  'attribute_06', 'To',
  'attribute_07', 'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:RP:P1417_ID:&ID.',
  'attribute_08', 'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:RP:P1417_ID:&ID.',
  'attribute_09', 'P60_PERIOD_TYPE',
  'attribute_10', 'P60_START_DATE',
  'attribute_11', '30:22:18:8')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3232282333366489889)
,p_plug_name=>'Calendar'
,p_parent_plug_id=>wwv_flow_imp.id(3199444443699661512)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3191718134479093941)
,p_plug_name=>'Employee Leave Calendar (select filter options above, Navigate to specific month)'
,p_parent_plug_id=>wwv_flow_imp.id(3232282333366489889)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
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
'and a.emp_id=nvl(:P60_EMPLOYEE_1,a.emp_id)',
'and trunc(FROMDATE) between :P60_START_1 and :P60_END_1',
'and a.org_structure = nvl(:P60_ORG_STRUCTURE,a.org_structure)',
'and a.status = nvl(:P60_LEAVE_STATUS,a.status)',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS w ',
'              where x.org_id = w.org_id',
'              and x.employment_class_id = w.employment_class_id',
'              and upper(x.payment_type) = w.payment_type             ',
'              )  '))
,p_lazy_loading=>true
,p_plug_source_type=>'NATIVE_CSS_CALENDAR'
,p_ajax_items_to_submit=>'P60_ORG_STRUCTURE,P60_LEAVE_STATUS,P60_START,P60_END'
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
 p_id=>wwv_flow_imp.id(3192177638322668631)
,p_plug_name=>'Filter Bar'
,p_parent_plug_id=>wwv_flow_imp.id(3232282333366489889)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3303652570547451462)
,p_plug_name=>'Legend'
,p_region_template_options=>'#DEFAULT#:t-Region--hideShowIconsMath:is-collapsed:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul class="legend-list fc">',
'  <li><strong class="legend fc-event apex-cal-blue">Blue</strong>  Annual Leave</li>',
'</ul>'))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3199311980874201970)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3199146946991157439)
,p_button_name=>'CREATE_ROSTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Roster Entry'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:RP,1417::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3199598853586338492)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3192177638322668631)
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
 p_id=>wwv_flow_imp.id(3198417294736376453)
,p_name=>'P60_LEAVE_STATUS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3192177638322668631)
,p_prompt=>'Leave Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS',
'WHERE WORKFLOW_DTL_ID = 147',
'OR WORKFLOW_DTL_ID = 149',
'order by sequence',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:::::::'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3198417437597376454)
,p_name=>'P60_ORG_STRUCTURE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3192177638322668631)
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
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:::::::'
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
 p_id=>wwv_flow_imp.id(3199599290421338499)
,p_name=>'P60_PERIOD_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3202969289737092880)
,p_prompt=>'Period Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Daily;D,Weekly;W,Monthly;M,Quarterly;Q'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3199599709013338504)
,p_name=>'P60_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3202969289737092880)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3233668089821267460)
,p_name=>'P60_EMPLOYEE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3192177638322668631)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )',
'||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end ||'')''  end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists (select 1',
'              from hr_lv_leavehistory w',
'              where w.emp_id=x.id)  ',
'and x.org_id =:APP_ORG_ID         ',
'AND ORGDTL_ID =  nvl(:P60_ORG_STRUCTURE, ORGDTL_ID)',
'AND DATE_EMPLOYED <= :P60_START_1',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P60_START,P60_ORG_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3233668538992267473)
,p_name=>'P60_START'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3192177638322668631)
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
 p_id=>wwv_flow_imp.id(3233668883322267474)
,p_name=>'P60_END'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3192177638322668631)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3199444118109661509)
,p_name=>'Submit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P60_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3199444150875661510)
,p_event_id=>wwv_flow_imp.id(3199444118109661509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
