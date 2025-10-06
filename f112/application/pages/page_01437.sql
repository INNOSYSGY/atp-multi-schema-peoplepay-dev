prompt --application/pages/page_01437
begin
--   Manifest
--     PAGE: 01437
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
 p_id=>1437
,p_name=>'frmActivityAttendance'
,p_page_mode=>'MODAL'
,p_step_title=>'Manage Attendance'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885947246709907)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_dialog_width=>'850'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3233335220340000816)
,p_plug_name=>'Audit'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1437_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3233361821728037331)
,p_plug_name=>'Manage Attendance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3286596724425832166)
,p_plug_name=>'Mass Employee Entry(select all fields except employees)'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3297306186022871498)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3268983256959431434)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3297306234387871499)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325434863593773839)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1437_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325434457095773839)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1437_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325434078984773839)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1437_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325433678265773838)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1437_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325433294884773838)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1437_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3296831155390179799)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'IMPORT_DESKHELP_TASK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Import HelpDesk Task'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325432818658773837)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1437_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325432412600773837)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'ADD_NEW'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P1437_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325435305417773840)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3297306234387871499)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:1436:&SESSION.:&SESSION.:&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3325436364547773844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3286596724425832166)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325408535888773798)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:1437:P1437_START_DATE,P1437_ACTIVITY_ID:&P1437_START_DATE.,&P1437_ACTIVITY_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325432818658773837)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325410183065773800)
,p_branch_name=>'ADD_NEW'
,p_branch_action=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:1437:P1437_ACTIVITY_ID,P1437_START_DATE,P1437_EARNINGS_PERIOD_ID:&P1437_ACTIVITY_ID.,&P1437_START_DATE.,&P1437_EARNINGS_PERIOD_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325432412600773837)
,p_branch_sequence=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325408107161773798)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1436:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325434863593773839)
,p_branch_sequence=>22
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325409799414773800)
,p_branch_name=>'Go To Page 1437'
,p_branch_action=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>32
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325408985486773799)
,p_branch_action=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_EMPENT_ID:&P1437_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325433678265773838)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3325409352992773799)
,p_branch_action=>'f?p=&APP_ID.:1437:&SESSION.::&DEBUG.::P1437_EMPENT_ID:&P1437_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3325433294884773838)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3201995860936956304)
,p_name=>'P1437_RETURN_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_item_default=>'1436'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3252262094780546469)
,p_name=>'P1437_PASS_EMP_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3296831090346179798)
,p_name=>'P1437_WORK_TASK'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Tasks'
,p_source=>'WORK_TASK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_inline_help_text=>'Details of what work completed during period of time outlined above.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3322322153081679993)
,p_name=>'P1437_PASS_ACT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_prompt=>'Activity'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(pkg_global_fnts.get_lookup_col(ACTIVITY_TYPE_ID, ''VALUE_DESCRIPTION'')) ||'' Starting: ''||to_char(a.START_DATE,''DD-MON-YYYY'')||'' at ''||',
'INITCAP(pkg_global_fnts.get_lookup_col(VENUE_ID, ''VALUE_DESCRIPTION'')) VENUE_ID, a.id',
'from HR_ATT_ACTIVITY  a join pa_pcf_earningperiod b on a.earnings_period_id=b.id',
'join hr_rcm_employee c on (c.org_id=b.org_id and b.compute_gross = c.compute_gross and c.employment_class_id=b.employment_class_id and b.payment_type = c.payment_type)',
'where c.id= :P1437_PASS_EMP_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1437_PASS_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when=>'P1437_RETURN_VALUE'
,p_display_when2=>'1281'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3322881334583482216)
,p_name=>'P1437_EARNINGS_PERIOD_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earnings_period_id',
'from HR_ATT_ACTIVITY',
'where id = :P1437_ACTIVITY_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325422302799773820)
,p_name=>'P1437_MACHINE_UPDATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3233335220340000816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Machine Update'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325422678015773821)
,p_name=>'P1437_MACHINE_INSERT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3233335220340000816)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P101_MACHINE_NAME.'
,p_prompt=>'Machine Insert'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325423063543773821)
,p_name=>'P1437_LAST_CHANGED_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3233335220340000816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(3325423447890773822)
,p_name=>'P1437_LAST_CHANGED_BY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3233335220340000816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(3325423809637773822)
,p_name=>'P1437_ENTRY_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3233335220340000816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(3325424290260773823)
,p_name=>'P1437_ENTERED_BY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3233335220340000816)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
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
 p_id=>wwv_flow_imp.id(3325424962400773825)
