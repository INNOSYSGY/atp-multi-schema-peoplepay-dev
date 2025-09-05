prompt --application/pages/page_00218
begin
--   Manifest
--     PAGE: 00218
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
 p_id=>218
,p_name=>'frmachconfiguration'
,p_alias=>'FRMACHCONFIGURATION'
,p_step_title=>'Create/Edit ACH Configuration'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3079498416410076377)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3214298336292732701)
,p_plug_name=>'Other Constant Configuration'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       RECORD_TYPE_CODE_FHR,',
'       PRIORITY_CODE,',
'       RECORD_SIZE,',
'       BLOCKING_FACTOR,',
'        payment_related_info,',
'        addenda_seq_no,',
'       FORMAT_CODE,',
'       RECORD_TYPE_CODE_CBHR,',
'       ORIGINATOR_STATUS_CODE,',
'       RECORD_TYPE_CODE_EDR,',
'       RECORD_TYPE_CODE_EAR,',
'       ADDENDA_TYPE_CODE,',
'       RECORD_TYPE_CODE_CBCR,',
'       RECORD_TYPE_CODE_FCR,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY,',
'       START_DATE,',
'       END_DATE,',
'       COMPANY_YEAR,',
'       ORG_ID,',
'       ACH_COMPANY_ID,',
'       IMMEDIATE_DESTINATION,',
'       IMMEDIATE_ORIGIN,',
'       IMMEDIATE_DESTINATION_NAME,',
'       IMMEDIATE_ORIGIN_NAME,',
'       CONFIG_NAME,',
'       company_id,originating_dfi,',
'       ACH_FILETYPE',
'  from PA_ACH_CONFIG',
'WHERE org_id=:APP_ORG_id'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3214332787270775547)
,p_plug_name=>'Audit'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P218_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3214333044020775549)
,p_plug_name=>'Record Type Codes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3079487654860068576)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3079498416410076377)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3079488087020068577)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3079498416410076377)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P218_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash-o'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3079488457851068577)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3079498416410076377)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P218_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3079488885400068578)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3079498416410076377)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P218_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3079489293451068578)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3079498416410076377)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P218_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3079489706185068578)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3079498416410076377)
,p_button_name=>'ADD_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P218_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3079496292104068594)
,p_branch_name=>'SAVE'
,p_branch_action=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.::P218_ID:&P218_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3079488457851068577)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3079496686649068594)
,p_branch_name=>'DELETE'
,p_branch_action=>'f?p=&APP_ID.:213:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3079488087020068577)
,p_branch_sequence=>21
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3079497013484068595)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.::P218_ID:&P218_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3079488885400068578)
,p_branch_sequence=>31
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3079497437627068595)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3079489293451068578)
,p_branch_sequence=>41
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3079497838837068595)
,p_branch_name=>'ADD NEW'
,p_branch_action=>'f?p=&APP_ID.:218:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3079489706185068578)
,p_branch_sequence=>51
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6458745529703711)
,p_name=>'P218_ACH_FILETYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_default=>'.CSV'
,p_prompt=>'Ach Filetype'
,p_source=>'ACH_FILETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ACH_FILETYPE'
,p_lov=>'.'||wwv_flow_imp.id(51829236740956426)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079466857730068548)
,p_name=>'P218_IMMEDIATE_DESTINATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Immediate Destination Name'
,p_source=>'IMMEDIATE_DESTINATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>23
,p_field_template=>3031561932232085882
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079467294679068550)
,p_name=>'P218_IMMEDIATE_ORIGIN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Immediate Origin Name'
,p_source=>'IMMEDIATE_ORIGIN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>23
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079467656671068550)
,p_name=>'P218_IMMEDIATE_DESTINATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Immediate Destination Acc No'
,p_source=>'IMMEDIATE_DESTINATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079468082969068551)
,p_name=>'P218_IMMEDIATE_ORIGIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Immediate Origin Acc No'
,p_source=>'IMMEDIATE_ORIGIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079468493233068551)
,p_name=>'P218_COMPANY_YEAR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Company Year'
,p_source=>'COMPANY_YEAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079468888449068551)
,p_name=>'P218_PRIORITY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Priority Code'
,p_source=>'PRIORITY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>2
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079469306385068552)
,p_name=>'P218_RECORD_SIZE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_default=>'094'
,p_prompt=>'Record Size'
,p_source=>'RECORD_SIZE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>3
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079469697673068552)
,p_name=>'P218_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079470066515068553)
,p_name=>'P218_BLOCKING_FACTOR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Blocking Factor'
,p_source=>'BLOCKING_FACTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079470470182068553)
,p_name=>'P218_FORMAT_CODE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Format Code'
,p_source=>'FORMAT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Identification code to allow for future format versions from the bank. If the format of ACH changes then this constant need to be updated.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079471353860068555)
,p_name=>'P218_ORIGINATOR_STATUS_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Originator Status Code'
,p_source=>'ORIGINATOR_STATUS_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079471710615068556)
,p_name=>'P218_ADDENDA_TYPE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Addenda Type Code'
,p_source=>'ADDENDA_TYPE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>5
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079472154540068556)
,p_name=>'P218_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079472557563068557)
,p_name=>'P218_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079472942334068557)
,p_name=>'P218_PAYMENT_RELATED_INFO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Payment Related Info'
,p_source=>'PAYMENT_RELATED_INFO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>80
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079473371594068557)
,p_name=>'P218_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079479608460068566)
,p_name=>'P218_CONFIG_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Config Name'
,p_source=>'CONFIG_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079480023104068567)
,p_name=>'P218_COMPANY_ID_2'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'<b>Company</b>'
,p_source=>'COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BANKS MAIN BRANCH'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name, id',
'from vw_organisation a',
'where organisation_type=''BANK''',
'and a.parent_org_id is null',
'and  a.USER_org_id = :APP_ORG_SHR_DED',
'AND UPPER(COUNTRY) =:APP_COUNTRY'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Bank Receiving ACH File--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079480486084068568)
,p_name=>'P218_RECORD_TYPE_CODE_FHR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'File Header Record (RTC)'
,p_source=>'RECORD_TYPE_CODE_FHR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079480885868068568)
,p_name=>'P218_RECORD_TYPE_CODE_CBHR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Company Batch Header Record (RTC)'
,p_source=>'RECORD_TYPE_CODE_CBHR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079481237437068569)
,p_name=>'P218_RECORD_TYPE_CODE_EDR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Entry Detail Record (RTC)'
,p_source=>'RECORD_TYPE_CODE_EDR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079481692614068570)
,p_name=>'P218_RECORD_TYPE_CODE_EAR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Entry Addenda Record (RTC)'
,p_source=>'RECORD_TYPE_CODE_EAR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079482008622068570)
,p_name=>'P218_RECORD_TYPE_CODE_CBCR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Company Batch Control Record (RTC)'
,p_source=>'RECORD_TYPE_CODE_CBCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079482492885068570)
,p_name=>'P218_RECORD_TYPE_CODE_FCR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'File Control Record (RTC)'
,p_source=>'RECORD_TYPE_CODE_FCR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079482852060068571)
,p_name=>'P218_ACH_COMPANY_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Ach Company Id'
,p_source=>'ACH_COMPANY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>10
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079483305501068571)
,p_name=>'P218_ORIGINATING_DFI'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Originating DFI'
,p_source=>'ORIGINATING_DFI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>8
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079483672517068572)
,p_name=>'P218_ADDENDA_SEQ_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3214333044020775549)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Addenda Seq No'
,p_source=>'ADDENDA_SEQ_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>12
,p_cMaxlength=>4
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079490391053068579)
,p_name=>'P218_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3214332787270775547)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079490802231068580)
,p_name=>'P218_CREATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3214332787270775547)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Created'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079491149703068580)
,p_name=>'P218_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3214332787270775547)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Updated By'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3079491521446068581)
,p_name=>'P218_UPDATED'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3214332787270775547)
,p_item_source_plug_id=>wwv_flow_imp.id(3214298336292732701)
,p_prompt=>'Updated'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'UPDATED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3079495213460068592)
,p_name=>'set immediate destination name'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P218_COMPANY_ID_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3079495735578068593)
,p_event_id=>wwv_flow_imp.id(3079495213460068592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P218_IMMEDIATE_DESTINATION_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select short_name',
'from vw_organisation a',
'where organisation_type=''BANK''',
'and a.parent_org_id is null',
'and  a.USER_org_id = :APP_ORG_ID',
'and id=:P218_COMPANY_ID_2'))
,p_attribute_07=>'P218_COMPANY_ID_2'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3079479001578068565)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3214298336292732701)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmachconfig'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>2963694867721754860
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3079478518284068565)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3214298336292732701)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmachconfig'
,p_internal_uid=>2963694384427754860
);
wwv_flow_imp.component_end;
end;
/
