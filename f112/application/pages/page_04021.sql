prompt --application/pages/page_04021
begin
--   Manifest
--     PAGE: 04021
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>4021
,p_name=>'frmSHUnsafeActions'
,p_page_mode=>'MODAL'
,p_step_title=>'Unsafe Actions'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3170024634159335062)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_inline_css=>'.t-Dialog-body{padding:0}::-webkit-Scrollbar{width:8px;height:8px}::-webkit-scrollbar-thumb{background:#A0A0A0;box-shadow:inset 0 1px 1px rgba(0,0,0,.075)}::-webkit-scrollbar-thumb:hover{background-color:#707070}::-webkit-scrollbar-track{background:#'
||'FFF}::-webkit-scrollbar-track:hover{background-color:#F0F0F0;box-shadow:0 1px 2px rgba(0,0,0,.05) inset}'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3285005750275816104)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3285061178307572661)
,p_name=>'Unsafe Actions'
,p_template=>4501440665235496320
,p_display_sequence=>15
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_TABFORM'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'"ID",',
'"OPTION_DESCRIPTION",',
'"YES_NO"',
'from "HR_HS_OPT_CHECK"',
'where SECTION=''Hs-Unsafe Action''',
'and HS_DETAIL_ID=:P4021_HS_DETAIL_ID',
'order by option_description'))
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P4021_ROW_COUNT'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163767500858672260)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>2
,p_hidden_column=>'Y'
,p_display_as=>'HIDDEN'
,p_pk_col_source_type=>'T'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_HS_OPT_CHECK'
,p_ref_column_name=>'ID'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163767109563672260)
,p_query_column_id=>2
,p_column_alias=>'OPTION_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Option Description'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_HS_OPT_CHECK'
,p_ref_column_name=>'OPTION_DESCRIPTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163766696368672260)
,p_query_column_id=>3
,p_column_alias=>'YES_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Yes/No'
,p_column_alignment=>'CENTER'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(3316814715915867495)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_HS_OPT_CHECK'
,p_ref_column_name=>'YES_NO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3163766272241672260)
,p_query_column_id=>4
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3163768181201672261)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3285005750275816104)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3163762641042672257)
,p_branch_name=>'Go To Page 4021'
,p_branch_action=>'f?p=&APP_ID.:4021:&SESSION.::&DEBUG.::P4021_HS_DETAIL_ID:&P4021_HS_DETAIL_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3163768181201672261)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163765061451672259)
,p_name=>'P4021_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3285061178307572661)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'COUNT(*)',
'from "#OWNER#"."HR_HS_OPT_CHECK"',
'where SECTION=''Hs-Unsafe Action''',
'and HS_DETAIL_ID=:P4021_HS_DETAIL_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163765491124672259)
,p_name=>'P4021_HS_DETAIL_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3285061178307572661)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3163765885624672259)
,p_name=>'P4021_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3285061178307572661)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163763890603672258)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_HS_DRIVER_ASSTMENT'
,p_attribute_02=>'HR_HS_DRIVER_ASSTMENT'
,p_attribute_03=>'P4021_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3047979756747358553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163764649254672258)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3285061178307572661)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HR_HS_OPT_CHECK'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3163768181201672261)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>3047980515398358553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163764273996672258)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3285061178307572661)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HR_HS_OPT_CHECK'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>3047980140140358553
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3163763500961672258)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_HS_DRIVER_ASSTMENT'
,p_attribute_02=>'HR_HS_DRIVER_ASSTMENT'
,p_attribute_03=>'P4021_ID'
,p_attribute_04=>'ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3047979367105358553
);
wwv_flow_imp.component_end;
end;
/
