prompt --application/pages/page_09997
begin
--   Manifest
--     PAGE: 09997
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>9997
,p_name=>'DOCVIEW'
,p_alias=>'DOCVIEW'
,p_step_title=>'DOCVIEW'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3573175027451366319)
,p_plug_name=>'Blank with Attributes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3626280493172219276)
,p_name=>'P9997_DOC_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3573175027451366319)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3626280607163219277)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Fetch Document'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'vReportURL       varchar2(3000);',
'vBlobRef         blob;',
'vRequest         utl_http.req;',
'VRESPONSE        UTL_HTTP.RESP;',
'vData            raw(32767);',
'V_SCHEMA         VARCHAR2(50);',
'V_PATH           VARCHAR2(3000);',
'V_FOLDER         VARCHAR2(50);',
'v_option         varchar2(50);',
'v_filename       varchar2(1000);',
'begin',
'----------------------------------------------------------------------------',
'-- build URL to call the report',
'----------------------------------------------------------------------------',
'--v_option := lower(pkg_global_fnt.fn_get_option_val (''REPORTS_PROD''));',
'delete from demo_pdf;',
' ',
'SELECT LOWER(SYS_CONTEXT(''userenv'',''db_name'')) INTO V_SCHEMA FROM DUAL;',
'',
'--Get the File name --',
'begin',
'    select file_name',
'    into v_filename',
'    from media_detail',
'    where id = :P9997_DOC_ID;',
'    exception when others then null; ',
'end;',
'',
' -- Certificate not set up, but not needed since vreporturl is never exposed to user'' --',
'--vreporturl := ''http://localhost:7101/DPRest/rest/file/convert/''||:P9997_DOC_SRC;--VTJGc2RHVmtYMStLQnA1NkpGa1lhZG5SZHhic1Mza3BETGo3VlBuWTIxbnB4cEdGWVNxTVhWLzQ0VkhGdXNPQ3RJbE9MeWh2T2ZSSFdDZFB6WGNaUUdoc3pYcUhnUVgwYVlZeFpCajVsNWFoTWV0SDVOYWIzVXdZWm9JbU'
||'RGSWlma2p2c2RaZUl4MjZEUzMzWitGZHJBPT0='';',
'  ',
'--vreporturl := ''http://localhost:7101/DPRest/rest/fileUnSecure/convert/localhost/orasrv1/1521/doctest/doctest/ .media_detail/FILE_DATA/FILE_MIME/''||:P9997_DOC_ID;  ',
'vreporturl := ''http://apps4.innosysgy.com:7101/DPRest/rest/fileUnSecure/convert/localhost/orasrv1/1521/doctest/doctest/ .media_detail/FILE_DATA/FILE_MIME/''||:P9997_DOC_ID;',
'  ',
'--alert   (VREPORTURL);  ',
'----------------------------------------------------------------------------',
'-- get the blob reference',
'----------------------------------------------------------------------------',
'insert into demo_pdf (pdf_report)',
'values( empty_blob() )',
'returning pdf_report into vBlobRef;',
'----------------------------------------------------------------------------',
'-- Get the pdf file from JasperServer by simulating a report call from the browser',
'----------------------------------------------------------------------------',
'vRequest := utl_http.begin_request(vReportUrl);',
'utl_http.set_header(vRequest, ''User-Agent'', ''Mozilla/4.0'');',
'vResponse := utl_http.get_response(vRequest);',
'loop',
'  begin',
'    --------------------------------------------------------------------',
'    -- read the next chunk of binary data',
'    --------------------------------------------------------------------',
'    utl_http.read_raw(vResponse, vData,32767);',
'    --------------------------------------------------------------------',
'    -- append it to our blob for the pdf file',
'    --------------------------------------------------------------------',
'    Dbms_Lob.writeAppend',
'    ( lob_loc => vBlobRef',
'    , amount  => Utl_Raw.length(vData)',
'    , buffer  => vData',
'    );',
'  exception when utl_http.end_of_body then',
'    exit; -- exit loop',
'  end;',
'end loop;',
'utl_http.end_response(vResponse);',
'htp.flush;',
'htp.init;',
'owa_util.mime_header(''application/pdf'',false);',
'htp.p(''Content-length: '' || dbms_lob.getlength(vBlobRef));',
'htp.p(''Content-Disposition:inline;filename="''||nvl(v_filename,''preview'')||''.pdf'');',
'owa_util.http_header_close;',
'wpg_docload.download_file(vBlobRef);',
' ',
' -- Release the resources associated with the temporary LOB.',
'--DBMS_LOB.freetemporary(l_blob);',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3204488613965222703
);
wwv_flow_imp.component_end;
end;
/
