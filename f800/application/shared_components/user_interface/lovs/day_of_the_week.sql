prompt --application/shared_components/user_interface/lovs/day_of_the_week
begin
--   Manifest
--     DAY OF THE WEEK
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
 p_id=>wwv_flow_imp.id(3709442577936958404)
,p_lov_name=>'DAY OF THE WEEK'
,p_lov_query=>'.'||wwv_flow_imp.id(3709442577936958404)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709442309047958403)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Monday'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709441874314958401)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Tuesday'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709441497193958401)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Wednesday'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709441087277958401)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Thursday'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709440726082958401)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Friday'
,p_lov_return_value=>'6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709440348127958401)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Saturday'
,p_lov_return_value=>'7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3709439933582958400)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Sunday'
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
