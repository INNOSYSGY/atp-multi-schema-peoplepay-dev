prompt --application/shared_components/user_interface/lovs/parant_value_licence
begin
--   Manifest
--     PARANT_VALUE_LICENCE
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
 p_id=>wwv_flow_imp.id(3046307111267834356)
,p_lov_name=>'PARANT_VALUE_LICENCE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''|| LICENSE_LEVEL||'' ''|| LOOKUP_VALUE, ID',
'from',
'hr_rcm_empdocument;',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'''LEVEL:''||LICENSE_LEVEL||''''||LOOKUP_VALUE'
,p_default_sort_column_name=>'''LEVEL:''||LICENSE_LEVEL||''''||LOOKUP_VALUE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
