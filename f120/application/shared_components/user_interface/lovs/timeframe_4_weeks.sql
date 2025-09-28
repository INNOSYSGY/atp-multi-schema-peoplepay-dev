prompt --application/shared_components/user_interface/lovs/timeframe_4_weeks
begin
--   Manifest
--     TIMEFRAME (4 WEEKS)
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632390584010252893)
,p_lov_name=>'TIMEFRAME (4 WEEKS)'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''15 Minutes'' d, ',
'trim(to_char(15/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''30 Minutes'' d, ',
'trim(to_char(30/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''1 Hour'' d, ',
'trim(to_char(1/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''90 Minutes'' d, ',
'trim(to_char(90/(24*60),''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''2 Hours'' d, ',
'trim(to_char(1/12,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select ''3 Hours'' d, ',
'trim(to_char(3/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select ''4 Hours'' d, ',
'trim(to_char(4/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select ''5 Hours'' d, ',
'trim(to_char(5/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,''''''))  t from dual',
'union all ',
'select ''6 Hours'' d, ',
'trim(to_char(6/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''8 Hours'' d, ',
'trim(to_char(8/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''10 Hours'' d, ',
'trim(to_char(10/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''12 Hours'' d, ',
'trim(to_char(12/24,''00000.99999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''16 Hours'' d, ',
'trim(to_char(16/24,''00000.9999999999'',''NLS_NUMERIC_CHARACTERS=''''.,'''''')) t from dual',
'union all ',
'select ''1 Day'' d, trim(to_char(1,''00000.9999999999'')) t from dual',
'union all ',
'select ''2 Days'' d, trim(to_char(2,''00000.9999999999'')) t from dual',
'union all ',
'select ''3 Days'' d, trim(to_char(3,''00000.9999999999'')) t from dual',
'union all ',
'select ''4 Days'' d, trim(to_char(4,''00000.9999999999'')) t from dual',
'union all ',
'select ''5 Days'' d, trim(to_char(5,''00000.9999999999'')) t from dual',
'union all ',
'select ''1 Week'' d, trim(to_char(7,''00000.9999999999'')) t from dual',
'union all ',
'select ''2 Weeks'' d, trim(to_char(14,''00000.9999999999'')) t from dual',
'union all ',
'select ''3 Weeks'' d, trim(to_char(21,''00000.9999999999'')) t from dual',
'union all ',
'select ''4 Weeks'' d, trim(to_char(28,''00000.9999999999'')) t from dual',
'order by 2'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'T'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
