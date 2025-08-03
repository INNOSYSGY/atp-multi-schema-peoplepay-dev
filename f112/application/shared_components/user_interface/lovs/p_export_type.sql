prompt --application/shared_components/user_interface/lovs/p_export_type
begin
--   Manifest
--     P_EXPORT_TYPE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326444742991652811)
,p_lov_name=>'P_EXPORT_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3326444742991652811)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326444352999652811)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'XLS-Excel'
,p_lov_return_value=>'xls'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326443991319652810)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'W-Word'
,p_lov_return_value=>'docx'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326443522686652810)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'PDF'
,p_lov_return_value=>'pdf'
);
wwv_flow_imp.component_end;
end;
/
