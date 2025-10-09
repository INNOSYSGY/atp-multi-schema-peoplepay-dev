prompt --application/shared_components/user_interface/lovs/position_all_nosec
begin
--   Manifest
--     POSITION_ALL_NOSEC
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
 p_id=>wwv_flow_imp.id(666572440564559567)
,p_lov_name=>'POSITION_ALL_NOSEC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME a, b.id b',
'from HR_HCF_POSITION b JOIN HR_HCF_JOB J ON J.ID = B.JOB_ID ',
'WHERE PKG_GLOBAL_FNTS.FN_SHAREREFORG(J.ORG_ID) = :APP_ORG_SHR_DED',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPS'
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
