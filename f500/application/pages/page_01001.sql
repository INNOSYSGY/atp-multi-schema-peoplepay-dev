prompt --application/pages/page_01001
begin
--   Manifest
--     PAGE: 01001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1001
,p_name=>'frmMassMigration3'
,p_step_title=>'Mass Employee Payment Frequency Movement'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(697374816537318473)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3736532473310628043)
,p_plug_name=>'Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3736533629337628127)
,p_plug_name=>'Mass Employee Payment Frequency Movement'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825689145909973405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3736532473310628043)
,p_button_name=>'MOVE_EMPLOYEES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Move Employees'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825692680219973416)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825688386341973403)
,p_name=>'P1001_DESTINATION_PAYMENT'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3736532473310628043)
,p_prompt=>'Designation Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A,PAYMENT_TYPE B',
'FROM VW_USERACCESS',
'where payment_type != :P1001_CURRENT_PAYMENT',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1001_CURRENT_PAYMENT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825688771670973405)
,p_name=>'P1001_EMPLOYEE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3736532473310628043)
,p_prompt=>'Employee'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee||''(Emp No.: ''||Emp_company_no||'')'' Employee, id',
'from VW_AVAILEMPLOYEE a',
'where payment_type = :P1001_CURRENT_PAYMENT'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1001_CURRENT_PAYMENT'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825689850157973405)
,p_name=>'P1001_CURRENT_PAYMENT'
,p_is_required=>true
,p_item_sequence=>119
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'Current Payment Frequency'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAYMENT_TYPE_SEC'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) DISPL, UPPER(PAYMENT_TYPE) RTN',
'FROM VW_USERACCESS',
'order by 1'))
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825690272000973405)
,p_name=>'P1001_APPROVED_DATE'
,p_item_sequence=>109
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'Approved Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3825690715618973405)
,p_name=>'P1001_APPROVED_BY'
,p_item_sequence=>89
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'Approved by'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee, id',
'from vw_availemployee',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3825691109180973405)
,p_name=>'P1001_EFFECTIVE'
,p_is_required=>true
,p_item_sequence=>79
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'Execute On'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3825691448664973406)
,p_name=>'P1001_TO_DATE'
,p_item_sequence=>69
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3825691878624973406)
,p_name=>'P1001_FROM_DATE'
,p_is_required=>true
,p_item_sequence=>49
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3825692276498973412)
,p_name=>'P1001_MOVEMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>39
,p_item_plug_id=>wwv_flow_imp.id(3736533629337628127)
,p_prompt=>'Movement Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Transfer,Promotion,Demotion,Out-Station,Seconded,Re-Assignment'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825845434196356451)
,p_name=>'P1001_DEST_EMPLOYMENT_CLASS'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3736532473310628043)
,p_prompt=>'Designation Employment Class'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EMPLOYMENT_CLASS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.value_description a, a.id b',
'from  hr_hcf_lookup a ',
'where table_name=''TBLEMPLOYMENTCLASS''',
'and a.org_id = :APP_ORG_SHR_DED',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and exists (select 1',
'           from tbluserdetail X',
'           where a.id = X.EMPLOYMENT_CLASS_ID          ',
'           AND org_id =:APP_ORG_ID',
'           and APPLICATION_SCHEMA_NAME = :G_PARSING_SCHEMA',
'           )',
'union',
'select VALUE_DESCRIPTION, ID',
'from hr_hcf_lookup x',
'where upper(table_name) = ''TBLEMPLOYMENTCLASS''',
'and  upper(table_value)= ''MULTIOPTPAYROLL''',
'and trunc(start_period) <= trunc(current_date)   ',
'and (trunc(end_period) is null or trunc(end_period) >= trunc(current_date))',
'and org_id = :APP_ORG_SHR_DED',
'and pkg_global_fnts.get_payroll_option(:APP_ORG_SHR_DED)=''DETAIL''',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1001_CURRENT_PAYMENT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3825687595835973399)
,p_name=>'set_visible'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1001_EMPLOYEE'
,p_condition_element=>'P1001_EMPLOYEE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3825687087837973396)
,p_event_id=>wwv_flow_imp.id(3825687595835973399)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3825689145909973405)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3825686601742973391)
,p_event_id=>wwv_flow_imp.id(3825687595835973399)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3825689145909973405)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3825687949358973403)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'mass_employee_movement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; v_curval number; p_IncAmt number:=0; V_CURR_SAL NUMBER:=0;',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1001_EMPLOYEE);',
'  ',
'    FOR i IN 1..l_selected.COUNT',
'    LOOP',
'    ',
'             ',
'    p_IncAmt := round(case  ',
'                when :P1001_CURRENT_PAYMENT= ''WEEKLY'' and :P1001_DESTINATION_PAYMENT =''MONTHLY'' then (pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) * 52) / 12',
'                when :P1001_CURRENT_PAYMENT= ''WEEKLY'' and :P1001_DESTINATION_PAYMENT =''BI-MONTHLY'' then (pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) * 52) / 24',
'                WHEN :P1001_CURRENT_PAYMENT= ''WEEKLY'' and :P1001_DESTINATION_PAYMENT =''FORTNIGHTLY'' then (pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) * 52) / 26',
'                WHEN :P1001_CURRENT_PAYMENT= ''MONTHLY'' and :P1001_DESTINATION_PAYMENT =''WEEKLY'' then (pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) * 12) / 52',
'                WHEN :P1001_CURRENT_PAYMENT= ''MONTHLY'' and :P1001_DESTINATION_PAYMENT =''BI-MONTHLY'' then (pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) * 12) / 24',
'                WHEN :P1001_CURRENT_PAYMENT= ''WEEKLY'' and :P1001_DESTINATION_PAYMENT =''FORTNIGHTLY'' then (pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) * 12) / 26',
'                else pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date))  end,2);',
'',
'begin',
'           INSERT INTO HR_MOV_EMPMOVEMENT( EMP_ID, CHANGE_TYPE, FROM_DATE, TO_DATE, EFFECTIVE_DATE, REPORT_TO,  DATE_EMPLOYED, DATE_INTERVIEWED,',
'                INTERVIEWED_BY, APPROVED_BY, APPROVED_DATE, POSITION_ID, REPORT_TO_FUNCTIONAL, APPOINTMENT_DATE, APPLICATION_DATE, ',
'                JOB_APPLIED_FOR, EMPLOYMENT_STATUS_ID, ORG_ID, TRANSACTION_TYPE_ID, STATUS, REMARKS, EMP_COMPANY_NO, CONTRACT_STAFF,',
'                 REHIRED, PRIMARY_TAX_JOB, UNION_CODE, SEPARATED_STATUS, PAYROLL_EFFECTIVE, UNION_CODE_ID',
'                , PERSONAL_RATE, SALARY_CURRENCY, PAYMENT_MODE ,VERIFIED_BY, VERIFIED_DATE, payment_type, employment_class_id)',
'',
'            SELECT  ID, :P1001_MOVEMENT_TYPE, :P1001_FROM_DATE, :P1001_TO_DATE, :P1001_EFFECTIVE, REPORT_TO,  DATE_EMPLOYED, DATE_INTERVIEWED, INTERVIEWED_BY,',
'                :P1001_APPROVED_BY, :P1001_APPROVED_DATE, POSITION_ID, REPORT_TO_FUNCTIONAL, :P1001_FROM_DATE, APPLICATION_DATE, ',
'                JOB_APPLIED_FOR, EMPLOYMENT_STATUS_ID, ORG_ID, 110,	452,  REMARKS, EMP_COMPANY_NO, CONTRACT_STAFF,',
'                 REHIRED, PRIMARY_TAX_JOB, UNION_CODE, SEPARATED_STATUS, PAYROLL_EFFECTIVE, UNION_CODE_ID',
'                ,p_IncAmt personal_rate  ',
'                ,pkg_global_fnts.FN_GETPAYCURRENCY(id, trunc(current_date)) currency',
'                ,pkg_global_fnts.fn_getPaymode(id, trunc(current_date)) Paymode',
'                , Nvl(V(''APP_USER''),User), current_date, :P1001_DESTINATION_PAYMENT,:P1001_DEST_EMPLOYMENT_CLASS',
'            FROM HR_RCM_EMPLOYEE',
'            WHERE ID = l_selected(i);',
' ',
'exception',
'      when others then null;',
'end;',
' ',
'            v_curval :=EMPMOVEMENT_SEQ.currval;',
'            V_CURR_SAL :=pkg_global_fnts.fn_personalrate(l_selected(i), trunc(current_date)) ;',
'            ',
'             --v_Status=''COMPLETED'' AND TRUNC(:NEW.EFFECTIVE_DATE) = TRUNC(current_date) and :NEW.VERIFIED_BY is not null and :new.approved_by is not null ',
'            ',
'            update HR_MOV_EMPMOVEMENT',
'            set status=453',
'                , payment_type = :P1001_DESTINATION_PAYMENT',
'                , employment_class_id=:P1001_DEST_EMPLOYMENT_CLASS',
'            where id= v_curval;',
'            ',
'            update hr_rcm_salary',
'            set end_date=to_date(:P1001_FROM_DATE)-1            ',
'            where emp_id= l_selected(i)',
'            and personal_rate=V_CURR_SAL',
'            and end_date is null;',
'                        ',
'            insert into hr_rcm_salary(emp_id, personal_rate, salary_currency,  start_date,  payment_mode, remarks,emp_mov_id ) ',
'            ',
'            select  l_selected(i), p_IncAmt, pkg_global_fnts.FN_GETPAYCURRENCY(l_selected(i), trunc(current_date)), :P1001_FROM_DATE,',
'                    pkg_global_fnts.fn_getPaymode(l_selected(i), trunc(current_date)), ''system generated salary due to employee movement'', v_curval',
'             from dual;',
'',
'            update hr_rcm_emprule',
'            set end_date=to_date(:P1001_FROM_DATE)-1            ',
'            where emp_id= l_selected(i)',
'            and rule_option in ( pkg_global_fnts.get_lookup_id(''STANDARD_HOURS'', ''TBLEMPRULE''), pkg_global_fnts.get_lookup_id(''STANDARD_DAYS'', ''TBLEMPRULE''))',
'            and end_date is null;',
'',
'begin',
'',
'            INSERT INTO hr_rcm_emprule ( emp_id, start_date, rule_option, rule_value)',
'            select l_selected(i),  :P1001_FROM_DATE, pkg_global_fnts.get_lookup_id(''STANDARD_HOURS'', ''TBLEMPRULE'')',
'            ,case when :P1001_DESTINATION_PAYMENT =''MONTHLY'' then pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''Monthly Standard Hours'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')',
'                  when :P1001_DESTINATION_PAYMENT =''WEEKLY'' then pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''weekly Standard Hours'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')     ',
'                  when :P1001_DESTINATION_PAYMENT =''BI-MONTHLY'' then pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''bi monthly Standard Hours'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')',
'                  else pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''fortnightly Standard Hours'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')  end',
'            from dual;      ',
'',
'            INSERT INTO hr_rcm_emprule ( emp_id, start_date, rule_option, rule_value)',
'            select l_selected(i),  :P1001_FROM_DATE, pkg_global_fnts.get_lookup_id(''STANDARD_DAYS'', ''TBLEMPRULE'')',
'            ,case when :P1001_DESTINATION_PAYMENT =''MONTHLY'' then pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''Monthly Standard days'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')',
'                  when :P1001_DESTINATION_PAYMENT =''WEEKLY'' then pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''weekly Standard days'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')     ',
'                  when :P1001_DESTINATION_PAYMENT =''BI-MONTHLY'' then pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''bi monthly Standard days'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')',
'                  else pkg_global_fnts.Get_Lookup_Col(pkg_global_fnts.get_lookupdesc_id(''fortnightly Standard days'', ''TBLEMPRULEOPTION''),''TABLE_VALUE'')  end',
'            from dual;      ',
'',
'exception',
'      when others then null;',
'end;',
'    ',
'    END LOOP;  ',
'    ',
'    :P1001_EMPLOYEE:=null; exception',
'    ',
'when others then null;',
' ',
'    :P1001_DESTINATION_PAYMENT:=null;',
'    :P1001_DEST_EMPLOYMENT_CLASS:=null;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3825689145909973405)
,p_process_when=>'P1001_EMPLOYEE'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Successful execution of mass movement of employees to payment type and employment class. Check employee movement screen for details of the operation.'
,p_internal_uid=>3182493399579365135
);
wwv_flow_imp.component_end;
end;
/
