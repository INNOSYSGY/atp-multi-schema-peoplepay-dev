prompt --application/shared_components/user_interface/lovs/training_program_r_code
begin
--   Manifest
--     TRAINING_PROGRAM_R_CODE
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
 p_id=>wwv_flow_imp.id(445186419600944707)
,p_lov_name=>'TRAINING_PROGRAM_R_CODE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(PROGRAM_NAME) D, program_code R',
'from HR_TRN_PROGRAM',
'where pkg_global_fnts.fn_sharereforg(org_id) =:APP_ORG_SHR_DED',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPS'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
