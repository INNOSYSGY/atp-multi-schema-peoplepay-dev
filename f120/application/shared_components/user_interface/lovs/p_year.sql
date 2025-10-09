prompt --application/shared_components/user_interface/lovs/p_year
begin
--   Manifest
--     P_YEAR
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854273524780521238)
,p_lov_name=>'P_YEAR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n id,n name',
'from(',
'select level as n from dual connect by level <=to_char(current_date,''YYYY'')+5',
')b where n between to_char(current_date,''YYYY'')-5 and to_char(current_date,''YYYY'')+2',
'ORDER BY N DESC'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'NAME'
,p_display_column_name=>'ID'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
