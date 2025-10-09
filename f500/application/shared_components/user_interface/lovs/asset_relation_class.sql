prompt --application/shared_components/user_interface/lovs/asset_relation_class
begin
--   Manifest
--     ASSET_RELATION_CLASS
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
 p_id=>wwv_flow_imp.id(3854072400910239097)
,p_lov_name=>'ASSET_RELATION_CLASS'
,p_lov_query=>'.'||wwv_flow_imp.id(3854072400910239097)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854071975081239096)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Spare Part'
,p_lov_return_value=>'SPARE_PART'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854071585050239096)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Optional External Component'
,p_lov_return_value=>'ORC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854071133170239096)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Required External Component'
,p_lov_return_value=>'REC'
);
wwv_flow_imp.component_end;
end;
/
