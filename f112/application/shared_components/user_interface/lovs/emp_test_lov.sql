prompt --application/shared_components/user_interface/lovs/emp_test_lov
begin
--   Manifest
--     EMP_TEST_LOV
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3168390829564071821)
,p_lov_name=>'EMP_TEST_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    FULL_NAME,',
'    ID',
'FROM',
'    HR_RCM_EMPLOYEE',
'ORDER BY',
'    1;'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'FULL_NAME'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
