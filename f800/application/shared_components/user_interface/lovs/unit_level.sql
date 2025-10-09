prompt --application/shared_components/user_interface/lovs/unit_level
begin
--   Manifest
--     UNIT_LEVEL
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
 p_id=>wwv_flow_imp.id(3853910797495919802)
,p_lov_name=>'UNIT_LEVEL'
,p_lov_query=>'.'||wwv_flow_imp.id(3853910797495919802)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853910468076919802)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'LEVEL 1'
,p_lov_return_value=>'1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853910029858919802)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'LEVEL 2'
,p_lov_return_value=>'2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853909722157919801)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'LEVEL 3'
,p_lov_return_value=>'3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853909282245919801)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'LEVEL 4'
,p_lov_return_value=>'4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853908831789919800)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'LEVEL 5'
,p_lov_return_value=>'5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853908491945919795)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'LEVEL 6'
,p_lov_return_value=>'6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853908112020919795)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'LEVEL 7'
,p_lov_return_value=>'7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853907716251919795)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'LEVEL 8'
,p_lov_return_value=>'8'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853907276473919795)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'LEVEL 9'
,p_lov_return_value=>'9'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853906892739919795)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'LEVEL 10'
,p_lov_return_value=>'10'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853906484508919795)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'LEVEL 11'
,p_lov_return_value=>'11'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853906072360919793)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'LEVEL 12'
,p_lov_return_value=>'12'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853905640500919793)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'LEVEL 13'
,p_lov_return_value=>'13'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853905238289919793)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'LEVEL 14'
,p_lov_return_value=>'14'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3853904918358919793)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'LEVEL 15'
,p_lov_return_value=>'15'
);
wwv_flow_imp.component_end;
end;
/
