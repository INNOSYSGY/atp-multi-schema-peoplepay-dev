prompt --application/shared_components/navigation/search_config/workstint_search_002
begin
--   Manifest
--     SEARCH CONFIG: Workstint_Search
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
 p_id=>wwv_flow_imp.id(135902344333328018)
,p_label=>'Workstint_Search'
,p_static_id=>'workstint_search3'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct c.id,',
'    SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,   ',
'   initcap(employment_status)||'' ''||initcap(PAYMENT_TYPE) ||'' ''|| initcap(EMPLOYMENT_CLASS)||'' Employed:'' || DATE_EMPLOYED ||'' Date Separated: ''||date_separated Subtitle,',
'   ORG_STRUCTURE||'', ''||POSITION_NAME Description,',
'     ''No.''||emp_company_no badge',
'from hr_rcm_individual a join hr_rcm_employee c on a.id=c.ind_id',
'',
''))
,p_searchable_columns=>'TITLE:SUBTITLE:DESCRIPTION:BADGE'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-user-magnifying-glass'
,p_reference_id=>74472159431944834
);
wwv_flow_imp.component_end;
end;
/
