prompt --application/shared_components/user_interface/lovs/organisation_type
begin
--   Manifest
--     ORGANISATION_TYPE
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
 p_id=>wwv_flow_imp.id(3825751601675630128)
,p_lov_name=>'ORGANISATION_TYPE'
,p_lov_query=>'.'||wwv_flow_imp.id(3825751601675630128)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825751205284630127)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'DONOR'
,p_lov_return_value=>'DONOR'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825750788816630126)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'REMITTANCE'
,p_lov_return_value=>'REMITTANCE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825750345010630125)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'SOFTWARE USER'
,p_lov_return_value=>'SOFTWARE USER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825749975473630125)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825749608418630125)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'BANK'
,p_lov_return_value=>'BANK'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3825749151019630124)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'SUPPLIER'
,p_lov_return_value=>'SUPPLIER'
);
wwv_flow_imp.component_end;
end;
/
