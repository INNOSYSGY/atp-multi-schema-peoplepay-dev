prompt --application/pages/page_00491
begin
--   Manifest
--     PAGE: 00491
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>491
,p_name=>'frmMassInterOrgTransfer'
,p_step_title=>'InterOrganisation Transfer'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169964857544023915)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3225892009060816253)
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
 p_id=>wwv_flow_imp.id(3313111966917633696)
,p_plug_name=>'Separate Employee from Source Company'
,p_parent_plug_id=>wwv_flow_imp.id(3225892009060816253)
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3225892457267820210)
,p_plug_name=>'Mass Employee InterOrganisation Movement (Source -->Destination)'
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
 p_id=>wwv_flow_imp.id(3315018870516667663)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3225892009060816253)
,p_button_name=>'MOVE_EMPLOYEES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Move Employees'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3315020349532667664)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3225892457267820210)
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
 p_id=>wwv_flow_imp.id(3117929475259696497)
,p_name=>'P491_SEP_STATUS_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3313111966917633696)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3313111758115633694)
,p_name=>'P491_DATE_SEPARATED'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3313111966917633696)
,p_prompt=>'Date Saparated'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3313111818582633695)
,p_name=>'P491_SEPARATE_STATUS'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3313111966917633696)
,p_prompt=>'Separate Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEPARATED_STATUS'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION,ID',
'from table(pkg_global_fnts.get_lookup_value(''TBLSEPARATEDSTATUS'')) a',
'where org_id= :APP_ORG_SHR_DED',
'',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3315018039324667663)
,p_name=>'P491_DESTINATION_COMPANY'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3225892457267820210)
,p_prompt=>'Destination Company'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation d',
'where  exists(select 1',
'              from tbluserdetail a',
'              where user_id =(select user_id from tbluser where user_name = :APP_USER)',
'              and  d.id=a.org_id)',
'and  id   !=:P491_SOURCE_COMPANY    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P491_SOURCE_COMPANY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3315019963785667664)
,p_name=>'P491_SOURCE_COMPANY'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3225892457267820210)
,p_prompt=>'Source Company'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation d',
'where  exists(select 1',
'              from tbluserdetail a',
'              where user_id =(select user_id from tbluser where user_name = :APP_USER)',
'              and  d.id=a.org_id)'))
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
 p_id=>wwv_flow_imp.id(3315429530992974865)
