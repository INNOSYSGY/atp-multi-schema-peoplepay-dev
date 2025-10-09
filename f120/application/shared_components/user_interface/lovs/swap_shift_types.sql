prompt --application/shared_components/user_interface/lovs/swap_shift_types
begin
--   Manifest
--     SWAP SHIFT TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3578302455242455403)
,p_lov_name=>'SWAP SHIFT TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(3578302455242455403)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3578302845610455406)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Shift Swap'
,p_lov_return_value=>'SWAP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3578303238833455407)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Shift Drop'
,p_lov_return_value=>'DROP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3578303583387455407)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Shift Change'
,p_lov_return_value=>'CHNG'
);
wwv_flow_imp.component_end;
end;
/
