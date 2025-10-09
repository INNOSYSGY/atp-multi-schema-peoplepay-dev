prompt --application/shared_components/user_interface/lovs/requester
begin
--   Manifest
--     REQUESTER
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
 p_id=>wwv_flow_imp.id(3853961782067943831)
,p_lov_name=>'REQUESTER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT initcap(A.Surname || '', '' || nvl(A.First_Name, '''')) ||'' ''||nvl(A.Middle_Name,'''') ',
'||''(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||'')'' ||  UPPER(b.Emp_Company_No)',
'AS Employee, b.ID',
'FROM  HR_RCM_INDIVIDUAL a JOIN HR_RCM_employee b ON a.id = b.ind_id',
'WHERE b.verified_by is not null',
'AND B.ORG_ID =:APP_ORG_ID',
'and a.DOD is null',
'and pkg_global_fnts.get_lookup_col(Employment_Class_ID,''TABLE_VALUE'')  !=''PEN''',
'AND  pkg_global_fnts.get_lookup_col(EMPLOYMENT_STATUS_ID,''TABLE_VALUE'')  NOT IN (''APPL'',''INVW'')',
'and (b.separated_Status is  null or b.Date_Separated>current_date)',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'EMPLOYEE'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
