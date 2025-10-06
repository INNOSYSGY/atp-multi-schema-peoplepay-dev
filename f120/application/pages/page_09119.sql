prompt --application/pages/page_09119
begin
--   Manifest
--     PAGE: 09119
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
 p_id=>9119
,p_name=>'DownloadBankTXT'
,p_alias=>'DOWNLOADBANKTXT'
,p_step_title=>'DownloadBankTXT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631014398743653943)
,p_name=>'P9119_BANK_ID'
,p_item_sequence=>60
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3631014766360653944)
,p_name=>'P9119_EARNING_PERIOD'
,p_item_sequence=>50
,p_item_display_point=>'LEGACY_ORPHAN_COMPONENTS'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3631013931452653942)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generateTXT'
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
'    V_bank_name    varchar2(200);',
'    v_bank_id     number;',
'    ',
'BEGIN',
'    ',
'    DBMS_LOB.CREATETEMPORARY(lob_loa,true);  ',
'    DBMS_LOB.CREATETEMPORARY(lob_loc,true);',
'    select id into v_bank_id from HR_HCF_ORGANISATION o where o.ORGANISATION_TYPE=''BANK'' and o.SHORT_NAME=:P9119_BANK_ID and PARENT_ORG_ID is null and user_org_id=:APP_ORG_ID;',
'',
'   for I in (',
'',
'            ',
'             select ',
'             (select distinct TRANSITS from HR_HCF_ORGANISATION o',
'              where o.ORGANISATION_TYPE=''BANK'' and UPPER(trim(o.ORGANISATION_NAME))=upper(trim(pd.BANK_BRANCH_NAME)) and o.USER_ORG_ID=a.org_id',
'             )          ',
'             ',
'             ||''|''||replace(pd.BANK_ACCOUNT_NO,''-'','''')||''|''||DI.BANK_ACCOUNT_TYPE||''|''||a.first_name_hist||'' ''||a.surname_hist||''|''|| TRIM(TO_CHAR(a.net_pay, ''999999999.99''))||''|''||''Payroll;'' new_format',
'                from pa_pmg_payrolldtl a',
'             join HR_RCM_EMPLOYEE b on a.EMP_ID=b.id',
'             join HR_RCM_INDIVIDUAL c on b.IND_ID=c.id',
'             join PA_PMG_PAY_DISBURSEMENT pd on pd.PAYSLIP_ID=a.id',
'             join hr_rcm_DISBURSEMENT DI on DI.id=pd.disburse_id',
'             where upper(trim(pd.BANK_BRANCH_NAME)) in',
'                                                        (select UPPER(trim(ORGANISATION_NAME)) from HR_HCF_ORGANISATION ',
'                                                        where PARENT_ORG_ID=',
'                                                        case :P9119_BANK_ID when ''ALL'' then PARENT_ORG_ID',
'                                                                         else v_bank_id',
'                                                                         end',
'                                                        ',
'                                                        union ',
'                                                        select UPPER(trim(ORGANISATION_NAME)) from HR_HCF_ORGANISATION ',
'                                                        where ID=',
'                                                        case :P9119_BANK_ID when ''ALL'' then ID',
'                                                                         else v_bank_id',
'                                                                         end)',
'       ',
'             and upper(a.PAYMENT_MODE_HIST)=''BANK''',
'             and length(trim( replace(pd.BANK_ACCOUNT_NO,''-'','''')))<=20',
'              and a.earnings_period_id in (select regexp_substr(:P9119_EARNING_PERIOD,''[^-]+'', 1, level) from dual ',
'                                           connect by regexp_substr(:P9119_EARNING_PERIOD, ''[^-]+'', 1, level) is not null)  ',
'       ',
'         /*    union all',
'             select ',
'             (select distinct TRANSITS from HR_HCF_ORGANISATION o',
'              where id=d.BANK_BRANCH_ID_DIST',
'             )          ',
'             ',
'             ||''|''||replace(d.BANK_ACCOUNT_NO_DIST,''-'','''')||''|''||d.BANK_ACCOUNT_TYPE||''|''||a.first_name_hist||'' ''||a.surname_hist||''|''|| TRIM(TO_CHAR(a.net_pay*d.PERCENT_SPLIT, ''999999999.99''))||''|''||''Payroll;'' new_format',
'             from pa_pmg_payrolldtl a',
'             join HR_RCM_EMPLOYEE b on a.EMP_ID=b.id',
'             join HR_RCM_INDIVIDUAL c on b.IND_ID=c.id',
'             join HR_RCM_DISBURSEMENT d on a.salary_id=d.salary_id',
'             ',
'             where d.BANK_BRANCH_ID_DIST in',
'                                                        (select id from HR_HCF_ORGANISATION ',
'                                                        where PARENT_ORG_ID=',
'                                                        case :P9119_BANK_ID when ''ALL'' then PARENT_ORG_ID',
'                                                                         else v_bank_id',
'                                                                         end',
'                                                        union ',
'                                                        select id from HR_HCF_ORGANISATION ',
'                                                        where ID=',
'                                                        case :P9119_BANK_ID when ''ALL'' then ID',
'                                                                         else v_bank_id',
'                                                                         end)       ',
'       ',
'             and upper(a.PAYMENT_MODE_HIST)=''MULTI''',
'             and upper(d.PAYMENT_MODE_DIST)=''BANK''',
'             and length(trim( replace(d.BANK_ACCOUNT_NO_DIST,''-'','''')))<=20',
'              and a.earnings_period_id in (select regexp_substr(:P9119_EARNING_PERIOD,''[^-]+'', 1, level) from dual ',
'                                           connect by regexp_substr(:P9119_EARNING_PERIOD, ''[^-]+'', 1, level) is not null)  ',
'   ',
'   */',
'   ',
'   ) loop',
'            ',
'            ',
'            ',
'            ',
'            ',
'            v_mime1:=I.new_format||chr(13);',
'            select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'            DBMS_LOB.APPEND(lob_loc, lob_loa);',
'            end loop;',
'',
'',
'',
'    ',
'    /*v_mime1:=''text1-''||chr(13);',
'    v_mime2:=''text2'';',
'    select utl_raw.cast_to_raw(v_mime1) into lob_loa from dual;',
'',
'    DBMS_LOB.APPEND(lob_loc, lob_loa);*/',
'',
'    ',
'  /* EXCEPTION',
'        WHEN others',
'        THEN null;*/',
'        ',
'     v_bank_name:=''all'';',
'     if (:P9119_BANK_ID<>''ALL'') then',
'     select short_name into v_bank_name from HR_HCF_ORGANISATION where id=v_bank_id;',
'     end if;',
'        ',
'     v_mime := ''TEXT/PLAIN'';       ',
'     owa_util.mime_header(v_mime,false);',
'',
'     htp.p(''Content-length: '' || dbms_lob.getlength(lob_loc));',
'     htp.p(''Content-Disposition:attachment;filename="txt_bank_''||v_bank_name||''.txt'');        ',
'',
'     owa_util.http_header_close;',
'     wpg_docload.download_file(lob_loc);  ',
'     DBMS_LOB.FREETEMPORARY (lob_loa);',
'     DBMS_LOB.FREETEMPORARY (lob_loc);',
'     apex_application.stop_apex_engine;   ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>3209221938254657368
);
wwv_flow_imp.component_end;
end;
/
