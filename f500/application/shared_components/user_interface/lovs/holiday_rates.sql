prompt --application/shared_components/user_interface/lovs/holiday_rates
begin
--   Manifest
--     HOLIDAY_RATES
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
 p_id=>wwv_flow_imp.id(3853960239539092921)
,p_lov_name=>'HOLIDAY_RATES'
,p_lov_query=>'.'||wwv_flow_imp.id(3853960239539092921)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853959862298092920)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'DB'
,p_lov_return_value=>'OT1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853959485510092920)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'NR'
,p_lov_return_value=>'NR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853959023193092919)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'TH'
,p_lov_return_value=>'OT'
);
wwv_flow_imp.component_end;
end;
/
