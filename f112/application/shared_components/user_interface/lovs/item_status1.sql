prompt --application/shared_components/user_interface/lovs/item_status1
begin
--   Manifest
--     ITEM_STATUS1
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
 p_id=>wwv_flow_imp.id(3305123277892103304)
,p_lov_name=>'ITEM_STATUS1'
,p_lov_query=>'.'||wwv_flow_imp.id(3305123277892103304)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3305122871112103302)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'ACTIVE'
,p_lov_return_value=>'ACTIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3305122409870103298)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'OBSOLETE'
,p_lov_return_value=>'OBSOLETE'
);
wwv_flow_imp.component_end;
end;
/
