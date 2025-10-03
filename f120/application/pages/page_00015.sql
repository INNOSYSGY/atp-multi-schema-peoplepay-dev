prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_name=>'rptCheckPrinting'
,p_step_title=>'Check Printing'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_step_template=>2979075366320325194
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3602741015696778335)
,p_plug_name=>'Check Printing'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'Cursor c_Emp Is',
'     select b.id num,b.surname_hist lname, b.first_name_hist fname,to_char(payroll_date,''YYYY-MM-DD'') paydate,',
'     to_char(net_pay,''999,999,999'') net_pay,pkg_global_fnts.fn_num_towords(b.net_pay) words,ADDRESS,telnum',
'     from PA_PMG_PAYROLLHD a join PA_PMG_PAYROLLDTL b on a.id=b.pay_batch_id',
'     join hr_hcf_organisation c on c.id=b.org_id',
'     where org_id=:APP_ORG_ID',
'     and a.ID=:P15_PAY_BATCH',
'     and trim(upper(payment_mode_hist))=''CHEQUE'';',
' ',
'    ',
'Begin  ',
' ',
'     sys.htp.p(''<div style="border: 1px dashed black; background-color:light-gray;">'');',
'  for a in c_Emp loop',
'    sys.htp.p(''<div style="border: 1px dashed black;background-color:light-gray;">'');',
'    sys.htp.p(''<b style="padding-left:40%;">''|| ''Date''|| '' '' ||a.paydate||''</b>'');  ',
'    sys.htp.p(''<b style="float:right; font-size: 1.3em; text-decoration: underline;">'' || ''00''|| a.num|| ''</b>'' || ''</br>'' ||''</br>'');',
'    sys.htp.p(''<span ="line-height:0.7">'' || ''PAY TO THE''||''<br>''|| ''ORDER'' ||''</span>'');',
'    sys.htp.p(''<b style=" font-size: 25px;padding-left:40px;text-transform: uppercase; letter-spacing: 2px; border-bottom: text-decoration: underline;">'' || a.lname|| '',''||a.fname ||''</b>''||''<b style=" padding-top: 5px; padding-bottom: 2px;float: rig'
||'ht;font-size: 25px; border: 1px solid black;">''|| ''$''||'' ''||a.net_pay || ''</b>''||''<br>'');',
'    sys.htp.p(''</br>''||''<span style="text-decoration: underline; letter-spacing: 2px; font-size:20px; font-family: gothic; text-transform:uppercase;">'' ||a.words||''</span>'');',
'    sys.htp.p(''</br>'');',
'    sys.htp.p(''<div>'');',
'    sys.htp.p(''<span style= "font-size: 14px; line-height:20px;text-transform: uppercase; font-weight:bold; font-family: copperplate; text-decoration:none;">''||''<u style="float:right; color:transparent; border-bottom: 2px solid black;">''||''0000000000'
||'000000000000000000''||''</u>''',
'              ||''<br>''|| a.ADDRESS|| '' Tel:''||a.telnum||''<u style="float:right; color:transparent; border-bottom: 2px solid black;">''||''0000000000000000000000000000''||''</u>'' ||''</span>'');',
'    sys.htp.p(''</div>'');',
'    sys.htp.p(''</br>'');',
'    --sys.htp.p(''<span style="bitwise">''||''hello heloo helooo''||''</span>'');',
'    sys.htp.p(''<p>''||''''||''</p>'');',
'    ',
'    sys.htp.p(''</div>'');',
'   end loop;',
'   sys.htp.p(''</div>'');',
'   End;',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3602740816009778333)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3602741015696778335)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1251:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3602740876038778334)
,p_name=>'P15_PAY_BATCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3602741015696778335)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/
