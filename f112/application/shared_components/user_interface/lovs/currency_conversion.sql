prompt --application/shared_components/user_interface/lovs/currency_conversion
begin
--   Manifest
--     CURRENCY_CONVERSION
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
 p_id=>wwv_flow_imp.id(2671353356112076239)
,p_lov_name=>'CURRENCY_CONVERSION'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  TO_CHAR(value_description) b, TO_CHAR(EMP_CURRENCY) A',
'from  PA_PCF_EARNINGCURRENCY a join hr_hcf_lookup b on table_value=EMP_CURRENCY',
'where a.org_id =:APP_ORG_SHR_DED',
'UNION',
'SELECT distinct value_description A , TO_CHAR(BASE_CURRENCY) B',
'FROM HR_HCF_ORGANISATION a join hr_hcf_lookup b on upper(b.table_value)=upper(a.BASE_CURRENCY)',
'WHERE a.user_org_id=b.org_id',
'and table_name=''TBLCURRENCY''',
'and a.ID =:APP_ORG_ID'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'A'
,p_display_column_name=>'B'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
