prompt --application/shared_components/user_interface/lovs/process_types
begin
--   Manifest
--     PROCESS TYPES
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
 p_id=>wwv_flow_imp.id(3853858592860947386)
,p_lov_name=>'PROCESS TYPES'
,p_lov_query=>'.'||wwv_flow_imp.id(3853858592860947386)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853858176320947386)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Request to Purchase (RTP)'
,p_lov_return_value=>'REQUEST_TO_PURCHASE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853857767100947386)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Request for Quotation (RFQ)'
,p_lov_return_value=>'REQUEST_FOR_QUOTATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853857406086947384)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Quotation '
,p_lov_return_value=>'QUOTATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853857003766947384)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Purchase Order (PO)'
,p_lov_return_value=>'PURCHASE_ORDER '
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853856619893947377)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Move Order Request'
,p_lov_return_value=>'MOVE_ORDER_REQUEST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853856139164947377)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Move Order Transfer'
,p_lov_return_value=>'MOVE_ORDER_TRANSFER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853855732529947377)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Move Order Received'
,p_lov_return_value=>'MOVE_ORDER_RECEIVED'
);
wwv_flow_imp.component_end;
end;
/
