prompt --application/pages/page_01276
begin
--   Manifest
--     PAGE: 01276
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
 p_id=>1276
,p_name=>'frmRelativeFrd'
,p_alias=>'FRMRELATIVEFRD'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Relatives'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_dialog_width=>'900'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26079327902807328)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(429579187734405720)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3607557100318663900)
,p_plug_name=>'Create/Edit Relatives'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_RELATIVESFRD'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3674706103731553641)
,p_plug_name=>'Quick Add Relative Bio Data'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(429572977920407707)
,p_plug_name=>'Identifiers'
,p_parent_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(435297127118304743)
,p_plug_name=>'Relationship'
,p_parent_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3607562772406662314)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'from  HR_RCM_RELATIVESFRD',
'where  id = :P1276_ID'))
,p_display_when_condition=>'P1276_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(62083183366033773)
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
 p_id=>wwv_flow_imp.id(62083517331033772)
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
 p_id=>wwv_flow_imp.id(62083911159033771)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>30
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62084342607033770)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(62084707748033769)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62073638055035345)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P1276_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62074089176035344)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_button_name=>'RELATIVE_BIO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Relative Bio'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP:P1261_ID:&P1276_IND_ID.'
,p_button_condition=>'P1276_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62074495224035343)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'CREATE'
,p_button_condition=>'P1276_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62074818407035342)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P1276_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62075233066035341)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_RELATED_TO:&P1276_RELATED_TO.'
,p_button_condition=>'P1276_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62075667699035341)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_INDIVIDUAL a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_RELATIVESFRD B',
'           WHERE A.ID=B.related_to',
'           and b.id=:P1276_ID)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62093982265023403)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(26079327902807328)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:1261:P1261_ID:&P1276_RELATED_TO.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62086157472032348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_button_name=>'CREATE_BIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Quick Create Relatives'
,p_button_position=>'PREVIOUS'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(62086522796032347)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_button_name=>'NEW_QUICK_CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Clear Quick Create'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276::'
,p_button_condition=>'P1276_SURNAME'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(62122464379963420)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_RELATED_TO:&P1276_RELATED_TO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(62074495224035343)
,p_branch_sequence=>13
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(62122761366961982)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(62075667699035341)
,p_branch_sequence=>13
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(26098567937807191)
,p_branch_name=>'Go To Page 1276'
,p_branch_action=>'f?p=&APP_ID.:1276:&SESSION.::&DEBUG.:1276:P1276_ID:&P1276_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>23
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(59307228649299230)
,p_name=>'P1276_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(366780215281790714)
,p_name=>'P1276_LOAD_FROM_REPORT'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(366780374548790715)
,p_name=>'P1276_QUICKIND'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'INDIVIDUAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL, ID',
'FROM VW_INDIVIDUAL A',
'WHERE  A.IND_ORG_ID = :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(429570845395410657)
,p_name=>'P1276_TAX_DEDUCTIBLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Tax Deductible'
,p_source=>'TAX_DEDUCTIBLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429598608618407616)
,p_name=>'P1276_RELATIVE_IMAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Relative Photo'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429604341457407591)
,p_name=>'P1276_ID_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(429572977920407707)
,p_prompt=>'ID Type'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'NATIONAL_ID'
,p_lov=>'.'||wwv_flow_imp.id(3326516660165798300)||'.'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429604503556407592)
,p_name=>'P1276_ID_NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(429572977920407707)
,p_prompt=>'ID Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429604576237407593)
,p_name=>'P1276_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(429572977920407707)
,p_prompt=>'ID Start/Issue Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429604663764407594)
,p_name=>'P1276_IDENTIFIER_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(429572977920407707)
,p_prompt=>'Identification Image'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429607363119407578)
,p_name=>'P1276_RELATION_ID_Q'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(435297127118304743)
,p_prompt=>'Relation'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'FAMILY_RELATIONSHIP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLFAMILYRELATIONSHIP'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1',
''))
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(429607468345407579)
,p_name=>'P1276_TAX_DEDUCTIBLE_Q'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(435297127118304743)
,p_prompt=>'Tax Deductible'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3568037401630759508)
,p_name=>'P1276_CONTACT_NOS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Land Lines Nos.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3568037527019759509)
,p_name=>'P1276_CELL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Cell Nos.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694718469591246556)
,p_name=>'P1276_BENEFICIARY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Beneficiary?'
,p_source=>'BENEFICIARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694718887711246556)
,p_name=>'P1276_NEXT_OF_KIN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Next Of Kin?'
,p_source=>'NEXT_OF_KIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694719304635246557)
,p_name=>'P1276_STUDENT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Student?'
,p_source=>'STUDENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694719717321246557)
,p_name=>'P1276_MEDICALLY_COVERED'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Medically Covered?'
,p_source=>'MEDICALLY_COVERED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694720108490246557)
,p_name=>'P1276_DEPENDANT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Dependant?'
,p_source=>'DEPENDANT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694720459659246558)
,p_name=>'P1276_RELATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_source=>'RELATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694721415011246567)
,p_name=>'P1276_RELATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Relationship'
,p_source=>'RELATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FAMILY_RELATIONSHIP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE_DESCRIPTION A, ID B',
'from table(pkg_global_fnts.get_lookup_value(''TBLFAMILYRELATIONSHIP'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Note the system generated alternative relationships. So if you change a relation be sure to locate relative and change their relationship too.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694721767876246567)
,p_name=>'P1276_IND_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Relative'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL, ID',
'FROM VW_INDIVIDUAL_ONLY X',
'where ID !=:P1276_RELATED_TO',
'and  x.ind_org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1276_RELATED_TO'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(3694722201935246569)
,p_name=>'P1276_RELATED_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_default=>'P1276_RELATED_TO'
,p_item_default_type=>'ITEM'
,p_source=>'RELATED_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694722603322246570)
,p_name=>'P1276_RELATED_DATA'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1261_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1261---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1',
'and workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P1261_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694722952641246570)
,p_name=>'P1276_INDIVIDUAL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Individual'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL',
'from VW_INDIVIDUAL_only',
'where id=nvl(:P1276_RELATED_TO,:P1261_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696001665698627479)
,p_name=>'P1276_CONTACT_NUMBERS'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Contact Nos.'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select case when CELL_PHONE is not null and  TELEPHONE is not null then CELL_PHONE||'',''||TELEPHONE  ',
'            when CELL_PHONE is not null then CELL_PHONE',
'        else TELEPHONE end   numbers',
'from HR_RCM_INDIVIDUAL',
'where id=:P1276_IND_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696001789618627480)
,p_name=>'P1276_EMERGENCY_CONTACT'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_item_source_plug_id=>wwv_flow_imp.id(3607557100318663900)
,p_prompt=>'Emergency Contact'
,p_source=>'EMERGENCY_CONTACT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>3
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705201322423130573)
,p_name=>'P1276_SEX'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Sex'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SEX CODE'
,p_lov=>'.'||wwv_flow_imp.id(3326385978072570026)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705201771778130573)
,p_name=>'P1276_DOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Dob'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3705202123286130573)
,p_name=>'P1276_SURNAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'Surname'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705202591638130577)
,p_name=>'P1276_FIRST_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3674706103731553641)
,p_prompt=>'First Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62124318468951452)
,p_validation_name=>'chk_all_quick_ref'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' if :P1276_FIRST_NAME is null or :P1276_SURNAME is null or :P1276_DOB is null or :P1276_SEX is null then     ',
'     return FALSE;',
' else',
'     return TRUE; ',
' end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Kindly ensure you enter data into all fields under Quick Referee Bio Data Region.'
,p_when_button_pressed=>wwv_flow_imp.id(62086157472032348)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62124644944950589)
,p_validation_name=>'verify_tax_age_on_quick'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_age_verify number;',
'',
'begin',
'',
'    select CHILD_TAXCREDIT_CEILING_AGE into v_age_verify',
'    from hr_hcf_org_rule',
'    where end_date is null',
'    and org_id =:APP_ORG_ID;',
'',
'    IF pkg_global_fnts.fn_calcage(:P1276_DOB, CURRENT_DATE) > v_age_verify and :P1276_TAX_DEDUCTIBLE_Q = 1 then',
'        return ''The current age of this relative is ''||pkg_global_fnts.fn_calcage(:P1276_DOB, CURRENT_DATE)||'' however the ceiling for tax deductible is ''||v_age_verify||''.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(62086157472032348)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62124914380949781)
,p_validation_name=>'verify_tax_age_on_relative'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_age_verify number;',
'    v_age_relative number;',
'',
'begin',
'',
'    select CHILD_TAXCREDIT_CEILING_AGE into v_age_verify',
'    from hr_hcf_org_rule',
'    where end_date is null',
'    and org_id =:APP_ORG_ID;',
'',
'    select pkg_global_fnts.fn_calcage(DOB, CURRENT_DATE) into v_age_relative',
'    from hr_rcm_individual',
'    where id =:P1276_IND_ID;',
'',
'    IF v_age_relative > v_age_verify and :P1276_TAX_DEDUCTIBLE = 1 then',
'        return ''The current age of this relative is ''||v_age_relative||'' however the ceiling for tax deductible is ''||v_age_verify||''.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62125217385948989)
,p_validation_name=>'reject_future_age'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF :P1276_DOB > TRUNC(SYSDATE) THEN',
'        return ''A future date of birth is not acceptible. Change Entry now.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(62086157472032348)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62125581116948187)
,p_validation_name=>'reject_future_or_null_id_date'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    IF :P1276_START_DATE > TRUNC(SYSDATE) or  :P1276_START_DATE is null then',
'        return ''A blank or future Issue date is not acceptible. Change Entry now.'';',
'    else',
'        return '''';',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(62086157472032348)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(62124031922952257)
,p_validation_name=>'chk_empdt_with_reldt'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob_emp date; v_dob_rel date;',
'',
'begin',
'',
'if upper(:P1276_relation) in (''SON'',''DAUGHTER'',''CHILD'') then',
'',
'select dob into v_dob_emp',
'from hr_rcm_individual',
'where id= :P1276_RELATED_TO;',
'',
'select dob into v_dob_rel',
'from hr_rcm_individual',
'where id= :P1276_IND_ID;',
'',
'IF v_dob_emp  > v_dob_rel  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'end if;',
'',
'exception',
' when others then null;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Parents must be older than their children, please correct date of birth of parent or children.'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(62086157472032348)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1930717583375119)
,p_name=>'show_hide_tab_field'
,p_event_sequence=>10
,p_condition_element=>'P1276_LOAD_FROM_REPORT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1930912196375120)
,p_event_id=>wwv_flow_imp.id(1930717583375119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1276_QUICKIND'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1931153697375123)
,p_event_id=>wwv_flow_imp.id(1930717583375119)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3607557100318663900)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1930951541375121)
,p_event_id=>wwv_flow_imp.id(1930717583375119)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1276_QUICKIND'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1931083151375122)
,p_event_id=>wwv_flow_imp.id(1930717583375119)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3607557100318663900)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62094060727023404)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3607557100318663900)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'DML PROCESS'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>62094060727023404
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62122988799957287)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'general_alternate_relationship'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_relation_ship varchar2(50);',
'   ',
'begin',
'',
'    select case when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''M'' ',
'    and Pkg_Global_Fnts.Get_Lookup_Col(:P1276_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD) then upper(CUSTOM_FIELD) ',
'',
'  --  when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''M'' ',
'  --  and Pkg_Global_Fnts.Get_Lookup_Col(:P1276_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD1) then upper(CUSTOM_FIELD1) ',
'',
'--   when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''F'' ',
'--    and Pkg_Global_Fnts.Get_Lookup_Col(:P1276_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD) then upper(CUSTOM_FIELD) ',
'',
' --  when (select TRIM(upper(SEX_CODE)) from HR_RCM_INDIVIDUAL where id=:P1261_ID)=''F'' ',
'  --  and Pkg_Global_Fnts.Get_Lookup_Col(:P1276_RELATION, ''VALUE_DESCRIPTION'')= upper(CUSTOM_FIELD1) then upper(CUSTOM_FIELD1) ',
'    else  upper(CUSTOM_FIELD1)',
'    END relation',
'    into v_relation_ship',
'    from table(pkg_global_fnts.Get_Lookup_Value (''TBLFAMILYRELATIONSHIP''))',
'    where id=:P1276_RELATION_ID;',
'    ',
'    INSERT INTO HR_RCM_RELATIVESFRD(IND_ID, RELATION,  RELATED_TO, RELATION_ID,STUDENT)',
'    ',
'    select :P1276_RELATED_TO, v_relation_ship, :P1276_IND_ID, (select id ',
'                                                      from table(pkg_global_fnts.Get_Lookup_Value (''TBLFAMILYRELATIONSHIP''))',
'                                                      where upper(table_value)= v_relation_ship),0',
'    from table(pkg_global_fnts.Get_Lookup_Value (''TBLFAMILYRELATIONSHIP''))',
'    where id=:P1276_RELATION_ID;',
'    ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>62122988799957287
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62123268667955590)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_no_kids'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'      update HR_RCM_INDIVIDUAL',
'      set no_of_children=(',
'                         select count(1) ',
'                         from HR_RCM_RELATIVESFRD',
'                         where HR_RCM_INDIVIDUAL.ID=HR_RCM_RELATIVESFRD.RELATED_TO',
'                         AND RELATED_TO=:P1276_RELATED_TO',
'                         and upper(RELATION) in (''SON'',''DAUGHTER'',''CHILD'')',
'                         )',
'      WHERE ID=:P1276_RELATED_TO;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>62123268667955590
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(62123588827954060)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_BIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ',
'     l_files apex_t_varchar2;',
'     l_rel_image apex_t_varchar2;',
'     v_new_ind_id number(10);',
'     v_sal varchar2(10);',
'',
'BEGIN',
'',
'    l_rel_image := apex_string.split(:P1276_RELATIVE_IMAGE, '':'');',
'    v_sal := case when :P1276_SEX=''M'' then ''Mr.'' else ''Ms.'' end;',
'',
'',
'    if :P1276_RELATIVE_IMAGE is not null then',
'            FOR i in 1..l_rel_image.count LOOP',
'                for c1 in (select * from apex_application_temp_files where name = l_rel_image(i)) loop',
'                    begin  ',
'                            INSERT INTO hr_rcm_individual (salutation, ind_org_id,surname, first_name, dob, sex_code, transaction_type_id, status, verified_by, verified_date, TELEPHONE, CELL_PHONE, photo, filename, mimetype, last_update_photo)',
'                            values(v_sal,:APP_ORG_ID,:P1276_SURNAME, :P1276_FIRST_NAME, :P1276_DOB, :P1276_SEX, 110,324, :APP_USER, SYSDATE, :P1276_CONTACT_NOS, :P1276_CELL, c1.blob_content, c1.filename, c1.mime_type, c1.created_on)',
'                            returning id into v_new_ind_id;',
'                            commit;',
'                    end;',
'                end loop;',
'            end loop;',
'',
'    else',
'         ',
'                            INSERT INTO hr_rcm_individual (salutation, ind_org_id,surname, first_name, dob, sex_code, transaction_type_id, status, verified_by, verified_date, TELEPHONE, CELL_PHONE)',
'                            values(v_sal,:APP_ORG_ID,:P1276_SURNAME, :P1276_FIRST_NAME, :P1276_DOB, :P1276_SEX, 110,324, :APP_USER, SYSDATE, :P1276_CONTACT_NOS, :P1276_CELL)',
'                            returning id into v_new_ind_id;',
'                            commit;',
'',
'    end if;',
'',
'    l_files := apex_string.split(:P1276_IDENTIFIER_IMAGE, '':'');',
'',
'    if :P1276_IDENTIFIER_IMAGE is not null then',
'            FOR i in 1..l_files.count LOOP',
'                for c1 in (select * from apex_application_temp_files where name = l_files(i)) loop',
'                    begin ',
'',
'                        INSERT INTO hr_rcm_natidentifier ( ind_id,  id_type, id_number, start_date,  identifier_image, FILENAME, MIMETYPE, LAST_UPDATE_PHOTO)',
'                        values (V_NEW_IND_ID, :P1276_ID_TYPE, :P1276_ID_NUMBER, :P1276_START_DATE , c1.blob_content, c1.filename, c1.mime_type, c1.created_on);',
'                    end;',
'                end loop;',
'            end loop;',
'    ',
'    else',
'',
'          INSERT INTO hr_rcm_natidentifier ( ind_id,  id_type, id_number, start_date)',
'          values (V_NEW_IND_ID, :P1276_ID_TYPE, :P1276_ID_NUMBER, :P1276_START_DATE);',
'',
'    end if;',
'',
'    INSERT INTO hr_rcm_relativesfrd ( ind_id, relation_id, related_to, tax_deductible)',
'    values (V_NEW_IND_ID, :P1276_RELATION_ID_Q,  nvl(:P1276_RELATED_TO, :P1276_QUICKIND),  :P1276_TAX_DEDUCTIBLE_Q);',
'    commit;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(62086157472032348)
,p_process_success_message=>'Bio data and National Identifier inserted, additional the relationship was also set.'
,p_internal_uid=>62123588827954060
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(59307196279299229)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3607557100318663900)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmRelativeFrd'
,p_internal_uid=>59307196279299229
);
wwv_flow_imp.component_end;
end;
/
