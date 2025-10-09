prompt --application/shared_components/user_interface/lovs/payment_delivery
begin
--   Manifest
--     PAYMENT_DELIVERY
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
 p_id=>wwv_flow_imp.id(3854007736794014655)
,p_lov_name=>'PAYMENT_DELIVERY'
,p_lov_query=>'.'||wwv_flow_imp.id(3854007736794014655)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854007444329014649)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Full Before Delivery'
,p_lov_return_value=>'FBD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854007067091014648)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Partial Before Delivery'
,p_lov_return_value=>'PBD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854006655951014645)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Partial After Delivery'
,p_lov_return_value=>'PAD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854006301214014639)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Full After Delivery'
,p_lov_return_value=>'FAD'
);
wwv_flow_imp.component_end;
end;
/
