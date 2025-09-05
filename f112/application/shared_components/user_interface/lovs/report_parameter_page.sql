prompt --application/shared_components/user_interface/lovs/report_parameter_page
begin
--   Manifest
--     REPORT_PARAMETER_PAGE
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
 p_id=>wwv_flow_imp.id(3181847312491982012)
,p_lov_name=>'REPORT_PARAMETER_PAGE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Global Payroll Parameter''  page_name, 1501 page_id',
'from DUAL',
'UNION',
'select ''Global Remittance Parameter''  page_name, 1502 page_id',
'from DUAL',
'UNION',
'select ''Global Parameters''  page_name, 402 page_id',
'from DUAL',
'UNION',
'select ''Global Time Clock Parameters''  page_name, 176 page_id',
'from DUAL'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'PAGE_ID'
,p_display_column_name=>'PAGE_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'PAGE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