,p_name=>'P491_EMPLOYEES'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3225892009060816253)
,p_prompt=>'Employees'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct',
'    initcap(surname',
'            || '', ''',
'            || nvl(first_name, ''''))',
'    || '' ''',
'    || nvl(middle_name, '''')',
'    || ''(No.:''',
'    || emp_company_no',
'    || '')(''',
'    || pkg_global_fnts.get_lookup_col(employment_class_id, ''TABLE_VALUE'')',
'    ||',
'        CASE',
'            WHEN x.verified_by IS NULL THEN',
'                '' Unverified)''',
'            ELSE',
'                    CASE',
'                        WHEN date_separated IS NULL THEN',
'                            '' Active''',
'                        ELSE',
'                            '' Separated''',
'                    END',
'                    || '')''',
'        END',
'    || a.position_name',
'    || ''; ''',
'    || b.unit_name',
'    || ''(''',
'    || initcap(b.PARENT_CLASSIFICATION_DESC)',
'    || '')'' a,',
'    x.id b',
'from',
'   hr_rcm_employee  x',
'   left join  vw_org_worklocation_position a on a.id=x.POSITION_ID',
'   left JOIN vw_organisation_structure b ON a.orgdtl_id = b.id ',
'   JOIN hr_rcm_individual              z ON z.id = x.ind_id',
'WHERE',
'    x.verified_by IS NOT NULL',
'    AND z.dod is NULL',
'    AND pkg_global_fnts.get_lookup_col(employment_class_id, ''TABLE_VALUE'') != ''PEN''',
'    AND pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') NOT IN (',
'        ''APPL'',',
'        ''INVW''',
'    )',
'    AND ( x.separated_status IS NULL',
'          OR x.date_separated > current_date )',
'    AND x.org_id = :p491_source_company',
'    AND EXISTS (',
'        SELECT',
'            1',
'             FROM',
'            vw_useraccess w',
'        WHERE',
'            x.org_id = w.org_id',
'            AND x.employment_class_id = w.employment_class_id',
'            AND upper(x.payment_type) = upper(w.payment_type)',
'    )',
'',
'/*',
'SELECT',
'    initcap(surname',
'            || '', ''',
'            || nvl(first_name, ''''))',
'    || '' ''',
'    || nvl(middle_name, '''')',
'    || ''(No.:''',
'    || emp_company_no',
'    || '')(''',
'    || pkg_global_fnts.get_lookup_col(employment_class_id, ''TABLE_VALUE'')',
'    ||',
'        CASE',
'            WHEN x.verified_by IS NULL THEN',
'                '' Unverified)''',
'            ELSE',
'                    CASE',
'                        WHEN date_separated IS NULL THEN',
'                            '' Active''',
'                        ELSE',
'                            '' Separated''',
'                    END',
'                    || '')''',
'        END',
'    || a.position_name',
'    || ''; ''',
'    || b.unit_name',
'    || ''(''',
'    || initcap(b.PARENT_CLASSIFICATION_DESC)',
'    || '')'' a,',
'    x.id b',
'from',
'    vw_org_worklocation_position   a',
'    JOIN vw_organisation_structure      b ON a.orgdtl_id = b.id',
'    JOIN hr_rcm_employee                x ON x.wklocation_id = a.id',
'    JOIN hr_rcm_individual              z ON z.id = x.ind_id',
'WHERE',
'    x.verified_by IS NOT NULL',
'    AND z.dod is NULL',
'    AND pkg_global_fnts.get_lookup_col(employment_class_id, ''TABLE_VALUE'') != ''PEN''',
'    AND pkg_global_fnts.get_lookup_col(employment_status_id, ''TABLE_VALUE'') NOT IN (',
'        ''APPL'',',
'        ''INVW''',
'    )',
'    AND ( x.separated_status IS NULL',
'          OR x.date_separated > current_date )',
'    AND x.org_id = :p491_source_company',
'    AND EXISTS (',
'        SELECT',
'            1',
'             FROM',
'            vw_useraccess w',
'        WHERE',
'            x.org_id = w.org_id',
'            AND x.employment_class_id = w.employment_class_id',
'            AND upper(x.payment_type) = upper(w.payment_type)',
'    )',
'ORDER BY',
'    surname,',
'    first_name',
'*/'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P491_SOURCE_COMPANY'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_help_text=>'Ensure you have access to both organisations/companies and you are currently logged in at the source company. Be sure to up date the postion location for all the employees moved.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3117929508601696498)
,p_name=>'dy_set_sep_status_code'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P491_SEPARATE_STATUS'
,p_condition_element=>'P491_SEPARATE_STATUS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3117929692030696499)
,p_event_id=>wwv_flow_imp.id(3117929508601696498)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P491_SEP_STATUS_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(table_value) A',
'from hr_hcf_lookup',
'where id = :P491_SEPARATE_STATUS',
'and org_id = :APP_ORG_SHR_DED'))
,p_attribute_07=>'P491_SEPARATE_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3315017607627667648)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'mass_employee_movement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  v_ind_seq number:=0;',
'  V_EMPNO number:=0;',
'',
'BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P491_EMPLOYEES);',
'  ',
'    FOR i IN 1..l_selected.COUNT',
'    LOOP',
' ',
' begin',
'   INSERT INTO hr_rcm_individual( surname, first_name, middle_name, alias, dob, dod, place_of_birth, sex_code, marital_code, maiden_name, no_of_children, height, weight,eye_colour,',
'    hair_colour,  built,  distinguished_marks, race_id,  nationality,  telephone,  bank_branch_id,  bank_account_no,   verified_by,  verified_date, religion, cell_phone,',
'    email, date_of_marriage, place_of_marriage,  joint_account,  photo, filename,  mimetype, last_update_photo, transaction_type_id, status,  salutation,  ind_org_id)',
'',
'    select surname, first_name, middle_name, alias, dob, dod, place_of_birth, sex_code, marital_code, maiden_name, no_of_children, height, weight,eye_colour,',
'        hair_colour,  built,  distinguished_marks, race_id,  nationality,  telephone,  bank_branch_id,  bank_account_no,   verified_by,  verified_date, religion, cell_phone,',
'        email, date_of_marriage, place_of_marriage,  joint_account,  photo, filename,  mimetype, last_update_photo, transaction_type_id, status,  salutation,  :P491_DESTINATION_COMPANY',
'    from hr_rcm_individual a',
'    where ind_org_id=:P491_SOURCE_COMPANY',
'    and exists (select 1',
'                from hr_rcm_employee b',
'                where b.ind_id =a.id',
'                and b.id =l_selected(I));               ',
'',
'                v_ind_seq:= INDIVIDUAL_SEQ.currval;',
'  exception',
'     when others then null;',
'  end;',
'    ',
' begin',
'    insert into hr_rcm_address(address_type, ind_id, lot, street, country,village_ward_id, town_id, region_id, county_id, start_date)        ',
'    SELECT  address_type, v_ind_seq, lot, street, country, pkg_global_fnts.get_lookupTransORG_id(village_ward_id, :P491_DESTINATION_COMPANY), pkg_global_fnts.get_lookupTransORG_id(town_id, :P491_DESTINATION_COMPANY) ',
'    , pkg_global_fnts.get_lookupTransORG_id(region_id, :P491_DESTINATION_COMPANY) , pkg_global_fnts.get_lookupTransORG_id(county_id, :P491_DESTINATION_COMPANY)  , start_date',
'    from hr_rcm_address a',
'    where exists (select 1',
'            from hr_rcm_employee b join hr_rcm_individual c on b.ind_id = c.id',
'            where a.ind_id =c.id',
'            and b.id =l_selected(I));        ',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'',
'    insert into HR_RCM_NATIDENTIFIER(IND_ID,ID_TYPE, ID_NUMBER, ISSUE_DATE, ISSUE_PLACE, START_DATE)',
'    select v_ind_seq,Id_Type, Id_Number, Issue_Date, Issue_Place, Start_Date',
'    from hr_rcm_natidentifier a',
'    where exists (select 1',
'            from hr_rcm_employee b join hr_rcm_individual c on b.ind_id = c.id',
'            where a.ind_id =c.id',
'            and b.id =l_selected(I));   ',
'   ',
' exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'   insert into hr_rcm_qualification( q_year, ind_id, subject_course, grade_attained, company_sponsor, q_level, country_code, exam_body_id, school_code_id)',
'    select  q_year, v_ind_seq, subject_course, grade_attained, company_sponsor, q_level, country_code, pkg_global_fnts.get_lookupTransORG_id(exam_body_id, :P491_DESTINATION_COMPANY)  ',
'     ,pkg_global_fnts.get_lookupTransORG_id(school_code_id, :P491_DESTINATION_COMPANY)',
'    from hr_rcm_qualification a',
'    where exists (select 1',
'            from hr_rcm_employee b join hr_rcm_individual c on b.ind_id = c.id',
'            where a.ind_id =c.id',
'            and b.id =l_selected(I));   ',
'    ',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    insert into hr_rcm_emphistory(ind_id, position_held, department, reason_for_leaving,previous_salary, from_date, to_date, org_id)',
'    select v_ind_seq, position_held, department, reason_for_leaving,previous_salary, from_date, to_date,  pkg_global_fnts.get_TransORG_id(org_id, :P491_DESTINATION_COMPANY)',
'    from hr_rcm_emphistory a',
'    where exists (select 1',
'            from hr_rcm_employee b join hr_rcm_individual c on b.ind_id = c.id',
'            where a.ind_id =c.id',
'            and b.id =l_selected(I));               ',
'   ',
' exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    INSERT INTO hr_rcm_hobby( ind_id, hobbies, LOCATION, how_frequent_involve, date_started, date_stopped, ngo_position)',
'    select  v_ind_seq, hobbies, LOCATION, how_frequent_involve, date_started, date_stopped, ngo_position',
'    from hr_rcm_hobby a',
'    where exists (select 1',
'            from hr_rcm_employee b join hr_rcm_individual c on b.ind_id = c.id',
'            where a.ind_id =c.id',
'            and b.id =l_selected(I));   ',
' ',
'   exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    INSERT INTO hr_rcm_employee (emp_company_no, ind_id,report_to, confirmed, permanent_staff,  payment_type,  remarks, date_employed,',
'         date_interviewed,  interviewed_by,  report_to_functional,  appointment_date,  contract_staff,  date_separated,  rehired,',
'        primary_tax_job,  application_date,  job_applied_for,  payroll_effective, employment_status_id, employment_class_id,  separated_status_id, org_id, include_payroll,',
'        skills, verified_by,  verified_date )',
'',
'    select emp_company_no, v_ind_seq,report_to, confirmed, permanent_staff,  payment_type,  remarks, date_employed,',
'         date_interviewed,  interviewed_by,  report_to_functional,  appointment_date,  contract_staff,   date_separated,  rehired,',
'        primary_tax_job,  application_date,  job_applied_for,  payroll_effective, pkg_global_fnts.get_lookupTransORG_id(employment_status_id, :P491_DESTINATION_COMPANY) ,',
'        pkg_global_fnts.get_lookupTransORG_id(employment_class_id, :P491_DESTINATION_COMPANY) ,  pkg_global_fnts.get_lookupTransORG_id(separated_status_id, :P491_DESTINATION_COMPANY)  ,',
'        :P491_DESTINATION_COMPANY, include_payroll, skills, verified_by,  verified_date ',
'    from hr_rcm_employee b',
'    where  b.id =l_selected(I);   ',
'    ',
'   if :P491_SEPARATE_STATUS is not null and :P491_DATE_SEPARATED is not null  then',
'   ',
'      update hr_rcm_employee emp',
'      set emp.SEPARATED_STATUS = :P491_SEP_STATUS_CODE',
'          ,emp.DATE_SEPARATED = :P491_DATE_SEPARATED ',
'          ,emp.separated_status_id = :P491_SEPARATE_STATUS',
'      where emp.id =l_selected(I);',
'    ',
'    end if;',
'',
'   V_EMPNO := EMPLOYEE_SEQ.currval;',
' ',
'   exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'  ',
'    insert into hr_rcm_emprule( emp_id,  rule_option, rule_value, start_date)',
'    select v_empno,  pkg_global_fnts.get_lookupTransORG_id(rule_option, :P491_DESTINATION_COMPANY)  , rule_value, start_date',
'    from hr_rcm_emprule',
'    where emp_id =l_selected(I);   ',
' ',
'     insert into hr_rcm_salary(emp_id, personal_rate, hourly_rate, std_detail_key, salary_currency, leave_passage_amount,  leave_passage_date,',
'         start_date,payment_mode)',
'    select v_empno, personal_rate, hourly_rate, std_detail_key, salary_currency, leave_passage_amount,  leave_passage_date,',
'         start_date,payment_mode',
'    from hr_rcm_salary',
'    where emp_id =l_selected(I);  ',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    insert into hr_rcm_empleaveentitle(emp_id, leave_type_id, quantity, working_days, max_accumulation, accumulative, reduce_sal_overspent, start_date)',
'    select v_empno, pkg_global_fnts.get_lookupTransORG_id(leave_type_id, :P491_DESTINATION_COMPANY)  , quantity, working_days, max_accumulation, accumulative, reduce_sal_overspent, start_date',
'    from hr_rcm_empleaveentitle',
'    where emp_id =l_selected(I);   ',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'',
'    INSERT INTO hr_rcm_empentitle( emp_id, income_type, income_code_id, taxable, nis_deduction, amount, std_detail_key, admin_status, percentage, remarks, quick_entry, start_date)',
'    select v_empno,income_type, pkg_global_fnts.get_incomeORG_id(:P491_DESTINATION_COMPANY, income_code_id), taxable, nis_deduction, amount, std_detail_key, admin_status, percentage, remarks, quick_entry, start_date',
'    from hr_rcm_empentitle a',
'    where emp_id =l_selected(I)',
'    and pkg_global_fnts.get_incomeORG_id(:P491_DESTINATION_COMPANY, income_code_id) is not null;',
' ',
'   exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'     insert into hr_rcm_empdocument(lookup_id, emp_id, submitted,  date_submitted,  no_of_copies,  remarks,  expiry_date)',
'    SELECT pkg_global_fnts.get_lookupTransORG_id(lookup_id, :P491_DESTINATION_COMPANY) , v_empno, submitted,  date_submitted,  no_of_copies,  remarks,  expiry_date',
'    FROM hr_rcm_empdocument',
'    where emp_id =l_selected(I); ',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    insert into hr_rcm_empitem(emp_id,  item_code  , start_period)',
'    SELECT v_empno,  pkg_global_fnts.get_lookupTransORG_id(item_code, :P491_DESTINATION_COMPANY)  , start_period',
'    FROm hr_rcm_empitem',
'    where emp_id =l_selected(I); ',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    insert into hr_rcm_empcontract( remarks, emp_id, start_date,  annual_salary, managed_by,  fundingdetail_id)',
'    SELECT remarks, v_empno, start_date,  annual_salary, managed_by,  pkg_global_fnts.get_TransORG_id(fundingdetail_id, :P491_DESTINATION_COMPANY) ',
'    FROM hr_rcm_empcontract',
'    where emp_id =l_selected(I); ',
'   ',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'',
'    insert into hr_rcm_award(emp_id,  award_date, reason,  prize_given,  occasion,  org_id  , award_type)',
'    SELECT v_empno,  award_date, reason,  prize_given,  occasion,   pkg_global_fnts.get_TransORG_id(org_id, :P491_DESTINATION_COMPANY)  , award_type',
'    FROM  hr_rcm_award',
'    where emp_id =l_selected(I);',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'',
'    INSERT INTO hr_rcm_training (tutor, train_end_date, emp_id, subject_course, training_agency, sponsoring_agency, in_house_training, required_training, country_code, q_level, train_start_date) ',
'    select tutor, train_end_date, v_empno, subject_course, pkg_global_fnts.get_TransORG_id(training_agency, :P491_DESTINATION_COMPANY) ,pkg_global_fnts.get_TransORG_id(sponsoring_agency, :P491_DESTINATION_COMPANY) , in_house_training,',
'        required_training, country_code, q_level, train_start_date',
'    from hr_rcm_training',
'    where emp_id =l_selected(I);',
'  ',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
'    insert into hr_rcm_empworkpermit( emp_id,  period_start, period_end,remarks)',
'    SELECT v_empno,  period_start, period_end,remarks',
'    FROM hr_rcm_empworkpermit',
'    where emp_id =l_selected(I);',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'  begin',
' ',
'    insert into hr_rcm_travelhistory(emp_id, destination,  purpose, travel_date, return_date)',
'    SELECT v_empno, destination,  purpose, travel_date, return_date',
'    FROM hr_rcm_travelhistory',
'    where emp_id =l_selected(I);',
'',
'  exception',
'     when others then null;',
'  end;',
'  ',
'    END LOOP;  ',
'    commit;',
'    :P491_EMPLOYEES:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3315018870516667663)
,p_process_success_message=>'Successful execution of mass movement of employees to new manager.'
,p_internal_uid=>3199233473771353943
);
wwv_flow_imp.component_end;
end;
/
