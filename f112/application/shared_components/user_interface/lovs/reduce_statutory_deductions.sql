prompt --application/shared_components/user_interface/lovs/reduce_statutory_deductions
begin
--   Manifest
--     REDUCE_STATUTORY_DEDUCTIONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2672841774933598467)
,p_lov_name=>'REDUCE_STATUTORY_DEDUCTIONS'
,p_lov_query=>'.'||wwv_flow_imp.id(2672841774933598467)||'.'
,p_location=>'STATIC'
,p_version_scn=>41805887199447
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2672842128988598468)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Exclude Tax NIB / SS Total'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2672842451284598471)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Exclude Tax Total'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2672842845926598471)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Exclude NIB/SS Total'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2672843248181598471)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'No Exclusions'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(43038801396549597)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Global FreePay Rule'
,p_lov_return_value=>'4'
);
wwv_flow_imp.component_end;
end;
/
