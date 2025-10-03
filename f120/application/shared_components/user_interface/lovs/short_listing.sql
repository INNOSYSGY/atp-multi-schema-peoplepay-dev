prompt --application/shared_components/user_interface/lovs/short_listing
begin
--   Manifest
--     SHORT_LISTING
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2971090756704726963)
,p_lov_name=>'SHORT_LISTING'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  pos.position_name||'' Applicant Type: ''||APPLICANT_TYPE||'', Shorted No.:''||EXPECTED_SHORT_LIST||''(''||APPLICATION_START||'' to ''||APPLICATION_END||'') for ''||',
'unit_name||'' at ''||wkloc.location_description a,a.id b',
'from HR_HCF_JOBOPENING a join hr_hcf_position pos on pos.id= a.position_id',
'join hr_hcf_orgstructuredtl orgdtl on orgdtl.id =pos.orgdtl_id',
'join hr_hcf_worklocation wkloc on wkloc.id = pos.def_work_location_id',
'where wkloc.org_id=:APP_ORG_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_default_sort_column_name=>'A'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
