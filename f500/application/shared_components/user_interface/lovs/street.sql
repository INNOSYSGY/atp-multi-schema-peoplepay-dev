prompt --application/shared_components/user_interface/lovs/street
begin
--   Manifest
--     STREET
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3846699689531893322)
,p_lov_name=>'STREET'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct STREET a,  STREET b',
'from HR_APL_ADDRESS',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
