prompt --application/shared_components/user_interface/lovs/rule_operators
begin
--   Manifest
--     RULE_OPERATORS
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
 p_id=>wwv_flow_imp.id(657219215325716485)
,p_lov_name=>'RULE_OPERATORS'
,p_lov_query=>'.'||wwv_flow_imp.id(657219215325716485)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657219617440716485)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'BETWEEN'
,p_lov_return_value=>'BETWEEN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657220033124716486)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'>'
,p_lov_return_value=>'>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657220371359716486)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'>='
,p_lov_return_value=>'>='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657220775292716486)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'<'
,p_lov_return_value=>'<'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657221203873716486)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'='
,p_lov_return_value=>'='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657221582568716486)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'>='
,p_lov_return_value=>'>='
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(657222030400716487)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'NOT BETWEEN'
,p_lov_return_value=>'NOT BETWEEN'
);
wwv_flow_imp.component_end;
end;
/
