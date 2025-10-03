prompt --application/shared_components/navigation/search_config/qualifications
begin
--   Manifest
--     SEARCH CONFIG: Qualifications
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(6388744901916266)
,p_label=>'Qualifications'
,p_static_id=>'qualifications'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,',
'   Initcap(b.COUNTRY_CODE) ||'' ''||b.Q_LEVEL ||'' from ''||b.EXAM_BODY||'' ''|| b.Q_YEAR ||'' ( ''||b.SCHOOL_CODE||'')'' Subtitle,',
'    listagg( b.SUBJECT_COURSE||'' ''||b.GRADE_ATTAINED,''; ''',
'     )within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from hr_rcm_individual a join HR_RCM_QUALIFICATION b on b.ind_id=a.id',
'left outer join hr_rcm_employee c on a.id=c.ind_id',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by b.COUNTRY_CODE,b.Q_LEVEL,b.EXAM_BODY,b.SCHOOL_CODE, b.Q_YEAR,a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no'))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-graduation-cap'
,p_version_scn=>45054068541420
);
wwv_flow_imp.component_end;
end;
/
