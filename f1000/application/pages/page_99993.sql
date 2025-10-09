prompt --application/pages/page_99993
begin
--   Manifest
--     PAGE: 99993
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
 p_id=>99993
,p_name=>'99993 rpttrainingguide'
,p_alias=>'99993-RPTTRAININGGUIDE'
,p_step_title=>'Training Management Guide'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10189428489646641293)
,p_plug_name=>'View Training Management Guide'
,p_region_name=>'view_pdf'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p align="center">',
'<iframe src="f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=VIEW_PDF:NO:GUIDE_ID,&GUIDE_ID." width="99%" height="1000">',
'</iframe>',
'</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10189429494810641303)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(671172229930897876)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10189429494810641303)
,p_button_name=>'SHOW_GUIDE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Show Guide'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(671171584924897875)
,p_name=>'P99993_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10189428489646641293)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    id',
'from',
'    hr_hcf_guides',
'where ',
'    id = (',
'        select ',
'            max(a.id) ',
'        from ',
'            hr_hcf_guides a ',
'            join APP_MODULE b on a.module = b.id ',
'        where ',
'            b.module_name = ''TRAINING MANAGEMENT'')'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(696972631832452869)
,p_name=>'ShowPDF'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(696973072858452869)
,p_event_id=>wwv_flow_imp.id(696972631832452869)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'select ',
'    id into :GUIDE_ID',
'from',
'    hr_hcf_guides',
'where ',
'    id = (',
'        select ',
'            max(a.id) ',
'        from ',
'            hr_hcf_guides a ',
'            join APP_MODULE b on a.module = b.id ',
'        where ',
'            b.module_name = ''TRAINING'');',
'',
'END;',
''))
,p_attribute_02=>'P99993_ID'
,p_attribute_03=>'GUIDE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(696973561536452870)
,p_event_id=>wwv_flow_imp.id(696972631832452869)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#view_pdf'').html('''');',
'',
'//alert(''value &GUIDE_ID.'');',
'',
'',
'var url = ''f?p=''+apex.item(''pFlowId'').getValue()+'':0:''+apex.item(''pInstance'').getValue()+'':APPLICATION_PROCESS=VIEW_PDF:NO:GUIDE_ID,&GUIDE_ID.'';',
'var preview = document.createElement(''embed''); ',
'preview.type = "application/pdf";',
'preview.width="100%";',
'preview.height="625px";',
'preview.src = url;',
'$("#view_pdf").append(preview);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(671172625107897876)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_GUIDE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :GUIDE_ID := :P99993_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(671172229930897876)
,p_internal_uid=>27696703228143371
);
wwv_flow_imp.component_end;
end;
/
