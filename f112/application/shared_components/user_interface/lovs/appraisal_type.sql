prompt --application/shared_components/user_interface/lovs/appraisal_type
begin
--   Manifest
--     APPRAISAL_TYPE
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
 p_id=>wwv_flow_imp.id(3251630277186007890)
,p_lov_name=>'APPRAISAL_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- done by Leo 20241018',
'select value_description a, table_value b',
'from table(pkg_global_fnts.get_lookup_value(''TBLAPPRAISALTYPE'')) a',
'where  org_id =:APP_ORG_SHR_DED',
'order by 1',
'',
'',
'-- select value_description a, table_value b',
'-- from HR_HCF_LOOKUP',
'-- WHERE table_NAME=''TBLAPPRAISALTYPE'' ',
'-- order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41836148435124
);
wwv_flow_imp.component_end;
end;
/
