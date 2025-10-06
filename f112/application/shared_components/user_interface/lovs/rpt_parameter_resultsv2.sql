prompt --application/shared_components/user_interface/lovs/rpt_parameter_resultsv2
begin
--   Manifest
--     RPT_PARAMETER_RESULTSV2
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3185633308915573447)
,p_lov_name=>'RPT_PARAMETER_RESULTSV2'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1502_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select distinct initcap(upper(surname_hist||'''', ''''||nvl(first_name_hist,'''''''')||'''':- ''''||emp_company_no_hist)) display, x.emp_id return',
'    from pa_pmg_payrolldtl x join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'    join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'    where d.ID = :P1502_DEDUCTION_ENTITY',
'    and x.period_start =  :P1502_EARNINGS_PERIOD_START',
'    and x.payment_type_hist = :P1502_PAYMENT_TYPE',
'    and deduction_type=''''EMPLOYEE''''',
'    order by 1'';',
'',
'elsif  :P1502_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where exists (select 1',
'              from hr_rcm_employee j join pa_pmg_payrolldtl x on j.id=x.emp_id',
'              join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'              join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'              where j.orgdtl_id = m.id',
'              and D.ID = :P1502_DEDUCTION_ENTITY',
'              and x.period_start =  :P1502_EARNINGS_PERIOD_START',
'              and J.payment_type = :P1502_PAYMENT_TYPE',
'              and C.deduction_type=''''EMPLOYEE''''',
'              )',
'order by 1'';',
'',
'        ',
'elsif  :P1502_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION w',
'WHERE exists (select 1',
'              from pa_pmg_payrolldtl x join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'              join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'              where x.wklocation_id = w.id',
'              and d.ID = :P1502_DEDUCTION_ENTITY',
'              and x.period_start =  :P1502_EARNINGS_PERIOD_START',
'              and x.payment_type_hist = :P1502_PAYMENT_TYPE   ',
'              and deduction_type=''''EMPLOYEE''''',
'              )'';',
'',
'elsif  :P1502_SEARCH_OPTION=''EMPLOYMENT_CLASS'' then',
'return',
'''select initcap(VALUE_DESCRIPTION) display, ID return',
'from table(pkg_global_fnts.get_lookup_value(''''TBLEMPLOYMENTCLASS'''')) w',
'WHERE exists (select 1',
'              from pa_pmg_payrolldtl x join pa_pmg_payrolldeduction c on x.id =c.pay_slipno',
'              join Pa_Pcf_Deductioncode d on upper(d.expense_code) = upper(c.expense_code)',
'              join hr_rcm_employee emp on emp.id = x.emp_id',
'              where emp.employment_class_id = w.id',
'              and d.ID = :P1502_DEDUCTION_ENTITY',
'              and x.period_start = :P1502_EARNINGS_PERIOD_START',
'              and x.payment_type_hist = :P1502_PAYMENT_TYPE  ',
'              and deduction_type=''''EMPLOYEE''''',
'              )'';',
'',
'elsif  :P1502_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select distinct case when employment_type_id=1 then ''''Temporary''''',
'                     when employment_type_id=2 then ''''Permanent''''',
'                     else ''''Other'''' end display',
'        ,employment_type_id return',
'        from vw_EmpEarn g',
'        where g.start_date = :P1502_EARNINGS_PERIOD_START',
'        and g.payment_type = :P1502_PAYMENT_TYPE '';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
