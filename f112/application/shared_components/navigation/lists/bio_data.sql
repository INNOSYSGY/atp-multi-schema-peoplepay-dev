prompt --application/shared_components/navigation/lists/bio_data
begin
--   Manifest
--     LIST: Bio_data
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3266628722232518838)
,p_name=>'Bio_data'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PKG_GLOBAL_FNTS.fn_calcage(dob,current_date) Age,',
'pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) ADDRESS,',
'cell_phone, ',
'email, ',
'marital_code, ',
'no_of_children,',
'nationality,',
'pkg_global_fnts.fn_getlastemployer (id, extract(year from current_date)) past_employer',
'from hr_rcm_individual a',
'where id=9137',
''))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
