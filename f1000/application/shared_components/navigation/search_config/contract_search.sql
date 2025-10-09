prompt --application/shared_components/navigation/search_config/contract_search
begin
--   Manifest
--     SEARCH CONFIG: Contract_Search
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(534061747304045892)
,p_label=>'Contract_Search'
,p_static_id=>'contract_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Employee Contract'' Subtitle,',
'    listagg(''Funding Agency: '' || org.ORGANISATION_NAME || '', Project: ''|| empcontract.PROJECT_ID || '', Managed By: '' || empcontract.MANAGED_BY || '', Annual Salary: '' || to_char(empcontract.ANNUAL_SALARY, ''$999,999,999.99'')|| '', Start Date: '' || empc'
||'ontract.START_DATE,''; '')',
'    within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from HR_RCM_INDIVIDUAL a join hr_rcm_employee C on a.id=C.IND_ID',
'join HR_RCM_EMPCONTRACT empcontract on C.ID=empcontract.EMP_ID',
'join hr_hcf_organisation org on org.ID = to_number(empcontract.FUNDINGDETAIL_ID)',
'where ind_org_id = :APP_ORG_ID',
'and empcontract.start_date <= current_date',
'and (empcontract.end_date is null or empcontract.end_date > current_date)',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by empcontract.emp_ID,a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no'))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-file-signature'
,p_version_scn=>45392631178734
);
wwv_flow_imp.component_end;
end;
/
