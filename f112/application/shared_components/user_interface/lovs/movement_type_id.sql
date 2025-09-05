prompt --application/shared_components/user_interface/lovs/movement_type_id
begin
--   Manifest
--     MOVEMENT_TYPE_ID
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
 p_id=>wwv_flow_imp.id(3192440039858301601)
,p_lov_name=>'MOVEMENT_TYPE_ID'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   select  UPPER(VALUE_DESCRIPTION) B, ID A',
'    from table(pkg_global_fnts.get_lookup_value(''TBLMOVEMENT'')) X',
'    WHERE ',
'    exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = x.org_id',
'            )',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'A'
,p_display_column_name=>'B'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
