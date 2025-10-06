prompt --application/shared_components/user_interface/lovs/drug_class
begin
--   Manifest
--     DRUG_CLASS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3326606639066913767)
,p_lov_name=>'DRUG_CLASS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description||''(''||CLASSIFICATION||'')'' a, table_value b',
'from HR_HCF_LOOKUP  ',
'WHERE table_NAME=''TBLDRUGCLASS''',
'Order By 1',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'B'
,p_display_column_name=>'A'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
