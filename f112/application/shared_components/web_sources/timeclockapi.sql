prompt --application/shared_components/web_sources/timeclockapi
begin
--   Manifest
--     WEB SOURCE: TimeclockAPI
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(3131401965474499446)
,p_name=>'TimeclockAPI'
,p_static_id=>'Timeclock_API'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(3131400228396499444)
,p_remote_server_id=>wwv_flow_imp.id(264901493307283121)
,p_url_path_prefix=>'/customers'
,p_sync_table_owner=>'CORREIA'
,p_sync_table_name=>'HR_ATT_TIMECLOCK_APIDATA'
,p_sync_type=>'REPLACE'
,p_sync_interval=>'FREQ=DAILY;INTERVAL=1;BYHOUR=0;BYMINUTE=30;BYSECOND=0'
,p_sync_max_http_requests=>1000
,p_pass_ecid=>true
,p_version_scn=>1
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(3131402138298499446)
,p_web_src_module_id=>wwv_flow_imp.id(3131401965474499446)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
wwv_flow_imp.component_end;
end;
/
