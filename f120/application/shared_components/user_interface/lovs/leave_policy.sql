prompt --application/shared_components/user_interface/lovs/leave_policy
begin
--   Manifest
--     LEAVE_POLICY
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
 p_id=>wwv_flow_imp.id(657731816652501352)
,p_lov_name=>'LEAVE_POLICY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(lv_policy_code) || ''-'' || initcap(lv_policy_name) d, id r',
'from hr_lv_leavepolicy',
'where org_id = :APP_ORG_ID',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
