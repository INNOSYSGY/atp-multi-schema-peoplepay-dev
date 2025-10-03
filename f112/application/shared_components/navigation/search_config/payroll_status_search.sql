prompt --application/shared_components/navigation/search_config/payroll_status_search
begin
--   Manifest
--     SEARCH CONFIG: Payroll_Status_Search
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
 p_id=>wwv_flow_imp.id(6388544196914488)
,p_label=>'Payroll_Status_Search'
,p_static_id=>'payroll_status_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  A.id,',
'SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,',
'''Employee Payroll Status'' subtitle,',
'''Include Payroll: ''|| case when include_payroll=''Y'' then ''Yes'' Else ''No'' end || '';'' || '' Effective Date: '' || payroll_effective description,',
'''No.''||emp_company_no badge',
'FROM  HR_RCM_INDIVIDUAL A JOIN hr_rcm_employee C ON A.ID =C.IND_ID',
'where ind_org_id = :APP_ORG_ID ',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
''))
,p_searchable_columns=>'TITLE:SUBTITLE:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-badge-check'
,p_version_scn=>45054068461039
,p_condition_type=>'NEVER'
);
wwv_flow_imp.component_end;
end;
/
