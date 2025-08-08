prompt --application/create_application
begin
--   Manifest
--     FLOW: 112
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'TEMPLATE_APPV8')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Multi Schema PeoplePay')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'PEOPLEPAY')
,p_application_group=>wwv_flow_imp.id(71888203550068271)
,p_application_group_name=>'PeoplePayv8'
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'828D5E4B0476A62BFEEA8C4E5412FF674646AA1F25F96FF18FD3C91A791A6853'
,p_checksum_salt_last_reset=>'20180902192409'
,p_bookmark_checksum_function=>'MD5'
,p_accept_old_checksums=>false
,p_compatibility_mode=>'24.2'
,p_accessible_read_only=>'N'
,p_session_state_commits=>'IMMEDIATE'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DD-MON-YYYY'
,p_date_time_format=>'DD-MON-YYYY HH:MIPM'
,p_timestamp_format=>'DD-MON-YYYY HH24.MI.SSXFF'
,p_timestamp_tz_format=>'&MY_TIMESTAMP_TZ_FORMAT.'
,p_nls_comp=>'BINARY'
,p_direction_right_to_left=>'N'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(3305289463095400608)
,p_populate_roles=>'A'
,p_application_tab_set=>1
,p_logo_type=>'T'
,p_logo_text=>'&APP_ORG_NAME.:- PeoplePay ERP(v9.0)  &SIMPLE_MODE.'
,p_app_builder_icon_name=>'innosys_logo.png'
,p_favicons=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link rel="shortcut icon" href="#APP_IMAGES#Innosys.png" />',
'<link rel="icon" href="#APP_IMAGES#Innosys.png" />'))
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>unistr('HRMIS v9 powered by Oracle 23AI, ERP Solution by Innosys Inc. Tel (592)-226-8964, (592)-623-8964, (592)-501-0589, (592)-672-0295 :-Login Since:- &START_LOGIN.  Copyright \00A9 2000 - 2025 All rights reserved.')
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_referrer_policy=>'strict-origin-when-cross-origin'
,p_deep_linking=>'Y'
,p_vpd=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :G_PARSING_SCHEMA !=''TEMPLATE_APPV8'' then',
'    apex_util.set_parsing_schema_for_request (p_schema => :G_PARSING_SCHEMA );',
'end if;'))
,p_runtime_api_usage=>'T'
,p_pass_ecid=>'N'
,p_authorize_public_pages_yn=>'Y'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'Y'
,p_oracle_text_function_type=>'CUSTOM'
,p_oracle_text_function=>'eba_demo_ig_text_pkg.convert_text_query'
,p_friendly_url=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'PeoplePay Enterprise Resource Planner'
,p_substitution_string_02=>'GETTING_STARTED_URL'
,p_substitution_value_02=>'http://www.oracle.com/technetwork/developer-tools/apex/index.html'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>62
,p_version_scn=>45050095465763
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'N'
);
wwv_flow_imp.component_end;
end;
/
