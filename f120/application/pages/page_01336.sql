prompt --application/pages/page_01336
begin
--   Manifest
--     PAGE: 01336
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
 p_id=>1336
,p_name=>'frmShift'
,p_alias=>'FRMSHIFT'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Shift'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893400528388849)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.negative-value {',
'    color: red;',
'    font-weight: bold;',
'    text-align: center;',
'    display: block;',
'    width: 100%;',
'}'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3840319818142545915)
,p_plug_name=>'Create/Edit Shifts'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3840309120316403363)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_ATT_SHIFT',
'where  id = :P1336_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1336_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(464740189133139883)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(464740256792139884)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(464740477191139886)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(464740535354139887)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(464740625513139888)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3400190439948425329)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3400190855515425329)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1336_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3400191192509425329)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1336_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3400191651835425330)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1336_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3400192836070425331)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1336_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3400193192116425331)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1336:&SESSION.::&DEBUG.:1336::'
,p_button_condition=>'P1336_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3400214509739425355)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1336:&SESSION.::&DEBUG.:1336:P1336_START_DATE:&P1336_START_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3400192836070425331)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3400214940028425355)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1335:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3400190855515425329)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3400216104928425356)
,p_branch_action=>'f?p=&APP_ID.:1336:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(197481954865630813)
,p_name=>'P1336_CURR_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select current_date',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400193579728425332)
,p_name=>'P1336_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400193975492425333)
,p_name=>'P1336_ORG_ID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_COMPANY_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name, id',
'from HR_HCF_ORGANISATION k',
'where trunc(start_date) <= trunc(current_date)',
'and (trunc(End_date) is null or End_date >= trunc(current_date))',
'and Verified_by is not null',
'and user_org_id = :APP_ORG_SHR_DED',
'and country = :APP_COUNTRY',
'order by organisation_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF pkg_global_fnts.User_Org_count(nvl(V(''APP_USER''),USER) )>1 then',
' return TRUE;',
'else',
' return FALSE;',
'end if;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400194412510425333)
,p_name=>'P1336_SHIFT_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shift Type'
,p_source=>'SHIFT_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SHIFT_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLSHIFTTYPE'')) a',
'where org_id= :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400194849760425333)
,p_name=>'P1336_START_TIME'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Time'
,p_format_mask=>'HH12:MI:SS PM'
,p_source=>'START_TIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>3
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400195201021425334)
,p_name=>'P1336_END_TIME'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Time'
,p_format_mask=>'HH12:MI:SS PM'
,p_source=>'END_TIME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400195600558425334)
,p_name=>'P1336_SHIFT_HOURS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Shift Hours'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'SHIFT_HOURS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400196049645425335)
,p_name=>'P1336_LUNCH_TIME_START'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lunch Time Start'
,p_format_mask=>'HH12:MI:SS PM'
,p_source=>'LUNCH_TIME_START'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400196442711425335)
,p_name=>'P1336_LUNCH_TIME_END'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Lunch Time End'
,p_format_mask=>'HH12:MI:SS PM'
,p_source=>'LUNCH_TIME_END'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400196849347425335)
,p_name=>'P1336_LUNCH_HOUR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Lunch Hour (Hrs)'
,p_format_mask=>'999G999G999G999G990D00'
,p_source=>'LUNCH_HOUR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400197177448425336)
,p_name=>'P1336_OVER_NIGHT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Over Night'
,p_source=>'OVER_NIGHT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400197570357425336)
,p_name=>'P1336_LESS_LUNCH_HOUR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Less Lunch Hour'
,p_source=>'LESS_LUNCH_HOUR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400198041185425337)
,p_name=>'P1336_ENFORCE_LUNCH'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Enforce Lunch Hour'
,p_source=>'ENFORCE_LUNCH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_display_when_type=>'NEVER'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400198423208425337)
,p_name=>'P1336_START_DATE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400198800275425338)
,p_name=>'P1336_END_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400199991936425339)
,p_name=>'P1336_SHIFT_CODE'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Shift Code'
,p_source=>'SHIFT_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>15
,p_cMaxlength=>100
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This shift code contains the first letters of the shift type and the start time number  (e.g. 8:00 AM = 08) and the end time number  (e.g. 05:00 PM = 05) and the shift code will be FTS-80-50 (Full Time Shift 8 AM - 5 PM)'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400200919747425340)
,p_name=>'P1336_ID_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400201289623425340)
,p_name=>'P1336_HOLD_SH'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_prompt=>'SH'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400201689201425341)
,p_name=>'P1336_SHLH'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3840319818142545915)
,p_item_default=>'P1336_HOLD_SH'
,p_item_default_type=>'ITEM'
,p_prompt=>'Shlh'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400204014852425344)
,p_name=>'P1336_MACHINE_INSERT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3840309120316403363)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3400204461060425344)
,p_name=>'P1336_MACHINE_UPDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3840309120316403363)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3400205841000425347)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1336_END_DATE) < TO_DATE(:P1336_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3400208943914425350)
,p_name=>'dy_set_shift_hours'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1336_END_TIME,P1336_START_TIME,P1336_LESS_LUNCH_HOUR'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400209385888425350)
,p_event_id=>wwv_flow_imp.id(3400208943914425350)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_SHIFT_HOURS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'l_shift_hours float;',
'l_return_val float;',
'l_lunch_hour float;',
'l_less_lunch number(1);',
'l_start_time date;',
'l_end_time date;',
'',
'begin',
'',
'l_start_time := TO_DATE(:P1336_START_TIME,''HH:MI:SS AM'');',
'l_end_time := TO_DATE(:P1336_END_TIME,''HH:MI:SS AM'');',
'l_lunch_hour := :P1336_LUNCH_HOUR;',
'l_less_lunch := :P1336_LESS_LUNCH_HOUR;',
'',
'l_shift_hours := round((l_end_time-l_start_time)*24,2);',
'',
'if l_less_lunch = 1',
'    then',
'        l_return_val := l_shift_hours-l_lunch_hour;',
'    else ',
'        l_return_val := l_shift_hours;',
'end if;',
'',
'return l_return_val;',
'end;'))
,p_attribute_07=>'P1336_START_TIME,P1336_END_TIME,P1336_LUNCH_HOUR,P1336_LESS_LUNCH_HOUR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3400209816305425351)
,p_name=>'dy_set_shift_hours_1'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1336_END_TIME,P1336_START_TIME'
,p_condition_element=>'P1336_END_TIME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400210335943425351)
,p_event_id=>wwv_flow_imp.id(3400209816305425351)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_HOLD_SH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select round(((TO_DATE(:P1336_END_TIME,''HH:MI:SS AM'')-TO_DATE(:P1336_START_TIME,''HH:MI:SS AM''))*24),2)',
'from dual'))
,p_attribute_07=>'P1336_END_TIME,P1336_START_TIME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3400210712916425352)
,p_name=>'dy_set_lunch_hours'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1336_LUNCH_TIME_END,P1336_LUNCH_TIME_START'
,p_condition_element=>'P1336_LUNCH_TIME_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400211178099425352)
,p_event_id=>wwv_flow_imp.id(3400210712916425352)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_LUNCH_HOUR'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0.00'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400211749388425353)
,p_event_id=>wwv_flow_imp.id(3400210712916425352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_LUNCH_HOUR'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   round((TO_DATE(:P1336_LUNCH_TIME_END,''HH:MI:SS AM'') -  TO_DATE(:P1336_LUNCH_TIME_START,''HH:MI:SS AM'') )* 24,2)',
'FROM DUAL'))
,p_attribute_07=>'P1336_LUNCH_TIME_END,P1336_LUNCH_TIME_START'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3400212090038425353)
,p_name=>'dy_check_less_lunch'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1336_LESS_LUNCH_HOUR'
,p_condition_element=>'P1336_LUNCH_HOUR'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400212623763425353)
,p_event_id=>wwv_flow_imp.id(3400212090038425353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_SHLH'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P1336_LESS_LUNCH_HOUR =1 then :P1336_HOLD_SH-:P1336_LUNCH_HOUR ',
'            when :P1336_LESS_LUNCH_HOUR =0 then :P1336_HOLD_SH-0 end ',
'from dual'))
,p_attribute_07=>'P1336_LESS_LUNCH_HOUR,P1336_HOLD_SH,P1336_LUNCH_HOUR'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3400213050107425354)
,p_name=>'disableLessLunchHour'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1336_LUNCH_HOUR'
,p_condition_element=>'P1336_LUNCH_HOUR'
,p_triggering_condition_type=>'LESS_THAN'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400213531200425354)
,p_event_id=>wwv_flow_imp.id(3400213050107425354)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_LESS_LUNCH_HOUR'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3400214051690425355)
,p_event_id=>wwv_flow_imp.id(3400213050107425354)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1336_LESS_LUNCH_HOUR'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(197481797054630811)
,p_name=>'style_negative_hours'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1336_SHIFT_HOURS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(197481835570630812)
,p_event_id=>wwv_flow_imp.id(197481797054630811)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var item = apex.item("P1336_SHIFT_HOURS");',
'var val = parseFloat(item.getValue());',
'',
'if (!isNaN(val) && val < 0) {',
'    $(item.node).addClass("negative-value");',
'    apex.item("P1336_OVER_NIGHT").setValue("1");',
'} else {',
'    $(item.node).removeClass("negative-value");',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3400208138270425349)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_ATT_SHIFT'
,p_attribute_02=>'HR_ATT_SHIFT'
,p_attribute_03=>'P1336_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>2978416145072428775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3400206556435425348)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1336_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
' :P1336_MACHINE_INSERT:=V(''LOGIN_VAR'');',
'end if;',
'',
'if :P1336_MACHINE_UPDATE is null and V(''LOGIN_VAR'') is not null then',
' :P1336_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2978414563237428774
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3400206071555425347)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1336_MACHINE_UPDATE:=V(''LOGIN_VAR'');',
'',
' if :P1336_MACHINE_INSERT is null and V(''LOGIN_VAR'') is not null then',
'    :P1336_MACHINE_INSERT:=V(''LOGIN_VAR'');',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3400191192509425329)
,p_internal_uid=>2978414078357428773
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3400207670322425349)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_ATT_SHIFT'
,p_attribute_02=>'HR_ATT_SHIFT'
,p_attribute_03=>'P1336_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1336_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2978415677124428775
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3400207320919425348)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3400190855515425329)
,p_internal_uid=>2978415327721428774
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3400208499675425349)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3400190439948425329)
,p_internal_uid=>2978416506477428775
);
wwv_flow_imp.component_end;
end;
/
