prompt --application/pages/page_00331
begin
--   Manifest
--     PAGE: 00331
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
 p_id=>331
,p_name=>'Generate Multiple Employee'
,p_alias=>'GENERATE-MULTIPLE-EMPLOYEE'
,p_page_mode=>'MODAL'
,p_step_title=>'Generate Multiple Employee'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3333610600362108708)
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3605683046006178969)
,p_plug_name=>'Generate Multiple Employee Enrollments'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2948864835876939474)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:220:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2948864444150939473)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_button_name=>'GENERATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2948865208195939478)
,p_name=>'P331_ORGDTL_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Work Unit'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and org_id= :APP_ORG_ID)',
'and exists (select 1',
'            from HR_Hcf_position x',
'            where x.orgdtl_id=M.ID)',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2948865653063939479)
,p_name=>'P331_POSITION_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''; Grade ''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID) a, b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
'WHERE exists(select 1',
'            from hr_hcf_orgstructurehd x',
'            where x.id = d.org_structure_id',
'            and x.org_id=:APP_ORG_ID)',
'AND  trunc(B.start_date) <= trunc(current_date)',
'and (trunc(B.end_date) is null or B.end_date >= trunc(current_date))',
'and B.verified_by is not null          ',
'AND B.ORGDTL_ID =:P331_ORGDTL_ID  ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P331_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2948866069083939479)
,p_name=>'P331_COURSE_ID'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Course '
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TRAINING_COURSE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COURSE_NAME,id',
'from HR_TRN_COURSE',
'where org_id=:APP_ORG_ID',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2948866468541939479)
,p_name=>'P331_HR_TRN_COURSE_STRUCTURE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Course Structure'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     INITCAP(structure_type)||''(''|| structure_no||'') ''||NVL(structure_name,'''') a,ID',
'FROM  hr_trn_course_structure',
'where course_id = :P331_COURSE_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P331_COURSE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2948866860960939480)
,p_name=>'P331_PROPOSED_TRAIN_START'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Proposed Train Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(2948867236717939480)
,p_name=>'P331_PROPOSED_TRAIN_END'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Proposed Train End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(2948867652839939481)
,p_name=>'P331_EMPLOYEE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Employee'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElect  employee , a.id',
'from table(pkg_global_fnts.Get_availemployee(trunc(to_date(nvl(:P331_PROPOSED_TRAIN_START, current_date),''DD-MON-YYYY HH:MI PM'')))) a join hr_hcf_worklocation b',
'on b.id = a.WORK_LOCATION_ID',
'where position_id=:P331_POSITION_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P331_POSITION_ID,P331_PROPOSED_TRAIN_START'
,p_ajax_items_to_submit=>'P331_POSITION_ID,P331_PROPOSED_TRAIN_START'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2948868061240939481)
,p_name=>'P331_REASON_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Reason'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'REASONS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select y.value_description||case when y.value_description is null then '''' else '':-'' end||x.value_description a, x.ID  b',
'from table(pkg_global_fnts.get_lookup_value(''TBLREASON'')) X left outer join table(pkg_global_fnts.get_lookup_value(''TBLREASONTYPE'')) y on x.id=y.lookup_id',
'where x.org_id= :APP_ORG_SHR_DED',
''))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2948868488724939482)
,p_name=>'P331_REASON_DETAILS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Reason Details'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2948868890662939482)
,p_name=>'P331_REMARKS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3605683046006178969)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1000
,p_cHeight=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2948869228639939488)
,p_name=>'SHOW_HIDE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P331_EMPLOYEE'
,p_condition_element=>'P331_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2948869758203939489)
,p_event_id=>wwv_flow_imp.id(2948869228639939488)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2948864444150939473)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2948870205222939490)
,p_event_id=>wwv_flow_imp.id(2948869228639939488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2948864444150939473)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2948870651316939490)
,p_name=>'run_process'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2948864444150939473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2948871659610939491)
,p_event_id=>wwv_flow_imp.id(2948870651316939490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  ',
'BEGIN',
'',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P331_EMPLOYEE);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'    begin',
'  ',
'              INSERT INTO HR_TRN_ENROLLMENT (orgdtl_id,  position_id, course_id,  proposed_train_start,',
'                proposed_train_end, reason_id, reason_details,  remarks,   emp_id)',
'                ',
'               VALUES(:P331_ORGDTL_ID, :P331_POSITION_ID, :P331_COURSE_ID, :P331_PROPOSED_TRAIN_START,',
'               :P331_PROPOSED_TRAIN_END, :P331_REASON_ID, :P331_REASON_DETAILS, :P331_REMARKS, l_selected(i));',
'               ',
'       exception',
'          when others then null;',
'    end;',
'',
'  END LOOP;  ',
'  ',
'  :P221_EMPLOYEE := null;',
'  ',
'end;'))
,p_attribute_02=>'P331_EMPLOYEE,P331_ORGDTL_ID, P331_POSITION_ID, P331_COURSE_ID, P331_HR_TRN_COURSE_STRUCTURE_ID, P331_PROPOSED_TRAIN_START,P331_PROPOSED_TRAIN_END, P331_REASON_ID, P331_REASON_DETAILS, P331_REMARKS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2948871128981939491)
,p_event_id=>wwv_flow_imp.id(2948870651316939490)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>'apex.message.showPageSuccess( ''System successfully loaded selected employees for the Training Requisition.'' );'
);
wwv_flow_imp.component_end;
end;
/
