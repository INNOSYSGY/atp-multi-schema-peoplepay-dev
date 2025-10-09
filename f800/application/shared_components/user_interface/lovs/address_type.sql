prompt --application/shared_components/user_interface/lovs/address_type
begin
--   Manifest
--     ADDRESS_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854227655637306344)
,p_lov_name=>'ADDRESS_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3854227655637306344)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854227264866306343)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'HOME'
,p_lov_return_value=>'HOME'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854226842806306341)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'WORK'
,p_lov_return_value=>'WORK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854226441759306341)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'RELATIVE'
,p_lov_return_value=>'RELATIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854226104570306341)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/
