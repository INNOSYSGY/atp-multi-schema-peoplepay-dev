prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_name=>'frmEmployeePriorIncDed'
,p_alias=>'FRMEMPLOYEEPRIORINCDED'
,p_step_title=>'Manage Employee Prior Ded'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(452733623140527662)
,p_plug_name=>'For Your Information'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>9
,p_location=>null
,p_plug_source=>'<p> Note only Verified and Approved entries will be processed by the payroll automatically </p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(784278840769424413)
,p_name=>'Audit Verified By &P65_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'SELECT',
'',
'    TO_CHAR(entry_date AT TIME ZONE ''America/Guyana'', ''DD-MON-YYYY HH:MI PM'') || '' by '' || entered_by AS entered,',
'    TO_CHAR(last_changed_date AT TIME ZONE ''America/Guyana'', ''DD-MON-YYYY HH:MI PM'') || '' by '' || last_changed_by AS last_changed,',
'    apex_util.get_since(last_changed_date AT TIME ZONE ''America/Guyana'') AS updated',
'FROM pa_pmg_payrolldeduction_prior',
'WHERE id = :P65_ID;',
''))
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
 p_id=>wwv_flow_imp.id(454927107634313004)
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
 p_id=>wwv_flow_imp.id(454927525510313005)
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
 p_id=>wwv_flow_imp.id(201623328191537429)
,p_query_column_id=>3
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>30
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(786734125510845819)
,p_plug_name=>'Breadcrumb'
,p_title=>'Employee Prior Deductions'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
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
 p_id=>wwv_flow_imp.id(786734832899845921)
,p_plug_name=>'Employee prior (created as a  Form )'
,p_title=>'Employee Prior '
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       EMP_ID,',
'       EXPENSE_CODE,',
'       EXPENSE_ID,',
'       AMOUNT_DEDUCTED,',
'       DEDUCTION_TYPE,',
'       PERIOD_START,',
'       PERIOD_END,',
'       ENTRY_DATE,',
'       ENTERED_BY,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       ORG_ID',
'  from PA_PMG_PAYROLLDEDUCTION_PRIOR',
'  WHERE ORG_ID = :APP_ORG_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454930412437313025)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(786734125510845819)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:147:&SESSION.::&DEBUG.:147::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454930829403313026)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(786734125510845819)
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
,p_security_scheme=>wwv_flow_imp.id(3585335384393360204)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454931174524313028)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(786734125510845819)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454931657761313029)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(786734125510845819)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454932439347313031)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(786734125510845819)
,p_button_name=>'COMPUTE_EXPENSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Compute All Expense'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P65_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3585334780499360204)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(454932852024313032)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(786734125510845819)
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
 p_id=>wwv_flow_imp.id(454955500544313128)
,p_branch_name=>'Delete'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(454930829403313026)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(201623767467537433)
,p_branch_name=>'STAY'
,p_branch_action=>'f?p=&APP_ID.:65:&SESSION.::&DEBUG.:65:P65_ID:&P65_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201622486601537420)
,p_name=>'P65_EXPENSE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_prompt=>'Expense Code'
,p_source=>'EXPENSE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'.display_only'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(201622540222537421)
,p_name=>'P65_AMOUNT_DEDUCTED'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_prompt=>'Amount Deducted'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'AMOUNT_DEDUCTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201622692402537422)
,p_name=>'P65_DEDUCTION_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_prompt=>'Deduction Type'
,p_source=>'DEDUCTION_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3632622997116596669)||'.'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201622710473537423)
,p_name=>'P65_PERIOD_START'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_prompt=>'Period Start'
,p_source=>'PERIOD_START'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(201622803023537424)
,p_name=>'P65_PERIOD_END'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_prompt=>'Period End'
,p_source=>'PERIOD_END'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(201622964405537425)
,p_name=>'P65_ENTRY_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201623032523537426)
,p_name=>'P65_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201623184799537427)
,p_name=>'P65_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(201623298610537428)
,p_name=>'P65_LAST_CHANGED_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786741827627845969)
,p_name=>'P65_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786742249357845974)
,p_name=>'P65_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786743052550845978)
,p_name=>'P65_EXPENSE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_prompt=>'Expense '
,p_source=>'EXPENSE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_deductioncode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and  v.org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(786749842026845998)
,p_name=>'P65_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_source_plug_id=>wwv_flow_imp.id(786734832899845921)
,p_item_default=>':APP_ORG_iD'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454950381770313112)
,p_name=>'compute_totals_all'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(454932439347313031)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454950917659313114)
,p_event_id=>wwv_flow_imp.id(454950381770313112)
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
 p_id=>wwv_flow_imp.id(454951462099313115)
