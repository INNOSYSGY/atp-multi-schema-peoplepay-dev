prompt --application/shared_components/user_interface/lovs/employee_user
begin
--   Manifest
--     EMPLOYEE_USER
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3506606248979527686)
,p_lov_name=>'EMPLOYEE_USER'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select full_name,b.id',
'from tbluser A JOIN hr_rcm_employee b on b.id= a.employee_no',
'where a.effective_from <= trunc(current_date)',
'and (a.effective_to is null or a.effective_to >= trunc(current_date)) ',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'FULL_NAME'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
