prompt --application/shared_components/navigation/search_config/natidentifier_search
begin
--   Manifest
--     SEARCH CONFIG: Natidentifier_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(533939089372261616)
,p_label=>'Natidentifier_Search'
,p_static_id=>'natidentifier_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''National Identifiers'' Subtitle,',
'    listagg(ID_TYPE ||'':-''||id_number||'' Issued:- ''|| ISSUE_DATE||'' Expire:-''||END_DATE,''; ''',
'     )within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from hr_rcm_individual a join HR_RCM_NATIDENTIFIER b on b.ind_id=a.id',
'left outer join hr_rcm_employee c on a.id=c.ind_id',
'where ind_org_id = :APP_ORG_ID',
'and b.start_date <= current_date',
'and (b.end_date is null or b.end_date > current_date)',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by emp_company_no,a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)'))
,p_searchable_columns=>'TITLE:DESCRIPTION:BADGE:SUBTITLE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-id-card-o'
,p_version_scn=>45392674877331
);
wwv_flow_imp.component_end;
end;
/
