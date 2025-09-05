prompt --application/pages/page_00184
begin
--   Manifest
--     PAGE: 00184
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
 p_id=>184
,p_name=>'frmgrievancedtl'
,p_alias=>'FRMGRIEVANCEDTL'
,p_step_title=>'Create/Edit Grievance Action'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885620181706846)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3161321764159991703)
,p_name=>'Approval History'
,p_template=>2664334895415463485
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_GRI_GRIEVANCEDTL''',
'and table_name_key=:P184_ID'))
,p_display_when_condition=>'P184_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P184_ID'
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
 p_id=>wwv_flow_imp.id(3242914546092416876)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>10
,p_column_heading=>'No.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3242914169228416869)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>20
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3242913774717416869)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>30
,p_column_heading=>'Position'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3242913422443416869)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>40
,p_column_heading=>'Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3242912991500416869)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>50
,p_column_heading=>'Date Of Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3242912535866416869)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'User Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3244924807822846697)
,p_plug_name=>'Create/Edit Grievance Action'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'HR_GRI_GRIEVANCEDTL'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3244925427385846733)
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
 p_id=>wwv_flow_imp.id(3248844815488976904)
,p_plug_name=>'Audit'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3244913297577846609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3244925427385846733)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.::P175_ID:&P184_GRIEVANCE_ID.'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3244912524799846608)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3244925427385846733)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P184_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3244912050625846607)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3244925427385846733)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P184_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3244911643168846607)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3244925427385846733)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P184_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3248844682466976903)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3244925427385846733)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P184_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3248844630840976902)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3244925427385846733)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184::'
,p_button_condition=>'P184_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3248844225448976898)
,p_branch_name=>'DELETE'
,p_branch_action=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:175::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3244912524799846608)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3248844291191976899)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.:184::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3248844682466976903)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3248844388369976900)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.::P184_ID:&P184_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3244911643168846607)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3248844046232976897)
,p_branch_name=>'APPLY_CHANGES'
,p_branch_action=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.::P184_ID:&P184_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3244912050625846607)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3248844475488976901)
,p_branch_name=>'Go to page 184'
,p_branch_action=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.::P184_ID:&P184_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244032544849544827)
,p_name=>'P184_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Approved Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244032714154544828)
,p_name=>'P184_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244032823187544829)
,p_name=>'P184_VERIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Verified Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244032932070544830)
,p_name=>'P184_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244918524603846610)
,p_name=>'P184_STATUS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
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
'and upper(Wfl_Status_Description) not like DECODE(:P184_ID, NULL,''%VER%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P184_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P184_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244918921095846616)
,p_name=>'P184_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
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
 p_id=>wwv_flow_imp.id(3244919243988846621)
,p_name=>'P184_LAST_CHANGED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3248844815488976904)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Last Changed Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_CHANGED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244919682931846626)
,p_name=>'P184_LAST_CHANGED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3248844815488976904)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Last Changed By'
,p_source=>'LAST_CHANGED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244920125863846631)
,p_name=>'P184_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3248844815488976904)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Entry Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'ENTRY_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244920435722846637)
,p_name=>'P184_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3248844815488976904)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3244920893306846642)
,p_name=>'P184_MEDIA_UPLOAD'
,p_source_data_type=>'BLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Media Upload'
,p_source=>'MEDIA_UPLOAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'content_disposition', 'attachment',
  'display_as', 'INLINE',
  'display_download_link', 'Y',
  'filename_column', 'FILENAME',
  'mime_type_column', 'MIMETYPE',
  'storage_type', 'DB_COLUMN')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244921235013846647)
,p_name=>'P184_MIMETYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244921663426846652)
,p_name=>'P184_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244922041229846658)
,p_name=>'P184_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Action Details'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_cMaxlength=>500
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'N',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'INTERMEDIATE',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244922440746846663)
,p_name=>'P184_OUTCOME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Outcome'
,p_source=>'OUTCOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRIEVANCE_OUTCOME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLGRIEVANCEOUTCOME'')) a',
'where exists (select 1',
'                 from vw_useraccess v',
'                 where v.org_id=a.org_id)',
'order by 1'))
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244922868859846668)
,p_name=>'P184_ACTION'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Action'
,p_source=>'ACTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRIEVANCE_ACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLGRIEVANCEACTION'')) a',
'where exists (select 1',
'                 from vw_useraccess v',
'                 where v.org_id=a.org_id)',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(3244923307931846674)
,p_name=>'P184_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'END_DATE'
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
 p_id=>wwv_flow_imp.id(3244923719311846679)
,p_name=>'P184_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_prompt=>'Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3244924108282846685)
,p_name=>'P184_GRIEVANCE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_source=>'GRIEVANCE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3244924467183846696)
,p_name=>'P184_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3244924807822846697)
,p_item_source_plug_id=>wwv_flow_imp.id(3244924807822846697)
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
 p_id=>wwv_flow_imp.id(3244032416691544825)
,p_validation_name=>'chk_end_date'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if pkg_global_fnts.status_descript(:P184_STATUS)=''VERIFY'' and :P184_END_DATE is null then',
'    return false;',
'    else',
'    return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, Employee Action can not be verified without an end date.'
,p_when_button_pressed=>wwv_flow_imp.id(3244912050625846607)
,p_associated_item=>wwv_flow_imp.id(3244923307931846674)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3244910927311846607)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3244924807822846697)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmgrievancedtl'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3129126793455532902
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3248843994372976896)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3244912524799846608)
,p_internal_uid=>3133059860516663191
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3248843931036976895)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auto Notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P184_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P184_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Employee Grievance Action'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P184_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Grievance'',',
'	:P184_STATUS,:APP_PAGE_ID,:P184_TRANSACTION_TYPE_ID,',
'        ''HR_GRI_GRIEVANCEDTL'',:P184_WORK_FLOW_COMMENT, :P184_ID);',
'',
' if pkg_global_fnts.status_descript(:P184_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(NVL(V(''APP_USER''),user), ''HR_GRI_GRIEVANCEDTL'',''ID'', :P184_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P184_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P184_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_GRI_GRIEVANCEDTL'', ''ID'', :P184_ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3244912050625846607)
,p_process_when=>'P184_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3133059797180663190
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3248843195057976888)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_grievance_status'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_grievance_status varchar2(200);',
'begin',
'',
'    select a.value_description into v_grievance_status',
'    from table(pkg_global_fnts.get_lookup_value(''TBLGRIEVANCEACTION'')) a',
'    where a.org_id =:APP_ORG_ID',
'    and a.id =:P184_ACTION;',
'',
'if v_grievance_status is not null then',
'    Update (select grievance_status',
'            from hr_gri_grievance',
'            where id = :P184_GRIEVANCE_ID) gri',
'    set gri.grievance_status = v_grievance_status;',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3244911643168846607)
,p_internal_uid=>3133059061201663183
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3244033073027544832)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update_grievance_outcome'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'    v_grievance_outcome varchar2(200);',
'begin',
'',
'if pkg_global_fnts.status_descript(:P184_STATUS) = ''VERIFY'' then',
'',
'    select a.value_description into v_grievance_outcome',
'    from table(pkg_global_fnts.get_lookup_value(''TBLGRIEVANCEOUTCOME'')) a',
'    where a.org_id =:APP_ORG_ID',
'    and a.id =:P184_OUTCOME;',
'',
'if v_grievance_outcome is not null then',
'    Update (select grievance_outcome',
'            from hr_gri_grievance',
'            where id = :P184_GRIEVANCE_ID) gri',
'    set gri.grievance_outcome = v_grievance_outcome;',
'end if;',
'',
'end if;',
'end; '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3244912050625846607)
,p_internal_uid=>3128248939171231127
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3244911296946846607)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3244924807822846697)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmgrievancedtl'
,p_internal_uid=>3129127163090532902
);
wwv_flow_imp.component_end;
end;
/
