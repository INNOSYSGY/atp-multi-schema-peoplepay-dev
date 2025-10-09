prompt --application/pages/page_01391
begin
--   Manifest
--     PAGE: 01391
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
 p_id=>1391
,p_name=>'frmWrkFlwForwardlist'
,p_alias=>'WRKFLWFORWARDLIST'
,p_step_title=>'Manage WorkFlow Forwarding Transactions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806439560326308805)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(686645699582622395)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5966888326642712551)
,p_plug_name=>'Create/Edit Work Flow Forwarding for Transactions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TBLFORWARDLIST'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3701137038792192068)
,p_plug_name=>'Generate Work Flow for Bulk Entries B'
,p_parent_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480:t-Form--labelsAbove'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5966874119670678556)
,p_plug_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1391_FORWORD_LIST_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6015370182294757442)
,p_plug_name=>'Generate Workflow For Bulk Entries A'
,p_parent_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480:t-Form--labelsAbove'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686486435844060823)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686495082664060831)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3701137038792192068)
,p_button_name=>'GENERATE_B'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686499553193060835)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6015370182294757442)
,p_button_name=>'GENERATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate '
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686486796273060824)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P1391_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686495470017060831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3701137038792192068)
,p_button_name=>'CancelB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686499953864060835)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(6015370182294757442)
,p_button_name=>'CancelA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686487246004060824)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>'P1391_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686487588107060824)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1391_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686488032054060824)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1391_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686488399885060825)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.:1391::'
,p_button_condition=>'P1391_FORWORD_LIST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686488783277060825)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'GenerateWorkFlowForBulkEntriesA'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate A'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(686489213598060825)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_button_name=>'GenerateWorkFlowForBulkEntriesB'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate B'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(686508688107060845)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1390:&SESSION.::&DEBUG.:1390::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(686486796273060824)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(686508304879060845)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.:1391::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(686488032054060824)
,p_branch_sequence=>21
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(686509122872060845)
,p_branch_name=>'Go To Page 1391'
,p_branch_action=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.:1391::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(686499553193060835)
,p_branch_sequence=>22
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(686509479601060845)
,p_branch_name=>'Go To Page 1391'
,p_branch_action=>'f?p=&APP_ID.:1391:&SESSION.::&DEBUG.:1391::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(686495082664060831)
,p_branch_sequence=>32
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215378864787032798)
,p_name=>'P1391_FORWORD_LIST_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_source=>'FORWORD_LIST_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215379260438032801)
,p_name=>'P1391_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'User'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1391_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )       ',
''';',
'',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER'';',
'-- WHERE exists (select 1',
'--             from TBLUSERDETAIL b',
'--             where a.USER_ID =b.USER_ID',
'--             and org_id=:APP_ORG_ID',
'--             )'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>60
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2215379632891032802)
,p_name=>'P1391_STAGE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Work Flow Name'
,p_source=>'STAGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1391_FORWARD_LIST_ID is null then',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'';',
'else',
'',
'return',
' ''select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a'';',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2215380065273032803)
,p_name=>'P1391_WFL_STATUS_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Transaction Status'
,p_source=>'WFL_STATUS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(Webpage_Name||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and B.STAGE_ID=:P1391_STAGE_ID)   ',
'and d.start_date <= trunc(current_date)          ',
'and (d.end_date >= trunc(current_date) or d.end_date is null )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1391_STAGE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2215380459917032803)
,p_name=>'P1391_FORWARD_TO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Forward To'
,p_source=>'FORWARD_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1391_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists(select 1',
'           from tbluserdetail b join tblresponsibility c on b.responsibility_id=c.responsibility_id',
'           join tblresponsibilityorgpage d on c.RESPONSIBILITY_ID=d.RESPONSIBILITY_ID',
'           join TBLPAGELIST e on e.PAGE_ID=d.PAGE_ID',
'           join TBLWORKFLOWDTL f on f.WEBPAGE_ID=e.WEBPAGE_ID',
'           join TBLWORKFLOWSTATUS g on f.ID=g.WORKFLOW_DTL_ID',
'           where a.USER_ID=b.USER_ID',
'          -- and WFL_STATUS_ID=:P1391_WFL_STATUS_ID',
'         and B.org_id=:APP_ORG_ID',
'and d.can_view=''''Y''''',
'and trunc(d.start_date) <= trunc(current_date)',
'and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
')',
'order by 1'';',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER',
'WHERE exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )',
'order by 1'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1391_WFL_STATUS_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'This user must be active, and the responsibility granted to the user must have view access to the form he/she requires workflow access to.'
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
 p_id=>wwv_flow_imp.id(2215381315935032805)
,p_name=>'P1391_FORWARD_MODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Forward Mode'
,p_source=>'FORWARD_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'NOTIFICATION_MODE'
,p_lov=>'.'||wwv_flow_imp.id(3806581467368846045)||'.'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215381678482032806)
,p_name=>'P1391_IS_DEFAULT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_default=>'Y'
,p_prompt=>'Is Default'
,p_source=>'IS_DEFAULT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This ensures that the flow works without user intervention'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215382594683032808)
,p_name=>'P1391_AUTO_CLOSE_ON_COMPLETE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_default=>'Y'
,p_prompt=>'Auto Close On Complete'
,p_source=>'AUTO_CLOSE_ON_COMPLETE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This ensures that flow automatically closes off thus no need to edit notification record and close off the notices.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', 'N',
  'on_label', 'Yes',
  'on_value', 'Y',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215383567608032809)
,p_name=>'P1391_EFFECTIVE_FROM'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_default=>'trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Effective From'
,p_source=>'EFFECTIVE_FROM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(2215383932274032809)
,p_name=>'P1391_EFFECTIVE_TO'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Effective To'
,p_source=>'EFFECTIVE_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>15
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(2215384316143032810)
,p_name=>'P1391_STAGE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_source=>'STAGE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215384684535032810)
,p_name=>'P1391_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>120
,p_cMaxlength=>500
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
 p_id=>wwv_flow_imp.id(2215392139972032820)
,p_name=>'P1391_FROM_USER_B'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3701137038792192068)
,p_use_cache_before_default=>'NO'
,p_prompt=>'1 From User'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1391_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )',
'union',
'select ''''PEOPLEPAY'''', 142',
'from dual'';',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER a',
'where exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID)',
'union',
'select ''''PEOPLEPAY'''', 142',
'from dual'';',
'',
'end if;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215392559971032820)
,p_name=>'P1391_WORKFLOW_NAME_B'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3701137038792192068)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2 - Work Flow Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1391_FROM_USER_B'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(2215392975975032821)
,p_name=>'P1391_TRANSACTION_STATUS_B'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3701137038792192068)
,p_prompt=>'3 Transaction Status'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(nvl(PAGE_LABEL,Webpage_Name) ||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and B.STAGE_ID=:P1391_WORKFLOW_NAME_B)           ',
'order by 1'))
,p_lov_cascade_parent_items=>'P1391_WORKFLOW_NAME_B'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215393321887032821)
,p_name=>'P1391_TO_USER_B'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3701137038792192068)
,p_use_cache_before_default=>'NO'
,p_prompt=>'4 To Users'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists(select 1',
'           from tbluserdetail b join tblresponsibility c on b.responsibility_id=c.responsibility_id',
'           join tblresponsibilityorgpage d on c.RESPONSIBILITY_ID=d.RESPONSIBILITY_ID',
'           join TBLPAGELIST e on e.PAGE_ID=d.PAGE_ID',
'           join TBLWORKFLOWDTL f on f.WEBPAGE_ID=e.WEBPAGE_ID',
'           join TBLWORKFLOWSTATUS g on f.ID=g.WORKFLOW_DTL_ID',
'           where a.USER_ID=B.USER_ID',
'       --   and WFL_STATUS_ID=DECODE(:P1391_TRANSACTION_STATUS,NULL,WFL_STATUS_ID,:P1391_TRANSACTION_STATUS)',
'         and d.can_view=''Y''',
'          and B.org_id=:APP_ORG_ID',
'        and trunc(d.start_date) <= trunc(current_date)',
'        and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1391_TRANSACTION_STATUS_B'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This user must be active, and the responsibility granted to the user must have view access to the form he/she requires workflow access to.'
,p_inline_help_text=>'System will replicate every selected Transaction status for selected users below.'
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
 p_id=>wwv_flow_imp.id(2215396595645032826)
