prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_name=>'frmEmployeePriorIncDed(COPY)'
,p_alias=>'FRMEMPLOYEEPRIORINCDED-COPY'
,p_step_title=>'frmEmployeePriorIncDed(COPY)'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825295437519995187)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(875797128676914527)
,p_plug_name=>'For Your Information'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>9
,p_location=>null
,p_plug_source=>'<p> Note only Verified and Approved entries will be processed by the payroll automatically </p>'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1207342346305811278)
,p_name=>'Audit Verified By &P17_VERIFIED_BY.'
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
'where   id=:P17_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P17_ID'
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
 p_id=>wwv_flow_imp.id(423064549446386874)
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
 p_id=>wwv_flow_imp.id(423064909245386875)
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
 p_id=>wwv_flow_imp.id(423065316074386876)
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
 p_id=>wwv_flow_imp.id(423065754497386877)
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
 p_id=>wwv_flow_imp.id(1209798338436232786)
,p_plug_name=>'Employee prior (created as a  Form )'
,p_title=>'Employee Prior'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
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
'       STATUS,',
'       verified_by',
'  from PA_PCF_PRIOR_AS_AT_VALUES',
'  where org_id =:APP_ORG_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423066471027386879)
,p_button_sequence=>20
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423066925435386880)
,p_button_sequence=>30
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737940974971898)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423067320620386882)
,p_button_sequence=>40
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423067729299386882)
,p_button_sequence=>50
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423068088706386883)
,p_button_sequence=>70
,p_button_name=>'COMPUTE_EXPENSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Compute All Expense'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(423068464313386884)
,p_button_sequence=>80
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::'
,p_button_condition=>'P17_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(423092878402386970)
,p_branch_name=>'Go To Page 1'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(423067729299386882)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(423092143066386968)
,p_branch_name=>'Delete'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(423066925435386880)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(423092530257386969)
,p_branch_name=>'Update'
,p_branch_action=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_ID:&P17_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(423067320620386882)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832455614148949745)
,p_name=>'P17_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(832455706006949746)
,p_name=>'P17_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_prompt=>'Approved Date'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(875802836441914547)
,p_name=>'P17_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209811155323232855)
,p_name=>'P17_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209811577053232860)
,p_name=>'P17_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_prompt=>'Employee '
,p_source=>'EMP_ID'
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
,p_cSize=>32
,p_cMaxlength=>255
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209811924521232863)
,p_name=>'P17_AS_AT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209812380246232864)
,p_name=>'P17_EXPENSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209812756676232865)
,p_name=>'P17_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209814698861232870)
,p_name=>'P17_DATE_JOINED'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209815187857232871)
,p_name=>'P17_EMPLOYEE_CONTRIBUTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_default=>'0'
,p_prompt=>'Employee Contribution'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209815520449232872)
,p_name=>'P17_EMPLOYER_CONTRIBUTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_default=>'0'
,p_prompt=>'Employer Contribution'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209815946537232873)
,p_name=>'P17_ADDITIONAL_VOLUNTARY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_default=>'0'
,p_prompt=>'Additional Voluntary'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209816299301232874)
,p_name=>'P17_TOTAL_CREDITED_INTEREST'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_default=>'0'
,p_prompt=>'Total Credited Interest'
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209816778963232877)
,p_name=>'P17_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_default=>'0'
,p_prompt=>'Total Accumt Balance '
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209817126268232879)
,p_name=>'P17_EMPLOYEE_CONTRIBUTION_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209817576380232880)
,p_name=>'P17_EMPLOYER_CONTRIBUTION_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209817993671232881)
,p_name=>'P17_ADDITIONAL_VOLUNTARY_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209818303585232882)
,p_name=>'P17_TOTAL_CREDITED_INTEREST_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209818740206232883)
,p_name=>'P17_TOTAL_ACCUMULATED_ACCOUNT_BALANCE_CURR'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209819169722232884)
,p_name=>'P17_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209819554158232885)
,p_name=>'P17_GRAND_TOTAL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209994965612562211)
,p_name=>'P17_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1209995027173562212)
,p_name=>'P17_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(1209798338436232786)
,p_item_source_plug_id=>wwv_flow_imp.id(1209798338436232786)
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
'and upper(Wfl_Status_Description) not like DECODE(:P17_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=:APP_PAGE_ID     ',
'and TRANSACTION_TYPE_ID=:P17_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence',
''))
,p_lov_cascade_parent_items=>'P17_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423087033312386951)
,p_name=>'compute_totals_all'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(423068088706386883)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423087486977386955)
,p_event_id=>wwv_flow_imp.id(423087033312386951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'run_totals'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'PKG_PAYROLL_PRVASAT.maintain_totals(null,:P17_EXPENSE_ID, :APP_ORG_ID);',
'',
'END;',
''))
,p_attribute_02=>'P17_EXPENSE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423088009696386958)
,p_event_id=>wwv_flow_imp.id(423087033312386951)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423088368591386959)
,p_name=>'sum_asat'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_EMPLOYEE_CONTRIBUTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423088903643386961)
,p_event_id=>wwv_flow_imp.id(423088368591386959)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat_emp'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P17_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P17_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P17_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P17_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P17_EMPLOYEE_CONTRIBUTION,P17_EMPLOYER_CONTRIBUTION,P17_TOTAL_CREDITED_INTEREST,P17_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423089302633386961)
,p_name=>'sum_asat__emp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_EMPLOYER_CONTRIBUTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423089771597386963)
,p_event_id=>wwv_flow_imp.id(423089302633386961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P17_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P17_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P17_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P17_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P17_EMPLOYEE_CONTRIBUTION,P17_EMPLOYER_CONTRIBUTION,P17_TOTAL_CREDITED_INTEREST,P17_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423090233353386963)
,p_name=>'sum_asat__emp_interst'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_TOTAL_CREDITED_INTEREST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423090704091386965)
,p_event_id=>wwv_flow_imp.id(423090233353386963)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P17_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P17_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P17_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P17_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P17_EMPLOYEE_CONTRIBUTION,P17_EMPLOYER_CONTRIBUTION,P17_TOTAL_CREDITED_INTEREST,P17_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(423091071032386965)
,p_name=>'sum_asat__emp_volunteer'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P17_ADDITIONAL_VOLUNTARY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(423091608353386967)
,p_event_id=>wwv_flow_imp.id(423091071032386965)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P17_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P17_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P17_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P17_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P17_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P17_EMPLOYEE_CONTRIBUTION,P17_EMPLOYER_CONTRIBUTION,P17_TOTAL_CREDITED_INTEREST,P17_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(423083620286386941)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1209798338436232786)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee prior (created as a  Form )'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>201681063704775247
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(423086209981386949)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'compute_totals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'PKG_PAYROLL_PRVASAT.maintain_totals(to_number(:P17_ADM_DEDUCTION_ID), to_number(:P17_EXPENSE_ID), :APP_ORG_ID);',
'',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>201683653399775255
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(423086598139386950)
,p_process_sequence=>70
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
'        where TRANSACTION_TYPE_ID=:P17_TRANSACTION_TYPE_ID;',
'',
'        select WFL_STATUS_DESCRIPTION into v_description',
'        from tblworkflowstatus',
'        where WFL_STATUS_ID=:P17_STATUS;',
'',
'    exception',
'      when no_data_found then null;',
'    end;',
'',
'',
'if pkg_global_fnts.status_descript(:P17_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''PA_PCF_PRIOR_AS_AT_VALUES'',''ID'', :P17_ID);',
'',
'elsif pkg_global_fnts.status_descript(:P17_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P17_STATUS) like ''CANCEL%'' then',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''PA_PCF_PRIOR_AS_AT_VALUES'', ''ID'', :P17_ID);       ',
'',
'end if;',
'',
'pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' of: ''||''Employee Prior''||'' for ''||initcap(:P17_EMP_ID),',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P17_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Prior'',',
'	:P17_STATUS,:APP_PAGE_ID,:P17_TRANSACTION_TYPE_ID,',
'        ''PA_PCF_PRIOR_AS_AT_VALUES'',NULL, :P17_ID);',
' ',
'EXCEPTION',
'  WHEN OTHERS THEN NULL;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(423067320620386882)
,p_internal_uid=>201684041557775256
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(423083229773386939)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(1209798338436232786)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee prior (created as a  Form )'
,p_internal_uid=>201680673191775245
);
wwv_flow_imp.component_end;
end;
/
