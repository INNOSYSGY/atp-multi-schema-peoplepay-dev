prompt --application/shared_components/user_interface/lovs/increase_type
begin
--   Manifest
--     INCREASE_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632550129119481219)
,p_lov_name=>'INCREASE_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3632550129119481219)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632549692904481219)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Conditional'
,p_lov_return_value=>'CONDITIONAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632549270334481218)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Across The Board'
,p_lov_return_value=>'ACROSS_THE_BOARD'
);
wwv_flow_imp.component_end;
end;
/
