prompt --application/shared_components/user_interface/lovs/item_no_separator
begin
--   Manifest
--     ITEM_NO_SEPARATOR
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
 p_id=>wwv_flow_imp.id(3853939113515092890)
,p_lov_name=>'ITEM_NO_SEPARATOR'
,p_lov_query=>'.'||wwv_flow_imp.id(3853939113515092890)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853938678321092890)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'.'
,p_lov_return_value=>'.'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853938270147092890)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'-'
,p_lov_return_value=>'-'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853937910677092888)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'/'
,p_lov_return_value=>'/'
);
wwv_flow_imp.component_end;
end;
/
