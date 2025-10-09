prompt --application/shared_components/user_interface/lovs/national_id
begin
--   Manifest
--     NATIONAL_ID
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
 p_id=>wwv_flow_imp.id(3854067778328160089)
,p_lov_name=>'NATIONAL_ID'
,p_lov_query=>'.'||wwv_flow_imp.id(3854067778328160089)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854067356546160089)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'NIB NUMBER'
,p_lov_return_value=>'NIB NUMBER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854067007354160089)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'PASSPORT NUMBER'
,p_lov_return_value=>'PASSPORT NUMBER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854066544320160087)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'TIN'
,p_lov_return_value=>'TIN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854066205093160087)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'DRIVER LICENSE'
,p_lov_return_value=>'DRIVER LICENSE'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854065755955160087)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'PERMIT'
,p_lov_return_value=>'PERMIT'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854065348514160086)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'NATIONAL ID'
,p_lov_return_value=>'NATIONAL ID'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(656957227427934883)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Social Security Number'
,p_lov_return_value=>'SSN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854064562522160085)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'BIRTH CERTIFICATE NUMBER'
,p_lov_return_value=>'BIRTH CERT NO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854064985148160086)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'OTHER'
,p_lov_return_value=>'OTHER'
);
wwv_flow_imp.component_end;
end;
/
