prompt --application/shared_components/user_interface/lovs/course_structure_all
begin
--   Manifest
--     COURSE_STRUCTURE_ALL
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
 p_id=>wwv_flow_imp.id(139015006489197766)
,p_lov_name=>'COURSE_STRUCTURE_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    a.structure_type||''(''|| structure_no||'') ''||structure_name a, A.ID',
'FROM    ',
'    hr_trn_course_structure A ',
'    join hr_trn_course b on b.id = a.course_id',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'A'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
