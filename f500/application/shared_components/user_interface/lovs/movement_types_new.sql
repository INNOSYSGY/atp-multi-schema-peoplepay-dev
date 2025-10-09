prompt --application/shared_components/user_interface/lovs/movement_types_new
begin
--   Manifest
--     MOVEMENT_TYPES_NEW
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
 p_id=>wwv_flow_imp.id(3762206909740043094)
,p_lov_name=>'MOVEMENT_TYPES_NEW'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A,VALUE_DESCRIPTION, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLMOVEMENT'')) X',
'WHERE exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = x.org_id)',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'VALUE_DESCRIPTION'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3762208343952055433)
,p_query_column_name=>'B'
,p_heading=>'B'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