,p_event_id=>wwv_flow_imp.id(454950381770313112)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'refresh'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454951775197313116)
,p_name=>'sum_asat'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_EMPLOYEE_CONTRIBUTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454952308111313118)
,p_event_id=>wwv_flow_imp.id(454951775197313116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat_emp'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION,P65_EMPLOYER_CONTRIBUTION,P65_TOTAL_CREDITED_INTEREST,P65_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454952730127313119)
,p_name=>'sum_asat__emp'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_EMPLOYER_CONTRIBUTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454953255361313121)
,p_event_id=>wwv_flow_imp.id(454952730127313119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION,P65_EMPLOYER_CONTRIBUTION,P65_TOTAL_CREDITED_INTEREST,P65_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454953604310313122)
,p_name=>'sum_asat__emp_interst'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_TOTAL_CREDITED_INTEREST'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454954073400313124)
,p_event_id=>wwv_flow_imp.id(454953604310313122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION,P65_EMPLOYER_CONTRIBUTION,P65_TOTAL_CREDITED_INTEREST,P65_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(454954563252313125)
,p_name=>'sum_asat__emp_volunteer'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_ADDITIONAL_VOLUNTARY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(454955064444313126)
,p_event_id=>wwv_flow_imp.id(454954563252313125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'sum_asat'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_TOTAL_ACCUMULATED_ACCOUNT_BALANCE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'replace(replace(:P65_EMPLOYEE_CONTRIBUTION_AS_AT,''$'',''''),'','','''') + replace(replace(:P65_EMPLOYER_CONTRIBUTION_AS_AT,''$'',''''),'','','''') ',
' + replace(replace(:P65_TOTAL_CREDITED_INTEREST_AS_AT,''$'',''''),'','','''')  + replace(replace(:P65_ADDITIONAL_VOLUNTARY_AS_AT ,''$'',''''),'','','''') '))
,p_attribute_07=>'P65_EMPLOYEE_CONTRIBUTION,P65_EMPLOYER_CONTRIBUTION,P65_TOTAL_CREDITED_INTEREST,P65_ADDITIONAL_VOLUNTARY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(201623533122537431)
,p_name=>'SET_EXPENSE_CODE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P65_EXPENSE_ID'
,p_condition_element=>'P65_EXPENSE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(201623683896537432)
,p_event_id=>wwv_flow_imp.id(201623533122537431)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P65_EXPENSE_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT EXPENSE_CODE',
'    FROM PA_PCF_DEDUCTIONCODE',
'    WHERE ID = :P65_EXPENSE_ID'))
,p_attribute_07=>'P65_EXPENSE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(454947121034313099)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(786734832899845921)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Employee prior (created as a  Form )'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>266051852923688465
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(454948229793313103)
,p_process_sequence=>40
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
,p_internal_uid=>266052961682688469
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(457401750656760605)
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
,p_process_when_button_id=>wwv_flow_imp.id(454931174524313028)
,p_internal_uid=>268506482546135971
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(454946686452313097)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(786734832899845921)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Employee prior (created as a  Form )'
,p_internal_uid=>266051418341688463
);
wwv_flow_imp.component_end;
end;
/
