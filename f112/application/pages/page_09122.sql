prompt --application/pages/page_09122
begin
--   Manifest
--     PAGE: 09122
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>9122
,p_name=>'DownloadNIB'
,p_alias=>'DOWNLOADNIB'
,p_step_title=>'DownloadNIB'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335765090798965472)
,p_name=>'P9122_MONTHS'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Months'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335765522760965472)
,p_name=>'P9122_EMPLOYER'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335765849456965473)
,p_name=>'P9122_YEAR_OF_INCOME'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(126547978055322512)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GenerateTXT'
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
'    v_company_name  varchar2(200);',
'    v_month_name    varchar(3):='''';',
'    v_temp_date date;',
'BEGIN',
'    ',
'    DBMS_LOB.CREATETEMPORARY(lob_loa,true);  ',
'    DBMS_LOB.CREATETEMPORARY(lob_loc,true);',
'',
'  /*  v_mime1:=''TIN,Employee_Number,First_Name,Last_Name,Other_Names,Address,Pay_Frequency,Period_Employed,Employee_Type,Value_7A,Value_7B,Value_7C_Taxable,Value_7C_Non_Taxable,Total_Income,Personal_Allowance,Employee_NIS_Contribution,Total_Deduction'
||'s,Tax_Deducted,Date_Of_Birth''||chr(13)||chr(10);',
'            select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'            DBMS_LOB.APPEND(lob_loc, lob_loa);*/',
'',
'   for I in (',
'   ',
'select ''R,00000000,0323,000000,073670,0,''||upper(pa.surname_hist)||'',''||upper(trim(pa.first_name_hist))||'',''|| ',
'             upper(pkg_global_fnts.fn_getCurNISTAXNO(em.ind_id,''NIB NUMBER'',pa.period_start))||'',''||',
'             lpad(to_char(ceil(sum(pa.gross_nis))), 6, ''0'')||'',''||',
'             sum(pa.nis_employer+pa.nis_employee) *100||'',''||',
'             round((max(pa.period_end)-min(pa.period_start))/7)||'',''||',
'             case when upper(payment_type_hist)=''MONTHLY'' then ''M'' else ''W'' end',
'             new_format',
'from pa_pmg_payrolldtl pa',
'join pa_pcf_earningperiod ep on PA.EARNINGS_PERIOD_ID=ep.id',
'join hr_rcm_employee em on pa.emp_id=em.id',
'where',
'pa.NIS_Employee + pa.NIS_Employer > 0',
'and pa.org_id=37211',
'and extract(year from pa.period_start)||extract(month from pa.period_start)= :P9122_MONTHS',
'group by pa.emp_id, pa.surname_hist, pa.first_name_hist, pkg_global_fnts.fn_getCurNISTAXNO(em.ind_id,''NIB NUMBER'',pa.period_start), payment_type_hist',
'order by pa.surname_hist,pa.first_name_hist',
'   ) loop',
'            ',
'            ',
'            ',
'            ',
'            ',
'            v_mime1:=I.new_format;',
'            ',
'           -- if (I.ind = 0) then v_mime1:=v_mime1||chr(13)||chr(10); end if;',
'            v_mime1:=v_mime1||chr(13)||chr(10); ',
'            ',
'            select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'            DBMS_LOB.APPEND(lob_loc, lob_loa);',
'           ',
'            end loop;',
'',
'',
'',
'    select max(period_start) into v_temp_date from pa_pmg_payrolldtl where  extract(year from period_start)||extract(month from period_start)= :P9122_MONTHS;',
'',
'        ',
'     v_mime := ''TEXT/PLAIN'';       ',
'     owa_util.mime_header(v_mime,false);',
'     select ''000073670_''||extract(year from v_temp_date)||',
'     lpad(to_char(extract(month from v_temp_date)), 2, ''0'')',
'     ||''_NH_R'' into v_company_name from dual;',
'     if (:P9122_MONTHS<13) then',
'       if (:P9122_MONTHS<10) then ',
'           v_month_name:=''-0''||:P9122_MONTHS;',
'       else ',
'          v_month_name:=''-''||:P9122_MONTHS;',
'       end if; ',
'     ',
'     end if;',
'     ',
'     ',
'     htp.p(''Content-length: '' || dbms_lob.getlength(lob_loc));',
'     htp.p(''Content-Disposition:attachment;filename="''||v_company_name||''.txt"'');',
'     owa_util.http_header_close;',
'     wpg_docload.download_file(lob_loc);  ',
'     DBMS_LOB.FREETEMPORARY (lob_loa);',
'     DBMS_LOB.FREETEMPORARY (lob_loc);',
'     apex_application.stop_apex_engine;   ',
'',
'END;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10763844199008807
);
wwv_flow_imp.component_end;
end;
/
