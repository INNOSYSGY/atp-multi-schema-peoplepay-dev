prompt --application/shared_components/user_interface/lovs/employee_cols
begin
--   Manifest
--     EMPLOYEE_COLS
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
 p_id=>wwv_flow_imp.id(3486080621780310411)
,p_lov_name=>'EMPLOYEE_COLS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id, name_only, emp_company_no,payment_type,date_employed,Initcap(employment_class)employment_class , c.position_name, b.location_description',
'    from VW_AVAILEMPLOYEE a join hr_hcf_worklocation b on b.id = a.wklocation_id',
'    join hr_hcf_position c on c.id = a.position_id',
'    order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME_ONLY'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>41800191487684
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486081539235313344)
,p_query_column_name=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486081994190313345)
,p_query_column_name=>'NAME_ONLY'
,p_heading=>'Name Only'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486082329011313345)
,p_query_column_name=>'EMP_COMPANY_NO'
,p_heading=>'Emp Company No'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486082754216313346)
,p_query_column_name=>'PAYMENT_TYPE'
,p_heading=>'Payment Type'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486083131015313346)
,p_query_column_name=>'DATE_EMPLOYED'
,p_heading=>'Date Employed'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486083554306313346)
,p_query_column_name=>'EMPLOYMENT_CLASS'
,p_heading=>'Employment Class'
,p_display_sequence=>60
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486084015834313347)
,p_query_column_name=>'POSITION_NAME'
,p_heading=>'Position Name'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3486084419983313347)
,p_query_column_name=>'LOCATION_DESCRIPTION'
,p_heading=>'Location Description'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
