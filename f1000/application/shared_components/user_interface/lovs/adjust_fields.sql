prompt --application/shared_components/user_interface/lovs/adjust_fields
begin
--   Manifest
--     ADJUST_FIELDS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854366157841385350)
,p_lov_name=>'ADJUST_FIELDS'
,p_lov_query=>'.'||wwv_flow_imp.id(3854366157841385350)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854365710761385349)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Quantity Requested'
,p_lov_return_value=>'QUANTITY_REQUESTED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854365339680385348)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'RTP Cost'
,p_lov_return_value=>'RTP_COST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854364950339385348)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Quantity'
,p_lov_return_value=>'QUANTITY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854364542873385348)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Quoted Price'
,p_lov_return_value=>'QUOTED_PRICE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854364098414385348)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Market Price'
,p_lov_return_value=>'MARKET_PRICE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854363737078385348)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Discount'
,p_lov_return_value=>'DISCOUNT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854363309005385347)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Price Quoted'
,p_lov_return_value=>'PRICE_QUOTED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854362896176385347)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Freight'
,p_lov_return_value=>'FREIGHT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854362518507385346)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Other Charges'
,p_lov_return_value=>'OTHER_CHARGES'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854362121570385346)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Local Freight'
,p_lov_return_value=>'LOCAL_FREIGHT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854361766783385343)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Purchase Price'
,p_lov_return_value=>'PURCHASE_PRICE'
);
wwv_flow_imp.component_end;
end;
/
