prompt --application/shared_components/user_interface/lovs/p_leave_type
begin
--   Manifest
--     P_LEAVE_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(661529930121252457)
,p_lov_name=>'P_LEAVE_TYPE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a , b from',
'(',
'select ''ALL'' a , 0 b from dual',
'union all',
'select  LEAVE_DESCRIPTION a , id b from HR_LV_LEAVETYPE ',
'where org_id=:APP_ORG_ID',
'and end_date is null',
'and PLANNED_OR_UNPLANNED=''PLANNED''',
')',
'order by a'))
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
