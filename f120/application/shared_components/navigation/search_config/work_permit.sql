prompt --application/shared_components/navigation/search_config/work_permit
begin
--   Manifest
--     SEARCH CONFIG: Work_Permit
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(312398250416671510)
,p_label=>'Work_Permit'
,p_static_id=>'work_permit'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Work Permits'' Subtitle,',
'    listagg(''Remarks: '' || permit.REMARKS || '' Period Start: '' || permit.PERIOD_START|| CASE WHEN permit.PERIOD_END IS NOT NULL THEN '' Period End: '' || permit.PERIOD_END ELSE '''' END,''; '' )',
'       within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from HR_RCM_INDIVIDUAL a join hr_rcm_employee C on a.id=C.IND_ID',
'join HR_RCM_EMPWORKPERMIT permit on C.ID=permit.EMP_ID',
'where ind_org_id = :APP_ORG_ID',
'and PERIOD_START <= current_date',
'and (permit.PERIOD_end is null or PERIOD_end > current_date)',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by permit.ID,a.id,',
'    SALUTATION|| '' '' || nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no',
'',
'',
''))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-briefcase'
,p_version_scn=>45392677491882
);
wwv_flow_imp.component_end;
end;
/
