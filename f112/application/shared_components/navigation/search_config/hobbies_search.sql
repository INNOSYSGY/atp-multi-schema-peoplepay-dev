prompt --application/shared_components/navigation/search_config/hobbies_search
begin
--   Manifest
--     SEARCH CONFIG: Hobbies_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(6387323650892732)
,p_label=>'Hobbies_Search'
,p_static_id=>'hobbies_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Hobbies/NGOs'' subtitle,',
'    listagg(hobbies||'' at ''||LOCATION||''(''||initcap(HOW_FREQUENT_INVOLVE)||'') Started ''|| DATE_STARTED ,''; ''',
'     )within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from hr_rcm_individual a join HR_RCM_HOBBY b on b.ind_id=a.id',
'left outer join hr_rcm_employee c on a.id=c.ind_id',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and b.DATE_STARTED <= current_date',
'and (b.DATE_STOPPED is null or b.DATE_STOPPED > current_date)and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by emp_company_no,a.id, SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)'))
,p_searchable_columns=>'TITLE:DESCRIPTION:BADGE:SUBTITLE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_icon_source_type=>'INITIALS'
,p_version_scn=>45054067572766
);
wwv_flow_imp.component_end;
end;
/
