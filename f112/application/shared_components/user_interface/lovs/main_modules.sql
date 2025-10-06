prompt --application/shared_components/user_interface/lovs/main_modules
begin
--   Manifest
--     MAIN_MODULES
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
 p_id=>wwv_flow_imp.id(3172824608069287081)
,p_lov_name=>'MAIN_MODULES'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(main_module_name) display, id ',
'from APP_MAIN_MODULE z',
'WHERE EXISTS (SELECT 1',
'              FROM TBLRESPONSIBILITY B JOIN TBLUSERDETAIL C ON B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              JOIN TBLRESPONSIBILITYORGPAGE D ON B.RESPONSIBILITY_ID=D.RESPONSIBILITY_ID',
'              JOIN TBLUSER E ON E.USER_ID=C.USER_ID',
'              join TBLPAGELIST A on a.page_id = d.page_id',
'              join APP_MODULE x  on a.APP_MODULE_ID = x.ID  ',
'              where x.APP_MAIN_MODULE_ID = z.id',
'              AND trim(user_name)  = NVL(V(''APP_USER''),USER)',
'              AND CAN_VIEW = ''Y''            ',
'              and trunc(d.start_date) <= trunc(current_date)',
'              and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'             )',
'and trunc(z.start_date) <= trunc(current_date)',
'and (z.end_date is null or trunc(z.end_date) >= trunc(current_date))',
'union',
'select ''ALL'' a, -999 b',
'from dual'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'DISPLAY'
,p_default_sort_column_name=>'DISPLAY'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
