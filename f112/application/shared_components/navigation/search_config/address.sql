prompt --application/shared_components/navigation/search_config/address
begin
--   Manifest
--     SEARCH CONFIG: address
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
 p_id=>wwv_flow_imp.id(6369606484594280)
,p_label=>'address'
,p_static_id=>'address'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'SQL'
,p_query_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  b.id,',
'SALUTATION||'' ''||nvl(A.FIRST_NAME, '''')||'' ''||INITCAP(A.SURNAME) title,',
'''Address'' Subtitle,',
'trim(pkg_global_fnts.fn_Address(''HOME'', a.id , ''FULL'', current_date)) description,',
'''No.''||emp_company_no badge',
'FROM  HR_RCM_INDIVIDUAL A join hr_rcm_address b on a.id = b.ind_id',
'left outer JOIN hr_rcm_employee C ON A.ID =C.IND_ID',
'where ind_org_id = :APP_ORG_ID',
'and c.date_separated is null',
'and exists (select 1',
'            from vw_useraccess ua',
'            where ua.org_id = c.org_id',
'            and ua.employment_class_id = c.employment_class_id',
'            and ua.payment_type = c.payment_type)',
'            '))
,p_searchable_columns=>'TITLE:SUBTITLE:BADGE:ID'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_subtitle_column_name=>'SUBTITLE'
,p_description_column_name=>'DESCRIPTION'
,p_badge_column_name=>'BADGE'
,p_icon_source_type=>'STATIC_CLASS'
,p_icon_css_classes=>'fa-home'
,p_version_scn=>45054070815419
);
wwv_flow_imp.component_end;
end;
/
