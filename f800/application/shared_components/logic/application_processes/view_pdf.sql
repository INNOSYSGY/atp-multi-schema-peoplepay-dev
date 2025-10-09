prompt --application/shared_components/logic/application_processes/view_pdf
begin
--   Manifest
--     APPLICATION PROCESS: VIEW_PDF
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(670967922586264410)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'VIEW_PDF'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  vBlob blob;',
'  vmimetype varchar2(50);',
'BEGIN',
'  SELECT file_data, mimetype INTO vBlob, vmimetype',
'                FROM hr_hcf_guides',
'                WHERE ID = :GUIDE_ID;',
'                 ',
'  owa_util.mime_header(vmimetype,false);',
'  htp.p(''Content-Length: '' || dbms_lob.getlength(vBlob)); ',
'  owa_util.http_header_close;  ',
'  wpg_docload.download_file(vBlob);',
'  exception ',
'  when no_data_found then',
'   null;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
