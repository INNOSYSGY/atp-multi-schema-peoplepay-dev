prompt --application/pages/page_00079
begin
--   Manifest
--     PAGE: 00079
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
 p_id=>79
,p_name=>'frmExcludeQuickEmp'
,p_page_mode=>'MODAL'
,p_step_title=>'Posting Entries Options'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'1000'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3181764423507602935)
,p_plug_name=>'Employees Who will not be paid'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3228085143599281309)
,p_plug_name=>'Selectable Payroll Options'
,p_region_template_options=>'#DEFAULT#:t-Region--accent12:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3228085313786281310)
,p_plug_name=>'Select Generation Posting Category'
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3181764227606602933)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3228084408196281301)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3228085143599281309)
,p_button_name=>'RETURN_SEL'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3181764132763602932)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_button_name=>'EXECUTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-gears'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3228084223722281300)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3228085143599281309)
,p_button_name=>'EXECUTE_SEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(32270040754028550)
,p_name=>'P79_ORGDTL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3228085313786281310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(63835881655810407)
,p_name=>'P79_LABEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3228085313786281310)
,p_source=>'PLEASE NOTE ONLY ENTITLEMENTS WITH A RATE AMOUNT VALUE GREATER THAN 1 WILL BE GENERATED.'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'u-color-9-text'
,p_grid_label_column_span=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(107162461766721608)
,p_name=>'P79_DEF_QUANTITY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2841933034129436747)
,p_name=>'P79_QUANTITY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3228085143599281309)
,p_item_default=>'1'
,p_prompt=>'Quantity'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2841933340580439448)
,p_name=>'P79_INCOME_CODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3228085143599281309)
,p_prompt=>'Employee Entitlement'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DESCRIPTION, B.ID',
'from pa_pcf_incomecode b ',
'where B.admin_status=''MAN''',
'and B.org_id= :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P79_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181335454594623625)
,p_name=>'P79_RETURN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181763667768602928)
,p_name=>'P79_END_PERIOD_PAID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT END_DATE',
'FROM pa_pcf_earningperiod',
'WHERE ID =:P79_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181763785006602929)
,p_name=>'P79_START_PERIOD_PAID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT START_DATE',
'FROM pa_pcf_earningperiod',
'WHERE ID =:P79_EARNINGS_PERIOD_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181763890240602930)
,p_name=>'P79_EARNINGS_PERIOD_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3181764313937602934)
,p_name=>'P79_EXEMPLOYEES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_prompt=>'Exemployees'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMP_COMPANY_NO||''--(''||EMPLOYEE||'')'' a, X.ID b',
'        FROM table(pkg_global_fnts.Get_availemployee(to_date(:P79_START_PAID_FOR,''DD-MON-YYYY''))) X',
'join PA_PCF_EARNINGPERIOD Z on (Z.EMPLOYMENT_CLASS_ID=X.EMPLOYMENT_CLASS_ID and UPPER(Z.PAYMENT_TYPE)=UPPER(X.PAYMENT_TYPE) and Z.ORG_ID=X.ORG_ID AND X.COMPUTE_GROSS_EMP=Z.COMPUTE_GROSS)',
'where z.id= :P79_EARNINGS_PERIOD_ID',
'and x.orgdtl_id = nvl(:P79_ORGDTL_ID, x.orgdtl_id )'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P79_START_PAID_FOR,P79_EARNINGS_PERIOD_ID'
,p_ajax_items_to_submit=>'P79_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227783635383266251)
,p_name=>'P79_SEARCH_RESULTS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3228085143599281309)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P79_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no))||'''' ''''||initcap(compute_gross) display, b.id return',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where exists (select 1',
'              from pa_pcf_earningperiod c ',
'              where b.payment_type=c.payment_type',
'              and b.employment_class_id=c.employment_class_id',
'              and b.org_id=c.org_id',
'              and b.compute_gross =c.compute_gross',
'              and id = :P79_EARNINGS_PERIOD_ID)',
'and (b.date_separated is null or b.date_separated > trunc(current_date))',
'and include_payroll=''''Y''''',
'and b.orgdtl_id = nvl(:P79_ORGDTL_ID, b.orgdtl_id)',
'order by 1'';',
'',
'ELSif :P79_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        and exists(select 1',
'                   from vw_EmpEarn g',
'                   where g.EMP_GRADE_ID = v.id',
'                   and g.Earning_period_id = :P79_EARNINGS_PERIOD_ID  ',
'                   and g.orgdtl_id =  nvl(:P79_ORGDTL_ID, g.orgdtl_id)',
'                   )',
'        order by grade_code'';',
'',
'elsif  :P79_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where m.id =  nvl(:P79_ORGDTL_ID, m.id)        ',
'order by 1'';',
'',
'elsif  :P79_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'from HR_HCF_POSITION b',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE  exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P79_EARNINGS_PERIOD_ID',
'              and b.id=g.Position_ID   ',
'              and g.orgdtl_id =  nvl(:P79_ORGDTL_ID, g.orgdtl_id)     ',
'              )',
'order by 1'';',
'',
'elsif  :P79_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION C ',
'WHERE  exists (select 1',
'              from vw_EmpEarn e',
'              where c.id=e.wklocation_id',
'              and e.Earning_period_id = :P79_EARNINGS_PERIOD_ID       ',
'              and e.orgdtl_id =  nvl(:P79_ORGDTL_ID, e.orgdtl_id)            ',
'              )'';',
'',
'elsif  :P79_SEARCH_OPTION=''INCOME'' then',
'',
'return',
'''select distinct display, d.INCOME_CODE return',
'from PA_PCF_INCOMECODE d ',
'WHERE  exists (select 1',
'              from hr_rcm_empentitle e join pa_pcf_adhocpayment f on e.id=f.empent_id',
'              where  EARNINGS_PERIOD_id = :P79_EARNINGS_PERIOD_ID  ',
'              and e.income_code_id=d.id',
'              and f.orgdtl_id =  nvl(:P79_ORGDTL_ID, f.orgdtl_id)',
'              )',
'order by  DESCRIPTION'';            ',
'',
'elsif  :P79_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g',
'        where g.Earning_period_id = :P79_EARNINGS_PERIOD_ID',
'        and g.orgdtl_id = : nvl(:P79_ORGDTL_ID, g.orgdtl_id)'';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P79_SEARCH_OPTION,P79_EARNINGS_PERIOD'
,p_ajax_items_to_submit=>'P79_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3227783958235268294)
,p_name=>'P79_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3228085143599281309)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE'
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3228085045868281308)
,p_name=>'P79_POST_CATEGORY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3228085313786281310)
,p_item_default=>'0'
,p_prompt=>'Post Category'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>4
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'Selectable Payroll Options',
  'off_value', '1',
  'on_label', 'All With Exclusions',
  'on_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3238999139934972213)
,p_name=>'P79_COMPUTE_GROSS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPUTE_GROSS',
'from pa_pcf_earningperiod',
'where id = :P79_EARNINGS_PERIOD_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3238999276135972214)
,p_name=>'P79_EMPLOYMENT_CLASS_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employment_class_id',
'from pa_pcf_earningperiod',
'where id = :P79_EARNINGS_PERIOD_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3238999350572972215)
,p_name=>'P79_PAYMENT_TYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  PAYMENT_TYPE',
'from pa_pcf_earningperiod',
'where id = :P79_EARNINGS_PERIOD_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3238999587633972217)
,p_name=>'P79_START_PAID_FOR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3181764423507602935)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select START_PAID_FOR',
'from pa_pcf_earningperiod',
'where id = :P79_EARNINGS_PERIOD_Id'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3181633319385320551)
,p_name=>'dy_all_eployeee'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3181764132763602932)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3181632914197320546)
,p_event_id=>wwv_flow_imp.id(3181633319385320551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  L_Selected Apex_Application_Global.Vc_Arr2; v_start_date date;',
'  v_quick_post number(1):=0;',
'',
'Begin',
'',
'         L_Selected := Apex_Util.String_To_Table(:P79_EXEMPLOYEES);',
'',
'          For I In 1..L_Selected.Count',
'          Loop',
'',
'                INSERT INTO tmp_emp(emp_id, earn_prd)',
'                values (L_Selected(I), :P79_EARNINGS_PERIOD_ID);       ',
'          End Loop;  ',
'',
'          select start_paid_for, quick_post into v_start_date, v_quick_post',
'          from pa_pcf_earningperiod',
'          where id =  :P79_EARNINGS_PERIOD_ID;',
'      ',
'    for I in (',
'            SELECT distinct',
'            /* pkg_hr.get_entitlement_rate(in_org_id => e.org_id ',
'                                                     ,in_emp_id => a.emp_id',
'                                                     ,in_entitlement => a.id',
'                                                     ,in_deduct_code  => null',
'                                                     ,in_start_date => :P79_START_PAID_FOR)  AMT ',
'                                                     */',
'                (select rate a',
'                from table(pKG_GENERATORS.gen_Adhocposting(:P79_START_PERIOD_PAID , a.id, null, :APP_ORG_ID, null))) AMT',
'            , CASE WHEN STATUTORY_INCOME=1 and v_quick_post=1 THEN TO_NUMBER(RULE_VALUE)    ',
'            ELSE to_number(:P79_DEF_QUANTITY) END QTY, e.id emp_id, a.id empent_id, :P79_EARNINGS_PERIOD_ID Ernprd, :P79_START_PERIOD_PAID prd_start, :P79_END_PERIOD_PAID prd_end',
'            from table(pkg_global_fnts.Get_availemployee(v_start_date)) e join  hr_rcm_empentitle a on e.id=a.emp_id',
'            JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'            join hr_rcm_emprule c on c.emp_id=e.id',
'            WHERE a.quick_entry = 1          ',
'            and include_payroll=''Y''',
'            and a.admin_status=''MAN''',
'            --and a.amount > 0',
'            and not exists (select 1',
'                            from tmp_emp w',
'                            where w.emp_id =e.id)',
'            and exists (select 1',
'                          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ',
'                           (t.id = w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                          where  t.id = E.ORGDTL_ID',
'                          and E.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, E.ORGDTL_ID, w.org_structure_id)     ',
'                          )',
'            and exists (select 1',
'                        from pa_pcf_earningperiod x',
'                        where x.org_id = e.org_id',
'                        and x.payment_type = e.payment_type',
'                        and x.employment_class_id = e.employment_class_id',
'                        and x.compute_gross=e.compute_gross_emp',
'                        and id = :P79_EARNINGS_PERIOD_ID)            ',
'            AND  UPPER(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(RULE_OPTION,''TABLE_VALUE''))=''STANDARD_HOURS''',
'            AND TRUNC(a.START_DATE) <= TRUNC(current_date)',
'            and (trunc(a.end_date) is null or a.end_date >= trunc(current_date))    ',
'            AND TRUNC(c.START_DATE) <= TRUNC(current_date)',
'            and (trunc(c.end_date) is null or c.end_date >= trunc(current_date))',
'    ) loop',
'            ',
'    begin',
'    ',
'         Insert Into PA_PCF_ADHOCPAYMENT(RATE, QUANTITY, EMP_ID, EMPENT_ID, EARNINGS_PERIOD_ID, START_PERIOD_PAID, END_PERIOD_PAID )',
'         values (i.amt, i.qty, i.emp_id, i.empent_id, i.Ernprd, i.prd_start, i.prd_end);',
'    ',
'    exception',
'        when others then null;',
'    end;',
' ',
' end loop; ',
'        :P79_EXEMPLOYEES := null;',
'        :P79_SEARCH_RESULTS:=null;',
'end;'))
,p_attribute_02=>'P79_START_PERIOD_PAID,P79_EARNINGS_PERIOD_ID,P79_DEF_QUANTITY,P79_END_PERIOD_PAID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3181632458110320545)
,p_event_id=>wwv_flow_imp.id(3181633319385320551)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded all active employees for the current Earnings Period except those explicitly identified for exclusion.'' );',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3239000008414972221)
,p_name=>'dy_all_eployeee_sel'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3228084223722281300)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3238999835979972220)
,p_event_id=>wwv_flow_imp.id(3239000008414972221)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'  L_Selected Apex_Application_Global.Vc_Arr2; ',
'  X_Selected Apex_Application_Global.Vc_Arr2; ',
'',
'Begin',
'',
'         L_Selected := Apex_Util.String_To_Table(:P79_SEARCH_RESULTS);',
'         x_Selected := Apex_Util.String_To_Table(:P79_INCOME_CODE);',
'',
'          For I In 1..L_Selected.Count',
'          Loop',
'',
'                INSERT INTO tmp_option_values(option_code, option_values)',
'                values (L_Selected(I), :P79_SEARCH_OPTION);       ',
'          End Loop;  ',
'',
'          For w In 1..x_Selected.Count',
'          Loop',
'     ',
'            pkg_generators.Gen_posting_options(:P79_QUANTITY, x_Selected(w) ,:P79_EARNINGS_PERIOD_ID, :P79_START_PERIOD_PAID , :P79_START_PAID_FOR, :P79_END_PERIOD_PAID, :APP_ORG_ID, :P79_PAYMENT_TYPE, :P79_EMPLOYMENT_CLASS_ID, :P79_COMPUTE_GROSS);',
'',
'          End Loop;  ',
'          ',
'        delete',
'        from tmp_option_values',
'        where CURR_USER =:APP_USER',
'        AND option_values = :P79_SEARCH_OPTION;',
'',
'        :P79_SEARCH_RESULTS := null;',
'        :P79_SEARCH_RESULTS:=null;',
'end;',
'',
''))
,p_attribute_02=>'P79_QUANTITY,P79_INCOME_CODE,P79_SEARCH_RESULTS,P79_SEARCH_OPTION,:P79_EARNINGS_PERIOD_ID,:P79_START_PERIOD_PAID,:P79_END_PERIOD_PAID,P79_PAYMENT_TYPE,P79_EMPLOYMENT_CLASS_ID,P79_COMPUTE_GROSS'
,p_attribute_03=>'P79_SEARCH_RESULTS,P79_SEARCH_OPTION,P79_INCOME_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3238999785043972219)
,p_event_id=>wwv_flow_imp.id(3239000008414972221)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'TRIGGERING_ELEMENT'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.showPageSuccess( ''System successfully loaded based on the selected payroll options for the current Earnings Period.'' );',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3228085019852281307)
,p_name=>'SHOW_hide'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_POST_CATEGORY'
,p_condition_element=>'P79_POST_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3228084735876281305)
,p_event_id=>wwv_flow_imp.id(3228085019852281307)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3181764423507602935)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3228084849288281306)
,p_event_id=>wwv_flow_imp.id(3228085019852281307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3181764423507602935)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3228084644478281304)
,p_name=>'SHOW_hide_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P79_POST_CATEGORY'
,p_condition_element=>'P79_POST_CATEGORY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3228084507218281302)
,p_event_id=>wwv_flow_imp.id(3228084644478281304)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3228085143599281309)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3228084544228281303)
,p_event_id=>wwv_flow_imp.id(3228084644478281304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3228085143599281309)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2945172560037253808)
,p_name=>'set_clear'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2945172666006253809)
,p_event_id=>wwv_flow_imp.id(2945172560037253808)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P79_SEARCH_OPTION,P79_SEARCH_RESULTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null a, null b',
'from dual'))
,p_attribute_07=>'P79_SEARCH_OPTION,P79_SEARCH_RESULTS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(63835954484810408)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'dialog close'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'RETURN, RETURN_SEL'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>63835954484810408
);
wwv_flow_imp.component_end;
end;
/
