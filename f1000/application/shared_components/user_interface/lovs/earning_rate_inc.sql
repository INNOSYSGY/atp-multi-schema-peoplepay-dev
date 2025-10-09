prompt --application/shared_components/user_interface/lovs/earning_rate_inc
begin
--   Manifest
--     EARNING_RATE_INC
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
 p_id=>wwv_flow_imp.id(3475728762267422802)
,p_lov_name=>'EARNING_RATE_INC'
,p_lov_query=>'.'||wwv_flow_imp.id(3475728762267422802)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3475729122659422800)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hourly Rate'
,p_lov_return_value=>'HOURLY_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3475729478540422800)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Daily Rate'
,p_lov_return_value=>'DAILY_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3475729905461422799)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Fixed Rate'
,p_lov_return_value=>'FIXED_RATE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3475748810433335924)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Base Rate'
,p_lov_return_value=>'BASE_RATE'
);
wwv_flow_imp.component_end;
end;
/
