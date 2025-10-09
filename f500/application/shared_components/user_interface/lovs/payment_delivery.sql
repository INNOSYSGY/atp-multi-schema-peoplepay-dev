prompt --application/shared_components/user_interface/lovs/payment_delivery
begin
--   Manifest
--     PAYMENT_DELIVERY
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
 p_id=>wwv_flow_imp.id(3853867034554947429)
,p_lov_name=>'PAYMENT_DELIVERY'
,p_lov_query=>'.'||wwv_flow_imp.id(3853867034554947429)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853866742089947423)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Full Before Delivery'
,p_lov_return_value=>'FBD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853866364851947422)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Partial Before Delivery'
,p_lov_return_value=>'PBD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853865953711947419)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Partial After Delivery'
,p_lov_return_value=>'PAD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853865598974947413)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Full After Delivery'
,p_lov_return_value=>'FAD'
);
wwv_flow_imp.component_end;
end;
/
