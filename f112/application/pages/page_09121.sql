prompt --application/pages/page_09121
begin
--   Manifest
--     PAGE: 09121
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>9121
,p_name=>'DownloadE-GRA'
,p_alias=>'DOWNLOADE-GRA'
,p_step_title=>'DownloadE-GRA'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325002217901956674)
,p_name=>'P9121_MONTHS'
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
 p_id=>wwv_flow_imp.id(3325002649863956674)
,p_name=>'P9121_EMPLOYER'
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
 p_id=>wwv_flow_imp.id(3325002976559956675)
,p_name=>'P9121_YEAR_OF_INCOME'
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
 p_id=>wwv_flow_imp.id(3325001859998956673)
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
'BEGIN',
'    ',
'    DBMS_LOB.CREATETEMPORARY(lob_loa,true);  ',
'    DBMS_LOB.CREATETEMPORARY(lob_loc,true);',
'',
'    v_mime1:=''TIN,Employee_Number,First_Name,Last_Name,Other_Names,Address,Pay_Frequency,Period_Employed,Employee_Type,Value_7A,Value_7B,Value_7C_Taxable,Value_7C_Non_Taxable,Total_Income,Personal_Allowance,Employee_NIS_Contribution,Total_Deductions,'
||'Tax_Deducted,Date_Of_Birth''||chr(13)||chr(10);',
'            select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'            DBMS_LOB.APPEND(lob_loc, lob_loa);',
'',
'   for I in (',
'select',
'            trim(nvl(tin,''''))||'',''|| ',
'            min(trim(nvl(EMPNO,'',''))) ||'',''|| ',
'            max(trim(nvl(FIRST_NAME,''''))) ||'',''||    ',
'            max(trim(nvl(LAST_NAME,''''))) ||'',''|| ',
'            '',''|| ',
'            --max(trim(''"''||nvl(replace(ADDRESS,''/'',''-''),''Address'')||''"'')) ||'',''|| ',
'            max(trim(nvl(replace(replace(ADDRESS,''/'',''-''),'','','' ''),''Address''))) ||'',''|| ',
'            PAY_FREQUENCY_CSV ||'',''|| ',
'            max(to_number(trim(nvl(cast(MONTHS_EMPLOYED as varchar(3)),'''')))) ||'',''|| ',
'            max(EMPLOYEE_TYPE)||'',''||             ',
'            sum(nvl(Value_7A,0)) ||'',''|| ',
'            sum(nvl(Value_7B,0)) ||'',''|| ',
'            sum(nvl(Value_7C_Taxable,0)) ||'',''|| ',
'            sum(nvl(Value_7C_Non_Taxable,0)) ||'',''|| ',
'            sum(nvl(Total_Income,0)) ||'',''|| ',
'            sum(nvl(TAX_FREE,0)) ||'',''|| ',
'            sum(nvl( NIS_EMPLOYEE,0)) ||'',''|| ',
'            sum(nvl( Value_Medical,0)) ||'',''|| ',
'            sum(nvl(Total_Deduction ,0)) ||'',''|| ',
'            sum(nvl(Tax_Deducted,0)) ||'',''|| 			',
'            max(nvl(to_char(DOB,''YYYY-MM-DD''),'''')) new_format, 0 ind            ',
'          ',
'from GRA_FORM2 a',
'where exists (select 1',
'			  from gra_form2_hd b ',
'			  where b.ID=a.FORM2_HD',
'			  and Year_of_Income = :P9121_YEAR_OF_INCOME',
'			  and ORG_id = :P9121_EMPLOYER   ',
'              and nvl(EXTRACT(month FROM start_period),13)= :P9121_MONTHS',
'			  )',
'--and length(tin)=9    ',
'group by trim(nvl(tin,'''')),DOB, a.FIRST_NAME, PAY_FREQUENCY_CSV',
'union all',
'select',
'          trim(Employer_TIN) ||'',''|| ',
'          '',''|| ',
'          trim(Employer_Name) ||'',''|| ',
'          '',''|| ',
'          case when REMITTANCE_TYPE=''FORM5'' then extract(month from START_PERIOD)||''/''||extract(year from START_PERIOD) else to_char(YEAR_OF_INCOME) end||'',''|| ',
'          trim(''"''||nvl(replace(replace(ADDRESS,''/'',''-''), chr(13),'''') ,''Address'')||''"'') ||'',''|| ',
'          '',''|| ',
'          to_number(NVL(TOTAL_EMPLOYEES_SUBMITTED,0)) ||'',''|| ',
'          '',''|| ',
'          nvl(Total_Value_7A,0)||'',''|| ',
'          nvl(Total_Value_7B,0)||'',''|| ',
'          nvl(TOTAL_VALUE_7C_TAXABLE,0)||'',''|| ',
'          nvl(TOTAL_VALUE_7C_NON_TAXABLE ,0)||'',''|| ',
'          nvl(TOTAL_TOTAL_INCOME,0)||'',''|| ',
'          nvl(Total_Statutory_Deduction ,0)||'',''|| ',
'          nvl(Total_NIS_Contribution,0)||'',''|| ',
'          nvl(Total_Deduction,0) ||'',''|| ',
'          nvl(Total_Tax_Deducted ,0)||'',''|| ',
'          nvl(NULL,''''), 1 ind',
'          ',
'FROM GRA_FORM2_HD',
'where Year_of_Income = :P9121_YEAR_OF_INCOME',
'and ORG_id = :P9121_EMPLOYER',
' and nvl(EXTRACT(month FROM start_period),13)= :P9121_MONTHS',
'   ',
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
'            end loop;',
'',
'',
'',
'    ',
'',
'        ',
'     v_mime := ''TEXT/PLAIN'';       ',
'     owa_util.mime_header(v_mime,false);',
'     select SHORT_NAME into v_company_name from HR_HCF_ORGANISATION where id=:P9121_EMPLOYER;',
'     if (:P9121_MONTHS<13) then',
'       if (:P9121_MONTHS<10) then ',
'           v_month_name:=''-0''||:P9121_MONTHS;',
'       else ',
'          v_month_name:=''-''||:P9121_MONTHS;',
'       end if; ',
'     ',
'     end if;',
'     ',
'     ',
'     htp.p(''Content-length: '' || dbms_lob.getlength(lob_loc));',
'     htp.p(''Content-Disposition:attachment;filename="paye-''||v_company_name||''-''||:P9121_YEAR_OF_INCOME||v_month_name||''.csv"'');',
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
,p_internal_uid=>3209217726142642968
);
wwv_flow_imp.component_end;
end;
/
