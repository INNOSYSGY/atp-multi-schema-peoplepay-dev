prompt --application/shared_components/user_interface/lovs/p_productivity_action
begin
--   Manifest
--     P_PRODUCTIVITY_ACTION
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
 p_id=>wwv_flow_imp.id(3853993795159014598)
,p_lov_name=>'P_PRODUCTIVITY_ACTION'
,p_lov_query=>'.'||wwv_flow_imp.id(3853993795159014598)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709596228222231901)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ALL'
,p_lov_return_value=>'ALL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853993370928014598)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Data Entry'
,p_lov_return_value=>'ENTRY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853992940887014597)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Verification'
,p_lov_return_value=>'VERIFY'
);
wwv_flow_imp.component_end;
end;
/
