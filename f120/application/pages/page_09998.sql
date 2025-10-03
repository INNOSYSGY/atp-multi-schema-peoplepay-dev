prompt --application/pages/page_09998
begin
--   Manifest
--     PAGE: 09998
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>9998
,p_name=>'Attachment'
,p_alias=>'ATTACHMENT'
,p_step_title=>'Attachment'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3597885360965194977)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :FILE_TYPE = ''INDIVIDUAL'' then ',
'        blob2attachment(''hr_rcm_individual'',''photo'',''filename'',''mimetype'',''id'',:FILE_ID);',
'    elsif :FILE_TYPE = ''ORGANISATION'' then',
'        blob2attachment(''hr_hcf_organisation'',''photo'',''filename'',''mimetype'',''id'',:FILE_ID);',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3176093367767198403
);
wwv_flow_imp.component_end;
end;
/
