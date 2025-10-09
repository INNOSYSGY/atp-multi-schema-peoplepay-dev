prompt --application/pages/page_01387
begin
--   Manifest
--     PAGE: 01387
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1387
,p_name=>'frmWorkFlowStatus'
,p_step_title=>'Create/Edit WorkFlow Status'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806439560326308805)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3742520950960636049)
,p_name=>'Work Flow Status'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TBLWORKFLOWSTATUS.WFL_STATUS_ID as WFL_STATUS_ID,',
'    TBLWORKFLOWSTATUS.WFL_STATUS_CODE as WFL_STATUS_CODE,',
'    TBLWORKFLOWSTATUS.WFL_STATUS_DESCRIPTION as WFL_STATUS_DESCRIPTION,',
'    TBLWORKFLOWSTATUS.TRANSACTION_TYPE_ID as TRANSACTION_TYPE_ID,',
'    TBLWORKFLOWSTATUS.SEQUENCE as SEQUENCE,',
'    TBLWORKFLOWSTATUS.WORKFLOW_DTL_ID as WORKFLOW_DTL_ID,',
'   TBLWORKFLOWSTATUS."LAST_UPDATED_BY",',
'   TBLWORKFLOWSTATUS."LAST_UPDATE_DATE",',
'   TBLWORKFLOWSTATUS."CREATED_BY" ,',
'   TBLWORKFLOWSTATUS."CREATION_DATE",',
'TBLWORKFLOWSTATUS.WFL_STATUS_ID as EDIT',
' from TBLWORKFLOWSTATUS TBLWORKFLOWSTATUS',
'where WORKFLOW_DTL_ID =:P1387_WORKFLOW_DTL_ID',
''))
,p_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1387_WORKFLOW_DTL_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>8
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832461290469012158)
,p_query_column_id=>1
,p_column_alias=>'WFL_STATUS_ID'
,p_column_display_sequence=>11
,p_column_heading=>'WFL Status ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832460832034012146)
,p_query_column_id=>2
,p_column_alias=>'WFL_STATUS_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'WFL STATUS CODE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832460459501012145)
,p_query_column_id=>3
,p_column_alias=>'WFL_STATUS_DESCRIPTION'
,p_column_display_sequence=>5
,p_column_heading=>'WFL DESCRIPTION'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832460035836012145)
,p_query_column_id=>4
,p_column_alias=>'TRANSACTION_TYPE_ID'
,p_column_display_sequence=>2
,p_column_heading=>'TRANSACTION TYPE'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_inline_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRANSACTION_DESCRIPTION,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE',
'order by 1'))
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832459686152012144)
,p_query_column_id=>5
,p_column_alias=>'SEQUENCE'
,p_column_display_sequence=>3
,p_column_heading=>'SEQUENCE'
,p_disable_sort_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832459280176012144)
,p_query_column_id=>6
,p_column_alias=>'WORKFLOW_DTL_ID'
,p_column_display_sequence=>6
,p_column_heading=>'WORKFLOW_DTL_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832458869591012143)
,p_query_column_id=>7
,p_column_alias=>'LAST_UPDATED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Last Updated By'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832458510434012142)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATE_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Last Update Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832458123955012142)
,p_query_column_id=>9
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Created By'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832457705786012141)
,p_query_column_id=>10
,p_column_alias=>'CREATION_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Creation Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3832457288506012141)
,p_query_column_id=>11
,p_column_alias=>'EDIT'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1387:&SESSION.::&DEBUG.::P1387_WFL_STATUS_ID:#WFL_STATUS_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3742530344992306198)
,p_plug_name=>'Create/Edit Work Flow Status'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TBLWORKFLOWSTATUS'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832467603393012175)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1386:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832466017830012172)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832468010467012175)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1387_WFL_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806878328594039124)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832467163415012174)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1387_WFL_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832466809776012174)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1387:&SESSION.::&DEBUG.:1387:P1387_WORKFLOW_DTL_ID,P1387_TRANSACTION_TYPE_ID:&P1387_WORKFLOW_DTL_ID.,&P1387_TRANSACTION_TYPE_ID.'
,p_button_condition=>'P1387_WFL_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832466348584012173)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1387_WFL_STATUS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3832468347811012179)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_button_name=>'P1387_CREATE_LIKE'
,p_button_static_id=>'P1387_CREATE_LIKE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Like'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3832454374674012128)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1386:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3832466017830012172)
,p_branch_sequence=>9
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3832454770310012128)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1387:&SESSION.::&DEBUG.:1387:P1387_WORKFLOW_DTL_ID,P1387_TRANSACTION_TYPE_ID:&P1387_WORKFLOW_DTL_ID.,&P1387_TRANSACTION_TYPE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3832466348584012173)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3832455182710012128)
,p_branch_action=>'f?p=&APP_ID.:1387:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832461952137012159)
,p_name=>'P1387_WFL_STATUS_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'Wfl Status Description'
,p_source=>'WFL_STATUS_DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>60
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3832462370128012160)
,p_name=>'P1387_WFL_STATUS_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'Wfl Status Code'
,p_source=>'WFL_STATUS_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3832462734456012160)
,p_name=>'P1387_WFL_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_source=>'WFL_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832463667070012162)
,p_name=>'P1387_MAX_HRS_TO_CPL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_default=>'0'
,p_prompt=>'Max Duration Hours'
,p_source=>'MAX_HRS_TO_CPL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>7
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'The maximum number of hours allowed before the stage changes'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832464082114012162)
,p_name=>'P1387_SEQUENCE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'Sequence'
,p_source=>'SEQUENCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832464515338012163)
,p_name=>'P1387_CREATE_TO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'Create To'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(C.Stage_Name||'': ''||Webpage_Name) Disname,a.id ',
'From Tblworkflowdtl A Join Tblpagelist B On B.Webpage_Id=A.Webpage_Id',
'join TBLWORKFLOWSTAGELIST C on a.STAGE_ID=C.STAGE_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832464888656012163)
,p_name=>'P1387_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TRANSACTION_DESCRIPTION,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832465258574012164)
,p_name=>'P1387_CREATE_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'Create From'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(C.Stage_Name||'': ''||Webpage_Name) Disname,a.id ',
'From Tblworkflowdtl A Join Tblpagelist B On B.Webpage_Id=A.Webpage_Id',
'join TBLWORKFLOWSTAGELIST C on a.STAGE_ID=C.STAGE_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832465567892012172)
,p_name=>'P1387_WORKFLOW_DTL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_item_source_plug_id=>wwv_flow_imp.id(3742530344992306198)
,p_prompt=>'WorkFlow Screen'
,p_source=>'WORKFLOW_DTL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(C.Stage_Name||'': ''||Webpage_Name) Disname,a.id ',
'From Tblworkflowdtl A Join Tblpagelist B On B.Webpage_Id=A.Webpage_Id',
'join tblworkflowstagelist c on A.Stage_Id=c.stage_id',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3832456844559012133)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3742530344992306198)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from TBLWORKFLOWSTATUS'
,p_internal_uid=>3189121592540336639
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3832456436114012132)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3742530344992306198)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of TBLWORKFLOWSTATUS'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3189121184095336638
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3832456055349012131)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3832466017830012172)
,p_internal_uid=>3189120803330336637
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3832455677711012131)
,p_process_sequence=>50
,p_process_point=>'ON_SUBMIT_BEFORE_COMPUTATION'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'EXEC_CREATE_LIKE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  pkg_biz_rules.create_like_wfl_status(:P1387_CREATE_FROM, :P1387_CREATE_TO);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Execution failed!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3832468347811012179)
,p_process_when=>'P1387_CREATE_TO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'Execution succeeded!'
,p_internal_uid=>3189120425692336637
);
wwv_flow_imp.component_end;
end;
/
