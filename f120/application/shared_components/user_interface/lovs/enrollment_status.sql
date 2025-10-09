prompt --application/shared_components/user_interface/lovs/enrollment_status
begin
--   Manifest
--     ENROLLMENT_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(666851289300066210)
,p_lov_name=>'ENROLLMENT_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM',
'(select ''Keyed'' DISPLAY, ''KEYED'' RETURN',
'from dual',
'union ',
'select ''Approved'' DISPLAY, ''APPROVED'' RETURN',
'from dual',
'union ',
'select ''Verified'' DISPLAY, ''VERIFIED'' RETURN',
'from dual',
'union ',
'select ''Cancelled'' DISPLAY, ''CANCELLED'' RETURN',
'from dual',
')',
'ORDER BY DISPLAY',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPS'
,p_return_column_name=>'RETURN'
,p_display_column_name=>'DISPLAY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
