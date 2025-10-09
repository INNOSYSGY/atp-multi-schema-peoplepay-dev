prompt --application/pages/page_00464
begin
--   Manifest
--     PAGE: 00464
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>464
,p_name=>'DocumentNIS'
,p_step_title=>'DocumentNIS'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3903247222393259797)
,p_plug_name=>'Document'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699768095027387932)
,p_name=>'P464_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3903247222393259797)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699768505030387933)
,p_name=>'P464_PARAMETERS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3903247222393259797)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699768977832387933)
,p_name=>'P464_REPORT_PATH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3903247222393259797)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699769298896387933)
,p_name=>'P464_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3903247222393259797)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3699769753514387934)
,p_name=>'P464_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3903247222393259797)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3699770578078387940)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Preview_Doc'
,p_process_sql_clob=>'pkg_generators.generate_nis_txt(:P464_ID,:P464_START_DATE,:P464_END_DATE,SUBSTR(:P464_PARAMETERS,1,1));'
,p_process_clob_language=>'PLSQL'
,p_process_when_type=>'NEVER'
,p_internal_uid=>3056294656198633435
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3699770147980387939)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'download'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    lob_loa        BLOB;   ',
'    lob_loc        BLOB;',
'    buffer         RAW(32767);',
'    amt            BINARY_INTEGER := 120;',
'    pos            INTEGER := 1;',
'    i              INTEGER;',
'    v_mime        varchar2(100);',
'    v_mime1        varchar2(500);',
'    v_mime2        varchar2(100);',
'    v_bank_id      number;',
'    v_month        varchar2(50);',
'    year           number;',
'    bloblength     number;',
'    amt2        INTEGER := 1;',
'    amt4        number;',
'    ',
'BEGIN',
'    ',
'    DBMS_LOB.CREATETEMPORARY(lob_loa,true);  ',
'    DBMS_LOB.CREATETEMPORARY(lob_loc,true);',
'    ',
'    select count(1) into amt4   FROM pa_pmg_NisExport a ',
'    where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P464_START_DATE',
' and trunc(a.End_Date) =:P464_END_DATE',
' and a.org_id= :P464_ID;',
'    ',
'       ',
'   for I in (',
'            SELECT ROWNUM amt3, trim(REGNO||REMMIT_YEAR||LPAD(TRIM(REMMIT_MONTH),2,0)||FREQUENCY||SSN||SURNAME||FIRST_NAME||DATE_OF_PERIOD1||DATE_OF_PERIOD2||DATE_OF_PERIOD3||DATE_OF_PERIOD4',
'            ||DATE_OF_PERIOD5||WAGES_PERIOD1||WAGES_PERIOD2||WAGES_PERIOD3||WAGES_PERIOD4||WAGES_PERIOD5|| EMPLOYEE_CONT_AMOUNT||EMPLOYER_CONT_AMOUNT) AS TEXT1',
'                  ',
'      FROM pa_pmg_NisExport a ',
'    where upper(a.FREQUENCY) =   case when upper(:P1403_PAYMENT_FREQUENCY)=''WEEKLY'' or  upper(:P1403_PAYMENT_FREQUENCY)=''FORTNIGHTLY'' then ''W'' else ''M'' end',
' and trunc(a.Start_Date)=:P464_START_DATE',
' and trunc(a.End_Date) =:P464_END_DATE',
' and a.org_id= :P464_ID     ',
'       ',
'   ',
'   ) loop',
'            ',
'            case when I.amt3 = amt4 then  v_mime1:=I.TEXT1;',
'                 else v_mime1:=I.TEXT1||chr(13)||chr(10);',
'                 end case;',
'            ',
'           -- v_mime1:=I.TEXT1;        ',
'            ',
'            select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'                DBMS_LOB.APPEND(lob_loc, lob_loa);',
'            ',
'     end loop;',
'     ',
'     ',
'   --  bloblength:=DBMS_LOB.GetLength(lob_loc);',
'     ',
'    -- DBMS_LOB.ERASE(lob_loc, amt2,bloblength);',
'        ',
'     v_mime := ''TEXT/PLAIN'';       ',
'     owa_util.mime_header(v_mime,false);',
'',
'     htp.p(''Content-length: '' || dbms_lob.getlength(lob_loc));',
'     htp.p(''Content-Disposition:attachment;filename="out.txt"'');',
'     owa_util.http_header_close;',
'     wpg_docload.download_file(lob_loc);  ',
'     DBMS_LOB.FREETEMPORARY (lob_loa);',
'     DBMS_LOB.FREETEMPORARY (lob_loc);',
'     apex_application.stop_apex_engine;   ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3056294226100633434
);
wwv_flow_imp.component_end;
end;
/
