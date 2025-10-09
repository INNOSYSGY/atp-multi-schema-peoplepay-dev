prompt --application/pages/page_09120
begin
--   Manifest
--     PAGE: 09120
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
 p_id=>9120
,p_name=>'downloadcsvbank'
,p_alias=>'DOWNLOADCSVBANK'
,p_step_title=>'downloadcsvbank'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119636946018042733)
,p_name=>'P9120_PAY_PERIODS'
,p_item_sequence=>70
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119637389156042733)
,p_name=>'P9120_BANK'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3119637777115042734)
,p_name=>'P9120_EARNING_PERIOD'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(537880316207749191)
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
'    v_mime1        varchar2(500);',
'    v_mime2        varchar2(100);',
'    v_bank_id      number;',
'    v_month        varchar2(50);',
'    year           number;',
'    v_DB           varchar(50):='''';',
'    v_CB           varchar(50):='''';',
'    v_GBTI           varchar(50):='''';',
'    v_NS           varchar(50):='''';',
'    v_RBGL         varchar(50):='''';',
'    v_organisation_name varchar(200):='''';',
'    ',
'BEGIN',
'    ',
'    DBMS_LOB.CREATETEMPORARY(lob_loa,true);  ',
'    DBMS_LOB.CREATETEMPORARY(lob_loc,true);',
'    ',
'   select upper(organisation_name) into v_organisation_name from HR_HCF_ORGANISATION ',
'     where id in (',
'       select distinct org_id from pa_pmg_payrolldtl a',
'             where  a.earnings_period_id in (select regexp_substr(:P9120_EARNING_PERIOD,''[^-]+'', 1, level) from dual ',
'                                           connect by regexp_substr(:P9120_EARNING_PERIOD, ''[^-]+'', 1, level) is not null)  ',
'',
'     );',
'',
'',
'',
'',
'',
'   ',
'    select id into v_bank_id from HR_HCF_ORGANISATION o where o.ORGANISATION_TYPE=''BANK'' and o.SHORT_NAME=:P9120_BANK and PARENT_ORG_ID is null and user_org_id=:APP_ORG_SHR_DED;',
'   ',
'    select distinct to_char(a.period_start,''Month''), extract(year from a.period_start) into v_month, year from PA_PMG_PAYROLLDTL a ',
'    where extract(year from a.period_start)||extract(Month from a.period_start)=:P9120_PAY_PERIODS;',
'   ',
'   ',
'   ',
'    begin',
'    select max(UPPER(short_name)) into v_DB',
'                                from vw_organisation w',
'                                where organisation_type=''BANK''',
'                                AND PARENT_ORG_ID is  null',
'                                and upper(ORGANISATION_NAME) like ''%DEMERARA%BANK%'';',
'                                ',
'     exception when others then null;                           ',
'     end;',
'     ',
'     begin',
'       select max(UPPER(short_name)) into v_GBTI',
'        from hr_hcf_organisation w',
'        where organisation_type=''BANK''',
'        AND PARENT_ORG_ID is  null',
'        and (upper(ORGANISATION_NAME) like ''%BANK%FOR%TRADE%'' or  upper(ORGANISATION_NAME) like ''%GBTI%'');',
'      exception when others then null;                           ',
'     end;',
'     ',
'     begin',
'        select min(UPPER(short_name)) into v_NS',
'        from hr_hcf_organisation w',
'        where organisation_type=''BANK''',
'        AND PARENT_ORG_ID is  null',
'        and upper(ORGANISATION_NAME) like ''%NOVA%SCOTIA%'';',
'      exception when others then null;                           ',
'     end;',
'     ',
'    begin ',
'        select max(UPPER(short_name)) into v_CB',
'        from hr_hcf_organisation w',
'        where organisation_type=''BANK''',
'        AND PARENT_ORG_ID is  null',
'        and upper(ORGANISATION_NAME) like ''%CITIZENS%BANK%'';',
'    exception when others then null;                           ',
'     end;',
'    ',
'    begin',
'     select max(UPPER(short_name)) into v_RBGL',
'        from hr_hcf_organisation w',
'        where organisation_type=''BANK''',
'        AND PARENT_ORG_ID is  null',
'        and upper(ORGANISATION_NAME) like ''%RBGL%'';',
'  exception when others then null;                           ',
'     end;',
'',
'',
'    case             ',
'            when :P9120_BANK=v_CB then v_mime1:=''ACCOUNT,AMOUNT''||chr(13)||''(company a/c number),=SUM(B3:B5000)''||chr(13);',
'            when :P9120_BANK=v_DB then v_mime1:=v_organisation_name||chr(13)||''DEMERARA BANK LIMITED ''||upper(v_month)||'' ''||year||'' SALARIES REPORT''||chr(13)||'',Name,Transit No.,Bank Account No.,Amount''||chr(13);',
'            when :P9120_BANK=v_GBTI then v_mime1:=v_organisation_name||chr(13)||''EMPLOYEE BEING PAID AT GUYANA BANK OF TRADE AND INDUSTRY (GBTI)''||chr(13)||''Amount,Account No.,Account Name,Value Date''||chr(13);',
'            when :P9120_BANK=v_NS then v_mime1:=''Transit No.,Accoutn No,Account Owner,Amount''||chr(13);',
'             when :P9120_BANK=v_RBGL then v_mime1:=''Bank,RBL Credit Account,Account Type,Payee Name,TXN Amount''||chr(13);',
'           ',
'            ',
'    end case;',
'    ',
'     select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'     DBMS_LOB.APPEND(lob_loc, lob_loa);',
'',
'',
'   for I in (',
'       select ROWNUM, ',
'             o.TRANSITS TRANSITS,',
'              replace(pd.BANK_ACCOUNT_NO,''-'','''') account_no,c.BANK_ACCOUNT_TYPE,a.first_name_hist||'' ''||a.surname_hist name, TRIM(TO_CHAR(pd.amount, ''999999999.99'')) amount, a.period_start',
'             from pa_pmg_payrolldtl a',
'             join HR_RCM_EMPLOYEE b on a.EMP_ID=b.id',
'             join HR_RCM_INDIVIDUAL c on b.IND_ID=c.id',
'             join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'             left join HR_HCF_ORGANISATION o on o.id=pd.BANK_BRANCH_ID',
'             where upper(trim(pd.BANK_BRANCH_NAME)) in',
'                                                        (select UPPER(trim(ORGANISATION_NAME)) from HR_HCF_ORGANISATION ',
'                                                        where PARENT_ORG_ID=v_bank_id',
'                                                        union ',
'                                                        select UPPER(trim(ORGANISATION_NAME)) from HR_HCF_ORGANISATION ',
'                                                        where ID=v_bank_id)       ',
'       ',
'             and pd.PAYMENT_MODE=''BANK''                   ',
'              and  EXTRACT(year FROM a.period_start)||EXTRACT(month FROM a.period_start)=:P9120_PAY_PERIODS',
'              and  a.earnings_period_id in (select regexp_substr(:P9120_EARNING_PERIOD,''[^-]+'', 1, level) from dual ',
'                                           connect by regexp_substr(:P9120_EARNING_PERIOD, ''[^-]+'', 1, level) is not null)  ',
'       ',
'       ',
'      ',
'   ',
'   ) loop',
'            ',
'       ',
'            ',
'            case             ',
'            when (:P9120_BANK=v_CB) then v_mime1:=I.account_no||'',''||I.amount||chr(13);',
'            when (:P9120_BANK=v_DB) then v_mime1:=I.ROWNUM||'',''||I.name||'',''||I.TRANSITS||'',''||I.account_no||'',''||I.amount||chr(13);',
'            when (:P9120_BANK=v_GBTI) then v_mime1:=I.amount||'',=TRIM("  ''||I.account_no||''"),''||I.name||'',''||I.period_start||chr(13);',
'            when (:P9120_BANK=v_NS) then v_mime1:=I.TRANSITS||'',''||I.account_no||'',''||I.name||'',''||I.amount||chr(13);',
'            when (:P9120_BANK=v_RBGL) then v_mime1:=''Republic Bank''||'',"=""''||I.account_no||''""",''||I.BANK_ACCOUNT_TYPE||'',''||I.name||'',''||I.amount||'',''||chr(13);',
'            end case;',
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
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>127301119415366626
);
wwv_flow_imp.component_end;
end;
/
