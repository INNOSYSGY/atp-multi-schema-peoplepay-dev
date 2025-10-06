prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_name=>'frmEmployeePriorIncDed'
,p_alias=>'EMP_PRIOR_REMIT'
,p_step_title=>'Employee Prior Remittance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885021596700624)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(63474809889591140)
,p_name=>'Audit Verified By &P65_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'    apex_util.get_since(last_changed_date) updated',
'from    PA_PCF_PRIOR_AS_AT_VALUES',
'where   id=:P65_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P65_ID'
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
 p_id=>wwv_flow_imp.id(63475027712591142)
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
 p_id=>wwv_flow_imp.id(63475056870591143)
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
 p_id=>wwv_flow_imp.id(66114780376342004)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>40
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(63475148684591144)
,p_query_column_id=>4
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>30
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65930094631012546)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3268978958419337265)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65930802020012648)
,p_plug_name=>'Employee prior (created as a  Form )'
,p_title=>'Employee Prior'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID,',
'       AS_AT_DATE,',
'       EXPENSE_ID,',
'       REMARKS,',
'       DATE_JOINED,',
'       EMPLOYEE_CONTRIBUTION_AS_AT,',
'       EMPLOYER_CONTRIBUTION_AS_AT,',
'       ADDITIONAL_VOLUNTARY_AS_AT,',
'       TOTAL_CREDITED_INTEREST_AS_AT,',
'       TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT,',
'       EMPLOYEE_CONTRIBUTION_CURR,',
'       EMPLOYER_CONTRIBUTION_CURR,',
'       ADDITIONAL_VOLUNTARY_CURR,',
'       TOTAL_CREDITED_INTEREST_CURR,',
'       TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR,',
'       ORG_ID,',
'       GRAND_TOTAL,',
'       APPROVED_BY,',
'       APPROVED_DATE,',
'       TRANSACTION_TYPE_ID,',
'       STATUS',
'  from PA_PCF_PRIOR_AS_AT_VALUES',
'  where org_id =:APP_ORG_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(130457953619198124)
,p_plug_name=>'For Your Information'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_location=>null
,p_plug_source=>'<p> Note only Verified and Approved entries will be processed by the payroll automatically </p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65946462866012699)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65947071716012701)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65947456449012701)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65947891250012702)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66114739654342003)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'COMPUTE_CURRENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Compute Current'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(22634827244820029)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'COMPUTE_EXPENSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Compute All Expense'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(66117740349342033)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(65930094631012546)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65::'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(65948175432012703)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(65947891250012702)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(63474588152591138)
,p_branch_name=>'Delete'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(65947071716012701)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(63474650765591139)
,p_branch_name=>'Update'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65:P65_ID:&P65_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(65947456449012701)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65931104673012649)
,p_name=>'P65_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65931526403012654)
,p_name=>'P65_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Employee '
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE x',
'where  exists(select 1        ',
'     from vw_useraccess_finegrain k',
'     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'     and user_name=:APP_USER)  ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(65931873871012657)
,p_name=>'P65_AS_AT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'31-DEC-2024'
,p_prompt=>'As At Date'
,p_source=>'AS_AT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65932329596012658)
,p_name=>'P65_EXPENSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Expense '
,p_source=>'EXPENSE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'DEDUCTION_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(65932706026012659)
,p_name=>'P65_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>150
,p_cMaxlength=>4000
,p_cHeight=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'Y',
  'resizable', 'N',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65934648211012664)
