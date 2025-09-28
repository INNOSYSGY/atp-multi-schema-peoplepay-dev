prompt --application/shared_components/user_interface/lovs/p_quotation
begin
--   Manifest
--     P_QUOTATION 
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632449397540335677)
,p_lov_name=>'P_QUOTATION '
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select reference_no ||''-''|| initcap(a.description) b, a.rfq_id id',
'from tblquotation a',
'WHERE ORG_id = :APP_ORG_ID',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'B'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
