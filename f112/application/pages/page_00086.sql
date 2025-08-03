prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'Delete_Duplicates'
,p_step_title=>'Delete_Duplicates'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3184506054950035866)
,p_plug_name=>'Delete Duplicates'
,p_region_template_options=>'#DEFAULT#:::t-Region--accent5::t-Region--scrollBody:::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3184506214164035867)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3184506054950035866)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#::t-Button--danger::t-Button--iconRight:::::::'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete Deductions'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-low-vision'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184506280932035868)
,p_name=>'P86_DEDUCTIONS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3184506054950035866)
,p_prompt=>'Deductions'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select surname_hist||'', ''||first_name_hist||'' Dated ''||datestart||'' ''||deduction_no||'' Amt ''||trim(to_char(deduction_amount,''$999,999,999'')) a, id',
'FROM pa_pcf_admindeduction a',
'WHERE expense_id in (13744,13706,13709,13761,13715,13721,13760,13742,13779,13481, 13714,13747,13717,13720,13719,13700,13487,13745,13741,13739,13713,13718,13759,13708,13710 )',
'and deduct_status=''IP''',
'and exists (select 1',
'            from pa_pcf_earningperiod b',
'            where a.employment_class_id =b.employment_class_id',
'            and a.payment_type =b.payment_type',
'            and a.org_id =b.org_id',
'            and b.id= :P86_EARNINGS_PERIOD_ID',
'            )',
'and not exists (select 1',
'                from pa_pmg_payrolldeduction k',
'                where a.id =k.adm_deduction_id)            ',
'order by emp_id,expense_id'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P86_EARNINGS_PERIOD_ID'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3184890893156738615)
,p_name=>'P86_EARNINGS_PERIOD_ID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3184506054950035866)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Earnings Period'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1251_PAYROLL_DATE is null then',
'RETURN ',
' ''select earn_description,id',
'from VW_EARNNOTPAID a',
'where exists (select 1',
'              from vw_useraccess x',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type)=upper(a.payment_type))',
'and not exists (select 1',
'               from PA_PMG_PAYROLLHD w',
'                where a.id=w.EARNINGS_PERIOD_ID)',
'order by end_date desc'';',
'ELSE',
'return',
'''select earn_description, id',
'from vw_earnall',
'order by end_date desc'';',
'',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_read_only_when=>'P1251_PAY_STATUS'
,p_read_only_when2=>'CR:AR'
,p_read_only_when_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'SINGLE',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3184506440751035869)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete_dup'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
' BEGIN',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P86_DEDUCTIONS);',
'  execute immediate ''alter trigger TRIG_ADMIN_DTL disable'';',
'  ',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'	delete',
'    FROM pa_pcf_admindeduction A',
'    WHERE id=l_selected(i)',
'     AND NOT EXISTS(SELECT 1',
'                   FROM pa_pmg_payrolldeduction B',
'                   WHERE A.ID = B.ADM_DEDUCTION_ID);',
'        ',
'  END LOOP;  ',
'    commit;',
'    ',
'     execute immediate ''alter trigger TRIG_ADMIN_DTL enable'';',
'    :P86_DEDUCTIONS := null;',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3184506214164035867)
,p_process_when=>'P86_DEDUCTIONS'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3068722306894722164
);
wwv_flow_imp.component_end;
end;
/
