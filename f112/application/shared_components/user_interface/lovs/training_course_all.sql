prompt --application/shared_components/user_interface/lovs/training_course_all
begin
--   Manifest
--     TRAINING_COURSE_ALL
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
 p_id=>wwv_flow_imp.id(139483001389382605)
,p_lov_name=>'TRAINING_COURSE_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select course_name display, id return ',
'from hr_trn_course ',
'where pkg_global_fnts.fn_sharereforg(org_id) = :APP_ORG_SHR_DED'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPS'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
