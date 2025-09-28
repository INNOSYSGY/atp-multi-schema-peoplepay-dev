prompt --application/shared_components/navigation/search_config/employee_offence_actions
begin
--   Manifest
--     SEARCH CONFIG: Employee_Offence_Actions
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(312394572458566963)
,p_label=>'Employee_Offence_Actions'
,p_static_id=>'employee_offence_actions'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Employee Offence Action Taken'' Subtitle,',
'    listagg(''Offence: ''||off.DESCRIPTION || '', Offence Class: ''|| disaction.offence_class || '', Action Taken: ''|| disaction.ACTION_DESCRIPTION || '', Action Start Date: '' || disemp.ACTION_START_DATE,''; '')',
'    within group(',
'     order by  SALUTATION|| '' ''||nvl(A.FIRST_NAME, '''')|| '' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from HR_RCM_INDIVIDUAL a join hr_rcm_employee C on a.id=C.IND_ID',
' join HR_GRI_DISCIPLINEEMP disemp on disemp.emp_id = c.id',
' join HR_GRI_DISCIPLINARYACTION disaction on disaction.ID = disemp.ACTION_TAKEN_ID',
' join HR_GRI_OFFENCE off on disemp.offence_id=off.ID',
' join HR_GRI_DISCIPLINE discipline ON disemp.DISCIPLINARIAN_EMP = discipline.DISCIPLINARIAN',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by disaction.ID,a.id,',
'    SALUTATION|| '' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no'))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-emoji-disappointed-relieved'
,p_version_scn=>45392649606602
);
wwv_flow_imp.component_end;
end;
/
