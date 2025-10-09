prompt --application/shared_components/user_interface/lovs/tax_type
begin
--   Manifest
--     TAX_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3853793475260864587)
,p_lov_name=>'TAX_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct classification a ,classification  b',
'from table(pkg_global_fnts.get_lookup_value (''TBLTAXCODE''))',
'where verified_by is not null',
'and verified_date is not null',
'and trunc(start_period) <= trunc(current_date)  ',
'and (end_period is null or trunc(end_period) >= trunc(current_date))',
'AND ORG_ID = :APP_ORG_ID'))
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
