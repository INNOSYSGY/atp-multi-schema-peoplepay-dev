prompt --application/shared_components/user_interface/lovs/interview
begin
--   Manifest
--     INTERVIEW
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
 p_id=>wwv_flow_imp.id(3194339310838149682)
,p_lov_name=>'INTERVIEW'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P2006_ID IS NULL then',
'return ',
'    ''select A.ID, INTERVIEW_SESSION_NAME,a.DATE_START,a.DATE_END,c.POSITION_NAME,d.unit_name, wk.location_description',
'    from HR_INV_INTERVIEW a join HR_HCF_JOBOPENING b on b.id=a.jobopening_id',
'    join hr_hcf_position c on c.id=b.position_id',
'    join hr_hcf_orgstructuredtl d on d.id = c.orgdtl_id',
'    join hr_hcf_worklocation wk on wk.id=c.DEF_WORK_LOCATION_ID',
'    where A.org_id=:APP_ORG_ID',
'     and a.DATE_END >=trunc(current_date)'';',
'    ',
'else',
'return ',
'    ''select A.ID, INTERVIEW_SESSION_NAME,a.DATE_START,a.DATE_END,c.POSITION_NAME,d.unit_name, wk.location_description',
'    from HR_INV_INTERVIEW a join HR_HCF_JOBOPENING b on b.id=a.jobopening_id',
'    join hr_hcf_position c on c.id=b.position_id',
'    join hr_hcf_orgstructuredtl d on d.id = c.orgdtl_id',
'    join hr_hcf_worklocation wk on wk.id=c.DEF_WORK_LOCATION_ID',
'    where A.org_id=:APP_ORG_ID'';',
'    ',
'end if;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'INTERVIEW_SESSION_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'INTERVIEW_SESSION_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194339632634151359)
,p_query_column_name=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194340044113151359)
,p_query_column_name=>'INTERVIEW_SESSION_NAME'
,p_heading=>'Interview Session Name'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194340441537151359)
,p_query_column_name=>'DATE_START'
,p_heading=>'Date Start'
,p_display_sequence=>30
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194340864093151360)
,p_query_column_name=>'DATE_END'
,p_heading=>'Date End'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194341306273151360)
,p_query_column_name=>'POSITION_NAME'
,p_heading=>'Position Name'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194341693558151360)
,p_query_column_name=>'UNIT_NAME'
,p_heading=>'Unit Name'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3194342057422151361)
,p_query_column_name=>'LOCATION_DESCRIPTION'
,p_heading=>'Location Description'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
