prompt --application/pages/page_04031
begin
--   Manifest
--     PAGE: 04031
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>4031
,p_name=>'frmSHHazardClassification'
,p_page_mode=>'MODAL'
,p_step_title=>'Hazard Classification'
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3476032493501017931)
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'01'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3591905758843958922)
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
 p_id=>wwv_flow_imp.id(3591925840153986832)
,p_name=>'Hazard Classification'
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
'from "#OWNER#"."HR_HS_OPT_CHECK"',
'where section=''Hs-Hazard-Classification''',
'and HS_DETAIL_ID=:P4031_HS_DETAIL_ID',
'order by option_description'))
,p_ajax_items_to_submit=>'P4031_HS_DETAIL_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'(null)'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_item=>'P4031_ROW_COUNT'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3469715283323188452)
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
 p_id=>wwv_flow_imp.id(3469714869350188450)
,p_query_column_id=>2
,p_column_alias=>'OPTION_DESCRIPTION'
,p_column_display_sequence=>3
,p_column_heading=>'Option Description'
,p_display_as=>'DISPLAY_AND_SAVE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_HS_OPT_CHECK'
,p_ref_column_name=>'OPTION_DESCRIPTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3469714478334188450)
,p_query_column_id=>3
,p_column_alias=>'YES_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Yes No'
,p_column_alignment=>'CENTER'
,p_display_as=>'SELECT_LIST_FROM_LOV'
,p_named_lov=>wwv_flow_imp.id(3622822575257550364)
,p_lov_show_nulls=>'YES'
,p_derived_column=>'N'
,p_lov_display_extra=>'YES'
,p_include_in_export=>'Y'
,p_ref_schema=>'GTT'
,p_ref_table_name=>'HR_HS_OPT_CHECK'
,p_ref_column_name=>'YES_NO'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3469714011230188449)
,p_query_column_id=>4
,p_column_alias=>'CHECK$01'
,p_column_display_sequence=>1
,p_hidden_column=>'Y'
,p_display_as=>'CHECKBOX'
,p_derived_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3469713675980188449)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3591925840153986832)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:4031:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3469715918117188453)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3591905758843958922)
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
 p_id=>wwv_flow_imp.id(3469711124116188447)
,p_branch_name=>'Go To Page 4031'
,p_branch_action=>'f?p=&APP_ID.:4031:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3469713675980188449)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3469712882591188449)
,p_name=>'P4031_ROW_COUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3591925840153986832)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'COUNT(*)',
'from "#OWNER#"."HR_HS_OPT_CHECK"',
'where section=''Hs-Hazard-Classification'''))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3469713272111188449)
,p_name=>'P4031_HS_DETAIL_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3591925840153986832)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3469712492574188448)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3591925840153986832)
,p_process_type=>'NATIVE_TABFORM_UPDATE'
,p_process_name=>'ApplyMRU'
,p_attribute_02=>'HR_HS_OPT_CHECK'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3469715918117188453)
,p_process_success_message=>'#MRU_COUNT# row(s) updated, #MRI_COUNT# row(s) inserted.'
,p_internal_uid=>3047920499376191874
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3469712046961188448)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3591925840153986832)
,p_process_type=>'NATIVE_TABFORM_DELETE'
,p_process_name=>'ApplyMRD'
,p_attribute_02=>'HR_HS_OPT_CHECK'
,p_attribute_03=>'ID'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'MULTI_ROW_DELETE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'#MRD_COUNT# row(s) deleted.'
,p_internal_uid=>3047920053763191874
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3469711613573188448)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3047919620375191874
);
wwv_flow_imp.component_end;
end;
/
