prompt --application/shared_components/navigation/search_config/individual_search
begin
--   Manifest
--     SEARCH CONFIG: Individual_Search
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
 p_id=>wwv_flow_imp.id(533938709498256707)
,p_label=>'Individual_Search'
,p_static_id=>'individual_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT  a.id,',
'  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||case when middle_name is null then '''' else middle_name end ||'' ''||',
'  INITCAP(A.SURNAME) title,',
'  ''DOB:''||nvl(to_char(dob,''DD-MON-YY''),'''')||'' ( Age:''||pkg_global_fnts.fn_calcage(dob,current_date)||'' ''||nvl(case when SEX_CODE=''F'' then ''Female'' else ''Male'' end,'''')||'')'' Subtitle, ',
'   case when marital_code is null then  NATIONALITY',
'            else marital_code||'' ''||NATIONALITY',
'        end ||'' (''||CELL_PHONE||case when WORK_PHONE is null then '')'' else '', ''||WORK_PHONE||'')'' end',
'        ||case when RELIGION is null then '''' else '' Religion:''||RELIGION end Description,',
'   ''No.''||emp_company_no badge',
'FROM  HR_RCM_INDIVIDUAL A left outer join hr_rcm_employee b on a.id = b.ind_id',
'where ind_org_id= :APP_ORG_ID ',
'and b.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = b.org_id',
'            and ua.employment_class_id = b.employment_class_id',
'            and ua.payment_type = b.payment_type)',
'',
'',
'             '))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-user-check'
,p_version_scn=>45392674586906
);
wwv_flow_imp.component_end;
end;
/
