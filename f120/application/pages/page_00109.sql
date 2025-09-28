prompt --application/pages/page_00109
begin
--   Manifest
--     PAGE: 00109
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>109
,p_name=>'frmNewEmployeeMovement'
,p_alias=>'FRMNEWEMPLOYEEMOVEMENT'
,p_step_title=>'New Employee Movement'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603893141703385726)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.P109_EMPLOYMENT_TYPE_ID{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:15px;',
'    font-weight:bolder;',
'}',
'',
'.disable{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:15px;',
'    font-weight:bolder;',
'    opacity: .8;',
'}',
'',
'img {',
'    border-radius: 50%;',
'}',
'',
'#movement{',
'        border-color: #e85d88;',
'border-radius: 8px;',
'}',
'.t-Region-header{',
'height: 30px;',
'border-radius: .4em;',
'}',
'',
'.t-Button--hideShow.t-Button{',
'border-radius: 50%;',
'}',
'',
'.DISPLAY_ONLY{',
'    pointer-events: none;',
'    opacity: 50%;',
'}'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_page_comment=>'gen_emp_number is not working'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(320715972866031536)
,p_plug_name=>'CC To:'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>21
,p_location=>null
,p_plug_header=>'<b style="color:red">If there is no CC for this letter, continue by clicking on the Printed Letter button. </b>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3176913266085773878)
,p_plug_name=>'NetPay Disbursements'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent10:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    salary_id,AMOUNT_SPLIT,PRIORITY_SEQ,country,',
'    payment_mode_dist payment_mode,',
'    percent_split,',
'    start_date,',
'    bank_branch_id_dist,',
'    bank_account_no_dist,',
'    joint_acc,bank_account_type,',
'bank_routing_no,',
'BANK_TRANSIT,',
'    entered_by,',
'    entry_date,',
'    last_changed_by,',
'    last_changed_date,',
'EMP_ID_disp, ',
'movement_id',
'FROM hr_mov_disbursement',
'where movement_id = :P109_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P109_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P109_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1;'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176913834860773884)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176914601502773891)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176914649503773892)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176914772869773893)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176914860453773894)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176914984115773895)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915032972773896)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915162890773897)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915284819773898)
,p_name=>'SALARY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SALARY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915383257773899)
,p_name=>'AMOUNT_SPLIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_SPLIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'$ Split'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915444425773900)
,p_name=>'PRIORITY_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRIORITY_SEQ'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Priority Seq'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915574623773901)
,p_name=>'COUNTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTRY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Country'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>100
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632664427924627395)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'APP_COUNTRY'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915714019773902)
,p_name=>'PAYMENT_MODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_MODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Payment Mode'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632462712366335719)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3176915778022773903)
,p_name=>'PERCENT_SPLIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_SPLIT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'% split'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177195578641407454)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177195643067407455)
,p_name=>'BANK_BRANCH_ID_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_BRANCH_ID_DIST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Bank Branch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name, id',
'from HR_HCF_organisation a',
'where organisation_type=''BANK''',
'and  a.USER_org_id = :APP_ORG_SHR_DED',
'--and upper(country)=:COUNTRY'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Bank Branch--'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177195772576407456)
,p_name=>'BANK_ACCOUNT_NO_DIST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_NO_DIST'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Account No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177195883451407457)
,p_name=>'JOINT_ACC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOINT_ACC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>'Joint?'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177195959865407458)
,p_name=>'BANK_ACCOUNT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ACCOUNT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Acc. Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>220
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'FUNCTION_BODY'
,p_lov_language=>'PLSQL'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :G_PARSING_SCHEMA = ''STARFISH'' then',
'    return ''',
'        select VALUE_DESCRIPTION||''''(''''||TABLE_VALUE||'''')'''' a , TABLE_VALUE b ',
'        from HR_HCF_LOOKUP ',
'        where table_name=''''TBLBANKACCOUNTTYPE'''' ',
'        AND ORG_ID =:APP_ORG_ID',
'    '';',
'elsif :G_PARSING_SCHEMA = ''CAMEX'' then',
'    return ''',
'        select VALUE_DESCRIPTION||''''(''''||TABLE_VALUE||'''')'''' a , TABLE_VALUE b ',
'        from HR_HCF_LOOKUP ',
'        where table_name=''''TBLBANKACCOUNTTYPE'''' ',
'        AND ORG_ID =:APP_ORG_ID',
'    '';',
'else',
'    return ''',
'        select ''''SAV'''' a, ''''SAV'''' b from dual',
'        union',
'        select ''''CHQ'''' a, ''''CHQ'''' b from dual',
'    '';',
'end if;'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177196108790407459)
,p_name=>'BANK_ROUTING_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_ROUTING_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Routing No'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177196159707407460)
,p_name=>'BANK_TRANSIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BANK_TRANSIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Transit No.'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3177196244912407461)
,p_name=>'EMP_ID_DISP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID_DISP'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Emp Id Disp'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>230
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3176913327005773879)
,p_internal_uid=>2870905467664091010
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3177202576641423414)
,p_interactive_grid_id=>wwv_flow_imp.id(3176913327005773879)
,p_static_id=>'6154833'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3177202746105423415)
,p_report_id=>wwv_flow_imp.id(3177202576641423414)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177203298742423419)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3176913834860773884)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177204195682423430)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3176914601502773891)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177205077923423434)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3176914649503773892)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177205921954423439)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3176914772869773893)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177206783700423447)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3176914860453773894)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177207692292423451)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3176914984115773895)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177208968961423458)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3176915162890773897)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177209871679423462)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3176915284819773898)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177210792275423466)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3176915383257773899)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177211666928423470)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3176915444425773900)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177212539760423475)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3176915574623773901)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177213484981423479)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3176915714019773902)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177214367449423485)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3176915778022773903)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177215308573423489)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3177195578641407454)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177216199491423494)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3177195643067407455)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177217076542423499)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3177195772576407456)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177217935808423505)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3177195883451407457)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177218914240423509)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3177195959865407458)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177219773529423513)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3177196108790407459)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177220645176423518)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3177196159707407460)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3177221548956423522)
,p_view_id=>wwv_flow_imp.id(3177202746105423415)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(3177196244912407461)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3481669323255672555)
,p_name=>'Approval History'
,p_template=>2664334895415463485
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_MOV_EMPMOVEMENT_NEW''',
'and table_name_key=:P109_ID'))
,p_display_when_condition=>'P109_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
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
 p_id=>wwv_flow_imp.id(369099576773450625)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369099978242450625)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369100449724450626)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369100853155450626)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369101213044450626)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE OF ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369101630319450626)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER NAME'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3483631666000559556)
,p_plug_name=>'Old Employee Record'
,p_region_name=>'DISPLAY_ONLY'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent1::t-Region--scrollBody:t-Form--slimPadding::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3484238248380032586)
,p_plug_name=>'Notice'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--success::::::::::'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>11
,p_plug_source=>'<font color="green" size="3"><b> This movement has been executed!</b></font>'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P109_EXECUTED'
,p_plug_display_when_cond2=>'1'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3577932968665415722)
,p_plug_name=>'Leave Entitlements'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent5:t-Region--hiddenOverflow'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,LEAVE_RATE,MOVEMENT_ID ,  emp_id,',
'       LEAVE_TYPE_ID,',
'       QUANTITY,',
'       WORKING_DAYS,',
'       MAX_ACCUMULATION,',
'       ACCUMULATIVE,',
'       REDUCE_SAL_OVERSPENT,',
'       JOB_ID,',
'       START_DATE,',
'       END_DATE,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE',
'  from HR_MOV_EMPLEAVEENTITLE',
'where  MOVEMENT_ID = :P109_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P109_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P109_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1;'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3547647214327882143)
,p_name=>'LEAVE_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Leave Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>210
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3549043151169487246)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_JOB_NAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555215465278028222)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555215553183028223)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555215987156028227)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216080683028228)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216143320028229)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216254446028230)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216329741028231)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216441209028232)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_FROM_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216609625028233)
,p_name=>'REDUCE_SAL_OVERSPENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REDUCE_SAL_OVERSPENT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Reduce Sal Overspent'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216692604028234)
,p_name=>'ACCUMULATIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACCUMULATIVE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Accumulative'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216775433028235)
,p_name=>'MAX_ACCUMULATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_ACCUMULATION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Max Accumulation'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216874335028236)
,p_name=>'WORKING_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKING_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Working Days'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555216971941028237)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Quantity'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555217098580028238)
,p_name=>'LEAVE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVE_TYPE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Leave Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632531639210481189)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555217234768028240)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583545284243976674)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583546697443976688)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_EMPLOYEE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3555217411495028241)
,p_internal_uid=>3249209552153345372
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3554857704862926727)
,p_interactive_grid_id=>wwv_flow_imp.id(3555217411495028241)
,p_static_id=>'17649'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3554857535633926727)
,p_report_id=>wwv_flow_imp.id(3554857704862926727)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544250220969207193)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(3549043151169487246)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3546263657835552755)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3547647214327882143)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554848695536926677)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3555215553183028223)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554850677225926689)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3555215987156028227)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554851175518926692)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3555216080683028228)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554851695097926695)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3555216143320028229)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554852137020926697)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3555216254446028230)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554852624196926700)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3555216329741028231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554853140517926702)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3555216441209028232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554853697967926705)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3555216609625028233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554854178617926707)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3555216692604028234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554854645172926710)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3555216775433028235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554855191384926712)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3555216874335028236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554855623400926715)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3555216971941028237)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554856027305926718)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3555217098580028238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3554857060466926724)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3555217234768028240)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586258914854917063)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3583545284243976674)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586293053782398526)
,p_view_id=>wwv_flow_imp.id(3554857535633926727)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(3583546697443976688)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3577954488503418407)
,p_plug_name=>'Allowance Entitlements'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent4:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID, emp_id,',
'       MOVEMENT_ID,',
'       INCOME_TYPE,',
'       INCOME_CODE_ID,',
'       TAXABLE,',
'       NIS_DEDUCTION,',
'       AMOUNT,  ',
'       ADMIN_STATUS,',
'       EXPENSE_CODE_ID,',
'       PERCENTAGE,',
'       REMARKS,',
'       QUICK_ENTRY,',
'       START_DATE,',
'       END_DATE,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       PENSIONABLE,',
'       JOB_ID',
'  from HR_MOV_EMPENTITLE',
'where  MOVEMENT_ID = :P109_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P109_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P109_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1;'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009241076069459)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>260
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009363907069460)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>250
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009502968069461)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>240
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009553119069462)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009689274069463)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009792742069464)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3544009841398069465)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3547837659486179924)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3547837798848179925)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3549043215629487247)
,p_name=>'JOB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>280
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_JOB_NAME'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3549043338906487248)
,p_name=>'EXPENSE_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>270
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555239055899030928)
,p_name=>'PENSIONABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PENSIONABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pensionable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240201987030939)
,p_name=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'END_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240258548030940)
,p_name=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'START_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_FROM_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240371853030941)
,p_name=>'QUICK_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUICK_ENTRY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Quick Entry'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240527991030942)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240604803030943)
,p_name=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240686989030944)
,p_name=>'ADMIN_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Admin Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:MAN;MAN,SYS;SYS'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555240958657030947)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'FML999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555241085871030948)
,p_name=>'NIS_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIS_DEDUCTION'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'NIB/SS Deduction'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555241173365030949)
,p_name=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAXABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Taxable'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3555241314295030950)
,p_name=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_CODE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Income Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632556208618481225)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3577953918780418401)
,p_name=>'INCOME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INCOME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Income Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632555947948481225)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3577954243174418404)
,p_internal_uid=>3271946383832735535
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3555233792838029638)
,p_interactive_grid_id=>wwv_flow_imp.id(3577954243174418404)
,p_static_id=>'17648'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3555233682943029636)
,p_report_id=>wwv_flow_imp.id(3555233792838029638)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543666995911950191)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3544009241076069459)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543667815407950194)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3544009363907069460)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543668793595950197)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3544009502968069461)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543669629231950200)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3544009553119069462)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543670592279950203)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>34
,p_column_id=>wwv_flow_imp.id(3544009689274069463)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543671442473950206)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>33
,p_column_id=>wwv_flow_imp.id(3544009792742069464)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3543672340586950210)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>32
,p_column_id=>wwv_flow_imp.id(3544009841398069465)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544003266340052549)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3547837798848179925)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544253951550287909)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>40
,p_column_id=>wwv_flow_imp.id(3549043215629487247)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3544256285017303204)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>39
,p_column_id=>wwv_flow_imp.id(3549043338906487248)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555220889059029441)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3555239055899030928)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555226299469029513)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3555240201987030939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555226789217029519)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3555240258548030940)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555227285084029525)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3555240371853030941)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555227751852029531)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3555240527991030942)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>54
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555228349513029538)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3555240604803030943)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555228806302029546)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3555240686989030944)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555230273334029563)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3555240958657030947)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>65
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555230839909029568)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3555241085871030948)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>79
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555231295204029574)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3555241173365030949)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555231765526029580)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3555241314295030950)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>123
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3555232283911029589)
,p_view_id=>wwv_flow_imp.id(3555233682943029636)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3577953918780418401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3582900381135504129)
,p_plug_name=>'Movement Selection'
,p_region_name=>'movement'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent9:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:margin-top-none:margin-bottom-sm'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_location=>null
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1;'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3583533579019974479)
,p_plug_name=>'dis_selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_location=>null
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3583551390057977914)
,p_plug_name=>'Deductions'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent10:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EXPENSE_ID,',
'       EMP_ID,',
'       MOVEMENT_ID,',
'       DATESTART,   ',
'       AMOUNT_OWING,',
'       PERIOD,    ',
'       DEDUCTION_AMOUNT,',
'       REMARKS,',
'       DEDUCTION_TYPE,',
'        percent_basic,',
'         percent_option,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE',
'  from HR_MOV_ADMINDEDUCTION',
'  where MOVEMENT_ID = :P109_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P109_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P109_ID'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1;'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3549044494859487259)
,p_name=>'PERCENT_OPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_OPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Percent Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC:Basic Pay;BASIC_PAY,System Additional Income;SYS_ADD_INCOME,All Predefined Remuneration;ALL'
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3549044515609487260)
,p_name=>'PERCENT_BASIC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENT_BASIC'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percent Basic'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>200
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583551651602977916)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583551735981977917)
,p_name=>'EXPENSE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPENSE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Deduction Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632625189517596671)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583551869586977918)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_EMPLOYEE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583551951572977919)
,p_name=>'MOVEMENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MOVEMENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'movement'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_ID'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552029898977920)
,p_name=>'DATESTART'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DATESTART'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Datestart'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P109_FROM_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552229676977922)
,p_name=>'AMOUNT_OWING'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT_OWING'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount Owing'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552309535977923)
,p_name=>'PERIOD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERIOD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Period'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552590033977926)
,p_name=>'DEDUCTION_AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Deduction Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>130
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_format_mask=>'999G999G999G999G990'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552732416977927)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552858966977928)
,p_name=>'DEDUCTION_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEDUCTION_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Deduction Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3632622997116596669)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552929437977929)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entered By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583552994794977930)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Entry Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583553155612977931)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583553259182977932)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'TIMESTAMP_LTZ'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Last Changed Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583554546451977945)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3583554601981977946)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3583551557447977915)
,p_internal_uid=>3277543698106295046
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3586243772892853000)
,p_interactive_grid_id=>wwv_flow_imp.id(3583551557447977915)
,p_static_id=>'17647'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3586243801296853000)
,p_report_id=>wwv_flow_imp.id(3586243772892853000)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3545216434017745833)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3549044494859487259)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3545217354762745835)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3549044515609487260)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586244353483853004)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3583551651602977916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586244868442853010)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3583551735981977917)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586245282258853012)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3583551869586977918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586245697126853014)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3583551951572977919)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586246267450853016)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3583552029898977920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586247227554853020)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3583552229676977922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586247763542853021)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3583552309535977923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586249238169853027)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3583552590033977926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586249696634853029)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3583552732416977927)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586250265791853031)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3583552858966977928)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586250776207853032)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3583552929437977929)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586251203157853034)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3583552994794977930)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586251719484853036)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3583553155612977931)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586252241788853038)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3583553259182977932)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3586289535671343993)
,p_view_id=>wwv_flow_imp.id(3586243801296853000)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3583554546451977945)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3609537179873066880)
,p_name=>'Audit Record Verified by: &P109_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' to_char(approved_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||approved_by Approval,',
' to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' machine_insert,',
' machine_update,',
' apex_util.get_since(last_changed_date) updated',
'from HR_MOV_EMPMOVEMENT_NEW',
'where id = :P109_ID',
'',
'',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P109_ID'
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
 p_id=>wwv_flow_imp.id(369237588807450744)
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
 p_id=>wwv_flow_imp.id(369238041150450744)
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
 p_id=>wwv_flow_imp.id(402549041765823373)
,p_query_column_id=>3
,p_column_alias=>'APPROVAL'
,p_column_display_sequence=>70
,p_column_heading=>'Approval'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369238365361450744)
,p_query_column_id=>4
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369238858099450744)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369239212052450745)
,p_query_column_id=>6
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(369239612079450745)
,p_query_column_id=>7
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3609586119855076273)
,p_plug_name=>'New Employee Record'
,p_region_name=>'NEW_EMP'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent12::t-Region--scrollBody:t-Form--slimPadding::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_MOV_EMPMOVEMENT_NEW'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1',
';'))
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3554289218447844972)
,p_plug_name=>'Comments/Remarks/Work Flow'
,p_region_name=>'REMARKS'
,p_parent_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_region_template_options=>'#DEFAULT#:::is-collapsed::t-Region--accent2::t-Region--scrollBody:::::::::'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_read_only_when_type=>'EXISTS'
,p_plug_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 1;'))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3609586731285076432)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3788329839080217728)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3589976386036241641)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(3788329839080217728)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,CURRENT_DATE))||'' (''||dob||'')'' label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,CURRENT_DATE)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P109_EMPLOYEE',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P109_EMPLOYEE',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(CURRENT_DATE)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from CURRENT_DATE))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P109_EMPLOYEE',
'     order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369295886340450795)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed != 1;'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369296317101450795)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.:108::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369296734536450796)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed != 1;'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-trash-o'
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369153496030450675)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3577932968665415722)
,p_button_name=>'IMPORT_LEAVE_ENTITLEMENT_FROM_JOB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Leave Entitlement From Job'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 0;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369175079029450694)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3577954488503418407)
,p_button_name=>'IMPORT_ALLOWANCES_FROM_JOB'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Import Allowances From Job'
,p_button_position=>'EDIT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from hr_mov_empmovement_new',
'where id = :P109_ID',
'and executed = 0;'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369297060208450797)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,51::'
,p_button_condition=>'P109_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369303089667450813)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3589976386036241641)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P109_EMPLOYEE.,109'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(320716182679031538)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(320715972866031536)
,p_button_name=>'PREVIEW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Printed Letter'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1 ',
'FROM HR_MOV_EMPMOVEMENT_NEW ',
'WHERE EMPLOYMENT_TYPE_ID = 4',
'AND ID = :P109_ID',
'AND :APP_ORG_NAME = ''BOS'''))
,p_button_condition_type=>'NOT_EXISTS'
,p_button_cattributes=>'style="background-color: #f05e16; color: white; font-weight: bold;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369297468496450797)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P109_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369297942243450797)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P109_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369298281061450797)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_condition=>'P109_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369298664472450798)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM,P37_USER_REMARKS:&P109_ID.,ID,&P109_STATUS.,HR_MOV_EMPMOVEMENT_NEW,&P109_TRANSACTION_TYPE_ID.,Movement Management,51,&P109_WORKFLOW_COMMENT.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )',
'  where :P109_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369299141384450798)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'LETTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Printed Letter'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P109_EMPLOYEE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_cattributes=>'style="background-color: #f05e16; color: white; font-weight: bold;"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(369299547221450799)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_button_name=>'NOTICE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Printed Notice'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P109_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_cattributes=>'style="background-color: #854e9b; color: white; font-weight: bold;"'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369362709384450860)
,p_branch_name=>'Create Again'
,p_branch_action=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,51::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369297942243450797)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369362280457450860)
,p_branch_name=>'DELETE'
,p_branch_action=>'f?p=&APP_ID.:108:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369296734536450796)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369361093487450859)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP:P109_ID:&P109_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369297468496450797)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369361489447450859)
,p_branch_name=>'APPLY_CHANGES'
,p_branch_action=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP:P109_ID:&P109_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369295886340450795)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369361906316450860)
,p_branch_name=>'ADD_NEW'
,p_branch_action=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,51::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369297060208450797)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369360275130450859)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY_ID,P129_MEDIA_EMP_ID,P129_RETURN_VALUE:102,FRMMOVEMENTMANAGEMENT,&P109_ID.,&P109_EMPLOYEE.,51'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369298281061450797)
,p_branch_sequence=>53
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P109_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(369360715886450859)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P109_DOC_EXIST.,51'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(369298281061450797)
,p_branch_sequence=>53
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P109_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(190687723404877323)
,p_branch_name=>'stay_br'
,p_branch_action=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109:P109_ID:&P109_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>63
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(320716146966031537)
,p_name=>'P109_CC_TO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(320715972866031536)
,p_prompt=>'CC To:'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUBSTR(EMPLOYEE_NAME, 0 ,INSTR(EMPLOYEE_NAME, ''('') - 1 )||''(no.:''||EMP_COMPANY_NO||'')'' a, x.id B',
'from VW_EMPLOYEE X left outer join VW_SELFSERVEUSER Y on X.id=Y.EMPLOYEE_NO',
'left join HR_HCF_POSITION p on p.id = x.position_id',
'left join vw_organisation o on o.id = x.org_id',
'where X.id=DECODE(PKG_GLOBAL_FNTS.FN_SELFSERVEUSER(:APP_ORG_ID),1,Y.EMPLOYEE_NO,X.id)',
'and  (x.DATE_SEPARATED is null or DATE_SEPARATED > :P109_FROM_DATE)',
'and pkg_global_fnts.fn_sharereforg(x.org_id) = :APP_ORG_ID',
'and x.include_payroll = ''Y''',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P109_FROM_DATE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(446736854180593656)
,p_name=>'P109_ANNUAL_SALARY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'0'
,p_prompt=>'Annual Salary'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'ANNUAL_SALARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Value is computed based on the Basic Pay Rate for the specific payment mode or frequency.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(447546602510632425)
,p_name=>'P109_NEW'
,p_item_sequence=>0
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P109_EMPLOYMENT_CLASS= 8550410 THEN ''!! Please enter the Annual Salary Only for auto computation of Personal Rate, Hourly and Daily Rates; if the employment class is Salaried. !!''',
'                else ''!! Please enter the Personal Rate for auto computation of Annual Salary, Hourly and Daily Rates; if the employment class is NOT Salaried. !!'' ',
'              end display_lbl',
'from dual'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(451615472879566414)
,p_name=>'P109_REPORT_URL'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_source=>'select TABLE_VALUE  from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);'
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3145376966649192892)
,p_name=>'P109_REPORT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_item_default=>'6091'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3145377108069192893)
,p_name=>'P109_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3438193031964279337)
,p_name=>'P109_OLD_JOB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3438193191013279338)
,p_name=>'P109_OLD_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509883188386982768)
,p_name=>'P109_WORKFLOW_ADD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3554289218447844972)
,p_prompt=>'Add Workflow Comment'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3509883560505982769)
,p_name=>'P109_WORKFLOW_COMMENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3554289218447844972)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Workflow Comment'
,p_source=>'WORKFLOW_COMMENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509883990091982769)
,p_name=>'P109_NEW_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3554289218447844972)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Remarks'
,p_source=>'NEW_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
,p_cHeight=>5
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509909583132982793)
,p_name=>'P109_OLD_ORGANISATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Organisation'
,p_source=>'OLD_ORGANISATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509909928128982793)
,p_name=>'P109_TO_DATE_QUERY'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_MOV_EMPMOVEMENT_NEW',
'WHERE ID = :P109_ID',
'AND VERIFIED_BY IS NOT NULL AND VERIFIED_DATE IS NOT NULL',
'AND CHANGE_TYPE_ID != 1'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509910388205982794)
,p_name=>'P109_OLD_EMP_COMPANY_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Emp Company No.'
,p_source=>'OLD_EMP_COMPANY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509910740629982794)
,p_name=>'P109_OLD_EMPLOYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Employment Type'
,p_source=>'OLD_EMPLOYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMPLOYMENT_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3508177309009370904)||'.'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509911202798982794)
,p_name=>'P109_OLD_FROM_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Appointment Start'
,p_source=>'OLD_FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509911569456982794)
,p_name=>'P109_OLD_TO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'End'
,p_source=>'OLD_TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509911982311982794)
,p_name=>'P109_OLD_ORG_STRUCTURE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Department'
,p_source=>'OLD_ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509912389452982795)
,p_name=>'P109_OLD_POSTION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Position'
,p_source=>'OLD_POSITION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509912790032982795)
,p_name=>'P109_SPACER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509913207066982795)
,p_name=>'P109_OLD_WKLOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Location'
,p_source=>'OLD_WKLOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>300
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509913577638982795)
,p_name=>'P109_OLD_JOB_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Job'
,p_source=>'OLD_JOB_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509914000609982796)
,p_name=>'P109_OLD_JOB_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Job Class'
,p_source=>'OLD_JOB_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509914359435982796)
,p_name=>'P109_OLD_EMPLOYMENT_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Employment Class'
,p_source=>'OLD_EMPLOYMENT_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509914766207982796)
,p_name=>'P109_OLD_GRADE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Grade'
,p_source=>'OLD_GRADE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509915212104982796)
,p_name=>'P109_OLD_GRADE_POINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Grade Point'
,p_source=>'OLD_GRADE_POINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509915601118982796)
,p_name=>'P109_OLD_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Old Shift'
,p_source=>'OLD_SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'NONE',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509916002682982797)
,p_name=>'P109_OLD_EMPLOYMENT_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_EMPLOYMENT_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509916327064982797)
,p_name=>'P109_OLD_PERSONAL_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Personal Rate'
,p_source=>'OLD_PERSONAL_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509916747798982798)
,p_name=>'P109_OLD_HOURLY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'OLD_HOURLY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509917223822982798)
,p_name=>'P109_OLD_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Payment Type'
,p_source=>'OLD_PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509917535817982798)
,p_name=>'P109_OLD_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Old Compute Gross'
,p_source=>'OLD_COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct case when compute_gross = ''HOURLY_RATE'' then ''Hourly Rate''',
'                     when compute_gross = ''DAILY_RATE'' then ''Daily Rate''',
'                     when compute_gross = ''BASIC_PAY'' then ''Basic Pay''',
'                     else ''Piece Rate'' end A',
',compute_gross',
'from hr_rcm_employee'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509917945828982798)
,p_name=>'P109_OLD_PAYROLL_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Payroll Effective'
,p_source=>'OLD_PAYROLL_EFFECTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509918324435982799)
,p_name=>'P109_OLD_LEAVE_ANN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Old Leave Ann Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'OLD_LEAVE_ANN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509918803658982799)
,p_name=>'P109_OLD_REPORT_TO_ADMIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Report To Admin'
,p_source=>'OLD_REPORT_TO_ADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3509919141257982799)
,p_name=>'P109_OLD_REPORT_TO_FUNC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Report To Functional'
,p_source=>'OLD_REPORT_TO_FUNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'        case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'        from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'        where exists(select 1        ',
'                     from vw_useraccess_finegrain k',
'                     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'                     and user_name=:APP_USER)  ',
'        and exists(select 1',
'                from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'                where  t.id=x.ORGDTL_ID',
'                and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'                  )',
'        and org_id=:APP_ORG_ID             ',
'        order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3509919574113982800)
,p_name=>'P109_OLD_UNION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Union Code'
,p_source=>'OLD_UNION_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'NONE',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509919932625982800)
,p_name=>'P109_OLD_UNION_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Union Effective Date'
,p_source=>'OLD_UNION_JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509920398059982800)
,p_name=>'P109_OLD_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Approved By'
,p_source=>'OLD_APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509920768511982800)
,p_name=>'P109_OLD_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Approved Date'
,p_source=>'OLD_APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509921170695982801)
,p_name=>'P109_OLD_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Old Remarks'
,p_source=>'OLD_REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509921534385982801)
,p_name=>'P109_OLD_EMPLOYEE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_EMPLOYEE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509921926688982801)
,p_name=>'P109_OLD_ORG_STRUCTURE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_ORG_STRUCTURE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509937975630982814)
,p_name=>'P109_DOC_EXIST'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P109_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509938428932982815)
,p_name=>'P109_MOVEMENT_TYPE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Movement Type'
,p_source=>'CHANGE_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(tblmv.VALUE_DESCRIPTION) B, tblmv.ID A',
'    from ',
'        hr_hcf_lookup tblmv',
'        join (select * from hr_hcf_lookup ',
'              where TABLE_NAME = UPPER(''TBLMOVEMENTCLASS'') ',
'             ) tblmvclass on tblmv.lookup_id = tblmvclass.id',
'        where  tblmv.TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and  tblmvclass.table_value = ''NEWSTINT''',
'        and (tblmv.end_period is null or tblmv.end_period >= CURRENT_DATE) ',
'        and tblmv.verified_by is not null ',
'        and tblmv.verified_date is not null',
'           and exists (select 1',
'                from hr_hcf_organisation x',
'                where X.ID = tblmv.ORG_ID',
'                AND USE_FOR_SEEDED_DATA=1',
'                )',
'ORDER BY 1;'))
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509938744417982815)
,p_name=>'P109_CHANGE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'CHANGE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509939216703982815)
,p_name=>'P109_SHOW_HIDE_HIRE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509939623298982816)
,p_name=>'P109_HIRETYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Movement Type Sub'
,p_source=>'CHANGE_TYPE_SUB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select initcap(VALUE_DESCRIPTION) B, ID A',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= CURRENT_DATE) ',
'        and verified_by is not null ',
'        and verified_date is not null',
' and LOOKUP_ID=:P109_MOVEMENT_TYPE',
''))
,p_lov_cascade_parent_items=>'P109_MOVEMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509939968362982816)
,p_name=>'P109_MOVEMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'CHANGE_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509940398778982816)
,p_name=>'P109_RETURN_VALUE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509940820240982816)
,p_name=>'P109_INDIVIDUAL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Individual'
,p_source=>'IND_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if   PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_MOVEMENT_TYPE, ''TABLE_VALUE'') = ''NEWE'' and PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_HIRETYPE, ''TABLE_VALUE'') = ''NEWRH'' ',
'        and :P109_EXECUTED is null  then --rehired',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'and pkg_global_fnts.fn_calcage(DOB,trunc(sysdate))  >= pkg_global_fnts.get_employment_age(:APP_ORG_SHR_DED)      ',
'and exists(select 1 from hr_rcm_employee emp where emp.ind_id = a.id and emp.separated_status_id is not null and emp.date_employed < trunc(sysdate) and emp.date_separated between emp.date_employed and trunc(sysdate))'';',
'',
'elsif   ((PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_MOVEMENT_TYPE, ''TABLE_VALUE'') = ''NEWE'' and PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_HIRETYPE, ''TABLE_VALUE'') = ''NEWRT'')',
'         or PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_MOVEMENT_TYPE, ''TABLE_VALUE'') = ''NEWP'' ) ',
'        and :P109_EXECUTED is null then --Retired REHIRED/ New Pensioner',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'and pkg_global_fnts.fn_calcage(DOB,trunc(sysdate))  >= pkg_global_fnts.get_employment_age(:APP_ORG_SHR_DED)',
'and exists(select 1 from hr_rcm_employee emp where a.id = emp.ind_id and pkg_global_fnts.fn_calcage(DOB,trunc(sysdate)) >= case when a.sex_code = ''''M'''' then pkg_global_fnts.fn_getretireage(emp.id, emp.org_id, trunc(sysdate)) else pkg_global_fnts.fn_G'
||'etFemaleRetireAge(emp.id, emp.org_id, trunc(sysdate)))'';',
'',
'elsif  ((PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_MOVEMENT_TYPE, ''TABLE_VALUE'') = ''NEWE'' and PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_HIRETYPE, ''TABLE_VALUE'') = ''NEWEM'') ',
'        or PKG_GLOBAL_FNTS.Get_Lookup_Col(:P109_MOVEMENT_TYPE, ''TABLE_VALUE'') = ''NEWT'')',
'        and :P109_EXECUTED is null then --New Employee/ New Training',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A  ',
'Where Verified_By Is Not Null',
'and a.ind_org_id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'And Not Exists (Select 1',
'                From Hr_Rcm_Employee B',
'                Where A.Id=B.Ind_Id',
'                And Org_Id in (:APP_ORG_ID,:APP_ORG_SHR_DED)',
'                And (Date_Separated Is Null Or Date_Separated > Sysdate))',
'and pkg_global_fnts.fn_calcage(DOB,trunc(sysdate))  >= pkg_global_fnts.get_employment_age(:APP_ORG_SHR_DED)           ',
'order by 1'';',
'',
'ELSE',
'',
'RETURN ''SELECT  INITCAP(A.SURNAME || '''', '''' || nvl(A.FIRST_NAME, ''''''''))||'''' ''''||nvl(A.MIDDLE_NAME,'''''''')||'''' DOB:''''||to_char(dob,''''DD-MON-YY'''')||'''' (''''||SEX_CODE||'''')'''' AS INDIVIDUAL  ,ID ',
'FROM  HR_RCM_INDIVIDUAL A ',
'where id = (select ind_id from hr_mov_empmovement_new',
'             where id =:P109_ID)',
'order by 1'';',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P109_MOVEMENT_TYPE,P109_HIRETYPE'
,p_ajax_items_to_submit=>'P109_ID,P109_MOVEMENT_TYPE,P109_HIRETYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Selected from the individuals screen, conditions include the prevention of individuals already employed for current organisation, auto assignment of rehire status if employee worked for current organisation. Individuals must be verified. Individual''s'
||' age must be equal to or greater than the company''s minimum employment age.'
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
 p_id=>wwv_flow_imp.id(3509941661355982819)
,p_name=>'P109_EMPLOYEE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3509942104765982819)
,p_name=>'P109_CHANGE_TYPE_SUB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3582900381135504129)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'CHANGE_TYPE_SUB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510022718439982891)
,p_name=>'P109_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Organisation'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'SOFTWARE_USER'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from vw_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and x.ID=:APP_ORG_ID',
'order by 1'))
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510023131288982892)
,p_name=>'P109_EMP_COMPANY_NO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Emp Company No.'
,p_source=>'EMP_COMPANY_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>8
,p_cMaxlength=>20
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510023565814982892)
,p_name=>'P109_EMPLOYMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'1'
,p_prompt=>'Employment Type'
,p_source=>'EMPLOYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'EMPLOYMENT_TYPE_DYN'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, table_value b',
'from hr_hcf_lookup  a',
'where table_name=''TBLEMPLOYMENTTYPE''',
'AND ORG_ID =:APP_ORG_SHR_DED',
'order by 1',
''))
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '5',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510023965154982892)
,p_name=>'P109_FROM_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Appointment Start'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'FROM_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This date will be date emmployed or date of appointment for new employment and other movement type respectively.'
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
 p_id=>wwv_flow_imp.id(3510024879837982893)
