prompt --application/shared_components/logic/application_computations/app_module_id
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_MODULE_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3163604186142451111)
,p_computation_sequence=>8
,p_computation_item=>'APP_MODULE_ID'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id',
'from APP_MAIN_MODULE c',
'where exists (select 1',
'            FROM TBLPAGELIST A join APP_MODULE x on a.APP_MODULE_ID = x.ID',
'            where c.id = x.app_main_module_id',
'            and a.webpage_id = :APP_HOME',
'            and MODULE_MAIN !=''GLOBAL''',
'            )',
''))
,p_computation_error_message=>'Current user has multiple default load home pages.	'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
