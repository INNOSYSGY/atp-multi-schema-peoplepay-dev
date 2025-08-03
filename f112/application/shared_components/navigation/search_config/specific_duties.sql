prompt --application/shared_components/navigation/search_config/specific_duties
begin
--   Manifest
--     SEARCH CONFIG: Specific_Duties
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
 p_id=>wwv_flow_imp.id(6389595700925775)
,p_label=>'Specific_Duties'
,p_static_id=>'specific_duties'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Specific Duties'' Subtitle,',
'    listagg( ''Responsibility Details'' || '' '' || RESPONSIBILITY_DETAIL || '' '' || ''Start Date:'' || '' '' || START_DATE, ''; ''',
'     )within group(',
'     order by  SALUTATION|| '' ''||nvl(A.FIRST_NAME, '' '') || '' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge  ',
'from hr_rcm_individual a join hr_rcm_employee c on a.id=c.ind_id',
'join HR_RCM_EMPRESPONSIBILITY b on c.id =b.emp_id ',
'where ind_org_id = :APP_ORG_ID',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by RESPONSIBILITY_CODE, a.id,',
' SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME), emp_company_no',
'',
''))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-tasks'
,p_version_scn=>41799874517404
);
wwv_flow_imp.component_end;
end;
/
