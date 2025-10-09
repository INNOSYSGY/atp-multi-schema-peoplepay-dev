prompt --application/shared_components/user_interface/lovs/p_report_org
begin
--   Manifest
--     P_REPORT_ORG
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
 p_id=>wwv_flow_imp.id(3854273766991521238)
,p_lov_name=>'P_REPORT_ORG'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID B',
'FROM HR_HCF_ORGANISATION A',
'WHERE EXISTS (',
'    SELECT 1',
'    FROM HR_RCM_EMPLOYEE B',
'    WHERE A.ID = B.ORG_ID',
')',
'AND A.ID = :APP_ORG_ID',
'ORDER BY 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>45073030375118
);
wwv_flow_imp.component_end;
end;
/
