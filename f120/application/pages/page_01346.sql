prompt --application/pages/page_01346
begin
--   Manifest
--     PAGE: 01346
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
 p_id=>1346
,p_name=>'frmjobcompetency'
,p_alias=>'FRMJOBCOMPETENCY'
,p_page_mode=>'MODAL'
,p_step_title=>'Load Competencies for Job'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893400528388849)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_dialog_height=>'500'
,p_dialog_width=>'850'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4606333021541928556)
,p_plug_name=>'Generate Job Competency'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3175793930132603542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4606333021541928556)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13011:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3175794313805603543)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4606333021541928556)
,p_button_name=>'Generate'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3175800559604603556)
,p_branch_name=>'stay'
,p_branch_action=>'f?p=&APP_ID.:1346:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3175794313805603543)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3175794783461603544)
,p_name=>'P1346_JOB_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4606333021541928556)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3175795143690603546)
,p_name=>'P1346_COMPETENCY_TYPE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4606333021541928556)
,p_prompt=>'Competency Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPETENCY_TYPES_EXCLUDE_FUNC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    VALUE_DESCRIPTION A, TABLE_VALUE B',
'FROM',
'    HR_HCF_LOOKUP',
'WHERE ',
'    TABLE_NAME = ''TBLCOMPETENCYTYPE''',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    AND TABLE_VALUE not in (''F'', ''G'')'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3175795554010603547)
,p_name=>'P1346_COMPETENCY_LEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4606333021541928556)
,p_prompt=>'Competency Levels/Attributes'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    INITCAP(B.DESCRIPTION || '' :- '' || A.DESCRIPTION) || '' ['' || A.COMP_LEVEL || '']'' A, A.ID B',
'FROM',
'    HR_HCF_COMPETENCYLVL A ',
'    JOIN HR_HCF_COMPETENCY B ON A.COMPETENCY_ID = B.ID',
'WHERE',
'    B.COMPETENCY_TYPE = :P1346_COMPETENCY_TYPE',
'    AND B.ORG_ID = :APP_ORG_ID',
'    AND (B.END_DATE IS NULL OR B.END_DATE >= TRUNC(current_date))',
'ORDER BY',
'    B.DESCRIPTION ASC, A.COMP_LEVEL ASC',
'',
'-- Old Competency Code',
'-- select A.Performance_Factors|| CASE NVL(A.PARENT_ID,0) WHEN 0 THEN '' (CATEGORY HEADING: DO NOT SELECT!)'' else ',
'-- case NVL(a.skill_level,0) WHEN 0 THEN '' (LEVEL: ?)'' else '' (LEVEL: ''||to_char(a.skill_level)||'')''  end',
'-- end PERFORMANCE_FACTORS,a.id,(select c.performance_factors  ',
'--                               from HR_APP_MERITCONFIGPFACTORS c ',
'--                               where c.id = a.PARENT_ID ',
'--                               ) y',
'-- from HR_APP_MERITCONFIGPFACTORS a join HR_APP_MERITCONFIG c on c.id=a.MERIT_CONFIG_ID',
'-- where upper(SUPERVISOR) = Upper(:P1346_COMPETENCY_TYPE)',
'-- and (a.End_Date is null or  a.End_Date > current_date)',
'-- and a.parent_id is not null',
'-- and c.org_id = :APP_ORG_ID',
'-- order by a.short_name',
'',
'',
'--Richard''s old code',
'/*select initcap(Performance_Factors||'' (Questions:-''||(select to_char(COUNT(1) )',
'                                                                          from HR_APP_MERITQUESTION b ',
'                                                                          where b.Performance_Factors_ID=a.ID)||'')'') QUESTIONS,a.id',
'from HR_APP_MERITCONFIGPFACTORS a join HR_APP_MERITCONFIG c on c.id=a.MERIT_CONFIG_ID',
'where upper(SUPERVISOR) = upper(:P1346_COMPETENCY_TYPE)',
'and (a.End_Date is null or  a.End_Date > current_date)',
'order by short_name ',
'*/'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1346_COMPETENCY_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'TAG',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3175796709149603551)
,p_name=>'SHOW_GEN'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1346_JOB_RESPONSIBILITY'
,p_condition_element=>'P1346_JOB_RESPONSIBILITY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3175797288555603552)
,p_event_id=>wwv_flow_imp.id(3175796709149603551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3175797797362603553)
,p_event_id=>wwv_flow_imp.id(3175796709149603551)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3175798155080603554)
,p_name=>'dy_hide_fields'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1346_DESCRIPTION_TYPE'
,p_condition_element=>'P1346_DESCRIPTION_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'166965,166966'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3175798626869603554)
,p_event_id=>wwv_flow_imp.id(3175798155080603554)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1346_SKILL_LEVEL,,P1346_COMPETENCY,P1346_IMPORTANCE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3175799149246603555)
,p_event_id=>wwv_flow_imp.id(3175798155080603554)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1346_SKILL_LEVEL,,P1346_COMPETENCY,P1346_IMPORTANCE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3175799593202603555)
,p_name=>'refresh_comp_level'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1346_COMPETENCY_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3175800074427603556)
,p_event_id=>wwv_flow_imp.id(3175799593202603555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1346_COMPETENCY_LEVEL'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3175795917671603548)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GENERATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1346_COMPETENCY_LEVEL);',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'  ',
'  begin',
'	    INSERT INTO hr_hcf_jobcompetency ',
'            (job_id,  ',
'            sequence,  ',
'            description_type,  ',
'            description, ',
'            start_date,   ',
'            skill_level, ',
'            weighting, ',
'            competency_id,',
'            competency_desc,',
'            competency_lvl_id,',
'            competency_lvl_desc)',
'',
'            select ',
'                :P1346_JOB_ID, ',
'                ROWNUM, ',
'                :P1346_COMPETENCY_TYPE, ',
'                a.description,',
'                TRUNC(current_date),',
'                b.comp_level,',
'                a.factor_weight,',
'                a.id,',
'                a.description, ',
'                b.id, ',
'                b.description',
'        from HR_HCF_COMPETENCY a join HR_HCF_COMPETENCYLVL B on a.id = b.competency_id',
'        where b.id = l_selected(i)',
'        and a.org_id = :APP_ORG_ID',
'        and not exists (select 1',
'                        from hr_hcf_jobcompetency',
'                        where job_id = :P1346_JOB_ID',
'                        and competency_id = a.id);',
'        ',
'  exception',
'      when others then null;',
'  end;',
'   ',
'  END LOOP;  ',
'',
'  :P1346_COMPETENCY_LEVEL:=null;',
'',
'END;',
'',
'-- /*DECLARE',
'--   l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'--  BEGIN',
'',
'--   l_selected := APEX_UTIL.STRING_TO_TABLE(:P1346_COMPETENCY_LEVEL);',
'--   FOR i IN 1..l_selected.COUNT',
'--   LOOP',
'  ',
'--   begin',
'-- 	    INSERT INTO hr_hcf_jobcompetency ( job_id,  sequence,  description_type,  description,  start_date,   meritconfigpfactors_id, skill_level, weighting)',
'',
'--         select :P1346_JOB_ID, ROWNUM, ',
'--         CASE ',
'--                 WHEN SUPERVISOR=''Y'' THEN ',
'--                 ''Leadership'' ',
'--                 else ',
'--                 ''Core''',
'--         end, initcap(Performance_Factors||'' (Questions:-''||(select to_char(COUNT(1) )',
'--                                                                                   from HR_APP_MERITQUESTION b ',
'--                                                                                   where b.Performance_Factors_ID=a.ID)||'')'') QUESTIONS, ',
'--                                                                                   TRUNC(current_date,''YEAR''),  a.id',
'--                                                                                   ,a.skill_level,factor_weight',
'--         from HR_APP_MERITCONFIGPFACTORS a join HR_APP_MERITCONFIG c on c.id=a.MERIT_CONFIG_ID',
'--         where comments is null',
'--         and a.id = l_selected(i);',
'        ',
'--   exception',
'--       when others then null;',
'--   end;',
'   ',
'--   END LOOP;  ',
'',
'--   :P1346_COMPETENCY_LEVEL:=null;',
'',
'-- END;*/'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3175794313805603543)
,p_process_success_message=>'Generated!'
,p_internal_uid=>2754003924473606974
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3175796387151603550)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2754004393953606976
);
wwv_flow_imp.component_end;
end;
/
