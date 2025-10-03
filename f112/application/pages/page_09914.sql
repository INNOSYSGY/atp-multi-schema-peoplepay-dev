prompt --application/pages/page_09914
begin
--   Manifest
--     PAGE: 09914
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
 p_id=>9914
,p_name=>'9914 rptempmgtguide'
,p_alias=>'9914-RPTEMPMGTGUIDE'
,p_step_title=>'Employment Guide'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(43745288751930753)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4485069206427690060)
,p_plug_name=>'View Employee Management Guide'
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
 p_id=>wwv_flow_imp.id(4485070211591690070)
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
 p_id=>wwv_flow_imp.id(143462484160431769)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4485070211591690070)
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
 p_id=>wwv_flow_imp.id(143461768258431769)
,p_name=>'P9914_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4485069206427690060)
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
'            b.module_name = ''EMPLOYEE MANAGEMENT''',
'            and upper(a.sub_module) like upper(''%Employee Man%''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(169275260585978814)
,p_name=>'ShowPDF'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169275729654978815)
,p_event_id=>wwv_flow_imp.id(169275260585978814)
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
'                select ',
'            max(a.id) ',
'        from ',
'            hr_hcf_guides a ',
'            join APP_MODULE b on a.module = b.id ',
'        where ',
'            b.module_name = ''EMPLOYEE MANAGEMENT''',
'            and upper(a.sub_module) like upper(''%Employee Man%''));',
'',
'',
':GUIDE_ID := :P9914_ID;',
'',
'END;'))
,p_attribute_02=>'P9914_ID'
,p_attribute_03=>'GUIDE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(169276185025978815)
,p_event_id=>wwv_flow_imp.id(169275260585978814)
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
 p_id=>wwv_flow_imp.id(143462874133431771)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_GUIDE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    :GUIDE_ID := :P9914_ID;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(143462484160431769)
,p_internal_uid=>27678740277118066
);
wwv_flow_imp.component_end;
end;
/
