prompt --application/shared_components/navigation/search_config/payroll_summary_search
begin
--   Manifest
--     SEARCH CONFIG: payroll_summary_search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(577688362040161382)
,p_label=>'payroll_summary_search'
,p_static_id=>'payroll_summary_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a.id,',
'    NVL(A.FIRST_NAME_HIST, '''') || '' '' || INITCAP(A.SURNAME_HIST) AS TITLE,',
'    ''No.'' || emp_company_no_hist AS badge,',
'    ''Pay Period/Paylip No: '' || a.period_start||''/''||a.id AS SUBTITLE,',
'    ''Employee Detail:- Employment Class- ''||initcap(employment_class_hist)||'', Payment Type- ''||initcap(payment_type_hist)||'', Compute Gross- ''||replace(initcap(c.compute_gross),''_'','' '') DESCRIPTION,',
'    ''Income Summary:- Gross Taxable-''|| to_char(gross_taxable, ''$999,999,999.99'') ||'' Gross NonTaxable-''||to_char(gross_nontaxable, ''$999,999,999.99'') AS custom1,',
'    ''Deduction Summary:- Total Deduction ''|| to_char(total_deduction, ''$999,999,999.99'') AS custom2,',
'    ''NetPay:- ''|| to_char(net_pay, ''$999,999,999.99'')  AS custom3',
'FROM',
'    PA_PMG_PAYROLLDTL A  join pa_pcf_earningperiod c on c.id = a.earnings_period_id',
'       where exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'          '))
,p_searchable_columns=>'TITLE:BADGE:DESCRIPTION:SUBTITLE:CUSTOM1:CUSTOM2:CUSTOM3'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_custom_01_column_name=>'CUSTOM1'
,p_custom_02_column_name=>'CUSTOM2'
,p_custom_03_column_name=>'CUSTOM3'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>45044685442061
);
wwv_flow_imp.component_end;
end;
/
