prompt --application/shared_components/user_interface/lovs/movements
begin
--   Manifest
--     MOVEMENTS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3253884233578635768)
,p_lov_name=>'MOVEMENTS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Initcap(change_type)||'' Effected:''||to_char(from_date,''DD-MON-YYYY'')||'' to:''||to_char(to_date,''DD-MON-YYYY'') a, id',
'from hr_mov_empmovement_new',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'A'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
