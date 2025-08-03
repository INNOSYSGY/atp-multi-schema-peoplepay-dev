prompt --application/shared_components/user_interface/lovs/month_char
begin
--   Manifest
--     MONTH_CHAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3297289974291543439)
,p_lov_name=>'MONTH_CHAR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(to_date(n,''MM''),''MONTH'') name,trim(to_char(to_date(n,''MM''),''MONTH'')) id',
'from(',
'select level as n from dual connect by level <=12',
')b ',
'ORDER BY N asc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
