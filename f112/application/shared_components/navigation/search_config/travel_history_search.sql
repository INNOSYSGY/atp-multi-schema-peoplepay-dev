prompt --application/shared_components/navigation/search_config/travel_history_search
begin
--   Manifest
--     SEARCH CONFIG: Travel_History_Search
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
 p_id=>wwv_flow_imp.id(6389987880983970)
,p_label=>'Travel_History_Search'
,p_static_id=>'travel_history_search'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'    ''Travel History'' Subtitle,',
'    listagg(''Destination: '' || travhist.DESTINATION || '', Purpose: ''|| travhist.PURPOSE || '', Travel Date: '' || travhist.TRAVEL_DATE|| '', Return Date: '' || travhist.RETURN_DATE,''; '')',
'    within group(',
'     order by  SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME)) as Description,',
'     ''No.''||emp_company_no badge',
'from HR_RCM_INDIVIDUAL a join hr_rcm_employee C on a.id=C.IND_ID',
'join HR_RCM_TRAVELHISTORY travhist on C.ID=travhist.EMP_ID',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'group by travhist.emp_ID,a.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) ,emp_company_no',
' '))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-plane'
,p_version_scn=>45054070154684
);
wwv_flow_imp.component_end;
end;
/
