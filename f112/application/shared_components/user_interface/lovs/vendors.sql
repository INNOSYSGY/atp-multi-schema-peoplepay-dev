prompt --application/shared_components/user_interface/lovs/vendors
begin
--   Manifest
--     VENDORS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3184412135449245942)
,p_lov_name=>'VENDORS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(initcap(surname||'', ''||first_name)||'' DOB ''||trunc(dob)||''(''||Sex_code||'')'') Ind_name, to_number(vendor_id) vendor_id',
'from hr_rcm_individual',
'where vendor_id is not null',
'union',
'select to_char(initcap(organisation_name)) organisation_name,  to_number(vendor_id) vendor_id',
'from hr_hcf_organisation',
'where vendor_id is not null',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'VENDOR_ID'
,p_display_column_name=>'IND_NAME'
,p_default_sort_column_name=>'IND_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
