prompt --application/pages/page_00238
begin
--   Manifest
--     PAGE: 00238
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
 p_id=>238
,p_name=>'frmGenInternalApplications'
,p_alias=>'FRMGENINTERNALAPPLICATIONS'
,p_page_mode=>'MODAL'
,p_step_title=>'Generate Internal Applications'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'950'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5663343632410035280)
,p_plug_name=>'Generate Applications'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2833842454910914851)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2833842934770914852)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:336:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2833843276247914852)
,p_name=>'P238_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2833843657115914853)
,p_name=>'P238_INTERVIEW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_use_cache_before_default=>'NO'
,p_source=>'INTERVIEW_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2833844140100914854)
,p_name=>'P238_VACANCY'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_prompt=>'Vacancy'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''(''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID)||'') at ''||y.location_description ret_value, w.id return_id',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
'join HR_HCF_JOBOPENING w on w.position_id = b.id',
'join hr_hcf_worklocation y on y.id = w.wklocation_id',
'AND  trunc(w.application_start) <= trunc(current_date)',
'and (trunc(w.application_end) is null or w.application_end >= trunc(current_date))',
'and y.org_id= :APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'Note only active vacancies will show up. verify that todays date is within the period assign to receive applications.'
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
 p_id=>wwv_flow_imp.id(2833845012543914855)
,p_name=>'P238_APPLICANT_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2833845390296914855)
,p_name=>'P238_APPLICANTS'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Applicants'
,p_source=>'INTERVIEW_PANEL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P238_APPLICANT_TYPE=''BOTH'' then',
'return',
'    ''select label, id',
'    from (',
'            SELECT to_char(INDIVIDUAL)||'''' Int-Applicant '''' label, id',
'            from VW_INDIVIDUAL_only x',
'            where IND_ORG_ID=:APP_ORG_ID',
'            union',
'            select to_char(surname||'''', ''''|| FIRST_NAME||'''' DOB: ''''||dob||'''' ''''||SEX_CODE||'''':-''''||MARITAL_CODE)||''''  Ext-Applicant (''''||applicant_no||'''')'''' label, id',
'            from HR_APL_INDIVIDUAL a',
'            where not exists(select 1',
'                           from HR_RCM_INDIVIDUAL w',
'                           where w.ext_applicant_id = a.id',
'                           )',
'                ) y',
'    where not exists(select 1',
'                     from HR_APL_JOBREQUEST w',
'                     where w.applicant_id = y.id',
'                     and Jobopening_Id = :P238_VACANCY',
'                     )',
'    order by 1'';',
'    ',
'elsif  :P238_APPLICANT_TYPE=''INTERNAL'' then',
'return',
'    ''select label, id',
'    from (',
'            SELECT to_char(INDIVIDUAL)||'''' Int-Applicant '''' label, id',
'            from VW_INDIVIDUAL_only x',
'            where IND_ORG_ID=:APP_ORG_ID           ',
'                ) y',
'    where not exists(select 1',
'                     from HR_APL_JOBREQUEST w',
'                     where w.applicant_id = y.id',
'                     and Jobopening_Id = :P238_VACANCY',
'                     )',
'    order by 1'';',
'',
'ELSE',
'    RETURN',
'      ''select label, id',
'    from (          ',
'            select to_char(surname||'''', ''''|| FIRST_NAME||'''' DOB: ''''||dob||'''' ''''||SEX_CODE||'''':-''''||MARITAL_CODE)||''''  Ext-Applicant (''''||applicant_no||'''')'''' label, id',
'            from HR_APL_INDIVIDUAL a',
'            where not exists(select 1',
'                           from HR_RCM_INDIVIDUAL w',
'                           where w.ext_applicant_id = a.id',
'                           )',
'                ) y',
'    where not exists(select 1',
'                     from HR_APL_JOBREQUEST w',
'                     where w.applicant_id = y.id',
'                     and Jobopening_Id = :P238_VACANCY',
'                     )',
'    order by 1'';',
'',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P238_APPLICANT_TYPE,P238_VACANCY'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Select to populate the panel. Type EXT to see external applicants. Only applicants who have never applied will show on list.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2833846301324914858)
,p_name=>'P238_EMPLOYMENT_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_prompt=>'Employment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYMENT_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3202169449667688035)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2833846664477914858)
,p_name=>'P238_DATE_APPLIED'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5663343632410035280)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Applied'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_APPLIED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_grid_label_column_span=>2
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2833847532464914859)
,p_name=>'POP_APP_TYPE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P238_VACANCY'
,p_condition_element=>'P238_VACANCY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2833848033360914860)
,p_event_id=>wwv_flow_imp.id(2833847532464914859)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P238_APPLICANT_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT APPLICANT_TYPE',
'FROM HR_HCF_JOBOPENING',
'WHERE ID = :P238_VACANCY'))
,p_attribute_07=>'P238_VACANCY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2833847134600914859)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'populate_Applications'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_lower_scale number(12,2):=0;  v_upper_scale number(12,2):=0;',
'',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'begin',
'    l_selected := APEX_UTIL.STRING_TO_TABLE(:P238_APPLICANTS);',
'        ',
'    select lower_scale,  upper_scale into v_lower_scale,  v_upper_scale',
'    from hr_hcf_position a join hr_hcf_jobopening b on a.id = b.position_id',
'    where b.id = :P238_VACANCY;',
'    ',
'    ',
'      FOR j IN 1..l_selected.COUNT loop',
'',
'        for I in (select a.id applicant_id, :P238_EMPLOYMENT_TYPE employment_type_ID, b.org_id, 110 transaction_type_id, pkg_global_fnts.status_id(''SUBMITTED'', 549 , 110)  status',
'                  from hr_rcm_individual a join hr_rcm_employee b on a.id =b.ind_id',
'                  where a.id = l_selected(j)',
'                  and (date_separated is null or date_separated > trunc(current_date))',
'                  and employment_class !=''PENSIONER''',
'                  union',
'                  select a.id applicant_id, :P238_EMPLOYMENT_TYPE employment_type_ID, first_org_id, 110 transaction_type_id, pkg_global_fnts.status_id(''SUBMITTED'', 549 , 110)  status',
'                  from hr_apl_individual a ',
'                  where a.id = l_selected(j)',
'                  )loop',
'            ',
'            INSERT INTO hr_apl_jobrequest ( applicant_id,  date_applied,   employment_type,   org_id,  transaction_type_id,  status, jobopening_id',
'                    , position_sal_start_range,  position_sal_end_range, method_of_application)',
'            ',
'            values (i.applicant_id, :P238_DATE_APPLIED, i.employment_type_ID, :APP_ORG_ID, i.transaction_type_id, i.status, :P238_VACANCY, ',
'                        v_lower_scale,  v_upper_scale, ''HR_MANUAL'');',
'        end loop;',
'    end loop;',
'    commit;',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2833842454910914851)
,p_process_success_message=>'System successfully generated Applications for Internal Applicants.'
,p_internal_uid=>2718063000744601154
);
wwv_flow_imp.component_end;
end;
/
