prompt --application/shared_components/user_interface/lovs/team_investigator
begin
--   Manifest
--     TEAM_INVESTIGATOR
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
 p_id=>wwv_flow_imp.id(3770203809049571460)
,p_lov_name=>'TEAM_INVESTIGATOR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, id from HR_HS_TEAMMANAGERHD',
'where org_id=:APP_ORG_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
