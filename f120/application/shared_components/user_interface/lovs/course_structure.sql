prompt --application/shared_components/user_interface/lovs/course_structure
begin
--   Manifest
--     COURSE_STRUCTURE
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
 p_id=>wwv_flow_imp.id(3333742585845308134)
,p_lov_name=>'COURSE_STRUCTURE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT     a.structure_type||''(''|| structure_no||'') ''||structure_name a, A.ID',
'FROM  hr_trn_course_structure A join hr_trn_course b on b.id = a.course_id',
'where b.org_id =:APP_ORG_ID'))
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
