prompt --application/pages/page_01340
begin
--   Manifest
--     PAGE: 01340
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1340
,p_name=>'frmHolidays'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/edit Holidays'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825295957110000543)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(532858307536005160)
,p_plug_name=>'BUTTON'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noBorder'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3739950622356617100)
,p_plug_name=>'Create/Edit Holiday'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'HR_HCF_HOLIDAY'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3739943913485603599)
,p_name=>'Audit Record Verified by: &P1340_VERIFIED_BY.'
,p_parent_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' ',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' ',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' ',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' ',
'  machine_insert,',
' ',
'  machine_update,',
' ',
'  apex_util.get_since(last_changed_date) updated',
' ',
'from',
' ',
'  HR_HCF_HOLIDAY',
' ',
'where',
' ',
'id=:p1340_id'))
,p_display_when_condition=>':P1340_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1340_ID'
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
 p_id=>wwv_flow_imp.id(532857506836005152)
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
 p_id=>wwv_flow_imp.id(532857572293005153)
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
 p_id=>wwv_flow_imp.id(532857663179005154)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(532857842834005155)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(532857857615005156)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(532858034075005157)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828819008939369725)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828818620308369725)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_HOLIDAY',
'WHERE ID=:P1340_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3806737940974971898)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828818151208369722)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if (:P1340_ID is not null and :P1340_VERIFIED_BY IS NULL) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER), :APP_PAGE_ID)>0 AND :P1295_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828817773536369722)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1340_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828816555639369721)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1340_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3828816176335369721)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1340:&SESSION.::&DEBUG.:1340::'
,p_button_condition=>'P1340_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3601831172035861790)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(532858307536005160)
,p_button_name=>'Generate_Calendar_Holidays'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Update Calendar Holidays'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3828797722345369658)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1340:&SESSION.::&DEBUG.:1340::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3828816555639369721)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3828798066908369658)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1339:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3828818620308369725)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3828799273926369661)
,p_branch_name=>'Go To Page 1340'
,p_branch_action=>'f?p=&APP_ID.:1340:&SESSION.::&DEBUG.:1340:P1340_ID:&P1340_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3162767165863009894)
,p_name=>'P1340_COUNTRY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_default=>':APP_COUNTRY'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Country'
,p_source=>'COUNTRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,UPPER(value_description) b',
'from hr_hcf_lookup A',
'where TABLE_NAME= ''TBLCOUNTRY''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where b.id = a.org_id',
'           and use_for_seeded_data = 1',
'           and organisation_type=''SOFTWARE USER'')',
'order by 1'))
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828804954856369672)
,p_name=>'P1340_VERIFIED_BY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3739943913485603599)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828807715305369691)
,p_name=>'P1340_ID_COUNT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
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
 p_id=>wwv_flow_imp.id(3828808102800369691)
,p_name=>'P1340_ID_PREV'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828808478479369692)
,p_name=>'P1340_ID_NEXT'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828808862866369692)
,p_name=>'P1340_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1340_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1340_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1340_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828809286095369694)
,p_name=>'P1340_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828810182085369694)
,p_name=>'P1340_STATUS_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Status Code'
,p_source=>'STATUS_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Active;A,Close;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Decides whether to use holiday or not.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828811103115369695)
,p_name=>'P1340_FOR_CALCULATION'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'For Calculation'
,p_source=>'FOR_CALCULATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'State whether the holiday will be used for computation of leave and payment of overtime earnings.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828811972575369697)
,p_name=>'P1340_ADHOC_HOLIDAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Adhoc Holiday'
,p_source=>'ADHOC_HOLIDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'Holidays that are given miscellaneously by Government, these are none routine.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828812878392369707)
,p_name=>'P1340_TENTATIVE_STATUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Tentative Status'
,p_source=>'TENTATIVE_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:;1'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>'This option is set for holidays that aren''t fixed on a yearly basis e.g. Muslim holidays.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828813770350369717)
,p_name=>'P1340_RATE_OF_PAY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Rate Of Pay'
,p_source=>'RATE_OF_PAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'HOLIDAY_RATES'
,p_lov=>'.'||wwv_flow_imp.id(3853960239539092921)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'The rate for payment.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828814181439369717)
,p_name=>'P1340_HOLIDAY_DESCRIP'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Holiday Descrip'
,p_source=>'HOLIDAY_DESCRIP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>80
,p_cMaxlength=>200
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828814580279369718)
,p_name=>'P1340_HOLIDAY_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Holiday Date'
,p_source=>'HOLIDAY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3828814930162369718)
,p_name=>'P1340_HOLIDAY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Holiday Code'
,p_source=>'HOLIDAY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>50
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3828815331577369721)
,p_name=>'P1340_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3828815803009369721)
,p_name=>'P1340_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_item_source_plug_id=>wwv_flow_imp.id(3739950622356617100)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3828803272423369667)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_COUNT PLS_INTEGER:=0;',
'',
'begin',
'',
'select COUNT(1) INTO V_COUNT',
'from  hr_hcf_org_rule a',
'where org_id= :APP_ORG_ID',
'AND workflow_required =1',
'and ((to_date(:P1340_HOLIDAY_DATE) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P1340_HOLIDAY_DATE) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P1340_TRANSACTION_TYPE_ID is null then',
'  return false;',
' else',
'  return true;',
' end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow mode is enabled, please select a transaction and subsequent status.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3828802899359369667)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>11
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1340_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1340_ID, :P1340_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3828803626711369668)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>21
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1340_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(532858072730005158)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3739950622356617100)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'rmHolidays DML'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77509827147166141
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3828801377719369663)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3828818620308369725)
,p_internal_uid=>3185606827939761395
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3828800523227369662)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P1340_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1340_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1340_HOLIDAY_DESCRIP,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1340_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Holidays'',',
'	:P1340_STATUS,:APP_PAGE_ID,:P1340_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_HOLIDAY'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3828818151208369722)
,p_process_when=>'P1340_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3185605973447761394
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3828802584380369667)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3828819008939369725)
,p_internal_uid=>3185608034600761399
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(529549139416893569)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3739950622356617100)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmHolidays'
,p_internal_uid=>69923446846856540
);
wwv_flow_imp.component_end;
end;
/
