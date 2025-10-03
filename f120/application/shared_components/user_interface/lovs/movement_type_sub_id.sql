prompt --application/shared_components/user_interface/lovs/movement_type_sub_id
begin
--   Manifest
--     MOVEMENT_TYPE_SUB_ID
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
 p_id=>wwv_flow_imp.id(3479792441524186312)
,p_lov_name=>'MOVEMENT_TYPE_SUB_ID'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select VALUE_DESCRIPTION B, id A',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id)',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
