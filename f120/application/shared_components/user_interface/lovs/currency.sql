prompt --application/shared_components/user_interface/lovs/currency
begin
--   Manifest
--     CURRENCY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854466293571782257)
,p_lov_name=>'CURRENCY'
,p_lov_query=>'.'||wwv_flow_imp.id(3854466293571782257)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854465886807782257)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US DOLLARS'
,p_lov_return_value=>'USD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854465484975782255)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'GY DOLLARS'
,p_lov_return_value=>'GYD'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854465080526782255)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'EASTERN CARIBBEAN DOLLARS'
,p_lov_return_value=>'EC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854464657341782255)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'EUROPEAN DOLLARS'
,p_lov_return_value=>'EURO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854464315056782254)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854463913729782254)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'BARBADOS'
,p_lov_return_value=>'BDS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854463548760782254)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'TRINIDAD & TOBAGO'
,p_lov_return_value=>'TT'
);
wwv_flow_imp.component_end;
end;
/
