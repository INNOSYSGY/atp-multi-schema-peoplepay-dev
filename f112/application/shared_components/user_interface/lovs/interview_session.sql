prompt --application/shared_components/user_interface/lovs/interview_session
begin
--   Manifest
--     INTERVIEW_SESSION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2668077967314135908)
,p_lov_name=>'INTERVIEW_SESSION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INTERVIEW_SESSION_NAME||'' Time:-''||to_char(DATE_INTERVIEWED,''DD-MON-YYYY HH:MIAM'') DATE_INTERVIEW,c.Description,a.id',
'from hr_inv_session a join Hr_Inv_jobConfig b on b.id = a.position_config_id',
'join hr_hcf_job c on c.id =b.job_id',
'where a.org_id=:APP_ORG_ID',
'order by c.Description'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'DATE_INTERVIEW'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2668081675440158812)
,p_query_column_name=>'DATE_INTERVIEW'
,p_heading=>'Date Interview'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2668079345349143037)
,p_query_column_name=>'DESCRIPTION'
,p_heading=>'Description'
,p_display_sequence=>11
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(2668082073359158812)
,p_query_column_name=>'ID'
,p_display_sequence=>20
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp.component_end;
end;
/
