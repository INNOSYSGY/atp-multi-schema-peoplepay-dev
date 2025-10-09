prompt --application/shared_components/user_interface/lovs/payroll_search_options
begin
--   Manifest
--     PAYROLL_SEARCH_OPTIONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854284988467521263)
,p_lov_name=>'PAYROLL_SEARCH_OPTIONS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1501_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(Surname_hist||'''', ''''||nvl(First_Name_hist,'''''''')||'''':- ''''||Emp_Company_No_hist)) a, emp_id',
'from pa_pmg_PayrollDtl ',
'where Earnings_period_id =:P1501_EARNINGS_PERIOD',
'order by 1'';',
'',
'end if;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
