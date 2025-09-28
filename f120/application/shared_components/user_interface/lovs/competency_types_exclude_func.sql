prompt --application/shared_components/user_interface/lovs/competency_types_exclude_func
begin
--   Manifest
--     COMPETENCY_TYPES_EXCLUDE_FUNC
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
 p_id=>wwv_flow_imp.id(3159892325362453170)
,p_lov_name=>'COMPETENCY_TYPES_EXCLUDE_FUNC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    VALUE_DESCRIPTION A, TABLE_VALUE B',
'FROM',
'    HR_HCF_LOOKUP',
'WHERE ',
'    TABLE_NAME = ''TBLCOMPETENCYTYPE''',
'    AND ORG_ID = :APP_ORG_SHR_DED',
'    AND TABLE_VALUE not in (''F'', ''G'')'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'A'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
