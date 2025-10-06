prompt --application/pages/page_01275
begin
--   Manifest
--     PAGE: 01275
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
 p_id=>1275
,p_name=>'frmReference'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Reference'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_html_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/css/select2.min.css" rel="stylesheet" />',
'<script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.0/js/select2.min.js"></script>'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_dialog_width=>'900'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1931235110375124)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'USER')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(80275653623642679)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3215322629508667023)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_RCM_REFERENCE',
'where  id = :P1275_ID'))
,p_display_when_condition=>'P1275_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1275_ID'
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
 p_id=>wwv_flow_imp.id(170179067427791012)
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
 p_id=>wwv_flow_imp.id(170179220815791013)
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
 p_id=>wwv_flow_imp.id(170179278565791014)
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
 p_id=>wwv_flow_imp.id(170179354472791015)
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
 p_id=>wwv_flow_imp.id(170179514705791016)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3215326031468667032)
,p_plug_name=>'Create/Edit Reference'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_REFERENCE'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3303199499978842883)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P1275_SHOW_BREADCRUMB'
,p_plug_display_when_cond2=>'1275'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3316359335547727660)
,p_plug_name=>'Quick Add Referee Bio Data'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3316358878704727655)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_button_name=>'CREATE_BIO'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Bio'
,p_button_position=>'CREATE'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3302478025933247638)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3302477230643247637)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1275_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3320969839106487856)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
,p_button_name=>'REFEREE_BIO'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Referee Bio'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP:P1261_ID:&P1275_IND_ID.'
,p_button_condition=>'P1275_IND_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3302475278676247635)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:1275:P1275_REFEREE_FOR:&P1275_REFEREE_FOR.'
,p_button_condition=>'P1275_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3302476896637247637)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1275_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3302475681449247636)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1275_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3302477638926247637)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(80275653623642679)
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
'FROM HR_RCM_INDIVIDUAL a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_REFERENCE B',
'           WHERE A.ID=B.referee_for',
'           and b.id=:P1275_ID)'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3302459444336247616)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:1275:P1275_REFEREE_FOR:&P1275_REFEREE_FOR.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3302475681449247636)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3302459851621247616)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3302477638926247637)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3302461068583247618)
,p_branch_name=>'Go To Page 1275'
,p_branch_action=>'f?p=&APP_ID.:1275:&SESSION.::&DEBUG.:1275:P1275_ID:&P1275_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1819420257753197)
,p_name=>'P1275_QUICKIND'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
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
,p_display_when=>'P1275_LOAD_FROM_REPORT'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1819514609753198)
,p_name=>'P1275_LOAD_FROM_REPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(37273190290398148)
,p_name=>'P1275_REF_ORG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'Referee Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and user_org_id=:APP_ORG_SHR_DED',
'ORDER BY organisation_name'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(37273308822398149)
,p_name=>'P1275_REF_ORG_Q'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_prompt=>'Referee Organisation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and user_org_id=:APP_ORG_SHR_DED',
'ORDER BY organisation_name'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(37273415702398150)
,p_name=>'P1275_ATTACHED_SCAN_REF_Q'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_prompt=>'Attached Scan Ref'
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
 p_id=>wwv_flow_imp.id(37273532671398151)
,p_name=>'P1275_REF_DATE_Q'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_prompt=>'Ref Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(37273590479398152)
,p_name=>'P1275_ATTACHED_FILED_REF_Q'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_prompt=>'Attached Filed details'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(80275528883642678)
,p_name=>'P1275_SHOW_BREADCRUMB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3303199499978842883)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302467434799247626)
,p_name=>'P1275_MACHINE_UPDATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3215322629508667023)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302467844226247626)
,p_name=>'P1275_MACHINE_INSERT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3215322629508667023)
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
 p_id=>wwv_flow_imp.id(3302471400760247630)
,p_name=>'P1275_REFEREE_FOR'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_default=>'&P1261_ID.'
,p_source=>'REFEREE_FOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302471731483247631)
,p_name=>'P1275_ATTACHED_SCAN_REF'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Attached Scan Ref'
,p_source=>'ATTACHED_SCAN_REF'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'blob_last_updated_column', 'LAST_UPDATE_SCAN_REF',
  'character_set_column', 'ATTACHED_SCAN_REF',
  'content_disposition', 'inline',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'download_link_text', '&P1275_ATTACHED_FILED_REF.',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302472156149247631)
,p_name=>'P1275_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>200
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302472599006247631)
,p_name=>'P1275_REF_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'Ref Date'
,p_source=>'REF_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3302472914218247631)
,p_name=>'P1275_ATTACHED_FILED_REF'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'Attached Filed details'
,p_source=>'ATTACHED_FILED_REF'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'MARKDOWN',
  'min_height', '180')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3302473322017247633)
