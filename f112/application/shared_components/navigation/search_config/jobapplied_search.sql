prompt --application/shared_components/navigation/search_config/jobapplied_search
begin
--   Manifest
--     SEARCH CONFIG: Jobapplied_Search
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
 p_id=>wwv_flow_imp.id(6387722916897411)
,p_label=>'Jobapplied_Search'
,p_static_id=>'jobapplied_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Job Applied For'' subtitle,',
'    listagg( Initcap(b.POSITION_NAME)||'' Date Applied:-''||DATE_APPLIED,''; ''',
'     )within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||application_no badge',
'from hr_rcm_individual a join hr_apl_jobrequest b on b.applicant_id = a.id',
'left outer join hr_rcm_employee c on a.id = c.ind_id',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by application_no,a.id, SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)',
'union',
'select distinct b.id,',
'    SALUTATION||'' ''||nvl(b.FIRST_NAME, '''')||'' ''||INITCAP(b.SURNAME) title,   ',
'    ''Job Applied For'' subtitle,',
'    listagg( Initcap(a.POSITION_NAME)||'' Date Applied:-''||DATE_APPLIED,''; ''',
'     )within group(',
'     order by  SALUTATION||'' ''||nvl(b.FIRST_NAME, '''')||'' ''||INITCAP(b.SURNAME)) as Description,',
'     ''No.''||application_no  badge',
'from HR_APL_JOBREQUEST a  join hr_apl_individual b on b.id=a.applicant_id',
'join hr_hcf_position pos on a.position_id = pos.id',
'group by application_no, b.id, SALUTATION||'' ''||nvl(b.FIRST_NAME, '''')||'' ''||INITCAP(b.SURNAME)'))
,p_searchable_columns=>'TITLE:DESCRIPTION:BADGE:SUBTITLE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-heat-map'
,p_version_scn=>45054067752351
);
wwv_flow_imp.component_end;
end;
/
