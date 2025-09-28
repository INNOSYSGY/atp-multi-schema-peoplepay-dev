prompt --application/shared_components/user_interface/lovs/payment_mode_specific
begin
--   Manifest
--     PAYMENT_MODE_SPECIFIC
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
 p_id=>wwv_flow_imp.id(3605364777777984891)
,p_lov_name=>'PAYMENT_MODE_SPECIFIC'
,p_lov_query=>'.'||wwv_flow_imp.id(3605364777777984891)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3605364506247984809)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CASH'
,p_lov_return_value=>'CASH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3605364154684984805)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'BANK'
,p_lov_return_value=>'BANK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3605363712783984803)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'CHEQUE'
,p_lov_return_value=>'CHEQUE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3605363274411984801)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'MOBILE MONEY'
,p_lov_return_value=>'MMG'
);
wwv_flow_imp.component_end;
end;
/