,p_name=>'P1391_CREATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5966874119670678556)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Created By'
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215397055120032826)
,p_name=>'P1391_CREATION_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5966874119670678556)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Creation Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215397441046032827)
,p_name=>'P1391_LAST_UPDATED_BY'
,p_source_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5966874119670678556)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Last Updated By'
,p_source=>'LAST_UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215397839480032827)
,p_name=>'P1391_LAST_UPDATE_DATE'
,p_source_data_type=>'TIMESTAMP_LTZ'
,p_is_query_only=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5966874119670678556)
,p_item_source_plug_id=>wwv_flow_imp.id(5966888326642712551)
,p_prompt=>'Last Update Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215401298420032831)
,p_name=>'P1391_FROM_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6015370182294757442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'1 From User'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1391_FORWARD_LIST_ID is null then',
'return',
' ''select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID',
'            )',
'union',
'select ''''PEOPLEPAY'''', 142',
'from dual'';',
'else',
'return',
' ''select user_name,user_id',
'from TBLUSER a',
'where exists (select 1',
'            from TBLUSERDETAIL b',
'            where a.USER_ID =b.USER_ID',
'            and org_id=:APP_ORG_ID)',
'union',
'select ''''PEOPLEPAY'''', 142',
'from dual'';',
'',
'end if;'))
,p_cSize=>30
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(2215401726868032831)
,p_name=>'P1391_WORKFLOW_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6015370182294757442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'2 Work Flow Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(STAGE_NAME) b,STAGE_ID',
'  from TBLWORKFLOWSTAGELIST a',
'  where TRUNC(a.START_DATE) <= TRUNC(current_date)',
'  and (TRUNC(A.END_DATE) IS NULL OR TRUNC(A.END_DATE) >= TRUNC(current_date))',
'  order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1391_FROM_USER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(2215402097953032832)
,p_name=>'P1391_TRANSACTION_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(6015370182294757442)
,p_prompt=>'3 Transaction Status'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(Webpage_Name||'': ''||Wfl_Status_Description||'' (''||TRANSACTION_DESCRIPTION||'')'') screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.webpage_id=d.webpage_id',
'join tbltransactiontype x on x.TRANSACTION_TYPE_ID=a.TRANSACTION_TYPE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              where a.WORKFLOW_DTL_ID=C.id',
'              and B.STAGE_ID=:P1391_WORKFLOW_NAME)           ',
'order by 1'))
,p_lov_cascade_parent_items=>'P1391_WORKFLOW_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215402555471032832)
,p_name=>'P1391_TO_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(6015370182294757442)
,p_use_cache_before_default=>'NO'
,p_prompt=>'4 To Users'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_NAME,USER_ID',
'from TBLUSER a',
'where TRUNC(a.EFFECTIVE_FROM) <= TRUNC(current_date)',
'and (TRUNC(A.effective_to) IS NULL OR TRUNC(A.effective_to) >= TRUNC(current_date))',
'and exists(select 1',
'           from tbluserdetail b join tblresponsibility c on b.responsibility_id=c.responsibility_id',
'           join tblresponsibilityorgpage d on c.RESPONSIBILITY_ID=d.RESPONSIBILITY_ID',
'           join TBLPAGELIST e on e.PAGE_ID=d.PAGE_ID',
'           join TBLWORKFLOWDTL f on f.WEBPAGE_ID=e.WEBPAGE_ID',
'           join TBLWORKFLOWSTATUS g on f.ID=g.WORKFLOW_DTL_ID',
'           where a.USER_ID=B.USER_ID',
'       --   and WFL_STATUS_ID=DECODE(:P1391_TRANSACTION_STATUS,NULL,WFL_STATUS_ID,:P1391_TRANSACTION_STATUS)',
'         and d.can_view=''Y''',
'          and B.org_id=:APP_ORG_ID',
'        and trunc(d.start_date) <= trunc(current_date)',
'        and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
')',
'order by 1'))
,p_lov_cascade_parent_items=>'P1391_TRANSACTION_STATUS'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>10
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_help_text=>'This user must be active, and the responsibility granted to the user must have view access to the form he/she requires workflow access to.'
,p_inline_help_text=>'System will replicate every selected Transaction status for selected users below.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(686504565699060840)
,p_name=>'OpenRegionA'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(686488783277060825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(686505107986060842)
,p_event_id=>wwv_flow_imp.id(686504565699060840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6015370182294757442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(686505520735060843)
,p_name=>'OpenRegionB'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(686489213598060825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(686506035721060843)
,p_event_id=>wwv_flow_imp.id(686505520735060843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3701137038792192068)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(686506442147060843)
,p_name=>'CloseA'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(686499953864060835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(686506864459060844)
,p_event_id=>wwv_flow_imp.id(686506442147060843)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6015370182294757442)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(686507317731060844)
,p_name=>'CloseB'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(686495470017060831)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(686507801555060844)
,p_event_id=>wwv_flow_imp.id(686507317731060844)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3701137038792192068)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(686503412953060839)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(5966888326642712551)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from TBLFORWARDLIST'
,p_internal_uid=>43168160934385345
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(686502956427060839)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(5966888326642712551)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of TBLFORWARDLIST'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>43167704408385345
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(686502604393060838)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(686486796273060824)
,p_internal_uid=>43167352374385344
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(686503802901060839)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_forward_list'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  j_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
' IF :P1391_TRANSACTION_STATUS is not null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1391_TRANSACTION_STATUS);',
'  j_selected := APEX_UTIL.STRING_TO_TABLE(:P1391_TO_USER);',
'',
'  FOR i IN 1..l_selected.COUNT',
'  LOOP',
'     ',
'     for J in 1..j_selected.count ',
'     loop',
'         begin',
'          pkg_generators.generate_workflow (:P1391_FROM_USER, j_selected(j) ,:P1391_WORKFLOW_NAME,l_selected(i));',
'         exception',
'             when others then null;',
'         end;',
'     end loop;  ',
'  END LOOP;  ',
' end if;',
'',
'    :P1391_TRANSACTION_STATUS:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(686499553193060835)
,p_process_success_message=>'Successful Generation for workflow forward list.'
,p_internal_uid=>43168550882385345
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(686504201409060840)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_forward_list_B'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  j_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'  k_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'',
' BEGIN',
'',
' IF :P1391_TRANSACTION_STATUS_B is not null then',
'',
'  l_selected := APEX_UTIL.STRING_TO_TABLE(:P1391_TRANSACTION_STATUS_B);',
'  j_selected := APEX_UTIL.STRING_TO_TABLE(:P1391_TO_USER_B);',
'  k_selected := APEX_UTIL.STRING_TO_TABLE(:P1391_FROM_USER_B);',
'',
'',
'        FOR i IN 1..l_selected.COUNT',
'        LOOP     ',
'            for J in 1..j_selected.count ',
'            loop',
'                for k in 1..k_selected.count',
'                LOOP ',
'                    begin',
'                    pkg_generators.generate_workflow(k_selected(k), j_selected(j) ,:P1391_WORKFLOW_NAME_B,l_selected(i));',
'                    exception',
'                        when others then null;',
'                    end;',
'                end loop;  ',
'            END LOOP;',
'        END LOOP;',
' end if;',
'',
'    :P1391_TRANSACTION_STATUS_B:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(686495082664060831)
,p_process_success_message=>'Successful Generation for workflow forward list.'
,p_internal_uid=>43168949390385346
);
wwv_flow_imp.component_end;
end;
/
