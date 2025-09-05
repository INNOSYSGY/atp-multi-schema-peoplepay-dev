prompt --application/shared_components/automations/automatic_time_loading
begin
--   Manifest
--     AUTOMATION: Automatic Time Loading
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(3103024187226198473)
,p_name=>'Automatic Time Loading'
,p_static_id=>'timeclock-loading'
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=DAILY;INTERVAL=1;BYHOUR=0;BYMINUTE=5'
,p_polling_status=>'DISABLED'
,p_result_type=>'ALWAYS'
,p_use_local_sync_table=>false
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(3103024491188198476)
,p_automation_id=>wwv_flow_imp.id(3103024187226198473)
,p_name=>'Process Times'
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'pkg_timeloading_quickbase.prcd_process_quickbase_request( (current_date) - 1, (current_date) - 1,37211);',
'pkg_timeloading_quickbase.prcd_inserttimeclockjsondata;',
'pkg_timeloading_quickbase.prcd_fixapi_stagetime;',
'pkg_timeloading_quickbase.prcd_loadstage_to_timeclockdetail;',
'',
'        apex_automation.log_warn(sqlerrm);',
'',
'end;',
''))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/