,p_name=>'P1437_ACTIVITY_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325425367202773826)
,p_name=>'P1437_ID_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3325425776507773826)
,p_name=>'P1437_ID_PREV'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325426173992773827)
,p_name=>'P1437_ID_NEXT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325426588150773827)
,p_name=>'P1437_REMARKS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>120
,p_cMaxlength=>1000
,p_cHeight=>2
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325426967092773828)
,p_name=>'P1437_TIME_USED_HRS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Used(hh:mi)'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  case when instrb(:P1437_TIME_USED,''.'',1,1)=0 then :P1437_TIME_USED||'':00''',
'             when substr(:P1437_TIME_USED,1,instrb(:P1437_TIME_USED,''.'',1,1)) =''.'' then ''00:''||substr(round(substr(:P1437_TIME_USED,instrb(:P1437_TIME_USED,''.'',1,1)+1,length(:P1437_TIME_USED))*0.6,2) *10,1,2) ',
' else',
' substr(:P1437_TIME_USED,1,instrb(:P1437_TIME_USED,''.'',1,1)-1)||'':''||substr(round(substr(:P1437_TIME_USED,instrb(:P1437_TIME_USED,''.'',1,1)+1,length(:P1437_TIME_USED))*0.6,2) *10,1,2) ',
' end',
'FROM DUAL'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325427400717773828)
,p_name=>'P1437_TIME_USED'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Time Used (Qty)'
,p_source=>'TIME_USED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>5
,p_cMaxlength=>4000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325427786728773828)
,p_name=>'P1437_INCREASE_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_source=>'INCREASE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325428151388773829)
,p_name=>'P1437_EARNINGS_INC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_source=>'EARNINGS_INC'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325428599051773829)
,p_name=>'P1437_END_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P1437_START_DATE'
,p_item_default_type=>'ITEM'
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>22
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325428915347773831)
,p_name=>'P1437_EARNINGS'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Earnings'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'EARNINGS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325429358767773832)
,p_name=>'P1437_END_DUMMY'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_date(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM'') + 2 A',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325429713713773833)
,p_name=>'P1437_EMPENT_ID'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_source=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325430153657773834)
,p_name=>'P1437_EMP_ID'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID) = 1 then',
' return',
'       ''select DISTINCT EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'        from table(pkg_global_fnts.Get_availemployee(TO_CHAR(TO_DATE(:P1437_START_DATE, ''''DD-MON-YYYY HH:MIPM''''),''''DD-MON-YYYY''''))) X join VW_SELFREPORT_TO Y on X.report_to = Y.EMPLOYEE_NO',
'        where (x.DATE_SEPARATED is null or DATE_SEPARATED >= TO_CHAR(TO_DATE(:P1437_START_DATE, ''''DD-MON-YYYY HH:MIPM''''),''''DD-MON-YYYY''''))',
'        and TO_CHAR(TO_DATE(:P1437_START_DATE, ''''DD-MON-YYYY HH:MIPM''''),''''DD-MON-YYYY'''') >= date_employed',
'        union',
'        select DISTINCT EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'        from VW_AVAILEMPLOYEE X ',
'        where x.id = (select EMPLOYEE_NO from tbluser where user_name=:APP_USER)',
'        ORDER BY 1'';',
'',
'',
'ELSif :P1437_ID is null and nvl(:P1437_RETURN_VALUE,0) !=1281 then',
'return',
' ''select DISTINCT EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, x.id B',
'from table(pkg_global_fnts.Get_availemployee(TO_CHAR(TO_DATE(:P1437_START_DATE, ''''DD-MON-YYYY HH:MIPM''''),''''DD-MON-YYYY''''))) X ',
'join pa_pcf_earningperiod w on (w.payment_type = x.payment_type and w.employment_class_id = x.employment_class_id and w.org_id = x.org_id)',
'where TO_CHAR(TO_DATE(:P1437_START_DATE, ''''DD-MON-YYYY HH:MIPM''''),''''DD-MON-YYYY'''') > date_employed',
'and  x.DATE_SEPARATED is null ',
'and w.id=:P1437_EARNINGS_PERIOD_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id = x.ORGDTL_ID',
'          and X.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'ORDER BY 1'';',
'',
'elsif :P1437_ID is null and :P1437_RETURN_VALUE =1281 then',
'',
'return',
'     ''select DISTINCT EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'     from VW_EMPLOYEEALL X',
'     where x.id = :P1281_ID'';',
'else',
'',
'return',
'  ''select DISTINCT EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_EMPLOYEEALL X',
'WHERE ORG_ID = :APP_ORG_ID'';',
'',
'end if;',
'	'))
,p_lov_cascade_parent_items=>'P1437_START_DATE'
,p_ajax_items_to_submit=>'P1437_EARNINGS_PERIOD_ID,P1281_ID,P1437_RETURN_VALUE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(3325430551405773834)
,p_name=>'P1437_START_DATE'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1436_START_DATE.'
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'STATIC',
  'max_static', '&P1437_START_DATE.',
  'min_date', 'STATIC',
  'min_static', '&P1437_START_DATE.',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325430924413773835)
,p_name=>'P1437_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325431338264773835)
,p_name=>'P1437_ACTIVITY_DISP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Activity '
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VALUE_DESCRIPTION ||'' on the ''||START_DATE',
'FROM HR_ATT_ACTIVITY a join table(pkg_global_fnts.Get_Lookup_Value(''TBLACTIVITYTYPE'')) B ON A.ACTIVITY_TYPE_ID=B.ID',
'where id=nvl(:P1437_ACTIVITY_ID,:P1436_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_display_when=>'P1437_RETURN_VALUE'
,p_display_when2=>'1281'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325431733612773836)
,p_name=>'P1437_ACTIVITY_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3233361821728037331)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P1436_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ACTIVITY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'You values to display here the earnings period for an existing activity must match same and the employee and must be not completed.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3325435934836773841)
,p_name=>'P1437_MASS_EMPLOYEE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3286596724425832166)
,p_prompt=>'Mass Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE||''(no.:''||EMP_COMPANY_NO||'')'' a, id B',
'from VW_AVAILEMPLOYEE X ',
'Where X.Date_Separated Is Null  ',
'And Exists (Select 1',
'            FROM pa_pcf_earningperiod z',
'            WHERE x.PAYMENT_TYPE=z.PAYMENT_TYPE',
'            AND x.EMPLOYMENT_CLASS_ID=z.EMPLOYMENT_CLASS_ID',
'            AND x.ORG_ID=z.ORG_ID',
'            AND z.ID=(select EARNINGS_PERIOD_ID from HR_ATT_ACTIVITY w where id=:P1437_ACTIVITY_ID)',
'            )'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3325417832129773814)
,p_validation_name=>'chk_start_end_same_date'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if TRUNC(TO_DATE(:P1437_START_DATE,''DD-MON-YYYY'')) != TRUNC(TO_DATE(:P1437_END_DATE,''DD-MON-YYYY'')) then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Dates must not span a 24hrs.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_validation_comment=>'validation needs fixing and activating.'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3325418650230773814)
,p_validation_name=>'enf_daily_att_restrictions'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_description varchar2(50);',
'',
'begin',
'',
'  if upper(:APP_USER)  NOT IN (''PEOPLEPAY'',''JAY.KHAN'',''RLANGFORD'') and :APP_ORG_ID = 1749 then',
'',
'  select pkg_global_fnts.Get_Lookup_Col(ACTIVITY_TYPE_ID, ''value_description'') into v_description',
'  from HR_ATT_ACTIVITY ',
'  where ID=:P1437_ACTIVITY_ID;',
'  ',
'  if v_description =''DAILY ATTANDANCE'' and abs((current_date-TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MI AM''))*24) > 4 then',
'      return FALSE;',
'  else',
'      return TRUE;',
'  end if;',
'else',
'     return TRUE;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are only allowed four hours grace time to post your attendance information. Failure to do so reflect as an absence.'
,p_validation_condition=>'CREATE, CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3325419031190773815)
,p_validation_name=>'enforce_workdetails_OT'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_OT_code varchar2(20);',
'    ',
'begin',
'',
' if :APP_ORG_ID = 1749  then',
' ',
'  select income_code into v_OT_code',
'  from hr_rcm_empentitle a join pa_pcf_incomecode b on a.income_code_id=b.id',
'  where a.id=:P1437_EMPENT_ID;  ',
'  ',
'  if v_OT_code in (''OT'',''OT1'') and :P1437_WORK_TASK is null then',
'     return ''Please enter the task completed during overtime, in the work details field.'';',
'  end if;',
'',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_AGAIN, SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3325414312469773809)
,p_name=>'set_time_used'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1437_END_DATE,P1437_START_DATE,P1437_EMPENT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325413902744773808)
,p_event_id=>wwv_flow_imp.id(3325414312469773809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1437_TIME_USED'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (TO_DATE(:P1437_END_DATE,''DD-MON-YYYY HH:MIPM'')-TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))*24 -',
'(case when :APP_ORG_ID = 1749 and ((TO_DATE(:P1437_END_DATE,''DD-MON-YYYY HH:MIPM'')-TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))*24) < 5 then',
'     0',
'else pkg_global_fnts.fn_getlunchtime(:P1437_ACTIVITY_ID, :P1437_EMPENT_ID, :APP_ORG_ID) end) A',
'FROM DUAL'))
,p_attribute_07=>'P1437_END_DATE,P1437_START_DATE,P1437_ACTIVITY_ID,P1437_EMPENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3325413489372773807)
,p_name=>'set_earnings'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1437_TIME_USED'
,p_condition_element=>'P1437_TIME_USED'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325412946341773807)
,p_event_id=>wwv_flow_imp.id(3325413489372773807)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1437_EARNINGS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case when b.income_code=''OT'' then pkg_global_fnts.fn_hourlyrate(:P1437_EMP_ID, TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))* 1.5*to_number(:P1437_TIME_USED)',
'            when b.income_code=''OT1'' then pkg_global_fnts.fn_hourlyrate(:P1437_EMP_ID, TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))* 2*to_number(:P1437_TIME_USED)',
'          else pkg_global_fnts.fn_hourlyrate(:P1437_EMP_ID, TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))*to_number(:P1437_TIME_USED) end amount_paid',
'from hr_rcm_employee e join  hr_rcm_empentitle a on e.id=a.emp_id',
'JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'join hr_rcm_emprule c on c.emp_id=e.id',
'WHERE A.ID=:P1437_EMPENT_ID  '))
,p_attribute_07=>'P1437_EMP_ID,P1437_START_DATE,P1437_TIME_USED,P1437_EMPENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3325412579213773806)
,p_name=>'enable_generate'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1437_MASS_EMPLOYEE'
,p_condition_element=>'P1437_MASS_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325412103611773802)
,p_event_id=>wwv_flow_imp.id(3325412579213773806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325411523921773802)
,p_event_id=>wwv_flow_imp.id(3325412579213773806)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3325411124278773801)
,p_name=>'update_earnings'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1437_EMPENT_ID'
,p_condition_element=>'P1437_EMPENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3325410693754773801)
,p_event_id=>wwv_flow_imp.id(3325411124278773801)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1437_EARNINGS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case when b.income_code=''OT'' then pkg_global_fnts.fn_hourlyrate(:P1437_EMP_ID, TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))* 1.5*to_number(:P1437_TIME_USED)',
'            when b.income_code=''OT1'' then pkg_global_fnts.fn_hourlyrate(:P1437_EMP_ID, TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))* 2*to_number(:P1437_TIME_USED)',
'          else pkg_global_fnts.fn_hourlyrate(:P1437_EMP_ID, TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))*to_number(:P1437_TIME_USED) end amount_paid',
'from hr_rcm_employee e join  hr_rcm_empentitle a on e.id=a.emp_id',
'JOIN PA_PCF_INCOMECODE B ON A.INCOME_CODE_ID=B.ID',
'join hr_rcm_emprule c on c.emp_id=e.id',
'WHERE A.ID=:P1437_EMPENT_ID  '))
,p_attribute_07=>'P1437_EMP_ID,P1437_START_DATE,P1437_TIME_USED,P1437_EMPENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3278536258793025557)
,p_name=>'show_generate'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1437_MASS_EMPLOYEE'
,p_condition_element=>'P1437_MASS_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3278536098571025555)
,p_event_id=>wwv_flow_imp.id(3278536258793025557)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3325436364547773844)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3278536189637025556)
,p_event_id=>wwv_flow_imp.id(3278536258793025557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3325436364547773844)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3322322049115679992)
,p_name=>'set_value_act_id'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1437_PASS_ACT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322321882184679991)
,p_event_id=>wwv_flow_imp.id(3322322049115679992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1437_ACTIVITY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P1437_PASS_ACT_ID act_id',
'from dual'))
,p_attribute_07=>'P1437_PASS_ACT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325415922708773810)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_ATT_ACTIVITYATTENDANCE'
,p_attribute_02=>'HR_ATT_ACTIVITYATTENDANCE'
,p_attribute_03=>'P1437_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_process_error_message=>'You don''t have the access rights to view this employee file. Contact your system administrator if you believe access should be granted to you.'
,p_internal_uid=>3209631788852460105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325414723407773809)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_ATT_ACTIVITYATTENDANCE'
,p_attribute_03=>'P1437_EMPENT_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1437_ID_NEXT'
,p_attribute_10=>'P1437_ID_PREV'
,p_attribute_13=>'P1437_ID_COUNT'
,p_attribute_14=>'ACTIVITY_ID=:P1436_ID'
,p_internal_uid=>3209630589551460104
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325416773771773812)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1437_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P1437_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P1437_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P1437_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3209632639915460107
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325416355673773811)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1437_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P1437_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P1437_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325434457095773839)
,p_internal_uid=>3209632221817460106
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325415548633773810)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_ATT_ACTIVITYATTENDANCE'
,p_attribute_02=>'HR_ATT_ACTIVITYATTENDANCE'
,p_attribute_03=>'P1437_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1437_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3209631414777460105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325415143662773810)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325434863593773839)
,p_internal_uid=>3209631009806460105
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325417119481773813)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_employee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2; TIMEUSED NUMBER(4,2):=0;',
' BEGIN',
'IF :P1437_MASS_EMPLOYEE is not null then',
' ',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1437_MASS_EMPLOYEE);',
' ',
'   TIMEUSED :=(TO_DATE(:P1437_END_DATE,''DD-MON-YYYY HH:MIPM'')-TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))*24;',
' ',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'       ',
'      INSERT INTO HR_ATT_ACTIVITYATTENDANCE (ACTIVITY_ID,  EMP_ID, EARNINGS, REMARKS, START_DATE, END_DATE, TIME_USED)',
'      SELECT :P1437_ACTIVITY_ID,  l_selected(i), pkg_global_fnts.fn_hourlyrate(l_selected(i), TO_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''))*TIMEUSED',
'      ,:P1437_REMARKS,  to_DATE(:P1437_START_DATE,''DD-MON-YYYY HH:MIPM''),  to_DATE(:P1437_END_DATE,''DD-MON-YYYY HH:MIPM''), TIMEUSED',
'      FROM DUAL;',
' ',
'  END LOOP; ',
' ',
'     select max(id) into :P1437_ID',
'     from HR_ATT_ACTIVITYATTENDANCE',
'     where ACTIVITY_ID = :P1437_ACTIVITY_ID;',
' ',
' ',
'end if;',
' ',
'         :P1437_MASS_EMPLOYEE := NULL;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325436364547773844)
,p_process_success_message=>'Success'
,p_internal_uid=>3209632985625460108
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3325417538591773813)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3325435305417773840)
,p_internal_uid=>3209633404735460108
);
wwv_flow_imp.component_end;
end;
/
