prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
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
 p_id=>120
,p_name=>'frmManualWorkflowSCMS'
,p_page_mode=>'MODAL'
,p_step_title=>'Manual Workflow SCMS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'450'
,p_dialog_width=>'700'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3322967107750836457)
,p_plug_name=>'Manual Forwarding'
,p_region_template_options=>'#DEFAULT#:::t-Region--accent12::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )'))
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3161237885079892522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_button_name=>'FORWARD_BTN'
,p_button_static_id=>'P145_FORWARD_BTN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Forward'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161234013680892515)
,p_name=>'P120_USER_REMARKS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161234375111892515)
,p_name=>'P120_TRANSACTION_TYPE_ID_M'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161234844679892515)
,p_name=>'P120_STATUS_M'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161235207759892515)
,p_name=>'P120_MANUAL_FORWARD'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_prompt=>'Employee(s)/User(s)'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USERS, user_name',
'from qry_manual_forward'))
,p_lov_display_null=>'YES'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161235628316892516)
,p_name=>'P120_PROCESS_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161235960154892516)
,p_name=>'P120_RECORD_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_prompt=>'RECORD_NAME'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P120_TABLE_NAME = ''TBLINVENTORYITEM'' then',
'return ',
'       ''SELECT ORG_ITEM_DESCRIPTION a, ORG_ITEM_DESCRIPTION b',
'        FROM QRY_INVENTORY_ITEM_DISCRIP',
'        WHERE INVENTORY_ITEM_ID =:P37_PK_KEY'';',
'        ',
'else',
'    return ''SELECT ''''A'''', ''''1'''' FROM DUAL'';',
'end if;                '))
,p_lov_cascade_parent_items=>'P120_PK_KEY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161236436755892517)
,p_name=>'P120_PK_KEY'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161236769724892517)
,p_name=>'P120_TABLE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161237183416892517)
,p_name=>'P120_PK_KEY_ITEM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3161237600384892518)
,p_name=>'P120_PAGE_NUM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3165254778989950437)
,p_name=>'P120_TABLE_COLUMN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3322967107750836457)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3161233217395892502)
,p_name=>'set_trans_status'
,p_event_sequence=>10
,p_condition_element=>'P120_PK_KEY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3161232746541892501)
,p_event_id=>wwv_flow_imp.id(3161233217395892502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P120_TRANSACTION_TYPE_ID_M'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_string varchar2(1000); v_transactions number; v_status number;',
'',
'begin',
'    v_string:= ''select transaction_type_id  from ''||:P120_TABLE_NAME||'' where ''||:P120_TABLE_COLUMN||''= ''||:P120_PK_KEY;',
'    execute immediate v_string into v_transactions;',
'    return  v_transactions;',
'   ',
'end;'))
,p_attribute_07=>'P120_TABLE_NAME,P120_PK_KEY,P120_TABLE_COLUMN'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3161232178805892500)
,p_event_id=>wwv_flow_imp.id(3161233217395892502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P120_STATUS_M'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_string varchar2(1000); v_transactions number; v_status number;',
'',
'begin',
'    v_string:= ''select  status  from ''||:P120_TABLE_NAME||'' where ''||:P120_TABLE_COLUMN||'' = ''||:P120_PK_KEY;',
'    execute immediate v_string into v_status;',
'   ',
'    return v_status;',
'end;'))
,p_attribute_07=>'P120_TABLE_NAME,P120_PK_KEY,P120_TABLE_COLUMN'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3161231826361892500)
,p_name=>'hide_record'
,p_event_sequence=>20
,p_condition_element=>'P120_PK_KEY'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3161231257617892500)
,p_event_id=>wwv_flow_imp.id(3161231826361892500)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P120_RECORD_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3161233601099892503)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'manual_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'	 ',
'begin',
'',
'	select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'	from TBLTRANSACTIONTYPE ',
'	where TRANSACTION_TYPE_ID =:P120_TRANSACTION_TYPE_ID_M;',
'',
'	select WFL_STATUS_DESCRIPTION into v_description',
'	from tblworkflowstatus',
'	where WFL_STATUS_ID =:P120_STATUS_M;',
'',
'',
'-- Convert the colon separated string of values into',
'-- a PL/SQL array',
'l_selected := APEX_UTIL.STRING_TO_TABLE(:P120_MANUAL_FORWARD);',
'--',
'-- Loop over array to insert department numbers and current_date',
'--',
'FOR i IN 1..l_selected.count LOOP',
'',
'	pkg_biz_rules.pop_manual_notification',
'                        (',
'                            get_transaction||'' for: ''||:P120_RECORD_NAME,',
'                            l_selected(i),',
'                            ''ACTIVE'',',
'                            current_date,',
'                            ''f?p=''||:APP_ID||'':''||:P120_PAGE_NUM||'':''||:APP_SESSION||''::NO::P''||:P120_PAGE_NUM||''_''||:P120_PK_KEY_ITEM||'':''||:P120_PK_KEY,',
'                            v_description||'' ''||get_transaction||'' for: ''||:P120_PROCESS_NAME,',
'                           :P120_STATUS_M,',
'                           :P120_PK_KEY,',
'                           :P120_TABLE_NAME,',
'                           :P120_USER_REMARKS',
'                        );	',
'END LOOP;',
'  :P120_MANUAL_FORWARD:=null;',
'  ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3161237885079892522)
,p_process_success_message=>'Users have been manually notified.'
,p_internal_uid=>3045449467243578798
);
wwv_flow_imp.component_end;
end;
/
