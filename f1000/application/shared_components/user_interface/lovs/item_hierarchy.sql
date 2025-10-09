prompt --application/shared_components/user_interface/lovs/item_hierarchy
begin
--   Manifest
--     ITEM_HIERARCHY
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
 p_id=>wwv_flow_imp.id(3854222591256239130)
,p_lov_name=>'ITEM_HIERARCHY'
,p_lov_query=>'.'||wwv_flow_imp.id(3854222591256239130)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854222112329239128)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CATEGORY'
,p_lov_return_value=>'CATEGORY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854221892162239128)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'MAJOR_CODE'
,p_lov_return_value=>'MAJOR_CODE'
);
wwv_flow_imp.component_end;
end;
/
