prompt --application/shared_components/navigation/search_config/salary_search
begin
--   Manifest
--     SEARCH CONFIG: Salary_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(6389388258923340)
,p_label=>'Salary_Search'
,p_static_id=>'salary_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'   SALUTATION||'' ''||nvl(FIRST_NAME, '''') ||'' ''|| INITCAP(SURNAME) title,   ',
' ''Salary Info:- Req hrs:'' ||hours_worked || '', Req Dys: ''|| num_working_days ||'' '' ||initcap(replace(compute_gross,''_'','' '')) subtitle,',
'  listagg(salary_currency|| '' Annual:-'' ||to_char(annual_salary,''$999,999,999.999'') || '' '' ||initcap(a.payment_type)|| '':- '' ||to_char( personal_rate,''$999,999,999.999'')|| '' Effective:-'' || b.start_date,''; ''',
'     )within group(',
'     order by  b.start_date desc) as Description,',
'      ''No.''||emp_company_no badge',
'from hr_rcm_individual ind join hr_rcm_employee a on ind.id = a.ind_id',
'join hr_rcm_salary b on a.id = b.emp_id',
'join Hr_Att_Shift_Rota c on c.id = a.shift_id',
'where a.org_id = :APP_ORG_ID',
'and a.date_separated is null',
'and b.start_date <= current_date',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = a.org_id',
'            and ua.employment_class_id = a.employment_class_id',
'            and ua.payment_type = a.payment_type)',
'group by emp_company_no, a.id, full_name,a.employment_class,Position_name,compute_gross, hours_worked,num_working_days,SALUTATION,FIRST_NAME,SURNAME'))
,p_searchable_columns=>'DESCRIPTION:BADGE:TITLE:SUBTITLE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-money'
,p_version_scn=>45054068896629
);
wwv_flow_imp.component_end;
end;
/
