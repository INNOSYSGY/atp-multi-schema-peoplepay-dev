prompt --application/shared_components/user_interface/lovs/leave_units
begin
--   Manifest
--     LEAVE_UNITS
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
 p_id=>wwv_flow_imp.id(2947832824496019619)
,p_lov_name=>'LEAVE_UNITS'
,p_lov_query=>'.'||wwv_flow_imp.id(2947832824496019619)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2947833055680019617)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hours'
,p_lov_return_value=>'HOURS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2947833521958019615)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Days'
,p_lov_return_value=>'DAYS'
);
wwv_flow_imp.component_end;
end;
/
