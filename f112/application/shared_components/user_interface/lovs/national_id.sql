prompt --application/shared_components/user_interface/lovs/national_id
begin
--   Manifest
--     NATIONAL_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326516660165798300)
,p_lov_name=>'NATIONAL_ID'
,p_lov_query=>'.'||wwv_flow_imp.id(3326516660165798300)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326516238383798300)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'NIB NUMBER'
,p_lov_return_value=>'NIB NUMBER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326515889191798300)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'PASSPORT NUMBER'
,p_lov_return_value=>'PASSPORT NUMBER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326515426157798298)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'TIN'
,p_lov_return_value=>'TIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326515086930798298)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'DRIVER LICENSE'
,p_lov_return_value=>'DRIVER LICENSE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326514637792798298)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'PERMIT'
,p_lov_return_value=>'PERMIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326514230351798297)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'NATIONAL ID'
,p_lov_return_value=>'NATIONAL ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(129406109265573094)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Social Security Number'
,p_lov_return_value=>'SSN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326513444359798296)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'BIRTH CERTIFICATE NUMBER'
,p_lov_return_value=>'BIRTH CERT NO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3326513866985798297)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/