,p_name=>'P109_TO_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Appointment End'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'TO_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510025267462982893)
,p_name=>'P109_ORG_STRUCTURE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Department'
,p_source=>'ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'Where Trunc(M.Start_Date) <= Trunc(CURRENT_DATE-4/24)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(CURRENT_DATE))',
'and exists (select 1',
'            from HR_HCF_ORGSTRUCTUREHD a',
'           where a.id = m.ORG_STRUCTURE_ID',
'           and org_id= :APP_ORG_ID) ',
'order by 1;',
'',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510025609732982893)
,p_name=>'P109_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Position'
,p_source=>'POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME ||'' (''||g.grade_code||'')'' a, a.id b',
'from HR_HCF_POSITION a',
'join HR_HCF_POSITIONGRADE g on g.id = a.GRADE_id',
'join HR_HCF_ORGSTRUCTUREDTL od on OD.ID = a.orgdtl_id',
'join HR_HCF_ORGSTRUCTUREHD oh on oh.id = od.org_structure_id',
'WHERE oh.ORG_ID=:APP_ORG_ID',
'and a.ORGDTL_ID =:P109_ORG_STRUCTURE',
'order by 1;',
'',
''))
,p_lov_cascade_parent_items=>'P109_ORG_ID,P109_ORG_STRUCTURE'
,p_ajax_items_to_submit=>'P109_MOVEMENT_TYPE,P109_ORG_ID,P109_ORG_STRUCTURE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510026078738982893)
,p_name=>'P109_WKLOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEF_WORK_LOCATION_ID FROM HR_HCF_POSITION WHERE ID = :P109_POSITION_ID',
'',
'',
'/*',
'SELECT 1  DEF_WORK_LOCATION_ID',
'from hr_hcf_position',
'where def_work_location_id = :P109_WKLOCATION_ID',
'*/'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.LOCATION_DESCRIPTION || '' ('' || B.LOCATION_code || '')'' a, B.id b',
'from HR_HCF_WORKLOCATION B',
'WHERE ORG_ID=:APP_ORG_ID',
'order by 1',
''))
,p_lov_cascade_parent_items=>'P109_ORG_ID,P109_POSITION_ID'
,p_ajax_items_to_submit=>'P109_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510026411395982894)
,p_name=>'P109_JOB_NAME'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Job Name'
,p_source=>'JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    a .description,',
'    a .id',
'FROM',
'    hr_hcf_job a',
'',
'WHERE',
'    a .id = (',
'        select',
'            job_id',
'        from',
'            hr_hcf_position',
'        where',
'            id = :P109_POSITION_ID',
'    )',
'ORDER BY 1',
''))
,p_lov_cascade_parent_items=>'P109_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510026795072982894)
,p_name=>'P109_JOB_CLASS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Job Class'
,p_source=>'JOB_CLASS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT job_classification a, job_classification b  ',
'    FROM HR_HCF_job',
'    where id =:P109_JOB_NAME',
''))
,p_lov_cascade_parent_items=>'P109_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510027224446982894)
,p_name=>'P109_EMPLOYMENT_CLASS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Employment Class'
,p_source=>'EMPLOYMENT_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(VALUE_DESCRIPTION) A, ID ',
'from hr_hcf_lookup x ',
'where table_name = ''TBLEMPLOYMENTCLASS''',
'and x.org_id=  :APP_ORG_SHR_DED',
'and    X .id = (',
'        select',
'            j.employment_class_job',
'        from',
'            hr_hcf_job j',
'        where',
'            j.id = :P109_JOB_NAME',
'                )',
'ORDER BY 1',
''))
,p_lov_cascade_parent_items=>'P109_JOB_NAME'
,p_ajax_items_to_submit=>'P109_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510027607832982894)
,p_name=>'P109_GRADE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Grade'
,p_source=>'EMP_GRADE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  a.grade_description',
'        || ''(''',
'        || a.grade_code',
'        || '') as at ''',
'        || a.effective_fromdate a,',
'        a.id',
'from hr_hcf_positiongrade   a ',
'WHERE a.id = (',
'        select',
'            j.job_grade_id',
'        from',
'            hr_hcf_job j',
'        where',
'            j.id = :P109_JOB_NAME',
'            )',
'ORDER BY 1',
'',
'',
'--Richard''s old code',
'/*',
'SELECT',
'    a.grade_description',
'    || ''(''',
'    || a.grade_code',
'    || '') as at ''',
'    || a.effective_fromdate a,',
'    a.id',
'FROM',
'    hr_hcf_positiongrade   a',
'    JOIN hr_hcf_job             b ON a.id = b.job_grade_id',
'where b.id=:P109_JOB_NAME',
'ORDER BY',
'    1;',
'    ',
'*/'))
,p_lov_cascade_parent_items=>'P109_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510027886895982893)
,p_name=>'P109_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3609537179873066880)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510028031885982895)
,p_name=>'P109_GRADE_POINT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'1'
,p_prompt=>'Grade Point'
,p_source=>'GRADE_POINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ''Point: ''||a.point || ''-'' || ''$''||trim(to_char(a.point_amount,''999,999,999'')), a.point',
'from hr_hcf_positiongradepoint   a ',
'WHERE end_date is null',
'  and a.position_grade_id = (',
'        select',
'            j.job_grade_id',
'        from',
'            hr_hcf_job j',
'        where',
'            j.id = :P109_JOB_NAME',
'             )',
'ORDER BY point',
'',
'',
'--Richard''s old code',
'/*',
'select ''(''||grade_code||'')-Point: ''||a.point || ''-'' || ''$''||trim(to_char(a.point_amount,''999,999,999'')), a.id ',
'from hr_hcf_positiongradepoint a',
'join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'where a.position_grade_id = :P109_GRADE',
'order by 1;',
'*/'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Point--'
,p_lov_cascade_parent_items=>'P109_JOB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510028391647982895)
,p_name=>'P109_PAYMENT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'MONTHLY'
,p_prompt=>'Payment Frequency'
,p_source=>'PAYMENT_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT INITCAP(PAYMENT_TYPE) A, PAYMENT_TYPE B',
'FROM VW_USERACCESS',
'WHERE  user_name =:APP_USER',
'order by 1 desc'))
,p_lov_cascade_parent_items=>'P109_EMPLOYMENT_CLASS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510028707240982893)
,p_name=>'P109_MACHINE_INSERT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3609537179873066880)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510028801624982895)
,p_name=>'P109_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Compute Gross'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTE_GROSS'
,p_lov=>'.'||wwv_flow_imp.id(3628710815723471759)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510029104689982894)
,p_name=>'P109_MACHINE_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3609537179873066880)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510029260358982895)
,p_name=>'P109_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sr.shift_cycle_name, sr.id',
'from HR_ATT_SHIFT_ROTA sr',
'join hr_hcf_job j on j.shift_rota_id = sr.id',
'where sr.id = :P109_JOB_NAME',
'and sr.org_id=:APP_ORG_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Shift Rotation'
,p_source=>'SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_cycle_name||''(H:''||hours_worked||'' - D:''||NUM_WORKING_DAYS||'')'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a ',
'join hr_hcf_lookup b on b.id = a.Shift_Type_Id',
'where (B.table_name = ''TBLSHIFTSEQ''',
'OR b.table_name = ''TBLSHIFTTYPE'')',
'and a.start_date <= trunc(CURRENT_DATE)',
'and (a.end_date is null or a.end_date >=trunc(CURRENT_DATE))',
'and a.org_id=:APP_ORG_SHR_DED',
'AND upper(A.PAYMENT_TYPE) = upper(:P109_PAYMENT_TYPE)'))
,p_lov_cascade_parent_items=>'P109_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510029674953982896)
,p_name=>'P109_GRADE_POINT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'GRADE_POINT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510030051983982896)
,p_name=>'P109_EMPLOYMENT_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'pkg_global_fnts.get_lookup_id(''ACT'', ''TBLEMPLOYMENTSTATUS'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'EMPLOYMENT_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510030469225982896)
,p_name=>'P109_PERSONAL_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'0'
,p_prompt=>'&P109_BASIC_PAY_RATE. Basic Pay Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'PERSONAL_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Enter the amount specific to the compute gross, if Hourly Rated, enter the hourly Rate for the employee. System will compute and place the correct values in specific fields.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510030870688982896)
,p_name=>'P109_HOURLY_RATE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'0'
,p_prompt=>'Hourly Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'HOURLY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510031275096982897)
,p_name=>'P109_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'0'
,p_prompt=>'Daily Rate'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'DAILY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>15
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510031616832982897)
,p_name=>'P109_PAYROLL_EFFECTIVE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Payroll Effective'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'PAYROLL_EFFECTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(3510031990304982897)
,p_name=>'P109_LEAVE_ANN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Leave Ann Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'LEAVE_ANN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510032400233982897)
,p_name=>'P109_REPORT_TO_FUNC'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Reports to Functional'
,p_source=>'REPORT_TO_FUNC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P109_ID is null then',
'',
'return',
' ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_AVAILEMPLOYEE X ',
'where (x.DATE_SEPARATED is null or DATE_SEPARATED > :P109_FROM_DATE)',
'ORDER BY 1'';',
'',
'else',
'',
'return',
'  ''select EMPLOYEE_NAME||''''(no.:''''||EMP_COMPANY_NO||'''')'''' || case when x.date_separated is not null then ''''(IN-ACTIVE)'''' else null end a, id B',
'from VW_EMPLOYEE X'';',
'',
'end if;',
'',
'--and x.position_id = (select report_to_tech from hr_hcf_position where id = :P109_POSITION_ID) '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P109_FROM_DATE,P109_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510032821390982898)
,p_name=>'P109_REPORT_TO_ADMIN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Reports To Admin'
,p_source=>'REPORT_TO_ADMIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P109_ID is null then',
'',
'return',
' ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' a, id B',
'from VW_AVAILEMPLOYEE X ',
'where (x.DATE_SEPARATED is null or DATE_SEPARATED > :P109_FROM_DATE)',
'ORDER BY 1'';',
'',
'else',
'',
'return',
'  ''select EMPLOYEE_NAME||''''(no.:''''||EMP_COMPANY_NO||'''')'''' || case when x.date_separated is not null then ''''(IN-ACTIVE)'''' else null end a, id B',
'from VW_EMPLOYEE X'';',
'',
'end if;',
'',
'--and x.position_id = (select report_to from hr_hcf_position where id = :P109_POSITION_ID) '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P109_FROM_DATE,P109_POSITION_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510033228603982898)
,p_name=>'P109_UNION_CODE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Union Code'
,p_source=>'UNION_CODE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'ORGANISATION_UNION_AND_CREDITUNION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,x.id',
'from PA_PCF_DEDUCTIONCODE w join vw_organisationCUR x on w.ENTITY_ABBREVIATION=x.id',
'where organisation_type=''REMITTANCE''',
'and UNION_DEDUCTION=1',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510033643886982898)
,p_name=>'P109_UNION_JOIN_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Union Effective Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'UNION_JOIN_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510034042647982898)
,p_name=>'P109_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510034477427982899)
,p_name=>'P109_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Approved Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3510034795406982899)
,p_name=>'P109_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'110'
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
 p_id=>wwv_flow_imp.id(3510035203228982899)
