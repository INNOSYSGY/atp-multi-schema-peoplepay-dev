prompt --application/shared_components/user_interface/lovs/organisation_type
begin
--   Manifest
--     ORGANISATION_TYPE
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
 p_id=>wwv_flow_imp.id(3825329468068056256)
,p_lov_name=>'ORGANISATION_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3825329468068056256)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825329071677056255)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'DONOR'
,p_lov_return_value=>'DONOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825328655209056254)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'REMITTANCE'
,p_lov_return_value=>'REMITTANCE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825328211403056253)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'SOFTWARE USER'
,p_lov_return_value=>'SOFTWARE USER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825327841866056253)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825327474811056253)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'BANK'
,p_lov_return_value=>'BANK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825327017412056252)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'SUPPLIER'
,p_lov_return_value=>'SUPPLIER'
);
wwv_flow_imp.component_end;
end;
/
