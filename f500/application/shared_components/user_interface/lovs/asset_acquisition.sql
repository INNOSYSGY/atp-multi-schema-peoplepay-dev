prompt --application/shared_components/user_interface/lovs/asset_acquisition
begin
--   Manifest
--     ASSET_ACQUISITION
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
 p_id=>wwv_flow_imp.id(3854078571061239103)
,p_lov_name=>'ASSET_ACQUISITION'
,p_lov_query=>'.'||wwv_flow_imp.id(3854078571061239103)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854078146186239103)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Donor Agency'
,p_lov_return_value=>'DONOR_AGENCY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854077779952239102)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Donor Individual'
,p_lov_return_value=>'DONOR_INDIVIDUAL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854077398141239102)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Purchase'
,p_lov_return_value=>'PURCHASE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854076969632239102)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Unknown'
,p_lov_return_value=>'UNKNOWN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854076588916239102)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Capital Project'
,p_lov_return_value=>'CAPITAL_PROJECT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3848530113053051979)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Legacy Data Migration'
,p_lov_return_value=>'LEGACY_SYSTEM'
);
wwv_flow_imp.component_end;
end;
/
