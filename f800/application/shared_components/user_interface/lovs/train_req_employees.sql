prompt --application/shared_components/user_interface/lovs/train_req_employees
begin
--   Manifest
--     TRAIN_REQ_EMPLOYEES
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
 p_id=>wwv_flow_imp.id(3555312525377024024)
,p_lov_name=>'TRAIN_REQ_EMPLOYEES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SElect  name_only||''-''||Emp_Company_No emp, Payment_Type, date_employed,(select employee_name||'' ''||Emp_Company_No',
'                                                                         from vw_employee',
'                                                                         where id =report_to_functional) report_to_functional,',
' (select employee_name||'' ''||Emp_Company_No',
'                                                                         from vw_employee',
'                                                                         where id =report_to) report_to,',
'avl_Confirmed,b.location_description, a.id',
'from table(pkg_global_fnts.Get_availemployee(trunc(to_date(nvl(:P318_PROPOSED_TRAIN_START, current_date),''DD-MON-YYYY HH:MI PM'')))) a join hr_hcf_worklocation b',
'on b.id = a.WORK_LOCATION_ID',
'where position_id=:P318_POSITION_ID',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'ID'
,p_display_column_name=>'EMP'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555312865454024025)
,p_query_column_name=>'ID'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555313260305024027)
,p_query_column_name=>'EMP'
,p_heading=>'Emp'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555313686270024027)
,p_query_column_name=>'PAYMENT_TYPE'
,p_heading=>'Payment Type'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555314121493024027)
,p_query_column_name=>'REPORT_TO_FUNCTIONAL'
,p_heading=>'Report To Functional'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555314472095024028)
,p_query_column_name=>'DATE_EMPLOYED'
,p_heading=>'Date Employed'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555314860292024028)
,p_query_column_name=>'AVL_CONFIRMED'
,p_heading=>'Avl Confirmed'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555315334730024028)
,p_query_column_name=>'REPORT_TO'
,p_heading=>'Report To'
,p_display_sequence=>70
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp_shared.create_list_of_values_cols(
 p_id=>wwv_flow_imp.id(3555315742743024029)
,p_query_column_name=>'LOCATION_DESCRIPTION'
,p_heading=>'Location Description'
,p_display_sequence=>80
,p_data_type=>'VARCHAR2'
);
wwv_flow_imp.component_end;
end;
/