,p_name=>'P1275_IND_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'Referee'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL, ID',
'FROM VW_INDIVIDUAL_ONLY X',
'WHERE ID!=:P1275_REFEREE_FOR',
'and ind_org_id =:APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3302473730345247634)
,p_name=>'P1275_RELATED_DATA'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||'':::''||WEBPAGE_ID, p_checksum_type => ''SESSION'') WEBPAGE_ID',
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
 p_id=>wwv_flow_imp.id(3302474199393247634)
,p_name=>'P1275_INDIVIDUAL'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_prompt=>'Individual'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT INDIVIDUAL',
'from VW_INDIVIDUAL_only',
'where id=nvl(:P1275_REFEREE_FOR,:P1261_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3302474512237247635)
,p_name=>'P1275_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3215326031468667032)
,p_item_source_plug_id=>wwv_flow_imp.id(3215326031468667032)
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
 p_id=>wwv_flow_imp.id(3316358920370727656)
,p_name=>'P1275_SEX'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
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
 p_id=>wwv_flow_imp.id(3316359080869727657)
,p_name=>'P1275_DOB'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
,p_prompt=>'DOB'
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
 p_id=>wwv_flow_imp.id(3316359130342727658)
,p_name=>'P1275_SURNAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
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
 p_id=>wwv_flow_imp.id(3316359255453727659)
,p_name=>'P1275_FIRST_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3316359335547727660)
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
 p_id=>wwv_flow_imp.id(3302464251451247621)
,p_validation_name=>'P1275_REF_DATE'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P1275_REF_DATE > current_date then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Future reference dates not accepted.'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(3302472599006247631)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3295926669167571795)
,p_validation_name=>'chk_all_quick_ref'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' if :P1275_FIRST_NAME is null or :P1275_SURNAME is null or :P1275_DOB is null or :P1275_SEX is null then     ',
'     return FALSE;',
' else',
'     return TRUE; ',
' end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Kindly ensure you enter data into all fields under Quick Referee Bio Data Region.'
,p_when_button_pressed=>wwv_flow_imp.id(3316358878704727655)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77279153887147850)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3215326031468667032)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_RCM_REFERENCE'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>146431788984386610
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3316358727811727654)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ADD_BIO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare   ',
'     l_rel_image apex_t_varchar2;',
'     v_ind_ref number(15);',
'     v_sal varchar2(20);',
'begin',
'          v_sal := case when :P1275_SEX=''M'' then ''Mr.'' else ''Ms.'' end;',
'',
'',
'        INSERT INTO hr_rcm_individual (salutation, ind_org_id,surname, first_name, dob, sex_code, transaction_type_id, status, verified_by, verified_date)',
'        values(v_sal, :APP_ORG_ID,:P1275_SURNAME, :P1275_FIRST_NAME, :P1275_DOB, :P1275_SEX, 110,324, :APP_USER, SYSDATE)',
'        returning id into v_ind_ref;',
'',
'        l_rel_image := apex_string.split(:P1275_ATTACHED_SCAN_REF_Q, '':'');',
'',
'    if :P1275_ATTACHED_SCAN_REF_Q is not null then',
'            FOR i in 1..l_rel_image.count LOOP',
'                for c1 in (select * from apex_application_temp_files where name = l_rel_image(i)) loop',
'',
'                    INSERT INTO hr_rcm_reference ( ind_id, ref_date,  referee_for, org_id, reff_contents,ATTACHED_SCAN_REF)',
'                    values(v_ind_ref,:P1275_REF_DATE_Q, :P1261_ID,:P1275_REF_ORG_Q ,:P1275_ATTACHED_FILED_REF_Q, c1.blob_content );',
'                end loop;',
'            end loop;',
'    else',
'',
'             INSERT INTO hr_rcm_reference ( ind_id, ref_date,  referee_for, org_id, reff_contents)',
'             values(v_ind_ref,:P1275_REF_DATE_Q, :P1261_ID,nvl(:P1275_REF_ORG_Q, :P1275_QUICKIND),:P1275_ATTACHED_FILED_REF_Q);',
'    end if;',
'',
'    commit;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3316358878704727655)
,p_process_success_message=>'The Referee bio data was created and this individual is now set was your reference provider.'
,p_internal_uid=>3200574593955413949
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3302463917383247621)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3302478025933247638)
,p_internal_uid=>3186679783526933916
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3302461974104247619)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'275'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3302477638926247637)
,p_internal_uid=>3186677840247933914
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(77098126514263680)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3215326031468667032)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmReference'
,p_internal_uid=>146250761611502440
);
wwv_flow_imp.component_end;
end;
/
