prompt --application/pages/page_04015
begin
--   Manifest
--     PAGE: 04015
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
 p_id=>4015
,p_name=>'frmAccidentDetail'
,p_step_title=>'Create/Edit Accident Detail'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3170024634159335062)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3164323490675252023)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3285885639795719116)
,p_name=>'Checkbox Regions'
,p_region_name=>'checkbox-regions-hs'
,p_template=>4501440665235496320
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--displayIcons:t-Cards--spanHorizontally'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select seq,card_title,card_subtext,card_icon,card_link from (',
'    select ',
'    1 seq,',
'    ''Collision With'' card_title,',
'    '''' card_subtext,',
'    ''fa-users'' card_icon,',
'    apex_util.prepare_url (',
'            ''f?p=''||v(''APP_ID'')||'':''||4054||'':''||v(''APP_SESSION'')||''::NO:''||4054||'':''||''P''||4054||''_HS_DETAIL_ID:''||:P4015_ID) card_link',
'    from dual',
'union',
'    select ',
'    2 seq,',
'    ''Road Condition'' card_title,',
'    '''' card_subtext,',
'    ''fa-users'' card_icon,',
'    apex_util.prepare_url (',
'            ''f?p=''||v(''APP_ID'')||'':''||4040||'':''||v(''APP_SESSION'')||''::NO:''||4040||'':''||''P''||4040||''_HS_DETAIL_ID:''||:P4015_ID) card_link',
'    from dual',
'union',
'    select ',
'    3 seq,',
'    ''Weather Condition'' card_title,',
'    '''' card_subtext,',
'    ''fa-users'' card_icon,',
'    apex_util.prepare_url (',
'            ''f?p=''||v(''APP_ID'')||'':''||4041||'':''||v(''APP_SESSION'')||''::NO:''||4041||'':''||''P''||4041||''_HS_DETAIL_ID:''||:P4015_ID) card_link',
'    from dual)',
'order by seq'))
,p_display_when_condition=>'P4015_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_footer=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<style type="text/css">',
'    #checkbox-regions-hs .t-Card-body {',
'        display:none',
'    }',
'    #checkbox-regions-hs .t-Card-title {',
'        font-size:1.3rem',
'    }',
'</style>'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163657562107460549)
,p_query_column_id=>1
,p_column_alias=>'SEQ'
,p_column_display_sequence=>1
,p_column_heading=>'Seq'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163657244855460547)
,p_query_column_id=>2
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>2
,p_column_heading=>'Card title'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163656818516460547)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'Card subtext'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163656364838460546)
,p_query_column_id=>4
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>4
,p_column_heading=>'Card icon'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163655956052460546)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>5
,p_column_heading=>'Card link'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3325409246968284828)
,p_plug_name=>'Create/Edit <b>Accident Detail </b>'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>19
,p_query_type=>'TABLE'
,p_query_table=>'HR_HS_ACC_DETAIL'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3325830249052447325)
,p_name=>'Audit Record Verified by: &P4015_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>29
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
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
'--   machine_insert,',
' ',
'--   machine_update,',
' ',
'  apex_util.get_since(last_changed_date) updated',
' ',
'from',
' ',
'  HR_HS_ACC_DETAIL',
' ',
'where',
' ',
'id=:p4015_id'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P4015_ID'
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
 p_id=>wwv_flow_imp.id(975030465346016)
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
 p_id=>wwv_flow_imp.id(975135662346017)
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
 p_id=>wwv_flow_imp.id(975256698346018)
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
 p_id=>wwv_flow_imp.id(975351263346019)
,p_query_column_id=>4
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>40
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3163655306328460545)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3164323490675252023)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4014:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3163654093099460544)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3164323490675252023)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4015_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3163654452881460545)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3164323490675252023)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P4015_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3163654921071460545)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3164323490675252023)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HS_ACC_DETAIL',
'WHERE ID=:P4015_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3163640075772460535)
,p_branch_name=>'Go To Page 4015'
,p_branch_action=>'f?p=&APP_ID.:4015:&SESSION.::&DEBUG.:RP::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163644157650460538)
,p_name=>'P4015_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3325830249052447325)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163645701858460539)
,p_name=>'P4015_FILE_ATTACHED'
,p_source_data_type=>'BLOB'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_source=>'FILE_ATTACHED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163646119534460539)
,p_name=>'P4015_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
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
'and upper(Wfl_Status_Description) not like DECODE(:P4015_ID, NULL,''%VERI%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P4015_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P4015_TRANSACTION_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(3163646517240460539)
,p_name=>'P4015_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(3163646939090460540)
,p_name=>'P4015_CHARGE_WITH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'What did the police charge you with?'
,p_source=>'CHARGE_WITH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>1000
,p_cHeight=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163647305070460540)
,p_name=>'P4015_CHARGE_OTH_DRIV'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Did the police charge the other driver(s)?'
,p_source=>'CHARGE_OTH_DRIV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163647657198460540)
,p_name=>'P4015_DID_POLICE_CHARGE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Did the Police Charge you?'
,p_source=>'DID_POLICE_CHARGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163648136663460541)
,p_name=>'P4015_OFF_STATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Police Officer''s Station'
,p_source=>'OFF_STATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>2000
,p_cHeight=>4
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163648471371460541)
,p_name=>'P4015_OFF_BADGE_NUM'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reporting Officer''s Badge Number'
,p_source=>'OFF_BADGE_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3163648902314460541)
,p_name=>'P4015_OFF_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Reporting Officer''s Name '
,p_source=>'OFF_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3163649314960460541)
,p_name=>'P4015_P_INCIDENT_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Police Incident Number?'
,p_source=>'P_INCIDENT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163649661092460541)
,p_name=>'P4015_DATE_REPORTED'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Date Reported to the police?'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_REPORTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>38
,p_cMaxlength=>255
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3163650122086460542)
,p_name=>'P4015_ACC_REPORTED'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Was the accident reported to the police?'
,p_source=>'ACC_REPORTED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163650511191460542)
,p_name=>'P4015_NUM_ADD_SHEET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Number of Additional Sheet'
,p_source=>'NUM_ADD_SHEET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>40
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163650902073460542)
,p_name=>'P4015_CAUSE_ACCID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Cause of Accident'
,p_source=>'CAUSE_ACCID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>40000
,p_cHeight=>4
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163651267501460542)
,p_name=>'P4015_WARNING_SIGN'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Warning Sign'
,p_source=>'WARNING_SIGN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>100
,p_cMaxlength=>100
,p_cHeight=>4
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163651690218460543)
,p_name=>'P4015_STREET'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Street'
,p_source=>'STREET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>35
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3163652108460460543)
,p_name=>'P4015_CITY_VILL_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_prompt=>'City/Village Name'
,p_source=>'CITY_VILL_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a, id b',
'from hr_hcf_lookup',
'where table_name =''TBLVILLAGE''',
'and  org_id =:APP_ORG_SHR_DED',
' AND UPPER(COUNTRY) =:APP_COUNTRY'))
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_imp.id(3163652527842460543)
,p_name=>'P4015_ACC_LOCATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select REGION from HR_HS_COVIR_REPORT where id=:P4015_COVIR_REPORT_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Accident Location'
,p_source=>'ACC_LOCATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_cMaxlength=>200
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3163652894366460543)
,p_name=>'P4015_ACC_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select ACCIDENT_DATE from HR_HS_COVIR_REPORT where id=:P4015_COVIR_REPORT_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Accident Date'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'ACC_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>38
,p_cMaxlength=>255
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3163653297260460544)
,p_name=>'P4015_COVIR_REPORT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_source=>'COVIR_REPORT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163653696007460544)
,p_name=>'P4015_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(3233678323428176992)
,p_name=>'P4015_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_item_source_plug_id=>wwv_flow_imp.id(3325409246968284828)
,p_use_cache_before_default=>'NO'
,p_item_default=>'APP_ORG_ID'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3163642472461460536)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P4015_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P4015_ID, :P4015_STATUS) =FALSE THEN',
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
 p_id=>wwv_flow_imp.id(3163642125919460536)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P4015_STATUS) like ''%VER%'' then',
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
 p_id=>wwv_flow_imp.id(3163641777820460536)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(3325409246968284828)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from HR_HS_ACC_DETAIL'
,p_internal_uid=>3047857643964146831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163641411131460536)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3325409246968284828)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_HS_ACC_DETAIL'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3047857277275146831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163640989553460536)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3163654921071460545)
,p_internal_uid=>3047856855697146831
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163640556498460535)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'begin',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P4015_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P4015_STATUS;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Accident Detail'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P4015_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Accident Detail'',',
'	:P4015_STATUS,:APP_PAGE_ID,:P4015_TRANSACTION_TYPE_ID,',
'        ''HR_HS_ACC_DETAIL'');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3163654452881460545)
,p_process_when=>'P4015_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3047856422642146830
);
wwv_flow_imp.component_end;
end;
/
