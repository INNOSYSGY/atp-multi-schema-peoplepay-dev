prompt --application/shared_components/user_interface/lovs/hrexportpayrollded
begin
--   Manifest
--     HREXPORTPAYROLLDED
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
 p_id=>wwv_flow_imp.id(47148337815188965)
,p_lov_name=>'HREXPORTPAYROLLDED'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,table_value b',
'from table(pkg_global_fnts.get_lookup_value(''TBLHREXPORTTOPAYROLLDED'')) a',
'where a.org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_version_scn=>41835826698268
);
wwv_flow_imp.component_end;
end;
/
