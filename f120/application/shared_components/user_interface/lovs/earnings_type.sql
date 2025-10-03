prompt --application/shared_components/user_interface/lovs/earnings_type
begin
--   Manifest
--     EARNINGS_TYPE
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
 p_id=>wwv_flow_imp.id(3632589429225532453)
,p_lov_name=>'EARNINGS_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3632589429225532453)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632588969673532452)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Regular'
,p_lov_return_value=>'RG'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632588645667532452)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Back Pay'
,p_lov_return_value=>'BK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632588257780532452)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Gratuity'
,p_lov_return_value=>'GT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632587376606532451)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Leave Passage'
,p_lov_return_value=>'LP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632586989384532448)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Holiday Pay'
,p_lov_return_value=>'HP'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632586649029532448)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Bonus'
,p_lov_return_value=>'BONUS'
);
wwv_flow_imp.component_end;
end;
/
