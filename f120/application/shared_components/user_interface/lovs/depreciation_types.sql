prompt --application/shared_components/user_interface/lovs/depreciation_types
begin
--   Manifest
--     DEPRECIATION_TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632617959329596654)
,p_lov_name=>'DEPRECIATION_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(3632617959329596654)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632617550615596654)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'STRAIGHT LINE METHOD'
,p_lov_return_value=>'SLM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632617092489596654)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'DECLINING BALANCE METHOD'
,p_lov_return_value=>'DBM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632616672427596654)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'SUM-OF-THE-YEARS''-DIGITS METHOD'
,p_lov_return_value=>'SYM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632616316800596652)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'BASED ON USE (ACTIVITY)'
,p_lov_return_value=>'BOU'
);
wwv_flow_imp.component_end;
end;
/