,p_name=>'P65_DATE_JOINED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Date Joined'
,p_source=>'DATE_JOINED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65935137207012665)
,p_name=>'P65_EMPLOYEE_CONTRIBUTION_AS_AT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Employee Contribution As At'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EMPLOYEE_CONTRIBUTION_AS_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65935469799012666)
,p_name=>'P65_EMPLOYER_CONTRIBUTION_AS_AT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Employer Contribution As At'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EMPLOYER_CONTRIBUTION_AS_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65935895887012667)
,p_name=>'P65_ADDITIONAL_VOLUNTARY_AS_AT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Additional Voluntary As At'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ADDITIONAL_VOLUNTARY_AS_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65936248651012668)
,p_name=>'P65_TOTAL_CREDITED_INTEREST_AS_AT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Total Credited Interest As At'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_CREDITED_INTEREST_AS_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65936728313012671)
,p_name=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Total Accumt Balance As At'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65937075618012673)
,p_name=>'P65_EMPLOYEE_CONTRIBUTION_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Employee Contribution Curr'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EMPLOYEE_CONTRIBUTION_CURR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65937525730012674)
,p_name=>'P65_EMPLOYER_CONTRIBUTION_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Employer Contribution Curr'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'EMPLOYER_CONTRIBUTION_CURR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65937943021012675)
,p_name=>'P65_ADDITIONAL_VOLUNTARY_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Additional Voluntary Curr'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'ADDITIONAL_VOLUNTARY_CURR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938252935012676)
,p_name=>'P65_TOTAL_CREDITED_INTEREST_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Total Credited Interest Curr'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_CREDITED_INTEREST_CURR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65938689556012677)
,p_name=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Total Accum Balance Curr'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939119072012678)
,p_name=>'P65_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65939503508012679)
,p_name=>'P65_GRAND_TOTAL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_default=>'0'
,p_prompt=>'Grand Total'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'GRAND_TOTAL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66114914962342005)
,p_name=>'P65_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Transaction Type '
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
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(66114976523342006)
,p_name=>'P65_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
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
'and (upper(Wfl_Status_Description) not like DECODE(:P65_ID, NULL,''%VERI%'',''test'')  ',
'and upper(Wfl_Status_Description) not like DECODE(:P65_ID, NULL,''%COMP%'',''test'')  ',
'and upper(Wfl_Status_Description) not like DECODE(:P65_ID, NULL,''%WITH%'',''test'')  ',
'and upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'and upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') )',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P65_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P65_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130457707585198122)
,p_name=>'P65_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130457800906198123)
,p_name=>'P65_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_item_source_plug_id=>wwv_flow_imp.id(65930802020012648)
,p_prompt=>'Approved Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22633528823820016)
,p_name=>'compute_totals'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(66114739654342003)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22633596071820017)
,p_event_id=>wwv_flow_imp.id(22633528823820016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'run_totals'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'PKG_PAYROLL_PRVASAT.maintain_totals(:P65_ADM_DEDUCTION_ID,:P65_EXPENSE_ID, :APP_ORG_ID);',
'',
'END;',
''))
,p_attribute_02=>'P65_EXPENSE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22633666474820018)
,p_event_id=>wwv_flow_imp.id(22633528823820016)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22634942683820030)
,p_name=>'compute_totals_all'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(22634827244820029)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22634960644820031)
,p_event_id=>wwv_flow_imp.id(22634942683820030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'run_totals'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'PKG_PAYROLL_PRVASAT.maintain_totals(null,:P65_EXPENSE_ID, :APP_ORG_ID);',
'',
'END;',
''))
,p_attribute_02=>'P65_EXPENSE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22635135074820032)
,p_event_id=>wwv_flow_imp.id(22634942683820030)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22633909522820020)
,p_name=>'sum_asat'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_EMPLOYEE_CONTRIBUTION_AS_AT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22633962091820021)
,p_event_id=>wwv_flow_imp.id(22633909522820020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat_emp'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION_AS_AT,P65_EMPLOYER_CONTRIBUTION_AS_AT,P65_TOTAL_CREDITED_INTEREST_AS_AT,P65_ADDITIONAL_VOLUNTARY_AS_AT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22634230049820023)
,p_name=>'sum_asat__emp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_EMPLOYER_CONTRIBUTION_AS_AT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22634270266820024)
,p_event_id=>wwv_flow_imp.id(22634230049820023)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION_AS_AT,P65_EMPLOYER_CONTRIBUTION_AS_AT,P65_TOTAL_CREDITED_INTEREST_AS_AT,P65_ADDITIONAL_VOLUNTARY_AS_AT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22634395156820025)
,p_name=>'sum_asat__emp_interst'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_TOTAL_CREDITED_INTEREST_AS_AT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22634523494820026)
,p_event_id=>wwv_flow_imp.id(22634395156820025)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION_AS_AT,P65_EMPLOYER_CONTRIBUTION_AS_AT,P65_TOTAL_CREDITED_INTEREST_AS_AT,P65_ADDITIONAL_VOLUNTARY_AS_AT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(22634601256820027)
,p_name=>'sum_asat__emp_volunteer'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_ADDITIONAL_VOLUNTARY_AS_AT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(22634673871820028)
,p_event_id=>wwv_flow_imp.id(22634601256820027)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_AS_AT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION_AS_AT,P65_EMPLOYER_CONTRIBUTION_AS_AT,P65_TOTAL_CREDITED_INTEREST_AS_AT,P65_ADDITIONAL_VOLUNTARY_AS_AT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65949125969012706)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(65930802020012648)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee prior (created as a  Form )'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>164572081197846908
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(22633350747820015)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'compute_totals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'PKG_PAYROLL_PRVASAT.maintain_totals(to_number(:P65_ADM_DEDUCTION_ID), to_number(:P65_EXPENSE_ID), :APP_ORG_ID);',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(66114739654342003)
,p_internal_uid=>121256305976654217
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68077584163413265)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'',
'    begin',
'        select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'        from TBLTRANSACTIONTYPE ',
'        where TRANSACTION_TYPE_ID=:P65_TRANSACTION_TYPE_ID;',
'',
'        select WFL_STATUS_DESCRIPTION into v_description',
'        from tblworkflowstatus',
'        where WFL_STATUS_ID=:P65_STATUS;',
'',
'    exception',
'      when no_data_found then null;',
'    end;',
'',
'',
'if pkg_global_fnts.status_descript(:P65_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''PA_PCF_PRIOR_AS_AT_VALUES'',''ID'', :P65_ID);',
'',
'elsif pkg_global_fnts.status_descript(:P65_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P65_STATUS) like ''CANCEL%'' then',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''PA_PCF_PRIOR_AS_AT_VALUES'', ''ID'', :P65_ID);       ',
'',
'end if;',
'',
'pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' of: ''||''Employee Prior''||'' for ''||initcap(:P65_EMP_ID),',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P65_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Prior'',',
'	:P65_STATUS,:APP_PAGE_ID,:P65_TRANSACTION_TYPE_ID,',
'        ''PA_PCF_PRIOR_AS_AT_VALUES'',NULL, :P65_ID);',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(65947456449012701)
,p_internal_uid=>166700539392247467
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65948676426012705)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(65930802020012648)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee prior (created as a  Form )'
,p_internal_uid=>164571631654846907
);
wwv_flow_imp.component_end;
end;
/