,p_name=>'P109_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id) ',
'--and (upper(Wfl_Status_Description) not like DECODE(:P109_ID, NULL,''%VERI%'',''test'')  ',
'and( upper(Wfl_Status_Description) not like DECODE(:P109_ID, NULL,''%COMP%'',''test'')  ',
'and upper(Wfl_Status_Description) not like DECODE(:P109_ID, NULL,''%WITH%'',''test'')  ',
'and upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'and upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') )',
'And Webpage_Id=:APP_PAGE_ID      ',
'and TRANSACTION_TYPE_ID=:P109_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P109_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510035669757982899)
,p_name=>'P109_EFFECTIVE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'EFFECTIVE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510036059624982900)
,p_name=>'P109_EXECUTED_ON'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'EXECUTED_ON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510036400635982900)
,p_name=>'P109_EXECUTED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'0'
,p_source=>'EXECUTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when=>'P109_EXECUTED'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510036805579982900)
,p_name=>'P109_OLD_TRANSACTION_TYPE_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510037187639982900)
,p_name=>'P109_OLD_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510037653569982901)
,p_name=>'P109_CHANGE_TYPE_SUB'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'CHANGE_TYPE_SUB'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510038071788982901)
,p_name=>'P109_PAYMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'PAYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510038461308982901)
,p_name=>'P109_OLD_PAYMENT_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'OLD_PAYMENT_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510038813796982901)
,p_name=>'P109_TRANSFER'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_item_default=>'0'
,p_source=>'TRANSFER'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510039265188982902)
,p_name=>'P109_PERSON_RATE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510039667929982902)
,p_name=>'P109_BASIC_PAY_RATE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510066704295982933)
,p_name=>'P109_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510067118522982934)
,p_name=>'P109_IS_PRIM_TAX_FN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3609586731285076432)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510125420651982978)
,p_name=>'P109_PHOTO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3788329839080217728)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3510125831048982978)
,p_name=>'P109_PHOTO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3788329839080217728)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
    'where exists (select 1',
    '              from hr_mov_empmovement_new C ',
    '              where  C.EMP_ID = B.ID',
    '              and c.id = :P109_PHOTO_ID)')))).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3565668213709074695)
