prompt --application/shared_components/user_interface/lovs/leave_earned_control
begin
--   Manifest
--     LEAVE_EARNED_CONTROL
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
 p_id=>wwv_flow_imp.id(3528380086240861439)
,p_lov_name=>'LEAVE_EARNED_CONTROL'
,p_lov_query=>'.'||wwv_flow_imp.id(3528380086240861439)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3528380445427861443)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Start of Year'
,p_lov_return_value=>'START_OF_YEAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3528380813536861445)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'End of Year'
,p_lov_return_value=>'END_OF_YEAR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3528381172739861445)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Every Month'
,p_lov_return_value=>'EVERY_MONTH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(662027991478944990)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Every Day'
,p_lov_return_value=>'EVERY_DAY'
);
wwv_flow_imp.component_end;
end;
/
