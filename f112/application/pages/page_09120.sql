prompt --application/pages/page_09120
begin
--   Manifest
--     PAGE: 09120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>9120
,p_name=>'downloadcsvbank'
,p_alias=>'DOWNLOADCSVBANK'
,p_step_title=>'downloadcsvbank'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325004119863960090)
,p_name=>'P9120_PAY_PERIODS'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325004563001960090)
,p_name=>'P9120_BANK'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325004950960960091)
,p_name=>'P9120_EARNING_PERIOD'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325003755418960089)
,p_process_sequence=>10
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
'    v_mime1        varchar2(500):='''';',
'    v_mime2        varchar2(100);',
'    v_bank_id      number;',
'    v_month        varchar2(50);',
'    year           number;',
'    v_t1           varchar(50):='''';',
'    v_t2           varchar(50):='''';',
'      ',
'BEGIN',
'    ',
'    DBMS_LOB.CREATETEMPORARY(lob_loa,true);  ',
'    DBMS_LOB.CREATETEMPORARY(lob_loc,true);',
'  ',
'      ',
'  --   select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'   --  DBMS_LOB.APPEND(lob_loc, lob_loa);',
'',
'',
'   for I in (',
'              select first_name_hist||'' ''||surname_hist name, ',
'                        o.TRANSITS TRANSITS,',
'                        ps.BANK_ACCOUNT_NO account_number,',
'                        ps.amount Amount,',
'                        d.BANK_ACCOUNT_TYPE Account_Type,',
'                        ps.Transaction_Code Transaction_Code,',
'                        to_char(a.period_start,''ddmmyy'')  Value_Date,',
'                        ''Local Dollars (00)'' Currency_Code,',
'                        ''0000201544203'' Originator_Account, ',
'                        ps.Reference ',
'                        from pa_pmg_payrolldtl a',
'                        join HR_RCM_EMPLOYEE b on a.EMP_ID=b.id',
'                        join HR_RCM_INDIVIDUAL c on b.IND_ID=c.id ',
'                        join PA_PMG_PAY_DISBURSEMENT ps on ps.PAYSLIP_ID=a.id',
'                        join HR_HCF_ORGANISATION o on o.id=ps.BANK_BRANCH_ID ',
'                        join hr_rcm_disbursement d on d.id=ps.DISBURSE_ID  ',
'                        where EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P9120_PAY_PERIODS',
'                        and  a.earnings_period_id in (select regexp_substr(:P9120_EARNING_PERIOD,''[^:]+'', 1, level) from dual ',
'                                                       connect by regexp_substr(:P9120_EARNING_PERIOD, ''[^:]+'', 1, level) is not null) ',
'',
'                        and ps.BANK_BRANCH_ID=case when :P9120_BANK=0 then ps.BANK_BRANCH_ID else to_number(:P9120_BANK) end',
'                           ',
'   ) loop',
'             ',
'             SELECT SUBSTR(i.TRANSITS, 1, INSTR(i.TRANSITS, ''-'')-1),',
'                   SUBSTR(i.TRANSITS, INSTR(i.TRANSITS, ''-'')+1)',
'                   into',
'                   v_t1, v_t2  ',
'              FROM dual;',
'       ',
'            v_mime1:= i.name||'',''||v_t1||'',''||v_t2||'',''||i.account_number||'',''||i.Amount||'',''||i.Account_Type',
'                      ||'',''||i.Transaction_Code||'',''||i.Value_Date||'',''||''00,0000201544203''||'',''||i.Reference||chr(13);',
'            ',
'            select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'            DBMS_LOB.APPEND(lob_loc, lob_loa);',
'            ',
'     end loop;',
'',
'        ',
'     v_mime := ''TEXT/PLAIN'';       ',
'     owa_util.mime_header(v_mime,false);',
'',
'     htp.p(''Content-length: '' || dbms_lob.getlength(lob_loc));',
'     htp.p(''Content-Disposition:attachment;filename="out.csv"'');',
'     owa_util.http_header_close;',
'     wpg_docload.download_file(lob_loc);  ',
'     DBMS_LOB.FREETEMPORARY (lob_loa);',
'     DBMS_LOB.FREETEMPORARY (lob_loc);',
'     apex_application.stop_apex_engine;   ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3209219621562646384
);
wwv_flow_imp.component_end;
end;
/
