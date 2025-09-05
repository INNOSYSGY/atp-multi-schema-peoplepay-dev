prompt --application/shared_components/user_interface/lovs/adjust_fields
begin
--   Manifest
--     ADJUST_FIELDS
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
 p_id=>wwv_flow_imp.id(3326674369817944550)
,p_lov_name=>'ADJUST_FIELDS'
,p_lov_query=>'.'||wwv_flow_imp.id(3326674369817944550)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326673922737944549)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Quantity Requested'
,p_lov_return_value=>'QUANTITY_REQUESTED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326673551656944548)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'RTP Cost'
,p_lov_return_value=>'RTP_COST'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326673162315944548)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Quantity'
,p_lov_return_value=>'QUANTITY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326672754849944548)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Quoted Price'
,p_lov_return_value=>'QUOTED_PRICE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326672310390944548)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Market Price'
,p_lov_return_value=>'MARKET_PRICE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326671949054944548)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Discount'
,p_lov_return_value=>'DISCOUNT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326671520981944547)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Price Quoted'
,p_lov_return_value=>'PRICE_QUOTED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326671108152944547)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Freight'
,p_lov_return_value=>'FREIGHT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326670730483944546)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Other Charges'
,p_lov_return_value=>'OTHER_CHARGES'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326670333546944546)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Local Freight'
,p_lov_return_value=>'LOCAL_FREIGHT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326669978759944543)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Purchase Price'
,p_lov_return_value=>'PURCHASE_PRICE'
);
wwv_flow_imp.component_end;
end;
/
