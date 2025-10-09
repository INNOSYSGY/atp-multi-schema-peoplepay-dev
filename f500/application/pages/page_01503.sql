prompt --application/pages/page_01503
begin
--   Manifest
--     PAGE: 01503
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
 p_id=>1503
,p_name=>'frmGlobalPayrollPar2'
,p_step_title=>'frmGlobalPayrollPar2'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3670767345718395838)
,p_plug_name=>'Report'
,p_region_name=>'PREVIEW'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="height:555px"'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3766931096911656957)
,p_plug_name=>'&P1503_REPORT_NAME.'
,p_region_template_options=>'#DEFAULT#:::is-expanded::t-Region--accent3::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3699011413900824624)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:404:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3699010998677824623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_button_name=>'Export'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Export'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3694133044492782083)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_button_name=>'EXECUTE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Execute'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-play-circle-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694133321742783972)
,p_name=>'P1503_MONTH_YEAR'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_prompt=>'Month Year'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD B  ',
'      WHERE ORG_ID =:P1503_ORGANISATION',
'      AND EXISTS (SELECT 1',
'                  FROM  PA_PMG_PAYROLLHD C ',
'                  WHERE  B.ID=C.EARNINGS_PERIOD_ID)',
'      )',
'ORDER BY C DESC, D DESC  '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1503_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694133616260785878)
,p_name=>'P1503_EARNINGS_PERIOD'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_prompt=>'Earnings Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' ) ',
'||'' ''||a.payment_type||'' ''||a.start_date ||'' -- ''||a.end_date)||'' ''||initcap(compute_gross) label,a.id',
'from pa_pcf_earningperiod a join pa_pmg_payrollhd w on a.id = w.earnings_period_id ',
'where exists (select 1   ',
'              from VW_USERACCESS v   ',
'              where  (v.org_id=a.org_id   ',
'              and v.employment_class_id=a.employment_class_id ',
'              and v.payment_type=a.payment_type)',
'             )   ',
'and EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE)=:P1503_MONTH_YEAR',
'and a.org_id=:P1503_ORGANISATION',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1503_MONTH_YEAR,P1503_ORGANISATION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3699006187556824620)
,p_name=>'P1503_REPORT_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699006653321824620)
,p_name=>'P1503_URL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699007056491824621)
,p_name=>'P1503_SEARCH_RESULTS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_named_lov=>'RPT_PARAMETER_RESULTSV4'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1503_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no)) display, b.id return',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where exists (select 1',
'              from pa_pcf_earningperiod c ',
'              where b.payment_type=c.payment_type',
'              and b.employment_class_id=c.employment_class_id',
'              and b.org_id=c.org_id',
'              and b.compute_gross =c.compute_gross',
'              and id = :P1503_EARNINGS_PERIOD)',
'and b.date_separated is null or b.date_separated > trunc(current_date)     ',
'and include_payroll=''''Y''''',
'order by 1'';',
'',
'ELSif :P1503_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        and exists(select 1',
'                   from vw_EmpEarn g',
'                   where g.EMP_GRADE_ID = v.id',
'                   and g.Earning_period_id = :P1503_EARNINGS_PERIOD',
'                   )',
'        order by grade_code'';',
'',
'elsif  :P1503_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P1503_EARNINGS_PERIOD',
'              and m.id= g.orgdtl_id',
'              )',
'order by 1'';',
'',
'elsif  :P1503_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'from HR_HCF_POSITION b',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE  exists (select 1',
'              from vw_EmpEarn g',
'              where g.Earning_period_id = :P1503_EARNINGS_PERIOD',
'              and b.id=g.Position_ID',
'              )',
'order by 1'';',
'',
'elsif  :P1503_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION C ',
'WHERE  exists (select 1',
'              from vw_EmpEarn e',
'              where c.id=e.wklocation_id',
'              and e.Earning_period_id = :P1503_EARNINGS_PERIOD                           ',
'              )'';',
'',
'elsif  :P1503_SEARCH_OPTION=''INCOME'' then',
'',
'return',
'''select distinct display, d.INCOME_CODE return',
'from PA_PCF_INCOMECODE d ',
'WHERE  exists (select 1',
'              from hr_rcm_empentitle e join pa_pcf_adhocpayment f on e.id=f.empent_id',
'              where  EARNINGS_PERIOD_id = :P1503_EARNINGS_PERIOD  ',
'              and e.income_code_id=d.id',
'              )',
'order by  DESCRIPTION'';            ',
'',
'elsif  :P1503_SEARCH_OPTION=''UNION'' then',
'return',
'    ''select organisation_name display ,x.id return',
'    from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'    where organisation_type=''''REMITTANCE''''',
'    and UNION_DEDUCTION=1',
'    and exists (select 1',
'              from vw_EmpEarn g',
'              where x.id = g.union_code_id',
'              and g.Earning_period_id = :P1503_EARNINGS_PERIOD                           ',
'              )',
'    order by  1'';    ',
'',
'elsif  :P1503_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g',
'        where g.Earning_period_id = :P1503_EARNINGS_PERIOD'';',
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
,p_lov_cascade_parent_items=>'P1503_INCOME_CODES,P1503_SEARCH_OPTION'
,p_ajax_optimize_refresh=>'Y'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699007387328824621)
,p_name=>'P1503_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE,Grade Scale;GRADE_SCALE,Position;POSITION,Union;UNION'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699007869884824621)
,p_name=>'P1503_INCOME_CODES'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_prompt=>'Income Codes'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, income_code',
'from pa_pcf_incomecode v',
'where v.org_id = :APP_ORG_SHR_DED',
'and exists(select 1',
'           from pa_pmg_payrolldtl x join pa_pmg_payrollincome c on x.id =c.pay_slipno         ',
'           where upper(c.income_code) =  upper(v.income_code)',
'            and extract(year from x.period_start)||extract(month from x.period_start) = :P1503_MONTH_YEAR',
'            and x.earnings_period_id = :P1503_EARNINGS_PERIOD         ',
'              )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1503_MONTH_YEAR,P1503_EARNINGS_PERIOD'
,p_ajax_items_to_submit=>'P1503_MONTH_YEAR,P1503_EARNINGS_PERIOD'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699008667790824622)
,p_name=>'P1503_ALL_EMPLOYEES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_item_default=>'0'
,p_prompt=>'All Employees'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699009450962824622)
,p_name=>'P1503_EARNINGS_TYPE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_prompt=>'Earnings Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'EARNINGS_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3853991985807144147)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699009807781824623)
,p_name=>'P1503_SUPPRESS_DETAILS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_prompt=>'Suppress Details'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699010207326824623)
,p_name=>'P1503_ORGANISATION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  initcap(c.organisation_name),c.id',
'from   hr_hcf_organisation c',
' where exists (select 1',
'              from pa_pcf_earningperiod a join VW_USERACCESS g ',
'              on (a.org_id=g.org_id ',
'              and a.employment_class_id=g.employment_class_id and a.payment_type=g.payment_type) ',
'              where c.id = g.org_id )',
'order by c.organisation_name',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705677083051903429)
,p_name=>'P1503_REPORT_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3766931096911656957)
,p_source=>'select REPORT_NAME from report where id=:P1503_REPORT_ID'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3699005470685824620)
,p_name=>'show_hide_search_options'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1503_ALL_EMPLOYEES'
,p_condition_element=>'P1503_ALL_EMPLOYEES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699004396693824619)
,p_event_id=>wwv_flow_imp.id(3699005470685824620)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1503_SEARCH_OPTION,P1503_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699004925061824619)
,p_event_id=>wwv_flow_imp.id(3699005470685824620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1503_SEARCH_OPTION,P1503_SEARCH_RESULTS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3699002098158824618)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3699010998677824623)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699000649510824617)
,p_event_id=>wwv_flow_imp.id(3699002098158824618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699001104529824617)
,p_event_id=>wwv_flow_imp.id(3699002098158824618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1503_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_dates varchar2(100);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:p1503_search_results is not null)  and (:p1503_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:p1503_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:p1503_search_option, l_selected(i),:p1503_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :p1503_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :p1503_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :p1503_REPORT_ID;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_START=''||:p1503_EARNINGS_PERIOD_START||''|IN_ORG_ID=''||:p1503_organisation||''|SEARCH_OPTION=''||:p1503_search_option||''|SUPPRESS_DETAILS=''||:p1503'
||'_suppress_details||''|SESSION_ID=''||:app_session||''|allEmployees=''||:p1503_ALL_EMPLOYEES||''|paymentFrecuency=''||:p1503_PAYMENT_TYPE||''|deduction_id=''||:p1503_DEDUCTION_ENTITY||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:p1503_REPORT_ID)||:p1503_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'v_dates :=replace(:p1503_EARNINGS_PERIOD_START,''-'',''**'');',
'',
'v_url_1:=''http://apps4.innosysgy.com:8082/Report/Download?p2=''||v_report_path||''-EARNINGS_PERIOD_START=''||v_dates||''-IN_ORG_ID=''||:p1503_organisation||''-SEARCH_OPTION=''||:p1503_search_option||''-SUPPRESS_DETAILS=''||:p1503_suppress_details||''-SESSION_I'
||'D=''||:app_session||''-allEmployees=''||:p1503_ALL_EMPLOYEES||''-paymentFrecuency=''||:p1503_PAYMENT_TYPE||''-INCOME_CODE=''||:P1503_INCOME_CODES;',
'',
'',
':p1503_PARAMETERS := null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1503_SUPPRESS_DETAILS,P1503_ORGANISATION,P1503_EARNINGS_TYPE,P1503_ALL_EMPLOYEES,P1503_SEARCH_OPTION,P1503_SEARCH_RESULTS,P1503_INCOME_CODES'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3699001631384824617)
,p_event_id=>wwv_flow_imp.id(3699002098158824618)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1503_URL'').value,''popUpWindow'',''height=200,width=500,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694132834098780022)
,p_name=>'Preview_Report_OnPreme'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3694133044492782083)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694132385485780021)
,p_event_id=>wwv_flow_imp.id(3694132834098780022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694131962290780020)
,p_event_id=>wwv_flow_imp.id(3694132834098780022)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'DOM_OBJECT'
,p_affected_elements=>'PREVIEW'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if (:P1503_search_results is not null)  and (:P1503_ALL_EMPLOYEES = ''0'')then',
' ',
'  l_selected := apex_util.string_to_table(:P1503_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into RPT_PARAMETER(option_name, option_value,report_id,session_id )',
'       values(:P1503_search_option, l_selected(i),:P1503_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P1503_SEARCH_RESULTS := null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1503_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P1503_REPORT_ID;',
'',
'v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:P1503_EARNINGS_PERIOD||''|IN_ORG_ID=''||:P1503_organisation||''|SEARCH_OPTION=''||:P1503_search_option||''|SUPPRESS_DETAILS=''||:P1503_suppress_d'
||'etails||''|SESSION_ID=''||:app_session||''|allEmployees=''||:P1503_ALL_EMPLOYEES||''|paymentFrecuency=''||:P1503_PAYMENT_TYPE||''|INCOME_CODE=''||:P1503_INCOME_CODES||'',''||v_report_path;',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P1503_REPORT_ID)||:P1503_PARAMETERS;',
'',
'v_url:=''',
'<object data="''||v_url_2||''" width="100%" height="100%" type="application/pdf">',
'',
'<embed src="''||v_url_2||''" width="100%" height="100%" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html" />',
'</object>',
''';',
':P1503_PARAMETERS := null;',
'',
'return v_url;',
'end;'))
,p_attribute_07=>'P1503_SUPPRESS_DETAILS,P1503_ORGANISATION,P1503_EARNINGS_TYPE,P1503_ALL_EMPLOYEES,P1503_INCOME_CODES,P1503_SEARCH_OPTION,P1503_SEARCH_RESULTS, P1503_EARNINGS_PERIOD'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694124461338724457)
,p_name=>'Preview_Report_Cloud'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3694133044492782083)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694124035634724456)
,p_event_id=>wwv_flow_imp.id(3694124461338724457)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' delete RPT_PARAMETER where session_id=:APP_SESSION;',
'  commit;',
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694123491556724456)
,p_event_id=>wwv_flow_imp.id(3694124461338724457)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1503_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(400);',
'begin',
'',
'--Execute Temp Table Population---',
'',
'begin',
'',
' if :P1503_search_results is not null then',
'',
'  l_selected := apex_util.string_to_table(:P1503_search_results);',
'',
'  for i in 1..l_selected.count',
'  loop',
'	insert into rpt_parameter(option_name, option_value,report_id,session_id )',
'       values(:P1503_search_option, l_selected(i),:P1503_report_id,:app_session);',
'      ',
'',
'  end loop;  ',
'  ',
'     :P1503_search_results:=null;',
'',
'end if;',
'',
'/*EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1503_SEARCH_RESULTS:=null;*/',
'end;',
'',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where id= :P1503_report_id;',
'v_report_path:=''/reports/''||v_report_path;',
'',
'/*v_url_2 :=''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:''||''|EARNINGS_PERIOD_ID=''||:P1503_earnings_period||''|IN_ORG_ID=''||:P1503_organisation||''|SEARCH_OPTION=''||:P1503_search_option||''|SUPPRESS_DETAILS=''||:P1503_suppress'
||'_details||''|SESSION_ID=''||:app_session||'',''||v_report_path;',
'',
':P1503_parameters:=''&EARNINGS_PERIOD_ID=''||:P1503_earnings_period||''&IN_ORG_ID=''||:P1503_organisation||''&SEARCH_OPTION=''||:P1503_search_option||''&SUPPRESS_DETAILS=''||:P1503_suppress_details||''&SESSION_ID=''||:app_session;',
'',
'',
'v_url_1 :=pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'v_url_2 :=replace(:P402_PARAMATERS,''&'',''-'');*/',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
'',
'',
'--v_url_1:=''http://apps3.innosysgy.com:8080/Report/showPDF?p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P1503_EARNINGS_PERIOD||''-IN_ORG_ID=''||:P1503_organisation||''-SEARCH_OPTION=''||:P1503_search_option||''-SUPPRESS_DETAILS=''||:P1503_suppress_details'
||'||''-SESSION_ID=''||:app_session||''-allEmployees=''||:P1503_ALL_EMPLOYEES||''-paymentFrecuency=''||:P1503_PAYMENT_TYPE||''-INCOME_CODE=''||:P1503_INCOME_CODES;',
'v_url_1:=v_report_root_path||''&p2=''||v_report_path||''-EARNINGS_PERIOD_ID=''||:P1503_EARNINGS_PERIOD||''-IN_ORG_ID=''||:P1503_organisation||''-SEARCH_OPTION=''||:P1503_search_option||''-SUPPRESS_DETAILS=''||:P1503_suppress_details||''-SESSION_ID=''||:app_sessi'
||'on||''-allEmployees=''||:P1503_ALL_EMPLOYEES||''-paymentFrecuency=''||:P1503_PAYMENT_TYPE||''-INCOME_CODE=''||:P1503_INCOME_CODES;',
'',
'',
':P402_PARAMATERS:=null;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P1503_SUPPRESS_DETAILS,P1503_ORGANISATION,P1503_EARNINGS_TYPE,P1503_ALL_EMPLOYEES,P1503_INCOME_CODES,P1503_SEARCH_OPTION,P1503_SEARCH_RESULTS, P1503_EARNINGS_PERIOD'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694122998934724456)
,p_event_id=>wwv_flow_imp.id(3694124461338724457)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P1503_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3699005802643824620)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
'',
'BEGIN',
'',
' IF :P1503_SEARCH_RESULTS is null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1503_SEARCH_RESULTS);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	Insert Into Tmp_Rpt_Parameter (Option_Name, Option_Value )',
'        values(:P1503_SEARCH_OPTION, l_selected(i));',
'',
'  END LOOP;  ',
'  ',
'     :P1503_SEARCH_RESULTS:=null;',
'',
'end if;',
'',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'     :P1503_SEARCH_RESULTS:=null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P1401_ORGANISATION'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'System successfully generated required data.'
,p_internal_uid=>3055811252864216352
);
wwv_flow_imp.component_end;
end;
/
