prompt --application/shared_components/user_interface/lovs/att_datatype
begin
--   Manifest
--     ATT_DATATYPE
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
 p_id=>wwv_flow_imp.id(556275156532468589)
,p_lov_name=>'ATT_DATATYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(556275156532468589)||'.'
,p_location=>'STATIC'
,p_version_scn=>44429675464970
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556274730478468586)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Number'
,p_lov_return_value=>'NUMBER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556274348621468584)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Boolean'
,p_lov_return_value=>'BOOLEAN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556273893901468583)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Character'
,p_lov_return_value=>'CHARACTER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(556273477621468583)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Datetime'
,p_lov_return_value=>'DATETIME'
);
wwv_flow_imp.component_end;
end;
/
