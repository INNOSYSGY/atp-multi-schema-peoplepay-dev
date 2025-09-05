prompt --application/shared_components/user_interface/lovs/asset_item_status
begin
--   Manifest
--     ASSET_ITEM_STATUS
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
 p_id=>wwv_flow_imp.id(3326663720485944536)
,p_lov_name=>'ASSET_ITEM_STATUS'
,p_lov_query=>'.'||wwv_flow_imp.id(3326663720485944536)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326663347860944535)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Active'
,p_lov_return_value=>'ACTIVE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326662967518944535)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Not Working'
,p_lov_return_value=>'NOT_WORKING'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326662584204944534)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Discarded'
,p_lov_return_value=>'DISCARDED'
);
wwv_flow_imp.component_end;
end;
/
