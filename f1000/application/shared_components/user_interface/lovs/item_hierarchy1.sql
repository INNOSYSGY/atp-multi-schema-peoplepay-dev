prompt --application/shared_components/user_interface/lovs/item_hierarchy1
begin
--   Manifest
--     ITEM_HIERARCHY1
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
 p_id=>wwv_flow_imp.id(3833184940232085460)
,p_lov_name=>'ITEM_HIERARCHY1'
,p_lov_query=>'.'||wwv_flow_imp.id(3833184940232085460)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3833184501842085455)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CATEGORY'
,p_lov_return_value=>'CATEGORY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3833184166947085451)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'MAJOR_CODE'
,p_lov_return_value=>'MAJOR_CODE'
);
wwv_flow_imp.component_end;
end;
/
