prompt --application/shared_components/navigation/search_config/payroll_income_search
begin
--   Manifest
--     SEARCH CONFIG: Payroll_Income_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(456854587772525344)
,p_label=>'Payroll_Income_Search'
,p_static_id=>'payroll_income_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.id,',
'    NVL(A.FIRST_NAME_HIST, '''') || '' '' || INITCAP(A.SURNAME_HIST) AS TITLE,',
'    ''No.'' || emp_company_no_hist AS badge,',
'    ''Pay Period: '' || a.period_start AS SUBTITLE,',
'    ''Income Code:- '' || listagg(inc.INCOME_CODE || '' '' || chr(13) || chr(10) || ''Amount:- '' || TO_CHAR(inc.income_amount, ''$999,999,999.99''),''; '') ',
'    within group (',
'        order by   NVL(A.FIRST_NAME_HIST, '''') || '' '' || INITCAP(A.SURNAME_HIST)  ) AS DESCRIPTION ',
'FROM',
'    PA_PMG_PAYROLLDTL A  join pa_pcf_earningperiod c on c.id = a.earnings_period_id',
'    join PA_PMG_PAYROLLINCOME inc ON a.id = inc.PAY_SLIPNO',
'       where exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by a.id, a.period_start,NVL(A.FIRST_NAME_HIST, '''') || '' '' || INITCAP(A.SURNAME_HIST),emp_company_no_hist            '))
,p_searchable_columns=>'TITLE:BADGE:DESCRIPTION:SUBTITLE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>45044616694486
);
wwv_flow_imp.component_end;
end;
/
