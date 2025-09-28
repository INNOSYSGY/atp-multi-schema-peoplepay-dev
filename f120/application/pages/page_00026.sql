prompt --application/pages/page_00026
begin
--   Manifest
--     PAGE: 00026
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
 p_id=>26
,p_name=>'rptUserProductivity'
,p_step_title=>'User Productivity'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475973939582706796)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3626488035431365204)
,p_plug_name=>'User Productivity'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT   I.DATA_ORIGIN,                                                                                                                                                                                    ',
'            I.EMP_COMPANY_NO,                                                                                                                                                                                 ',
'            I.SURNAME,                                                                                                                                                                                ',
'            I.FIRST_NAME,                                                                                                                                                                                 ',
'            I.POSITION,                                                                                                                                                                                 ',
'            I.ENTERED_BY,                                                                                                                                                                                ',
'            I.ENTRY_DATE,                                                                                                                                                                                          ',
'            I.LAST_CHANGED_BY,                                                                                                                                                                                ',
'            I.LAST_CHANGED_DATE,                                                                                                                                                                                         ',
'            I.VERIFIED_BY,                                                                                                                                                                                 ',
'            I.VERIFIED_DATE',
'FROM TABLE(',
'Pkg_Reports.Sp_Productivity_Detail_Rpt(:APP_ORG_ID,:P26_ACTION,:P26_USER_NAME,:P26_START_DATE,:P26_END_DATE)) I'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P26_ACTION,P26_USER_NAME,P26_START_DATE,P26_END_DATE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3626488078739365204)
,p_name=>'rptUserProductivity'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>3955838269454029
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626488463995365216)
,p_db_column_name=>'DATA_ORIGIN'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Data Origin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626488783068365219)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626489182404365219)
,p_db_column_name=>'SURNAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626489574873365219)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626489941138365219)
,p_db_column_name=>'POSITION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626490412490365220)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626490799653365220)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626491150674365220)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626491621288365220)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626491990689365220)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3626492409630365220)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3626498678913537460)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'39665'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DATA_ORIGIN:EMP_COMPANY_NO:SURNAME:FIRST_NAME:POSITION:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:VERIFIED_BY:VERIFIED_DATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3625938266810847889)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3626488035431365204)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3625938162566847888)
,p_name=>'P26_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3626488035431365204)
,p_prompt=>'Action'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Entry;ENTRY,Verify;VERIFY,Last Changed;LAST_CHANGE'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3625938360811847890)
,p_name=>'P26_USER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3626488035431365204)
,p_prompt=>'User Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select user_name, UPPER(user_name) B',
'from tbluser y ',
'where exists(select 1',
'            from tbluserdetail x',
'            where x.user_id=y.user_id',
'            and org_id=:APP_ORG_ID)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3625938453970847891)
,p_name=>'P26_END_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3626488035431365204)
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3625938582847847892)
,p_name=>'P26_START_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3626488035431365204)
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
wwv_flow_imp.component_end;
end;
/