,p_name=>'P109_OLD_DAILY_RATE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3483631666000559556)
,p_item_source_plug_id=>wwv_flow_imp.id(3609586119855076273)
,p_prompt=>'Old Daily Rate'
,p_source=>'OLD_DAILY_RATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(353725633337508505)
,p_validation_name=>'enforce_license'
,p_validation_sequence=>59
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cur_emp_count number(10):=0;',
'    v_get_license varchar2(300);',
'',
'begin',
'',
'    v_get_license := pkg_security.GET_LICENCE(:APP_ORG_ID, :G_PARSING_SCHEMA);',
'    ',
'    IF v_get_license =''GOOD'' then     ',
'         return NULL;',
'    ELSE',
'         return v_get_license;   ',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE, CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369306008885450821)
,p_validation_name=>'chk_emp_age'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_emp_age hr_hcf_org_rule.employment_age%type;',
'  v_dob pls_integer:=0;',
'',
'begin',
'    SELECT to_number(employment_age) into v_emp_age',
'    FROM hr_hcf_org_rule',
'    where org_id=:P109_ORG_ID',
'    and ((trunc(current_date) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'    or  (trunc(start_date) <= TRUNC(current_date) and trunc(end_date) is null ));',
'    ',
'    select pkg_global_fnts.fn_calcage(DOB,trunc(current_date)) into v_dob',
'    from hr_rcm_individual',
'    where id= (select ind_id ',
'               from hr_rcm_employee ',
'               where id = nvl(:P109_EMPLOYEE,0));',
'    ',
'    ',
'    if v_dob < v_emp_age then',
'      return false;',
'    else',
'      return true;    ',
'    end if;',
'   ',
'exception',
'   when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Either the date of birth or organisation employment age is incorrect.'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369306363594450821)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P109_FROM_DATE, :P109_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Workflow mode is enabled, please select a transaction and subsequent status.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369306820394450821)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P109_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P109_ID, :P109_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369307164806450822)
,p_validation_name=>'chk_nis'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_ind_id number(38);',
'',
'begin',
'',
'',
'    if pkg_global_fnts.fn_getcurnistaxno(:P109_INDIVIDUAL, ''NIB NUMBER'',  current_date) is null ',
'    AND PKG_GLOBAL_FNTS.GET_LOOKUP_COL(:P109_EMPLOYMENT_CLASS, ''VALUE_DESCRIPTION'')  not in (''APPLICANT'',''PENSIONERS'') THEN',
'    return false;',
'    else',
'     return true;',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'There is no NIB/SS No. available for this individual. Kindly update the individual data before continuing.'
,p_validation_condition=>'P109_MOVEMENT_TYPE'
,p_validation_condition2=>'2'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369307639982450822)
,p_validation_name=>'chk_address'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_rcm_address addr join hr_rcm_individual ind on ind.id = addr.ind_id   ',
'where IND.ID = :P109_INDIVIDUAL'))
,p_validation_type=>'EXISTS'
,p_error_message=>'You must have an address attached to your employee record'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369308049084450822)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P109_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_when_button_pressed=>wwv_flow_imp.id(369295886340450795)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369308835977450823)
,p_validation_name=>'chk_dtapp_DOB'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob date;',
'  v_application_date date;',
'BEGIN',
'',
'select dob into v_dob ',
'from hr_rcm_individual ind',
'where id= :P109_INDIVIDUAL;',
'',
'IF TO_DATE(:P109_FROM_DATE) < v_dob  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'EXCEPTION',
' WHEN OTHERS THEN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The date applied is incorrect when compared to the employee date of birth!'
,p_always_execute=>'Y'
,p_validation_condition=>'P109_MOVEMENT_TYPE'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369309208635450823)
,p_validation_name=>'chk_DOE_DOB'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dob date;',
'BEGIN',
'',
'select dob into v_dob ',
'from hr_rcm_individual',
'where id= :P109_INDIVIDUAL;',
'',
'IF TO_DATE(:P109_FROM_DATE) < v_dob  THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'EXCEPTION',
' WHEN OTHERS THEN NULL;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The date employed is incorrect when compared to the employee date of birth!'
,p_always_execute=>'Y'
,p_validation_condition=>'P109_MOVEMENT_TYPE'
,p_validation_condition2=>'1'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369309625641450824)
,p_validation_name=>'chk_spaning_DOE'
,p_validation_sequence=>210
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select sum(v_count) into v_cnt',
'from',
'(',
'select count(1) v_count ',
'from hr_rcm_employee',
'where org_id =:APP_ORG_ID',
'and ind_id = :P109_INDIVIDUAL',
'and date_employed is not null',
'and date_separated is not null',
'and (to_date(:P109_FROM_DATE) between date_employed and (date_separated-1)',
'     or to_date(:P109_TO_DATE) between date_employed and (date_separated-1)',
'    )',
'and id != nvl(:P109_ID,0)',
'-- UNION',
'-- select count(1) v_count',
'-- from hr_rcm_employee',
'-- where org_id =:APP_ORG_ID',
'-- and ind_id = :P109_INDIVIDUAL',
'-- and date_employed is not null',
'-- and date_separated is not null',
'-- and (to_date(:P109_FROM_DATE) >= date_employed ',
'--      or to_date(:P109_TO_DATE) >= date_employed',
'--     )',
'-- and id != nvl(:P109_ID,0)',
');',
'',
'/*select count(1) into v_cnt ',
'from hr_rcm_employee',
'where ind_id = :P109_INDIVIDUAL',
'and to_date(:P109_FROM_DATE) >= date_separated',
'and id !=:P109_ID;',
'*/',
'',
'if v_cnt >0 then',
'  return false;',
'else',
'  return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Spanning dates of employment not allowed for employees.'
,p_always_execute=>'Y'
,p_validation_condition=>'P109_ID'
,p_validation_condition_type=>'ITEM_IS_NOT_NULL'
,p_when_button_pressed=>wwv_flow_imp.id(369295886340450795)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369310422510450824)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_MOV_EMPMOVEMENT_NEW''',
'        and table_name_key=:P109_ID;',
'        ',
'    if v_test_approval = 0 and pkg_global_fnts.status_descript(:P109_STATUS) =''VERIFY'' then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_when_button_pressed=>wwv_flow_imp.id(369295886340450795)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369305580755450821)
,p_validation_name=>'enf_emptype_payeffetive'
,p_validation_sequence=>290
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_employment_type_id pls_integer; v_payroll_effective date;',
'',
'begin',
'',
'    select employment_type_id, payroll_effective into v_employment_type_id, v_payroll_effective',
'    from hr_rcm_employee',
'    where id = :P109_EMPLOYEE;',
'',
'    if (:P109_MOVEMENT_TYPE != 1 and  :P109_employment_type_id != v_employment_type_id) or  (:P109_MOVEMENT_TYPE != 1 and :P109_PAYROLL_EFFECTIVE != v_payroll_effective) then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'',
'exception',
'    when others then null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Changes to Employment Type and/or Payroll Effective date is specific to new employment only.'
,p_when_button_pressed=>wwv_flow_imp.id(369295886340450795)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369304374835450819)
,p_validation_name=>'chk_rehire_permanent'
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'IF :P109_CHANGE_TYPE_SUB_ID = 21 AND :P109_EMPLOYMENT_TYPE_ID = 3 THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please ensure that the employment type is not set to PENSION when hiring a Retired Employee. Use the Movement Subtype RETIRED PENSIONER.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369304761726450820)
,p_validation_name=>'chk_retire_employee'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'IF :P109_CHANGE_TYPE_SUB_ID = 22 AND :P109_EMPLOYMENT_TYPE_ID not in ( 1, 4 ) THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please ensure that a Retired Employee is hired with employment type Temporary or Contract.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369305214969450820)
,p_validation_name=>'chk_retire_pensioner'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--a pensioner must be hired with employment type as PENSION - correction by Grace above',
'/*',
'IF :P109_CHANGE_TYPE_SUB_ID = 23 AND :P109_EMPLOYMENT_TYPE_ID = 2 THEN',
'  RETURN FALSE;',
'ELSIF :P109_CHANGE_TYPE_SUB_ID = 23 AND :P109_EMPLOYMENT_TYPE_ID = 1 THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;',
'*/',
'',
'',
'',
'IF :P109_CHANGE_TYPE_SUB_ID = 23 AND :P109_EMPLOYMENT_TYPE_ID != 3 THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please ensure that a Retired Pensioner is hired with Employment Type PENSION.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369311197802450825)
,p_validation_name=>'chk_appointmentend_newt'
,p_validation_sequence=>350
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.get_lookup_col(:P109_MOVEMENT_TYPE,''TABLE_VALUE'') = ''NEWT'' AND :P109_TO_DATE IS NULL THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the New Training movement requires the Appointment End date field to be filled.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3510024879837982893)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369311574473450825)
,p_validation_name=>'chk_leave_ann_date'
,p_validation_sequence=>360
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.get_lookup_col(:P109_MOVEMENT_TYPE,''TABLE_VALUE'') = ''NEWT'' AND :P109_LEAVE_ANN_DATE IS NOT NULL THEN',
'  RETURN ''Sorry, the Leave Anniversary Date is not required for the New Training movement'';',
'elsif pkg_global_fnts.get_lookup_col(:P109_MOVEMENT_TYPE,''TABLE_VALUE'') = ''NEWP'' AND :P109_LEAVE_ANN_DATE IS NOT NULL THEN',
'  RETURN ''Sorry, the Leave Anniversary Date is not required for the New Pension Collection movement'';',
'elsif pkg_global_fnts.get_lookup_col(:P109_MOVEMENT_TYPE,''TABLE_VALUE'') = ''NEWE'' AND :P109_LEAVE_ANN_DATE IS NULL THEN',
'  RETURN ''Sorry, the Leave Anniversary Date is required for the New Employment movement'';',
'ELSE',
'  RETURN null;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3510031990304982897)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369312053395450825)
,p_validation_name=>'chk_permanent_end_date'
,p_validation_sequence=>370
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.get_lookup_col(:P109_MOVEMENT_TYPE,''TABLE_VALUE'') = ''NEWE'' ',
'    AND :P109_EMPLOYMENT_TYPE_ID = 2 AND :P109_TO_DATE IS NOT NULL THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the Appointment End date is not required for employment type set to permanent with regards to New Employment movement.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3510024879837982893)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369314030161450826)
,p_validation_name=>'chk_appointmentend_contract'
,p_validation_sequence=>380
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P109_EMPLOYMENT_TYPE_ID = 4 AND :P109_TO_DATE IS NULL THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, Employment Type set to Contract requires the Appointment End date field to be filled.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3510024879837982893)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369313639957450826)
,p_validation_name=>'chk_emptype_newe'
,p_validation_sequence=>390
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.get_lookup_col(:P109_MOVEMENT_TYPE,''TABLE_VALUE'') = ''NEWE'' ',
'    AND :P109_EMPLOYMENT_TYPE_ID in (3,5) THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, Employment Type can not be set to Pension or Training for the New Employment movement.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3510023565814982892)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369312826513450825)
,p_validation_name=>'Chk_Appointment_Dates'
,p_validation_sequence=>410
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'    if to_date(:P109_TO_DATE) < to_date(:P109_FROM_DATE) then',
'    return False;',
'    else',
'    return True;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the Appointment End should be more than the Appointment Start or a future date.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_associated_item=>wwv_flow_imp.id(3510024879837982893)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(369312367928450825)
,p_validation_name=>'chkForFutureMovment'
,p_validation_sequence=>420
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_result number(20);',
'',
'begin ',
'',
'select count(1) into v_result',
'from hr_mov_empmovement_new mov',
'where pkg_global_fnts.status_descript(:P109_STATUS) like ''VERI%''',
'and to_date(:P109_FROM_DATE) >= current_date+1',
'and executed = 0',
'and id = :P109_ID;',
'',
'if v_result = 1 then',
'return FALSE;',
'else',
'return TRUE;',
'',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, this movement can not be executed for a future date.'
,p_when_button_pressed=>wwv_flow_imp.id(369295886340450795)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369317059573450830)
,p_name=>'dy_populate_current_emprecord'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_EMPLOYEE'
,p_condition_element=>'P109_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369317561985450832)
,p_event_id=>wwv_flow_imp.id(369317059573450830)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_OLD_ORGANISATION,P109_OLD_POSTION_ID,P109_OLD_FROM_DATE,P109_OLD_WKLOCATION,P109_OLD_ORG_STRUCTURE,P109_OLD_JOB_NAME,P109_OLD_JOB_CLASS,P109_OLD_EMPLOYMENT_CLASS,P109_OLD_PERSONAL_RATE,P109_OLD_HOURLY_RATE,P109_OLD_DAILY_RATE,P109_OLD_REPORT_TO_'
||'ADMIN,P109_OLD_REPORT_TO_FUNC,P109_OLD_PAYROLL_EFFECTIVE,P109_OLD_APPROVED_BY,P109_OLD_APPROVED_DATE,P109_OLD_EMPLOYEE,P109_OLD_REMARKS,P109_OLD_EMP_COMPANY_NO,P109_OLD_PAYMENT_TYPE,P109_OLD_UNION_CODE_ID,P109_OLD_UNION_JOIN_DATE,P109_OLD_EMPLOYMENT_'
||'STATUS,P109_OLD_LEAVE_ANN_DATE,P109_OLD_ORG_STRUCTURE_ID,P109_OLD_COMPUTE_GROSS,P109_OLD_SHIFT_ID,P109_OLD_JOB_ID,P109_OLD_POSITION_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT',
'    org.organisation_name,',
'    emp.position_name,',
'    emp.date_employed,',
'    wk.location_description,',
'    emp.org_structure,',
'    njob.description,',
'    njob.job_classification,',
'    emp.employment_class,',
'    PKG_GLOBAL_FNTS.FN_PERSONALRATE(emp.id, current_date),',
'    Pkg_Global_Fnts.Fn_Hourlyrate(EMP.id, current_date ),',
'    Pkg_Global_Fnts.Fn_Daily(EMP.id, current_date, null),',
'    emp.REPORT_TO,',
'    emp.REPORT_TO_FUNCTIONAL, ',
'    emp.payroll_effective,',
'        emp.last_changed_by, ',
'    emp.last_changed_date,',
'--    emp.verified_by,',
'--     emp.verified_date,',
'    initcap(ind.Surname || '', '' || nvl(ind.First_Name, '' '')) ||'' ''||nvl(ind.Middle_Name,'' '') ||''(No.:''||emp.EMP_COMPANY_NO||'')'' "Old Employee",',
'    emp.remarks,',
'    emp.emp_company_no,',
'    emp.payment_type  "old payment type",',
'    emp.union_code_id,',
'    emp.union_join_date,',
'    emp.employment_status, ',
'    --ind.id,',
'    LEAVE_ANN_DATE,',
'    emp.orgdtl_id, compute_gross, ',
'    shift_id,',
'    njob.id JOB_ID,',
'    emp.position_id',
'  FROM',
'    hr_rcm_employee emp',
'    join hr_rcm_individual ind',
'    on ind.id = emp.ind_id',
'    join hr_hcf_position pos',
'    on emp.position_id = pos.id',
'    join hr_hcf_job njob',
'    on pos.job_id = njob.id',
'    join hr_hcf_organisation org',
'    on org.id = emp.org_id',
'    join hr_hcf_worklocation wk',
'    on wk.id = emp.wklocation_id',
'where ',
'    emp.id =nvl(:P109_EMPLOYEE,0)',
'    '))
,p_attribute_07=>'P109_EMPLOYEE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369318148174450832)
,p_event_id=>wwv_flow_imp.id(369317059573450830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_OLD_GRADE,P109_OLD_GRADE_POINT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT ',
'    grade_description||''(''||grade_code||'') as at ''||EFFECTIVE_FROMDATE,',
'    ''Point ''||s.grade_point||'': ''||trim(to_char(s.PERSONAL_RATE,''$999,999,999,999''))',
'    FROM',
'    hr_rcm_employee emp ',
'    join hr_hcf_position pos',
'    on emp.position_id = pos.id',
'    join hr_hcf_job j',
'    on pos.job_id = j.id',
'    join hr_hcf_positiongrade pg',
'    on pg.id = j.job_grade_id',
'    join (select * from hr_rcm_salary where end_date is null) s on s.emp_id = emp.id',
'where ',
'    emp.id = nvl(:P109_EMPLOYEE,0)'))
,p_attribute_07=>'P109_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369318573485450832)
,p_event_id=>wwv_flow_imp.id(369317059573450830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_OLD_EMPLOYMENT_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT emp.employment_type_id',
' FROM hr_rcm_employee emp',
' JOIN hr_rcm_individual ind on ind.id = emp.ind_id',
' WHERE emp.id =nvl(:P109_EMPLOYEE,0)'))
,p_attribute_07=>'P109_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369319035872450832)
,p_name=>'dy_hide_wkflow_comment'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_WORKFLOW_ADD'
,p_condition_element=>'P109_WORKFLOW_ADD'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369319495165450833)
,p_event_id=>wwv_flow_imp.id(369319035872450832)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_WORKFLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369319999986450833)
,p_event_id=>wwv_flow_imp.id(369319035872450832)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_WORKFLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369320400724450833)
,p_name=>'dy_new_employee'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_INDIVIDUAL'
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'1,15'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369320884009450834)
,p_event_id=>wwv_flow_imp.id(369320400724450833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMP_COMPANY_NO'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369321385571450834)
,p_event_id=>wwv_flow_imp.id(369320400724450833)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMP_COMPANY_NO'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P109_OLD_EMP_COMPANY_NO is null then ',
'         return :P109_EMP_COMPANY_NO;',
'else',
'         return :P109_OLD_EMP_COMPANY_NO;',
'end if;    '))
,p_attribute_07=>'P109_OLD_EMP_COMPANY_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369321809510450834)
,p_name=>'en_dis_employee'
,p_event_sequence=>100
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369322305512450835)
,p_event_id=>wwv_flow_imp.id(369321809510450834)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369322805970450835)
,p_event_id=>wwv_flow_imp.id(369321809510450834)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369323204081450835)
,p_name=>'set_salary_personal_rate'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_GRADE_POINT,P109_SHIFT_ID'
,p_condition_element=>'P109_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369323717243450835)
,p_event_id=>wwv_flow_imp.id(369323204081450835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSON_RATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_POINT_AMOUNT number:=0;',
'begin',
'',
'        SELECT nvl(POINT_AMOUNT,0) into v_POINT_AMOUNT',
'        FROM HR_HCF_POSITIONGRADEPOINT P',
'        WHERE P.POSITION_GRADE_ID = :P109_GRADE',
'        AND P.POINT = :P109_GRADE_POINT',
'        and p.end_date is null;',
'       ',
'        return v_POINT_AMOUNT;',
'exception',
'    when others then null;',
'        return 0;',
'end;'))
,p_attribute_07=>'P109_GRADE,P109_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369324165295450836)
,p_event_id=>wwv_flow_imp.id(369323204081450835)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare      ',
'        v_std_hours number(12,4);',
'        v_std_days number(12,4);',
'      ',
'        ',
'        ',
'begin',
'        for i in (',
'                    select  ',
'                            hours_worked std_hours, ',
'                            num_working_days std_days, ',
'                            upper(:P109_PAYMENT_TYPE) payment_type,:P109_PERSON_RATE personal_rate',
'                    from Hr_Att_Shift_Rota b',
'                    where id = :P109_SHIFT_ID',
'                  ) loop',
'        ',
'        begin',
'       ',
'        if i.payment_type =''MONTHLY'' then',
'            :P109_PERSONAL_RATE := i.personal_rate;',
'            :P109_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P109_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'            ',
'        ELSIF i.payment_type =''FORTNIGHTLY'' then',
'            :P109_PERSONAL_RATE := round((i.personal_rate*12)/26);',
'            :P109_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P109_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'            ',
'        elsif  i.payment_type =''WEEKLY'' then',
'            :P109_PERSONAL_RATE := round((i.personal_rate*12)/52);',
'            :P109_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P109_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'        ELSE',
'            :P109_PERSONAL_RATE := round((i.personal_rate*12)/24);',
'            :P109_HOURLY_RATE:=  round(nvl(i.personal_rate/i.std_hours,0),2);             ',
'            :P109_DAILY_RATE := round(i.personal_rate/ i.std_days,2);',
'          ',
'        end if; ',
'',
'         :P109_ANNUAL_SALARY := case when i.payment_type =''BI-WEEKLY'' then  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 26',
'                                                 when i.payment_type =''WEEKLY'' then  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 52',
'                                                 when i.payment_type =''MONTHLY'' then  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 12',
'                                                 when i.payment_type =''BI-MONTHLY'' then  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 24',
'                                            end;',
'',
'        exception',
'             WHEN ZERO_DIVIDE THEN',
'               RAISE_APPLICATION_ERROR(-20050,''No employee requirements exist for standard hours for this employee.'');',
'             when no_data_found then null;',
'    end;',
'  end loop;',
'end;'))
,p_attribute_02=>'P109_PAYMENT_TYPE,P109_PERSON_RATE,P109_SHIFT_ID,P109_HOURLY_RATE,P109_DAILY_RATE'
,p_attribute_03=>'P109_PERSONAL_RATE,P109_HOURLY_RATE,P109_DAILY_RATE,P109_ANNUAL_SALARY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369324651600450836)
,p_name=>'show_hide_Hiredate2'
,p_event_sequence=>1059
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_SHOW_HIDE_HIRE'
,p_condition_element=>'P109_SHOW_HIDE_HIRE'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369325095473450837)
,p_event_id=>wwv_flow_imp.id(369324651600450836)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369325586595450837)
,p_event_id=>wwv_flow_imp.id(369324651600450836)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369326010134450837)
,p_name=>'dy_set_grade_point_id'
,p_event_sequence=>1069
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_GRADE_POINT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369326497872450837)
,p_event_id=>wwv_flow_imp.id(369326010134450837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_GRADE_POINT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.id',
'from hr_hcf_positiongradepoint a',
'join hr_hcf_positiongrade b on a.position_grade_id = b.id',
'where a.position_grade_id = :P109_GRADE',
'and a.point = :P109_GRADE_POINT',
'and a.end_date is null',
'--Grace Code',
'/*select point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P109_GRADE',
'AND id = :P109_GRADE_POINT_ID',
'and start_date <= trunc(sysdate)',
'and nvl(end_date,trunc(sysdate)) >=  trunc(sysdate)',
'order by point_amount*/'))
,p_attribute_07=>'P109_GRADE,P109_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369326937145450837)
,p_name=>'dy_set_change_type'
,p_event_sequence=>1079
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369327380546450838)
,p_event_id=>wwv_flow_imp.id(369326937145450837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_CHANGE_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select UPPER(VALUE_DESCRIPTION) B',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id',
'            )',
'        and tblmv.id = :P109_MOVEMENT_TYPE',
'ORDER BY 1;',
'',
'',
'',
'',
''))
,p_attribute_07=>'P109_MOVEMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369327792940450838)
,p_name=>'dy_set_change_type_id'
,p_event_sequence=>1099
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369328339229450838)
,p_event_id=>wwv_flow_imp.id(369327792940450838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_CHANGE_TYPE_SUB_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID A',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id',
'            )',
'        and tblmv.id = :P109_MOVEMENT_TYPE',
'ORDER BY 1;',
''))
,p_attribute_07=>'P109_MOVEMENT_TYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369328812084450839)
,p_event_id=>wwv_flow_imp.id(369327792940450838)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_MOVEMENT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID A',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'         and exists (',
'            select 1 from hr_hcf_organisation org',
'            where org.use_for_seeded_data = 1',
'            and org.id = tblmv.org_id',
'            )',
'        and tblmv.id = :P109_MOVEMENT_TYPE',
'ORDER BY 1;',
''))
,p_attribute_07=>'P109_MOVEMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369329239776450839)
,p_name=>'dy_set_change_type_sub'
,p_event_sequence=>1109
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_HIRETYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369329705573450839)
,p_event_id=>wwv_flow_imp.id(369329239776450839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_CHANGE_TYPE_SUB'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT value_description a',
'FROM TABLE ( pkg_global_fnts.get_lookup_value(''TBLMOVEMENTTYPE'') ) A',
'WHERE LOOKUP_ID=:P109_MOVEMENT_TYPE',
'and id = :P109_HIRETYPE*/',
'',
'select VALUE_DESCRIPTION a',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        AND tblmv.ORG_ID = :APP_ORG_SHR_DED',
'        -- and exists (',
'        --     select 1 from hr_hcf_organisation org',
'        --     where org.use_for_seeded_data = 1',
'        --     and org.id = tblmv.org_id',
'        --     )',
'        and LOOKUP_ID=:P109_MOVEMENT_TYPE',
'        and id = :P109_HIRETYPE',
'ORDER BY 1;',
''))
,p_attribute_07=>'P109_MOVEMENT_TYPE,P109_HIRETYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369330143245450839)
,p_name=>'dy_Newly_set_change_type_sub_id'
,p_event_sequence=>1119
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_HIRETYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369330599545450840)
,p_event_id=>wwv_flow_imp.id(369330143245450839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_CHANGE_TYPE_SUB_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT ID a',
'FROM TABLE ( pkg_global_fnts.get_lookup_value(''TBLMOVEMENTTYPE'') ) A',
'WHERE LOOKUP_ID=:P109_MOVEMENT_TYPE',
'and id = :P109_HIRETYPE*/',
'',
'',
'select ID a',
'    from ',
'        hr_hcf_lookup tblmv',
'        where TABLE_NAME = UPPER(''TBLMOVEMENTTYPE'') ',
'        and (end_period is null or end_period >= current_date) ',
'        and verified_by is not null ',
'        and verified_date is not null',
'        AND tblmv.ORG_ID = :APP_ORG_SHR_DED',
'        -- and exists (',
'        --     select 1 from hr_hcf_organisation org',
'        --     where org.use_for_seeded_data = 1',
'        --     and org.id = tblmv.org_id',
'        --     )',
'        and LOOKUP_ID=:P109_MOVEMENT_TYPE',
'        and id = :P109_HIRETYPE',
'ORDER BY 1;'))
,p_attribute_07=>'P109_MOVEMENT_TYPE,P109_HIRETYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369331052270450840)
,p_name=>'dy_set_payment_type_id'
,p_event_sequence=>1129
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_PAYMENT_TYPE'
,p_condition_element=>'P109_PAYMENT_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369331534546450840)
,p_event_id=>wwv_flow_imp.id(369331052270450840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PAYMENT_TYPE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID',
'FROM TABLE(pkg_global_fnts.get_lookup_value(''TBLPAYMENTTYPE''))',
'WHERE UPPER(VALUE_DESCRIPTION) = UPPER(:P109_PAYMENT_TYPE)'))
,p_attribute_07=>'P109_PAYMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369331903542450840)
,p_name=>'Set_Leave_AnnDate'
,p_event_sequence=>1139
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_FROM_DATE'
,p_condition_element=>'P109_FROM_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369332364257450841)
,p_event_id=>wwv_flow_imp.id(369331903542450840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_LEAVE_ANN_DATE,P109_PAYROLL_EFFECTIVE,P109_EFFECTIVE_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_date(case when :P109_MOVEMENT_TYPE=1 then :P109_FROM_DATE else :P109_LEAVE_ANN_DATE END) A',
', to_date(case when :P109_MOVEMENT_TYPE=1 then :P109_FROM_DATE else :P109_PAYROLL_EFFECTIVE END) B ',
', to_date(case when :P109_MOVEMENT_TYPE=1 then :P109_FROM_DATE else :P109_EFFECTIVE_DATE end) my_value',
'FROM DUAL',
'where :P109_MOVEMENT_TYPE =1 ',
'union',
' SELECT  to_date(nvl(:P109_LEAVE_ANN_DATE, :P109_FROM_DATE)) a ',
' , nvl(to_date(:P109_PAYROLL_EFFECTIVE), PAYROLL_EFFECTIVE) B',
' , nvl(to_date(:P109_FROM_DATE), to_date(:P109_EFFECTIVE_DATE)) my_value',
' FROM hr_rcm_employee emp',
' WHERE emp.id = nvl(:P109_EMPLOYEE,0)',
' and  :P109_MOVEMENT_TYPE !=1 '))
,p_attribute_07=>'P109_MOVEMENT_TYPE,P109_FROM_DATE,P109_LEAVE_ANN_DATE,P109_PAYROLL_EFFECTIVE,P109_EFFECTIVE_DATE,P109_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(402548865265823372)
,p_event_id=>wwv_flow_imp.id(369331903542450840)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'set_pay_effect_Leave_ann'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PAYROLL_EFFECTIVE,P109_LEAVE_ANN_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P109_FROM_DATE A,  :P109_FROM_DATE ',
'FROM DUAL'))
,p_attribute_07=>'P109_FROM_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369332815741450841)
,p_name=>'setOldToDate'
,p_event_sequence=>1149
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_TO_DATE_QUERY'
,p_condition_element=>'P109_TO_DATE_QUERY'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369333353322450842)
,p_event_id=>wwv_flow_imp.id(369332815741450841)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_OLD_TO_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369333844373450842)
,p_event_id=>wwv_flow_imp.id(369332815741450841)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_OLD_TO_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P109_FROM_DATE'
,p_attribute_07=>'P109_FROM_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369334199851450842)
,p_name=>'dySetEmpType'
,p_event_sequence=>1159
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_HIRETYPE'
,p_condition_element=>'P109_HIRETYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369334711942450842)
,p_event_id=>wwv_flow_imp.id(369334199851450842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if pkg_global_fnts.get_lookup_col(:P109_HIRETYPE,''TABLE_VALUE'') = ''NEWRH'' then ',
'       :P109_EMPLOYMENT_TYPE_ID := 1;',
'elsif pkg_global_fnts.get_lookup_col(:P109_HIRETYPE,''TABLE_VALUE'') = ''NEWPN'' then ',
'        :P109_EMPLOYMENT_TYPE_ID := 3;',
'elsif pkg_global_fnts.get_lookup_col(:P109_HIRETYPE,''TABLE_VALUE'') = ''NEWRT'' then ',
'        :P109_EMPLOYMENT_TYPE_ID := 0;',
' else :P109_EMPLOYMENT_TYPE_ID := 1;',
'    end if;',
'     return :P109_EMPLOYMENT_TYPE_ID;',
'    end;',
'    ',
'        '))
,p_attribute_07=>'P109_EMPLOYMENT_TYPE_ID,P109_HIRETYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369335082455450842)
,p_name=>'dyDisable'
,p_event_sequence=>1169
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369335567559450843)
,p_event_id=>wwv_flow_imp.id(369335082455450842)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369336102654450843)
,p_event_id=>wwv_flow_imp.id(369335082455450842)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369336460333450843)
,p_name=>'gen_emp_number'
,p_event_sequence=>1179
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_STATUS'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P109_EMP_COMPANY_NO").getValue() === "0" && apex.item("P109_STATUS").getValue() === "1867";'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369337022144450844)
,p_event_id=>wwv_flow_imp.id(369336460333450843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_R NUMBER:=0;',
'  V_unique boolean:= false;',
'  v_count number := 0;',
'  v_NUMBER_PREFIX varchar2(50);',
'  ',
'BEGIN',
'',
' IF :P109_EMP_COMPANY_NO =0 THEN',
' ',
'',
'   V_R:=pkg_global_fnts.get_system_no(''EMP_COMPANY_NO'');',
'',
' begin',
'   ',
'   select NUMBER_PREFIX into v_NUMBER_PREFIX',
'   from HR_SYS_NUMBER',
'   WHERE ORG_ID =:APP_ORG_ID',
'   AND NUMBER_NAME = ''EMP_COMPANY_NO'';',
'   ',
' exception',
'     when no_data_found then',
'         V_NUMBER_PREFIX := null;',
' end; ',
'',
' ',
'  while (v_unique = false)',
'    loop',
'        ',
'       V_R :=V_R + 1;',
'       ',
'    if v_NUMBER_PREFIX is null then ',
'   ',
'        select count(1) into v_count from hr_rcm_employee where emp_company_no =  to_char(V_R) and org_id=:APP_ORG_ID;',
'    else',
'         select count(1) into v_count from hr_rcm_employee where emp_company_no = v_NUMBER_PREFIX||TO_CHAR(V_R) and org_id=:APP_ORG_ID;',
'    end if;',
'    ',
'    if v_count = 0 then',
'        ',
'        v_unique := true;',
'        ',
'        exit;',
'        ',
'    end if;',
'    ',
'    end loop;',
'   ',
'   if v_NUMBER_PREFIX is null then ',
'    ',
'    :P109_EMP_COMPANY_NO := to_char(V_R);',
'   else',
'    :P109_EMP_COMPANY_NO := TO_CHAR(v_NUMBER_PREFIX||V_R);',
'    ',
'   end if;',
'   ',
'   UPDATE HR_SYS_NUMBER',
'   SET NUMBER_VALUE = V_R',
'   WHERE ORG_ID =:APP_ORG_ID',
'   AND NUMBER_NAME = ''EMP_COMPANY_NO'';',
'   ',
' END IF;  ',
' ',
' exception    ',
'     when others then null;',
'',
'END;'))
,p_attribute_02=>'P109_EMP_COMPANY_NO,P109_INDIVIDUAL,P109_EMPLOYMENT_CLASS,P109_HIRETYPE'
,p_attribute_03=>'P109_EMP_COMPANY_NO'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369337445059450844)
,p_name=>'set_execute_date'
,p_event_sequence=>1189
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_STATUS'
,p_condition_element=>'P109_STATUS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1867'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369337889346450844)
,p_event_id=>wwv_flow_imp.id(369337445059450844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EXECUTED_ON'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE ',
'         WHEN :P109_EXECUTED_ON IS NULL',
'              AND UPPER(pkg_global_fnts.status_descript(:P109_STATUS)) = ''VERIFY''',
'         THEN to_char(current_date,''DD-MON-YYYY'')',
'         ELSE to_char(:P109_EXECUTED_ON,''DD-MON-YYYY'')',
'       END AS ex_value',
'FROM dual;',
''))
,p_attribute_07=>'P109_EXECUTED_ON,P109_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369338328032450845)
,p_name=>'hide_show_hiretype'
,p_event_sequence=>1199
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369338790672450845)
,p_event_id=>wwv_flow_imp.id(369338328032450845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_HIRETYPE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369339167090450845)
,p_name=>'dy_set_movement'
,p_event_sequence=>1219
,p_condition_element=>'P109_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369339675585450845)
,p_event_id=>wwv_flow_imp.id(369339167090450845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_MOVEMENT_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369340115029450846)
,p_name=>'dy_set_new_pen'
,p_event_sequence=>1229
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'16'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369340609062450846)
,p_event_id=>wwv_flow_imp.id(369340115029450846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369341066491450846)
,p_event_id=>wwv_flow_imp.id(369340115029450846)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'3'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369341475431450846)
,p_name=>'setShiftDef'
,p_event_sequence=>1239
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_JOB_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369342027103450847)
,p_event_id=>wwv_flow_imp.id(369341475431450846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_SHIFT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_rota_id',
'from hr_hcf_job',
'where id = :P109_JOB_NAME'))
,p_attribute_07=>'P109_JOB_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369342433126450847)
,p_name=>'dy_set_new_training'
,p_event_sequence=>1249
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'15'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369342868192450847)
,p_event_id=>wwv_flow_imp.id(369342433126450847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369343448495450847)
,p_event_id=>wwv_flow_imp.id(369342433126450847)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'5'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369343771683450848)
,p_name=>'dy_set_change_employment'
,p_event_sequence=>1259
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'29'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369344327712450848)
,p_event_id=>wwv_flow_imp.id(369343771683450848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'disable'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369344772805450848)
,p_event_id=>wwv_flow_imp.id(369343771683450848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYMENT_TYPE_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'2'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369345219534450848)
,p_name=>'dy_set_emp_id'
,p_event_sequence=>1279
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_INDIVIDUAL'
,p_condition_element=>'P109_INDIVIDUAL'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369345686798450849)
,p_event_id=>wwv_flow_imp.id(369345219534450848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYEE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.id',
'from hr_rcm_employee e',
'join hr_rcm_individual i on i.id = e.ind_id',
'where e.ind_id = :P109_INDIVIDUAL',
'and (date_separated is null or date_separated > current_date)',
'and EMPLOYMENT_CLASS != ''PENSIONERS''',
'and e.org_id = :P109_ORG_ID'))
,p_attribute_07=>'P109_INDIVIDUAL,P109_ORG_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369346163001450849)
,p_event_id=>wwv_flow_imp.id(369345219534450848)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369346613782450849)
,p_name=>'Hide_old_emp'
,p_event_sequence=>1289
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369347101657450850)
,p_event_id=>wwv_flow_imp.id(369346613782450849)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3483631666000559556)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369347482275450850)
,p_name=>'set_basic_pay'
,p_event_sequence=>1299
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_PAYMENT_TYPE'
,p_condition_element=>'P109_PAYMENT_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369348004691450851)
,p_event_id=>wwv_flow_imp.id(369347482275450850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_BASIC_PAY_RATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P109_PAYMENT_TYPE'
,p_attribute_07=>'P109_PAYMENT_TYPE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369348420911450851)
,p_name=>'dy_hide_union'
,p_event_sequence=>1309
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_MOVEMENT_TYPE'
,p_condition_element=>'P109_MOVEMENT_TYPE'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'16,15'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369348870603450851)
,p_event_id=>wwv_flow_imp.id(369348420911450851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_UNION_CODE_ID,P109_UNION_JOIN_DATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369349397080450851)
,p_event_id=>wwv_flow_imp.id(369348420911450851)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_UNION_CODE_ID,P109_UNION_JOIN_DATE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369349839310450852)
,p_name=>'dy_compute_hourly_rate'
,p_event_sequence=>1319
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_PERSONAL_RATE'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P109_EMPLOYMENT_CLASS").getValue() !== 8550410  || apex.item("P109_EMPLOYMENT_CLASS").getValue() !== null '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369350318021450852)
,p_event_id=>wwv_flow_imp.id(369349839310450852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'declare     ',
'        v_std_hours number(12,4);',
'        v_std_days number(12,4);',
'      ',
'        ',
'begin',
'        select hours_worked, num_working_days into v_std_hours,  v_std_days',
'        from Hr_Att_Shift_Rota ',
'        where id =:P109_SHIFT_ID; ',
'       ',
'            :P109_HOURLY_RATE:=  round(nvl(REPLACE(REPLACE(:P109_PERSONAL_RATE,''$'',''''),'','','''')/v_std_hours,0),2);             ',
'            :P109_DAILY_RATE := round(REPLACE(REPLACE(:P109_PERSONAL_RATE,''$'',''''),'','','''')/ v_std_days,2);',
'    ',
'	exception           ',
'           WHEN ZERO_DIVIDE THEN',
'               RAISE_APPLICATION_ERROR(-20050,''No employee requirements exist for standard hours for this employee.'');          ',
'end;',
'*/',
'',
'declare',
'        v_compute_gross varchar2(50);        ',
'        v_std_hours number(12,4);',
'        v_std_days number(12,4);',
'        v_personal_rate number(12,4):=0;',
'        v_payment_type varchar2(50);  ',
'      ',
'        ',
'begin',
'            select hours_worked, num_working_days, upper(payment_type) into v_std_hours,  v_std_days, v_payment_type',
'            from Hr_Att_Shift_Rota ',
'            where id =:P109_SHIFT_ID; ',
'',
'        if :P109_COMPUTE_GROSS =''BASIC_PAY'' then',
'       ',
'            :P109_HOURLY_RATE:= round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','','''')/v_std_hours,2);',
'            :P109_DAILY_RATE :=  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','','''')/v_std_days,2);',
'        Else',
'',
'            :P109_HOURLY_RATE:= round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),2);',
'            :P109_PERSONAL_RATE:= round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','','''')*v_std_hours,2);',
'            :P109_DAILY_RATE :=  round(replace(replace(:P109_HOURLY_RATE,''$'',''''),'','','''')*8,2);   ',
'',
'            :P109_ANNUAL_SALARY := CASE WHEN v_payment_type=''MONTHLY'' then  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 12',
'                                        WHEN v_payment_type=''WEEKLY'' then  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 52',
'                                        WHEN v_payment_type IN (''FORTNIGHTLY'',''BI-WEEKLY'') then round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 26                                  ',
'                                    else  round(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''),3) * 24',
'                                   end;',
'',
'        end if; ',
'       ',
'    ',
'	exception           ',
'           WHEN ZERO_DIVIDE THEN',
'               RAISE_APPLICATION_ERROR(-20050,''No employee requirements exist for standard hours for this employee.'');      ',
'           when no_data_found then NULL;',
'           -- RAISE_APPLICATION_ERROR(-20050,''This employee do not have any Shift Rotations assigned.'');          ',
'end;'))
,p_attribute_02=>'P109_SHIFT_ID,P109_HOURLY_RATE,P109_DAILY_RATE,P109_PERSONAL_RATE,P109_ANNUAL_SALARY'
,p_attribute_03=>'P109_HOURLY_RATE,P109_DAILY_RATE,P109_PERSONAL_RATE,P109_ANNUAL_SALARY'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369350708691450852)
,p_name=>'dy_refresh'
,p_event_sequence=>1329
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_JOB_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369351212572450853)
,p_event_id=>wwv_flow_imp.id(369350708691450852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3577954488503418407)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369351658846450853)
,p_name=>'set_computation_amount'
,p_event_sequence=>1339
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3583551390057977914)
,p_triggering_element=>'PERIOD,AMOUNT_OWING'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERIOD'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369352108466450853)
,p_event_id=>wwv_flow_imp.id(369351658846450853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :EXPENSE_ID=11878 then to_number(replace(:AMOUNT_OWING,'','',''''))',
'            else to_number(replace(:AMOUNT_OWING,'','','''') / :PERIOD) end a',
'from dual',
''))
,p_attribute_07=>'AMOUNT_OWING,PERIOD,EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369352480601450853)
,p_name=>'compute_deduction'
,p_event_sequence=>1349
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3583551390057977914)
,p_triggering_element=>'PERIOD'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EXPENSE_ID'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'11878'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369352992691450853)
,p_event_id=>wwv_flow_imp.id(369352480601450853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_AMOUNT,AMOUNT_OWING'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'return pkg_global_fnts.fn_getabsentday1(:EMP_ID',
'                        , :PERIOD',
'                        , :DATESTART',
'                        , :EXPENSE_ID',
'                        , replace(replace(:AMOUNT_OWING,''$'',''''),'','','''')                                   ',
'                        );                     ',
'                         '))
,p_attribute_07=>'EMP_ID,PERIOD,DATESTART,EXPENSE_ID,AMOUNT_OWING'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369353414816450854)
,p_name=>'set_nis_tax'
,p_event_sequence=>1359
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3577954488503418407)
,p_triggering_element=>'INCOME_CODE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'INCOME_CODE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369353893590450854)
,p_event_id=>wwv_flow_imp.id(369353414816450854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,QUICK_ENTRY,PENSIONABLE,INCOME_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,CASE WHEN ADMIN_STATUS = ''MAN'' THEN 1 ELSE 0 END QUICK_ENTRY,PENSIONABLE,INCOME_TYPE,inc_percent_option',
'from PA_PCF_INCOMECODe',
'where id=:INCOME_CODE_ID'))
,p_attribute_07=>'INCOME_CODE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369354319319450854)
,p_name=>'compute_percent_basic_entitle'
,p_event_sequence=>1369
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3577954488503418407)
,p_triggering_element=>'PERCENTAGE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'PERCENTAGE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369354840483450855)
,p_event_id=>wwv_flow_imp.id(369354319319450854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'TO_NUMBER(:P109_PERSONAL_RATE,''$999,999,999.00'') * (:PERCENTAGE/100)'
,p_attribute_07=>'PERCENTAGE,P109_PERSONAL_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369355192845450855)
,p_name=>'dy_set deduction_type'
,p_event_sequence=>1379
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3583551390057977914)
,p_triggering_element=>'EXPENSE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'EXPENSE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369355746877450855)
,p_event_id=>wwv_flow_imp.id(369355192845450855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DEDUCTION_TYPE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT WHO_PAYS ',
'FROM PA_PCF_DEDUCTIONCODE',
'WHERE ID = :EXPENSE_ID'))
,p_attribute_07=>'EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369356074585450855)
,p_name=>'preview_letter'
,p_event_sequence=>1389
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(369299141384450798)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_ORG_NAME IN (''PAC'', ''NPC'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320716869485031545)
,p_event_id=>wwv_flow_imp.id(369356074585450855)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(320715972866031536)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369357492558450856)
,p_name=>'preview_letter_1'
,p_event_sequence=>1399
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(369299547221450799)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320717481507031551)
,p_event_id=>wwv_flow_imp.id(369357492558450856)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(500);',
'',
'begin',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(sysdate));',
'',
'select replace(report_location,''/reports/'') into v_report_path from report where upper(report_name) like upper(''%Movement Notice%'');',
'v_report_path:=''/reports/''||v_report_path;',
'',
'',
'',
'v_url_1:= v_report_root_path||''&p2=''||v_report_path||''-MOVEMENT_ID=''||:P109_ID;',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P109_REPORT_ID,P109_ORG_ID,P109_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369358022075450857)
,p_event_id=>wwv_flow_imp.id(369357492558450856)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(document.getElementById(''P109_URL'').value,''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'')',
'if (window.focus) {win.focus()}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369358426304450857)
,p_name=>'pop_banktransit_and_bankroutingno'
,p_event_sequence=>1409
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3176913266085773878)
,p_triggering_element=>'BANK_BRANCH_ID_DIST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369358867310450857)
,p_event_id=>wwv_flow_imp.id(369358426304450857)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'BANK_TRANSIT,BANK_ROUTING_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select transits, bank_routing_no',
'from hr_hcf_organisation',
'where user_org_id = :APP_ORG_SHR_DED',
'and organisation_type = ''BANK''',
'and id = :BANK_BRANCH_ID_DIST'))
,p_attribute_07=>'BANK_BRANCH_ID_DIST'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(369359315799450858)
,p_name=>'Compute_salary_rates'
,p_event_sequence=>1419
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_ANNUAL_SALARY'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P109_EMPLOYMENT_CLASS").getValue() == 8550410  || apex.item("P109_EMPLOYMENT_CLASS").getValue() !== null '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(369359826187450858)
,p_event_id=>wwv_flow_imp.id(369359315799450858)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_std_hours Hr_Att_Shift_Rota.hours_worked%type;',
'    v_std_days Hr_Att_Shift_Rota.num_working_days%type;',
'',
'begin',
'     ',
'    select hours_worked, num_working_days into v_std_hours,  v_std_days',
'    from Hr_Att_Shift_Rota ',
'    where id =:P109_SHIFT_ID; ',
'',
'   IF  :P109_COMPUTE_GROSS =''BASIC_PAY'' THEN',
'',
'    :P109_PERSONAL_RATE := TO_NUMBER(replace(replace(:P109_ANNUAL_SALARY,''$'',''''),'','',''''))/24;',
'    :P109_HOURLY_RATE := (TO_NUMBER(replace(replace(:P109_ANNUAL_SALARY,''$'',''''),'','',''''))/24)/v_std_hours;',
'    :P109_DAILY_RATE := (TO_NUMBER(replace(replace(:P109_ANNUAL_SALARY,''$'',''''),'','',''''))/24)/v_std_days;',
'',
'   END IF;',
'',
'exception',
'    when others then null;',
'END;'))
,p_attribute_02=>'P109_SHIFT_ID,P109_COMPUTE_GROSS,P109_PERSONAL_RATE,P109_ANNUAL_SALARY,P109_EMPLOYEE'
,p_attribute_03=>'P109_PERSONAL_RATE ,P109_HOURLY_RATE,P109_DAILY_RATE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320716300730031539)
,p_name=>'preview_letter_2'
,p_event_sequence=>1429
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(320716182679031538)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320716440169031540)
,p_event_id=>wwv_flow_imp.id(320716300730031539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from rpt_parameter ',
'where session_id = :P109_ID',
'and option_name = ''MOVEMENT'';'))
,p_attribute_02=>'P109_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320716522505031541)
,p_event_id=>wwv_flow_imp.id(320716300730031539)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(500);',
'v_report_id number;',
'begin',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(sysdate));',
'',
'select replace(report_location,''/reports/''), id into v_report_path, v_report_id from report where upper(report_name) like upper(''%Employee Appointment%'');',
'v_report_path:=''/reports/''||v_report_path;',
'',
'',
'',
'v_url_1:= v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=''||:P109_ORG_ID||''-IN_MOV_ID=''||:P109_ID;',
'',
'if :P109_CC_TO is not null then',
'',
'  l_selected := apex_util.string_to_table(:P109_CC_TO);',
'',
'  for i in 1..l_selected.count loop',
'	insert into rpt_parameter',
'        (option_name, option_value,report_id,session_id )',
'    values',
'        (''MOVEMENT'', l_selected(i),v_report_id,:P109_ID);',
'  end loop;  ',
'  ',
'     :P109_CC_TO:=null;',
'',
'end if;',
'',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P109_REPORT_ID,P109_ORG_ID,P109_ID,P109_CC_TO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320716634648031542)
,p_event_id=>wwv_flow_imp.id(320716300730031539)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P109_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320717027425031546)
,p_name=>'preview_letter_2_1'
,p_event_sequence=>1439
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(369299141384450798)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXPRESSION'
,p_display_when_cond=>':APP_ORG_NAME NOT IN (''PAC'', ''NPC'')'
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320717199292031548)
,p_event_id=>wwv_flow_imp.id(320717027425031546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from rpt_parameter ',
'where session_id = :P109_ID',
'and option_name = ''MOVEMENT'';'))
,p_attribute_02=>'P109_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320717321475031549)
,p_event_id=>wwv_flow_imp.id(320717027425031546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_URL'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_url varchar2(1500 char);',
'v_urlstring varchar2(1000);',
'v_parameter varchar2(1500 char);',
'v_variable varchar2(10);',
'v_url_2 varchar2(400);',
'l_selected apex_application_global.vc_arr2;',
'v_url_1 varchar2(400);',
'v_report_path varchar2(400);',
'v_report_root_path varchar2(500);',
'v_report_id number;',
'begin',
'',
'select TABLE_VALUE into v_report_root_path from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID) and (end_period is null or end_period > trunc(sysdate));',
'',
'select replace(report_location,''/reports/''), id into v_report_path, v_report_id from report where upper(report_name) like upper(''%Employee Appointment%'');',
'v_report_path:=''/reports/''||v_report_path;',
'',
'',
'',
'v_url_1:= v_report_root_path||''&p2=''||v_report_path||''-IN_ORG_ID=''||:P109_ORG_ID||''-IN_MOV_ID=''||:P109_ID;',
'',
'if :P109_CC_TO is not null then',
'',
'  l_selected := apex_util.string_to_table(:P109_CC_TO);',
'',
'  for i in 1..l_selected.count loop',
'	insert into rpt_parameter',
'        (option_name, option_value,report_id,session_id )',
'    values',
'        (''MOVEMENT'', l_selected(i),v_report_id,:P109_ID);',
'  end loop;  ',
'  ',
'     :P109_CC_TO:=null;',
'',
'end if;',
'',
'',
'return v_url_1;',
'end;'))
,p_attribute_07=>'P109_REPORT_ID,P109_ORG_ID,P109_ID,P109_CC_TO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320717426406031550)
,p_event_id=>wwv_flow_imp.id(320717027425031546)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.open(document.getElementById(''P109_URL'').value,''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320717620387031552)
,p_name=>'dy_control_rates_basic'
,p_event_sequence=>1449
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_COMPUTE_GROSS'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BASIC_PAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320717783079031554)
,p_event_id=>wwv_flow_imp.id(320717620387031552)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_DAILY_RATE,P109_HOURLY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320717741390031553)
,p_event_id=>wwv_flow_imp.id(320717620387031552)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_DAILY_RATE,P109_HOURLY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320717900391031555)
,p_name=>'dy_control_rates_hourly'
,p_event_sequence=>1459
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_COMPUTE_GROSS'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'HOURLY_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718017366031556)
,p_event_id=>wwv_flow_imp.id(320717900391031555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_DAILY_RATE,P109_HOURLY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718155552031557)
,p_event_id=>wwv_flow_imp.id(320717900391031555)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_DAILY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320718250374031558)
,p_name=>'dy_control_rates_daily'
,p_event_sequence=>1469
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_COMPUTE_GROSS'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DAILY_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718297241031559)
,p_event_id=>wwv_flow_imp.id(320718250374031558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_DAILY_RATE,P109_HOURLY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718421717031560)
,p_event_id=>wwv_flow_imp.id(320718250374031558)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_HOURLY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320718512403031561)
,p_name=>'dy_set_personal_rate'
,p_event_sequence=>1479
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_ANNUAL_SALARY'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BASIC_PAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718624261031562)
,p_event_id=>wwv_flow_imp.id(320718512403031561)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    round((TO_NUMBER(replace(replace(:P109_ANNUAL_SALARY,''$'',''''),'','',''''))*round(num_working_days/262)), 2) ',
'from',
'    hr_att_shift_rota',
'where',
'    id = :P109_SHIFT_ID'))
,p_attribute_07=>'P109_SHIFT_ID,P109_ANNUAL_SALARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718748560031563)
,p_event_id=>wwv_flow_imp.id(320718512403031561)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320718867046031564)
,p_name=>'dy_personal_rate'
,p_event_sequence=>1489
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_PERSONAL_RATE'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BASIC_PAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320718895532031565)
,p_event_id=>wwv_flow_imp.id(320718867046031564)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_HOURLY_RATE,P109_DAILY_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    round((TO_NUMBER(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''))/hours_worked), 2) hourly_rate, round((TO_NUMBER(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''))/num_working_days), 2) daily_rate',
'from',
'    hr_att_shift_rota',
'where',
'    id = :P109_SHIFT_ID',
'',
'',
'    '))
,p_attribute_07=>'P109_SHIFT_ID,P109_PERSONAL_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320719032381031566)
,p_name=>'dy_set_annual_salary'
,p_event_sequence=>1499
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_PERSONAL_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320719107965031567)
,p_event_id=>wwv_flow_imp.id(320719032381031566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_ANNUAL_SALARY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select ',
'    round((TO_NUMBER(replace(replace(:P109_PERSONAL_RATE,''$'',''''),'','',''''))*round(262/num_working_days)), 2) ',
'from',
'    hr_att_shift_rota',
'where',
'    id = :P109_SHIFT_ID',
'',
'    '))
,p_attribute_07=>'P109_SHIFT_ID,P109_PERSONAL_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320719263323031568)
,p_name=>'dy_daily_rate'
,p_event_sequence=>1509
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_DAILY_RATE'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'DAILY_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320719281256031569)
,p_event_id=>wwv_flow_imp.id(320719263323031568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_HOURLY_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    round((TO_NUMBER(replace(replace(:P109_DAILY_RATE,''$'',''''),'','','''')) * num_working_days), 2) personal_rate, round((TO_NUMBER(replace(replace(:P109_DAILY_RATE,''$'',''''),'','','''')) * (num_working_days/hours_worked)), 2) hourly_rate',
'from',
'    hr_att_shift_rota',
'where',
'    id = :P109_SHIFT_ID',
'',
'    '))
,p_attribute_07=>'P109_SHIFT_ID,P109_DAILY_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320719460316031570)
,p_name=>'dy_hourly_rate'
,p_event_sequence=>1519
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_HOURLY_RATE'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'HOURLY_RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320719479776031571)
,p_event_id=>wwv_flow_imp.id(320719460316031570)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_DAILY_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    round((TO_NUMBER(replace(replace(:P109_HOURLY_RATE,''$'',''''),'','','''')) * hours_worked), 2) personal_rate, round((TO_NUMBER(replace(replace(:P109_HOURLY_RATE,''$'',''''),'','','''')) * (hours_worked/num_working_days)), 2) daily_rate',
'from',
'    hr_att_shift_rota',
'where',
'    id = :P109_SHIFT_ID',
'',
'',
'    '))
,p_attribute_07=>'P109_SHIFT_ID,P109_HOURLY_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(320719601362031572)
,p_name=>'dy_control_rates_unset'
,p_event_sequence=>1529
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_COMPUTE_GROSS'
,p_condition_element=>'P109_COMPUTE_GROSS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(320719755553031573)
,p_event_id=>wwv_flow_imp.id(320719601362031572)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_PERSONAL_RATE,P109_DAILY_RATE,P109_HOURLY_RATE,P109_ANNUAL_SALARY'
,p_attribute_01=>'DISPLAY_ONLY'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369295243148450794)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3609586119855076273)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Create Form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63287383806767925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369315953928450828)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_attendance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_Att_count pls_integer:=0;  v_startdate date; v_enddate date;  ',
'',
'begin',
'',
'if :P109_MOVEMENT_TYPE = 1 and pkg_global_fnts.status_descript(:P109_STATUS) like ''VERIF%'' then',
'    select count(1) into v_att_count',
'    from HR_ATT_EMPCALENDAR_HD ',
'    where emp_id=:P109_EMPLOYEE;',
'  ',
'  if v_att_count=0 then',
'  ',
'    select  :P109_FROM_DATE,  end_date into  v_startdate, v_enddate      ',
'    from pa_pcf_earningperiod',
'    where upper(payment_type)=upper(:P109_PAYMENT_TYPE)',
'    and org_id=:P109_ORG_ID',
'    and employment_class_id=:P109_EMPLOYMENT_CLASS',
'    and :P109_FROM_DATE between start_date and end_date;',
'      ',
'     pkg_hr.genearndays(:P109_EMPLOYEE, 0, v_startdate, v_enddate);',
'',
'',
'  end if;',
'end if;',
'',
'EXCEPTION',
'   WHEN OTHERS THEN NULL;',
'  ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(369297468496450797)
,p_internal_uid=>63308094586767959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369316318758450828)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'   V_CNT_INN_EMP NUMBER:=0;',
'begin',
'',
'SELECT COUNT(1) INTO V_CNT_INN_EMP',
'FROM VW_EMPLOYEE X ',
'where org_id = :APP_ORG_ID',
'AND x.id = (select employee_no from tbluser where user_name=:APP_USER);',
'',
'IF :APP_USER LIKE ''%INNOSYSGY.COM'' and V_CNT_INN_EMP > 0 then --please note that the implementer must be an innoss employee and not just a user',
'',
'    update HR_MOV_EMPMOVEMENT_NEW',
'    set approved_by =:APP_USER,',
'        approved_date =trunc(current_date)',
'    where id = :P109_ID;',
'',
'    if sql%rowcount > 0 then',
'',
'        insert into tblapprovalhistory(table_name, table_name_key, action, employee, position, date_of_action)',
'        select  ''HR_MOV_EMPMOVEMENT_NEW'', :P109_ID, ''APPROVAL'',employee_name, position_name, current_date',
'        from vw_employee',
'        where id= (select employee_no from tbluser where user_name=:APP_USER);',
'    end if;',
'',
'else',
'',
'    if pkg_global_fnts.status_descript(:P109_STATUS) like ''APPROVE%'' then    ',
'          pkg_global_fnts.approve_record(:APP_USER, ''HR_MOV_EMPMOVEMENT_NEW'',''ID'', :P109_ID);',
'',
'      elsif pkg_global_fnts.status_descript(:P109_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P109_STATUS) like ''CANCEL%'' then',
'',
'          pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_MOV_EMPMOVEMENT_NEW'', ''ID'', :P109_ID);       ',
'     end if;',
'end if;',
'',
'    begin',
'        select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'        from TBLTRANSACTIONTYPE ',
'        where TRANSACTION_TYPE_ID=:P109_TRANSACTION_TYPE_ID;',
'',
'        select WFL_STATUS_DESCRIPTION into v_description',
'        from tblworkflowstatus',
'        where WFL_STATUS_ID=:P109_STATUS;',
'',
'        -- Select Individual into v_Individual ',
'        -- From Vw_Individual ',
'        -- where Id= (SELECT IND_ID FROM HR_RCM_EMPLOYEE WHERE decode(:P109_EMPLOYEE, null, ind_id, ID) =nvl(:P109_EMPLOYEE,:P109_INDIVIDUAL));',
'',
'        select Individual into v_Individual ',
'        From vw_Individual x',
'        where exists (select 1',
'                      from HR_RCM_EMPLOYEE y',
'                      where x.id = y.ind_id',
'                      and ind_id = :P109_INDIVIDUAL);',
'',
'    exception',
'      when no_data_found then null;',
'    end;',
'',
'',
' pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' of: ''||initcap(:P109_CHANGE_TYPE)||'' for ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P109_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Movement'',',
'	:P109_STATUS,:APP_PAGE_ID,:P109_TRANSACTION_TYPE_ID,',
'        ''HR_MOV_EMPMOVEMENT_NEW'',:P109_WORKFLOW_COMMENT, :P109_ID);',
'',
' ',
'-- EXCEPTION',
'--   WHEN OTHERS THEN NULL;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(369295886340450795)
,p_internal_uid=>63308459416767959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369316664713450829)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'process_movement'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      v_count number; V_no_emp number:=0;',
'      ',
'begin',
'',
'    select count(1) into V_no_emp',
'    from hr_rcm_employee',
'    where org_id = :APP_ORG_ID;',
'    ',
'   select count(1) into v_count',
'   from hr_mov_empmovement_new',
'   where id = :P109_ID',
'   and EXECUTED=0 ',
'   and  VERIFIED_BY is not null',
'   and (APPROVED_BY is not null OR V_no_emp=0 );',
'   ',
'   ',
'   if  v_count > 0 and upper(pkg_global_fnts.status_descript(:P109_STATUS)) = ''VERIFY'' then',
'        pkg_hr.Sp_Mov_New_Employment(:P109_ID, :P109_MOVEMENT_TYPE);',
'    end if;',
'    ',
'end;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(369295886340450795)
,p_internal_uid=>63308805371767960
,p_process_comment=>'Code has been moved to a trigger.'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369315534559450828)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set_transacted'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Update hr_mov_empmovement_new',
'set transfer =  case ',
'                    when old_org_structure_id = org_structure then 0',
'                    when old_org_structure_id != org_structure then 1',
'                    else 0',
'                    end',
'where  org_id = :APP_ORG_ID',
'        and emp_id =:P109_EMPLOYEE',
'        and id =:P109_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(369297468496450797)
,p_internal_uid=>63307675217767959
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369186153492450701)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3577954488503418407)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Allowance Entitlements - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63178294150767832
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369164506582450684)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3577932968665415722)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Leave Entitlements - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63156647240767815
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369236938774450743)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3583551390057977914)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Deductions - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63229079432767874
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369098900226450621)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3176913266085773878)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'NetPay Disbursements - Save Interactive Grid Data_1'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63091040884767752
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369314340508450826)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Import Allowances From Job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'            UPDATE_MOV_EMPENTITLE(',
'              IN_FROM_DATE    => :P109_FROM_DATE,',
'              IN_TO_DATE      => :P109_TO_DATE,',
'              IN_EMP_ID       => :P109_EMPLOYEE,',
'              IN_MOV_ID       => :P109_ID,',
'              IN_NEW_POS_ID   => :P109_POSITION_ID,',
'              IN_OLD_POS_ID   => :P109_OLD_POSITION_ID,',
'              IN_NEW_JOB_ID   => :P109_JOB_NAME,',
'              IN_OLD_JOB_ID   => :P109_OLD_JOB_ID,',
'              IN_EMPLOYMENT_TYPE_ID => :P109_EMPLOYMENT_TYPE_ID,',
'              IN_REMARK       => ''Inserted into movement on creation of '' || :P109_CHANGE_TYPE || '' movement'',',
'              IN_FLAG         => ''UPDATE''',
'           );  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Allowance failed to import. Kindly check the allowances entitlement for the current job selected. '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(369175079029450694)
,p_process_success_message=>'Allowances successfully imported!'
,p_internal_uid=>63306481166767957
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369314664348450827)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Import Leave Entitlement From Job'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'            UPDATE_MOV_EMPLEAVEENTITLE(',
'              IN_FROM_DATE    => :P109_FROM_DATE,',
'              IN_TO_DATE      => :P109_TO_DATE,',
'              IN_EMP_ID       => :P109_EMPLOYEE,',
'              IN_MOV_ID       => :P109_ID,',
'              IN_NEW_POS_ID   => :P109_POSITION_ID,',
'              IN_OLD_POS_ID   => :P109_OLD_POSITION_ID,',
'              IN_NEW_JOB_ID   => :P109_JOB_NAME,',
'              IN_OLD_JOB_ID   => :P109_OLD_JOB_ID,',
'              IN_EMPLOYMENT_TYPE_ID => :P109_EMPLOYMENT_TYPE_ID,',
'              IN_REMARK       => ''Inserted into movement on creation of '' || :P109_CHANGE_TYPE || '' movement'',',
'              IN_FLAG         => ''UPDATE''',
'           );  ',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Leave entitlement failed to import. Kindly check the leave entitlement for the current job selected. '
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(369153496030450675)
,p_process_success_message=>'Leave entitlement successfully imported!'
,p_internal_uid=>63306805006767958
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369294765471450794)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3609586119855076273)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Create Form'
,p_internal_uid=>63286906129767925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(369315067054450828)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetEmpPhoto'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   l_css varchar2(32767);',
'begin',
'',
'   l_css := ''.empphoto { '' ||',
'            ''   background-position-x: center;''||',
'            ''   background-position-y: center;'' ||',
'            ''   background-image: url('''''' || APEX_UTIL.GET_BLOB_FILE_SRC(''P1261_IND_PHOTO'',:P109_INDIVIDUAL) || ''''''); '' ||',
'            ''   width: 100%; '' ||',
'            ''   height: 200px; '' ||',
'            ''   background-size: cover; '' ||',
'            ''   background-repeat:no-repeat;''||',
'            ''   overflow:none;'' ||',
'            ''   margin: 0 auto;''||',
'            ''   display: flex;''||',
'            ''   align-content: space-around;''||',
'            ''   border-radius: 50%;''||',
'            ''} '';',
'   ',
'   apex_css.add( p_css => l_css );',
'end;',
'',
'',
'   '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>63307207712767959
);
wwv_flow_imp.component_end;
end;
/
