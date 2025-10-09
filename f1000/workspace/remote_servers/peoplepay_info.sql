prompt --workspace/remote_servers/peoplepay_info
begin
--   Manifest
--     REMOTE SERVER: peoplepay-info
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(264901493307283121)
,p_name=>'peoplepay-info'
,p_static_id=>'peoplepay_info'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('peoplepay_info'),'http://peoplepay.info:13306/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('peoplepay_info'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('peoplepay_info'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('peoplepay_info'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('peoplepay_info'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('peoplepay_info'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('peoplepay_info'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('peoplepay_info'),'')
);
wwv_flow_imp.component_end;
end;
/
