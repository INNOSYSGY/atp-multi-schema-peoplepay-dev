prompt --application/shared_components/user_interface/lovs/payment_mode
begin
--   Manifest
--     PAYMENT_MODE
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
 p_id=>wwv_flow_imp.id(3854005971187014639)
,p_lov_name=>'PAYMENT_MODE'
,p_lov_query=>'.'||wwv_flow_imp.id(3854005971187014639)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854005601374014637)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'CASH'
,p_lov_return_value=>'CASH'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854005255800014637)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'BANK'
,p_lov_return_value=>'BANK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854004883535014618)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'CHEQUE'
,p_lov_return_value=>'CHEQUE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3826900020759483555)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'MULTIPLE'
,p_lov_return_value=>'MULTI'
,p_lov_disp_cond_type=>'EXPRESSION'
,p_lov_disp_cond=>':APP_PAGE_ID != 1281'
,p_lov_disp_cond2=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
