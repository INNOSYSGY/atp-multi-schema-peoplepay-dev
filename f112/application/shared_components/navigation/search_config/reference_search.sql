prompt --application/shared_components/navigation/search_config/reference_search
begin
--   Manifest
--     SEARCH CONFIG: Reference_Search
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
 p_id=>wwv_flow_imp.id(6388948302918950)
,p_label=>'Reference_Search'
,p_static_id=>'reference_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Referee'' Subtitle,',
'   (SELECT case when upper(sex_code)=''F'' then ''Ms. '' else ''Mr. '' end ||SURNAME||'', ''||NVL(FIRST_NAME,'''') FROM HR_RCM_INDIVIDUAL x WHERE x.ID=c.IND_ID)  ',
'   ||'' ''|| ''Effective Date:-''|| ref_date||'' ''|| b.REMARKS description,',
'     ''No.''||emp_company_no badge',
'from hr_rcm_individual a join HR_RCM_REFERENCE b on a.id=b.REFEREE_FOR',
'left outer join hr_rcm_employee c on a.id=c.ind_id',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)'))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-lock-user'
,p_version_scn=>45054068638042
);
wwv_flow_imp.component_end;
end;
/
