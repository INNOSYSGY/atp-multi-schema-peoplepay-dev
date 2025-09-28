prompt --application/shared_components/user_interface/lovs/sex_code
begin
--   Manifest
--     SEX CODE
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
 p_id=>wwv_flow_imp.id(3632393837414252895)
,p_lov_name=>'SEX CODE'
,p_lov_query=>'.'||wwv_flow_imp.id(3632393837414252895)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632393424974252895)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Male'
,p_lov_return_value=>'M'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3632392984446252895)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Female'
,p_lov_return_value=>'F'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2965420084538585338)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Nonbinary'
,p_lov_return_value=>'N'
);
wwv_flow_imp.component_end;
end;
/
