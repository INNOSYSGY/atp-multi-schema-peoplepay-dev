prompt --application/shared_components/user_interface/lovs/depreciation_types
begin
--   Manifest
--     DEPRECIATION_TYPES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854301888011354585)
,p_lov_name=>'DEPRECIATION_TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(3854301888011354585)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854301479297354585)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'STRAIGHT LINE METHOD'
,p_lov_return_value=>'SLM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854301021171354585)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'DECLINING BALANCE METHOD'
,p_lov_return_value=>'DBM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854300601109354585)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'SUM-OF-THE-YEARS''-DIGITS METHOD'
,p_lov_return_value=>'SYM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854300245482354583)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'BASED ON USE (ACTIVITY)'
,p_lov_return_value=>'BOU'
);
wwv_flow_imp.component_end;
end;
/
