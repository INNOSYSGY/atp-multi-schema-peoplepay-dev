prompt --application/shared_components/user_interface/lovs/depreciation_govt
begin
--   Manifest
--     DEPRECIATION_GOVT
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
 p_id=>wwv_flow_imp.id(3854164908898275584)
,p_lov_name=>'DEPRECIATION_GOVT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when DEPRECIATION_TYPE=''SLM'' then ''Straight Line Method''',
'            when DEPRECIATION_TYPE=''DBM'' then ''Declining Balance Method''',
'            when DEPRECIATION_TYPE=''SYM'' then ''Sum-Of-The-Years''''-Digits Method''',
'            else ''Based On Use (Activity)'' end ||'' For ''||initcap(DESCRIPTION)||'' at Rate of: ''||DEPRE_RATE||''%''||'' Effective: ''',
'            ||EFFECTIVE_FROM descript , a.DEPRECIATION_ID',
'from TBLDEPRECIATION a join TBLCATEGORYGROUP b on a.CATEGORY_ID=b.CATEGORY_ID',
'where EFFECTIVE_FROM <= trunc(current_date)',
'and (EFFECTIVE_TO is null or EFFECTIVE_TO >=trunc(current_date))',
'and UPPER(b.DESCRIPTION) = UPPER(:P983_TEMP_ASSET_CAT)',
'and a.GOVERNMENT =''Y''',
'order by DEPRECIATION_TYPE                  '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'DEPRECIATION_ID'
,p_display_column_name=>'DESCRIPT'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
