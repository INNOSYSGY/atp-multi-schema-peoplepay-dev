prompt --application/shared_components/user_interface/lovs/yes_no_num
begin
--   Manifest
--     YES_NO_NUM
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326348486442557998)
,p_lov_name=>'YES_NO_NUM'
,p_lov_query=>'.'||wwv_flow_imp.id(3326348486442557998)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326347654017557997)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'NO'
,p_lov_return_value=>'0'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326348078057557997)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'YES'
,p_lov_return_value=>'1'
);
wwv_flow_imp.component_end;
end;
/
