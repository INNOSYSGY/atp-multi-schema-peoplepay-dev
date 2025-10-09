prompt --application/shared_components/user_interface/lovs/compute_gross_rul
begin
--   Manifest
--     COMPUTE_GROSS_RUL
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
 p_id=>wwv_flow_imp.id(657215321642716482)
,p_lov_name=>'COMPUTE_GROSS_RUL'
,p_lov_query=>'.'||wwv_flow_imp.id(657215321642716482)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657215719087716483)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Basic Pay'
,p_lov_return_value=>'''BASIC_PAY'''
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657216089796716483)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Hourly Rate'
,p_lov_return_value=>'''HOURLY_RATE'''
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657216516228716483)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Daily Rate'
,p_lov_return_value=>'''DAILY_RATE'''
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657216942728716483)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Piece Rate'
,p_lov_return_value=>'''PIECE_RATE'''
);
wwv_flow_imp.component_end;
end;
/
