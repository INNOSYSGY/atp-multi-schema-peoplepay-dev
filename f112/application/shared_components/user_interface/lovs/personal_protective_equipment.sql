prompt --application/shared_components/user_interface/lovs/personal_protective_equipment
begin
--   Manifest
--     PERSONAL_PROTECTIVE_EQUIPMENT
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
 p_id=>wwv_flow_imp.id(3162439866218688440)
,p_lov_name=>'PERSONAL_PROTECTIVE_EQUIPMENT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description,id',
'from table(pkg_global_fnts.get_lookup_value(''TBLEPPE'')) a',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'VALUE_DESCRIPTION'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
