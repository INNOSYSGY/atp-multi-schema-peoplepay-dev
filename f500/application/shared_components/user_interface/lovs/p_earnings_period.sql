prompt --application/shared_components/user_interface/lovs/p_earnings_period
begin
--   Manifest
--     P_EARNINGS_PERIOD
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
 p_id=>wwv_flow_imp.id(3853855511426947376)
,p_lov_name=>'P_EARNINGS_PERIOD'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Earning_Name,Earning_Id',
'from vw_earningperiod_lov',
'where rownum<=290',
'',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'EARNING_ID'
,p_display_column_name=>'EARNING_NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'EARNING_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
