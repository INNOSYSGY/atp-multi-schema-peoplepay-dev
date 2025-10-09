prompt --application/shared_components/user_interface/lovs/earnings_type_dyn
begin
--   Manifest
--     EARNINGS_TYPE_DYN
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
 p_id=>wwv_flow_imp.id(3847903681323963334)
,p_lov_name=>'EARNINGS_TYPE_DYN'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, INCOME_CODE',
'from pa_pcf_incomecode',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'AND BULK_PAYMENT=''Y''',
'and org_id=:APP_ORG_SHR_DED',
'UNION',
'SELECT cast(''Regular'' as varchar2(200)), cast(''RG'' as varchar2(50)) from dual',
'UNION',
'SELECT cast(''Overtime Payroll'' as varchar2(200)), cast(''OTPAY'' as varchar2(50)) from dual',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'INCOME_CODE'
,p_display_column_name=>'DESCRIPTION'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
