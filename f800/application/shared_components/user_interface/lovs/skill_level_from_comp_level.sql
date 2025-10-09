prompt --application/shared_components/user_interface/lovs/skill_level_from_comp_level
begin
--   Manifest
--     SKILL_LEVEL_FROM_COMP_LEVEL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3382000446649236597)
,p_lov_name=>'SKILL_LEVEL_FROM_COMP_LEVEL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    A.DESCRIPTION || ''['' || A.COMP_LEVEL || '']'' A, A.ID B',
'FROM ',
'    HR_HCF_COMPETENCYLVL A',
'    JOIN HR_HCF_COMPETENCY B ON A.COMPETENCY_ID = B.ID',
'WHERE ',
'    B.ORG_ID = :APP_ORG_SHR_DED',
'    AND (A.END_DATE IS NULL OR A.END_DATE >= TRUNC(current_date))'))
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
