prompt --application/shared_components/user_interface/lovs/grade_attained
begin
--   Manifest
--     GRADE_ATTAINED
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
 p_id=>wwv_flow_imp.id(3846953343395213784)
,p_lov_name=>'GRADE_ATTAINED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct GRADE_ATTAINED a, GRADE_ATTAINED b',
'from HR_APL_QUALIFICATION',
'order by 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'A'
,p_display_column_name=>'B'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
