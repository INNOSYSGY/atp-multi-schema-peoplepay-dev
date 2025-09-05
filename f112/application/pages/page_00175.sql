prompt --application/pages/page_00175
begin
--   Manifest
--     PAGE: 00175
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
 p_id=>175
,p_name=>'frmemployeegrievance'
,p_alias=>'FRMEMPLOYEEGRIEVANCE'
,p_step_title=>'Create/Edit Employee Grievance'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297885620181706846)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3180088492936732843)
,p_name=>'Approval History'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_GRI_GRIEVANCE''',
'and table_name_key=:P175_ID'))
,p_display_when_condition=>'P175_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(3249145693716447076)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>10
,p_column_heading=>'No.'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3249145286591447073)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>20
,p_column_heading=>'Employee'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3249144884854447073)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>30
,p_column_heading=>'Position'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3249144489281447072)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>40
,p_column_heading=>'Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3249144062696447072)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>50
,p_column_heading=>'Date Of Action'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3249143733388447072)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'User Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3180088687258732845)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_GRI_GRIEVANCE',
'where  id = :P175_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P175_ID'
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
 p_id=>wwv_flow_imp.id(159226090831480113)
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
 p_id=>wwv_flow_imp.id(159226176549480114)
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
 p_id=>wwv_flow_imp.id(159226239994480115)
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
 p_id=>wwv_flow_imp.id(159226419677480116)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159226439239480117)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159226608410480118)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3197295222331391038)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3197320407527393957)
,p_plug_name=>'Create/Edit Employee Grievance'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'HR_GRI_GRIEVANCE'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3248846626097976922)
,p_plug_name=>'Grievance Actions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       GRIEVANCE_ID,',
'       START_DATE,',
'       END_DATE,',
'       ACTION,',
'       OUTCOME,',
'       REMARKS,',
'       FILENAME,',
'       MIMETYPE,',
'       MEDIA_UPLOAD,',
'       ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       TRANSACTION_TYPE_ID,',
'       STATUS',
'  from HR_GRI_GRIEVANCEDTL',
'  where GRIEVANCE_ID=:P175_ID',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P175_ID'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P175_HIDDEN_STATUS'
,p_plug_display_when_cond2=>'VERIFY'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Grievance Actions'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3248846488963976921)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'RSPRINGER'
,p_internal_uid=>16776644771204112
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248846397617976920)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.::P184_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248846247187976919)
,p_db_column_name=>'GRIEVANCE_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Grievance Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248846221707976918)
,p_db_column_name=>'START_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248846096018976917)
,p_db_column_name=>'END_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845939694976916)
,p_db_column_name=>'ACTION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Action'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3244864387516514463)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845845706976915)
,p_db_column_name=>'OUTCOME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Outcome'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3244863431559475054)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845769160976914)
,p_db_column_name=>'REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Action Detail'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845680967976913)
,p_db_column_name=>'FILENAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845558985976912)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845477600976911)
,p_db_column_name=>'MEDIA_UPLOAD'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Media Upload'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845430648976910)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845256234976909)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845219424976908)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248845061377976907)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248844945681976906)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3248844855815976905)
,p_db_column_name=>'STATUS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3245223565139428063)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'203996'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:GRIEVANCE_ID:START_DATE:END_DATE:ACTION:OUTCOME:REMARKS:FILENAME:MIMETYPE:MEDIA_UPLOAD:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:TRANSACTION_TYPE_ID:STATUS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249127630288447061)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3197295222331391038)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249127223495447061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3197295222331391038)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249126819827447061)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3197295222331391038)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249126374459447061)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3197295222331391038)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249125989097447061)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3197295222331391038)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3249125583080447061)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3197295222331391038)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:175::'
,p_button_condition=>'P175_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3248843795562976894)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3248846626097976922)
,p_button_name=>'ADD_NEW_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:184:&SESSION.::&DEBUG.::P184_GRIEVANCE_ID:&P175_ID.'
,p_button_condition=>'P175_HIDDEN_STATUS'
,p_button_condition2=>'VERIFY'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3249122443765447059)
,p_branch_name=>'Delete'
,p_branch_action=>'f?p=&APP_ID.:174:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3249127223495447061)
,p_branch_sequence=>11
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3249122071476447059)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:175::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3249125989097447061)
,p_branch_sequence=>21
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3249121719630447059)
,p_branch_name=>'CREATE'
,p_branch_action=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.::P175_ID:&P175_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3249126374459447061)
,p_branch_sequence=>31
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3249121257613447059)
,p_branch_name=>'SAVE'
,p_branch_action=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.::P175_ID:&P175_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3249126819827447061)
,p_branch_sequence=>41
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3249122856208447060)
,p_branch_name=>'Go To Page 175'
,p_branch_action=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:175:P175_ID:&P175_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>51
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159226656921480119)
,p_name=>'P175_MACHINE_INSERT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3180088687258732845)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159226823170480120)
,p_name=>'P175_MACHINE_UPDATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3180088687258732845)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3248842869422976885)
,p_name=>'P175_HIDDEN_STATUS'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_global_fnts.status_descript(:P175_STATUS)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3248843314605976889)
,p_name=>'P175_MEDIA_UPLOAD'
,p_source_data_type=>'BLOB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Media Upload'
,p_source=>'MEDIA_UPLOAD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3248843426103976890)
,p_name=>'P175_FILENAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_source=>'FILENAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3248843459064976891)
,p_name=>'P175_MIMEYYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_source=>'MIMETYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3248843593014976892)
,p_name=>'P175_GRIEVANCE_OUTCOME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Grievance Outcome'
,p_source=>'GRIEVANCE_OUTCOME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3248846652774976923)
,p_name=>'P175_GRIEVANCE_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Grievance Method'
,p_source=>'GRIEVANCE_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Letter;LETTER,Email;EMAIL'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3248846748987976924)
,p_name=>'P175_GRIEVANCE_SOURCE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Grievance Source'
,p_source=>'GRIEVANCE_SOURCE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Employee;EMPLOYEE,Union;UNION'
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
 p_id=>wwv_flow_imp.id(3249135418379447065)
,p_name=>'P175_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Approved Date'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(3249135804177447065)
,p_name=>'P175_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(3249137015148447065)
,p_name=>'P175_VERIFIED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Verified Date'
,p_source=>'VERIFIED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(3249137386251447065)
,p_name=>'P175_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Verified By'
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_display_when=>'P175_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
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
 p_id=>wwv_flow_imp.id(3249137808114447066)
,p_name=>'P175_STATUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
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
'and upper(Wfl_Status_Description) not like DECODE(:P175_ID, NULL,''%VER%'',''test'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P175_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P175_TRANSACTION_TYPE_ID'
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
 p_id=>wwv_flow_imp.id(3249138206534447066)
,p_name=>'P175_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
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
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3249138971860447066)
,p_name=>'P175_NATURE_OF_COMPLAINT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Nature Of Complaint'
,p_source=>'NATURE_OF_COMPLAINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RICH_TEXT_EDITOR'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_custom_html', 'Y',
  'format', 'HTML',
  'min_height', '180',
  'toolbar', 'FULL',
  'toolbar_style', 'OVERFLOW')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3249139338871447066)
,p_name=>'P175_DATE_OF_COMPLAINT'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Date Of Complaint'
,p_format_mask=>'DD-MON-YYYY'
,p_source=>'DATE_OF_COMPLAINT'
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
 p_id=>wwv_flow_imp.id(3249139801460447066)
,p_name=>'P175_TYPE_OF_COMPLAINT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Type Of Complaint'
,p_source=>'TYPE_OF_COMPLAINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRIEVANCE_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLGRIEVANCETYPE'')) a',
'where a.org_id = :APP_ORG_SHR_DED',
'order by 1'))
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
 p_id=>wwv_flow_imp.id(3249140204659447066)
,p_name=>'P175_GRIEVANCE_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Grievance Status'
,p_source=>'GRIEVANCE_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(3249140618338447066)
,p_name=>'P175_JOB_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Job Title'
,p_source=>'JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select j.Description, j.id from hr_hcf_job j',
'join hr_hcf_position p on p.job_id = j.id',
'join hr_rcm_employee e on e.position_id = p.id',
'where e.org_id = :APP_ORG_ID',
'and e.id = :P175_EMP_ID'))
,p_lov_cascade_parent_items=>'P175_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3249140943552447066)
,p_name=>'P175_ORGDTL_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Department'
,p_source=>'ORGDTL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select dtl.unit_name, dtl.id from hr_hcf_orgstructuredtl dtl',
'join hr_rcm_employee e on e.orgdtl_id =  dtl.id',
'and e.org_id = :APP_ORG_ID',
'and e.id = :P175_EMP_ID'))
,p_lov_cascade_parent_items=>'P175_EMP_ID'
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
 p_id=>wwv_flow_imp.id(3249141357079447067)
,p_name=>'P175_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_prompt=>'Employee'
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
,p_cSize=>30
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(3249141807026447067)
,p_name=>'P175_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_item_source_plug_id=>wwv_flow_imp.id(3197320407527393957)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3248842982039976886)
,p_validation_name=>'chk_verify'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare ',
'    v_status varchar2(50);',
'Begin',
'',
'    select pkg_global_fnts.status_descript(:P175_STATUS) into v_status',
'    from dual;',
'',
'if v_status != ''VERIFY'' then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the employee grievance must be verified before grievance action can be created.'
,p_when_button_pressed=>wwv_flow_imp.id(3248843795562976894)
,p_associated_item=>wwv_flow_imp.id(3249137808114447066)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3248842776974976884)
,p_name=>'set_status'
,p_event_sequence=>10
,p_condition_element=>'P175_STATUS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3248842733410976883)
,p_event_id=>wwv_flow_imp.id(3248842776974976884)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P175_HIDDEN_STATUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pkg_global_fnts.status_descript(:P175_STATUS)',
'FROM DUAL'))
,p_attribute_07=>'P175_STATUS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3249128259971447061)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3197320407527393957)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form frmemployeegrievance'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3133344126115133356
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3249124178544447060)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3249127223495447061)
,p_internal_uid=>3133340044688133355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3249124585905447060)
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
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P175_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P175_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Employee Grievance'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P175_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Employee Grievance'',',
'	:P175_STATUS,:APP_PAGE_ID,:P175_TRANSACTION_TYPE_ID,',
'        ''HR_GRI_GRIEVANCE'',:P175_WORK_FLOW_COMMENT, :P175_ID);',
'',
' if pkg_global_fnts.status_descript(:P175_STATUS) like ''APPROVE%'' then    ',
'      pkg_global_fnts.approve_record(NVL(V(''APP_USER''),user), ''HR_GRI_GRIEVANCE'',''ID'', :P175_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P175_STATUS) like ''DISAPPROV%'' or  pkg_global_fnts.status_descript(:P175_STATUS) like ''CANCEL%'' then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_GRI_GRIEVANCE'', ''ID'', :P175_ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3249126819827447061)
,p_process_when=>'P175_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>3133340452049133355
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3248843057033976887)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_grievance_status_S'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'',
'update hr_gri_grievance',
'set grievance_status = ''Submitted''',
'where id =:P175_ID;',
'',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3249126374459447061)
,p_internal_uid=>3133058923177663182
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3244033006357544831)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update_grievance_status_R'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'',
'if pkg_global_fnts.status_descript(:P175_STATUS) = ''VERIFY'' then',
'    update hr_gri_grievance',
'    set grievance_status = ''Registered''',
'    where id =:P175_ID;',
'end if;',
'',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3249126819827447061)
,p_internal_uid=>3128248872501231126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3249128692688447062)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3197320407527393957)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmemployeegrievance'
,p_internal_uid=>3133344558832133357
);
wwv_flow_imp.component_end;
end;
/
