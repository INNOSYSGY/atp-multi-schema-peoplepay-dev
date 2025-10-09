prompt --application/pages/page_00229
begin
--   Manifest
--     PAGE: 00229
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>229
,p_name=>'frmSetupIntervIewQuestions'
,p_alias=>'FRMSETUPINTERVIEWQUESTIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Generate Interviewees With Questions'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825435721205058391)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'850'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3194207286025188000)
,p_plug_name=>'Generate Interviewees With Questions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3604167634880989295)
,p_plug_name=>'Panel Selected'
,p_parent_plug_id=>wwv_flow_imp.id(3194207286025188000)
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4063881432628289957)
,p_plug_name=>'Select Question Categories to ask...'
,p_parent_plug_id=>wwv_flow_imp.id(3194207286025188000)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3194207635914188003)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3194207286025188000)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3194207399837188001)
,p_name=>'P229_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3194207286025188000)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3194207826754188005)
,p_name=>'P229_POSITION_CONFIG_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3604167634880989295)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3194911111562510507)
,p_name=>'P229_INTERVIEW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3194207286025188000)
,p_use_cache_before_default=>'NO'
,p_source=>'INTERVIEW_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3194911637586516991)
,p_name=>'P229_SELECT_PANEL_MEMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3604167634880989295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Panel Members'
,p_source=>'INTERVIEW_PANEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'order by employee'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Select to populate the panel'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3194912475629516993)
,p_name=>'P229_LEAD_INTERVIEWER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3604167634880989295)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lead Interviewer'
,p_source=>'LEAD_INTERVIEWER'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.employee||''(No.''||a.EMP_COMPANY_NO||'')'' employee, a.id',
'from vw_availemployee a join VW_EMPLOYEE b  on a.id=b.id',
'where b.Date_Separated is null ',
'and b.id !=nvl(:P229_EMP_ID,1)',
'and a.id in (SELECT to_number(a_field)',
'                        FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                        || REPLACE(:P229_SELECT_PANEL_MEMBER,'':'',''</e><e>'')',
'                        || ''</e></root>'') columns a_field VARCHAR2(1000) path ''/'')',
'                        )',
'order by employee'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P229_SELECT_PANEL_MEMBER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3194913572211520816)
,p_name=>'P229_FACTOR'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(4063881432628289957)
,p_prompt=>'Factor'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Initcap(QUESTION_CLASSIFICATION||'' (Questions:-''||(Select To_Char(Count(1) )',
'                                                      From Hr_Inv_jobquestion B ',
'                                                      where b.job_FACTORS_ID=a.ID)||'')'') QUESTIONS,a.id',
'From Hr_Inv_jobconfigpfactors A ',
'where job_CONFIG_ID = :P239_POSITION_CONFIG_ID',
'And A.End_Date Is Null Or  A.End_Date > current_date',
'order by 1',
'',
''))
,p_lov_cascade_parent_items=>'P229_POSITION_CONFIG_ID'
,p_ajax_items_to_submit=>'P229_POSITION_CONFIG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3194207908459188006)
,p_name=>'set_value_questions'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P229_INTERVIEW_ID'
,p_condition_element=>'P229_INTERVIEW_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3194207984522188007)
,p_event_id=>wwv_flow_imp.id(3194207908459188006)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P229_POSITION_CONFIG_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_CONFIG_ID',
'from HR_INV_INTERVIEW b ',
'where ID= :P229_INTERVIEW_ID'))
,p_attribute_07=>'P229_INTERVIEW_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3215497252004635104)
,p_name=>'show_btn'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P229_FACTOR'
,p_condition_element=>'P229_FACTOR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215497304511635105)
,p_event_id=>wwv_flow_imp.id(3215497252004635104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3194207635914188003)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3215497442865635106)
,p_event_id=>wwv_flow_imp.id(3215497252004635104)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3194207635914188003)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3194208076854188008)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_interviewees_questions'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'---generate open questions for all interviewers',
'declare',
'        v_sqlcode varchar2(25);',
'        v_sqlerrm varchar2(2000);',
'        l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'        PQ_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' ',
' begin       ',
'   IF :P229_FACTOR is not null and :P229_SELECT_PANEL_MEMBER is not null then         ',
'     for I in (               ',
'                select interview_session_name, a.position_config_id, b.emp_id, lead_interviewer, interview_datetime, a.org_id, a.jobopening_id, b.ind_id, applicant_type, interview_id',
'                from hr_inv_interview a join hr_inv_interviewdtl b on a.id =b.interview_id',
'                where a.id= :P229_INTERVIEW_ID',
'                ) loop',
'',
'        begin',
'                INSERT INTO hr_inv_session (transaction_type_id, status, interview_session_name, INTERVIEW_PANEL, position_config_id, emp_id, lead_interviewer, date_interviewed, org_id, jobopening_id, ind_id, applicant_type, interview_id)',
'                values (130, 1202, i.interview_session_name, :P229_SELECT_PANEL_MEMBER, i.position_config_id, i.emp_id, i.lead_interviewer, i.interview_datetime, i.org_id, i.jobopening_id, i.ind_id, i.applicant_type, i.interview_id);',
'                ',
'        exception',
'            when dup_val_on_index then',
'                v_sqlcode := sqlcode;',
'                v_sqlerrm := sqlerrm;        ',
'                PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while populating interviewees for interviews.'' ,''Question Bank:-''||i.position_config_id||'' Job Opening:''||i.jobopening_id, p_transaction_source_id =>:P229_INTERVIEW_ID); '
||'          ',
'',
'            when others then null;',
'        end;',
'    end loop;',
'',
'   commit;',
'    ',
'    ',
'          l_selected := APEX_UTIL.STRING_TO_TABLE(:P229_FACTOR);',
'          PQ_selected := APEX_UTIL.STRING_TO_TABLE(:P229_SELECT_PANEL_MEMBER);',
'        ',
'          for W in (select id from hr_inv_session where INTERVIEW_ID = :P229_INTERVIEW_ID  )loop',
'          begin',
'              FOR i IN 1..l_selected.COUNT',
'              LOOP',
'                    for J in 1..PQ_selected.count loop',
'            ',
'                        PKG_GENERATORS.sp_popInvQuestions( l_selected(i), PQ_selected(j), w.id) ;            ',
'            ',
'                    END LOOP;  ',
'             end loop;',
'             ',
'         exception',
'            when others then ',
'                    v_sqlcode := sqlcode;',
'                    v_sqlerrm := sqlerrm;        ',
'                    PKG_BIZ_RULES.LOG_MESSAGE(V_SQLCODE ,V_SQLERRM  ,''error occured while populating questions for interviewees.'' ,''POPULATE QUESTIONS'',p_transaction_source_id =>w.id);           ',
'        end;',
'          end loop;',
'          ',
'    end if;',
'             :P229_FACTOR := null;',
'             :P229_SELECT_PANEL_MEMBER  := null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3194207635914188003)
,p_process_success_message=>'System successfully generated the interviewees and questions to be asked.'
,p_internal_uid=>2550872824835512514
);
wwv_flow_imp.component_end;
end;
/
