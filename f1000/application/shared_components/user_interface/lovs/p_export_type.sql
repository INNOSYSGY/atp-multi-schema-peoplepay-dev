prompt --application/shared_components/user_interface/lovs/p_export_type
begin
--   Manifest
--     P_EXPORT_TYPE
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
 p_id=>wwv_flow_imp.id(3854136531015093611)
,p_lov_name=>'P_EXPORT_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3854136531015093611)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854136141023093611)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'XLS-Excel'
,p_lov_return_value=>'xls'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854135779343093610)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'W-Word'
,p_lov_return_value=>'docx'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854135310710093610)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'PDF'
,p_lov_return_value=>'pdf'
);
wwv_flow_imp.component_end;
end;
/
