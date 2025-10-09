prompt --application/shared_components/navigation/search_config/alternate_roles_search
begin
--   Manifest
--     SEARCH CONFIG: Alternate_Roles_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(533780182132892224)
,p_label=>'Alternate_Roles_Search'
,p_static_id=>'alternate_roles_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Alternate Roles'' Subtitle,',
'    listagg(''Responsibility: '' || altjob.Responsibility || '' Work Location:'' || locadesc.LOCATION_DESCRIPTION || '' Start Date '' || altjob.DATE_START, ''; '')',
'    within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from HR_RCM_INDIVIDUAL a join hr_rcm_employee C on a.id=C.IND_ID',
'join HR_RCM_ALT_POSIT_LOC altjob on C.ID=altjob.EMP_ID',
'join HR_HCF_WORKLOCATION locadesc on locadesc.id = locadesc.ID',
'where ind_org_id = :APP_ORG_ID',
'and date_start <= current_date',
'and c.date_separated is null',
'and (altjob.date_end is null or date_end > current_date)',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by altjob.ID,a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no'))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-tasks-alt'
,p_version_scn=>45392631012134
);
wwv_flow_imp.component_end;
end;
/
