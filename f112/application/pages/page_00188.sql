prompt --application/pages/page_00188
begin
--   Manifest
--     PAGE: 00188
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
 p_id=>188
,p_name=>'frmMediaHead'
,p_alias=>'FRMMEDIAHEAD'
,p_step_title=>'Create/Edit Media'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297884876355698754)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>4072355960268175073
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3135470129180677434)
,p_plug_name=>'Create/Edit Documents'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3135473913399677441)
,p_plug_name=>'Click To View Document Details'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.ID,',
'  Table_Key_Id,',
'  a.FORM_ID,    ',
'  SUBSTR(b.URL,1,INSTR(URL,''APP_ID'')-2)||:APP_ID||'':''||B.FORM_ID||'':''||:APP_SESSION||SUBSTR(URL,INSTR(URL,''APP_SESSION'')+11,length(URL)) URL,',
'  REMARKS,',
'  MEDIA_HD_ID,',
'  Parent_Id,',
'  b.Created_By,',
'  b.Date_Created,',
'  b.Last_Modified_By,',
'  b.DATE_LAST_MODIFIED',
'From Media_Head A Join Media_Detail B On A.Id=B.Media_Hd_Id',
'Where A.FORM_NAME=:P188_FORM_NAME',
'and Nvl(Module,''a'')=:P188_MODULE',
'and MEDIA_HD_ID=:P188_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3135474111015677441)
,p_name=>'View Media Details'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.::P127_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'MCC_TRADING_DEV'
,p_internal_uid=>584431361883612538
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235778623996428786)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235778168514428786)
,p_db_column_name=>'TABLE_KEY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Record'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_KEY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235777749268428786)
,p_db_column_name=>'FORM_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Screen Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FORM_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235777369151428786)
,p_db_column_name=>'URL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Url'
,p_column_link=>'#URL#'
,p_column_linktext=>'#URL#'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'URL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235777002876428786)
,p_db_column_name=>'MEDIA_HD_ID'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Media Hd Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MEDIA_HD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235776598587428786)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Parent Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PARENT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235776220516428786)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235775770767428786)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CREATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235775411205428785)
,p_db_column_name=>'LAST_MODIFIED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Last Modified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_MODIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235775000918428785)
,p_db_column_name=>'DATE_LAST_MODIFIED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Last Modified'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_LAST_MODIFIED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3235774588389428785)
,p_db_column_name=>'REMARKS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Remarks'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3135475327351677445)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'298489'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'FORM_ID:URL:REMARKS:DATE_CREATED:LAST_MODIFIED_BY:TABLE_KEY_ID:'
,p_break_on=>'FORM_ID:TABLE_KEY_ID:0:0:0:0'
,p_break_enabled_on=>'FORM_ID:TABLE_KEY_ID:0:0:0:0'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3135475712453677446)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent3:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  to_char(date_created,''DD-MON-YYYY HH:MIPM'')||'' by ''||created_by entered,',
'  to_char(date_last_modified,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_modified_by modified,',
'  --to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'--   machine_insert,',
'--   machine_update,',
'  apex_util.get_since(date_last_modified) updated',
'from ',
'    MEDIA_HEAD',
'where',
'    id=:p188_id'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P188_ID'
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
 p_id=>wwv_flow_imp.id(694831097856381)
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
 p_id=>wwv_flow_imp.id(694927099856382)
,p_query_column_id=>2
,p_column_alias=>'MODIFIED'
,p_column_display_sequence=>20
,p_column_heading=>'Modified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(694998827856383)
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
 p_id=>wwv_flow_imp.id(3235757876396403926)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235785275374428791)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235783285710428791)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P188_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235784841514428791)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P188_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235784477873428791)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P188_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235784126921428791)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P188_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235782519216428791)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P188_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235782896498428791)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Next'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P188_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-angle-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235783688441428791)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:188:&SESSION.::&DEBUG.:188::'
,p_button_condition=>'P188_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235785701298428791)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(3235757876396403926)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P188_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3235773756687428785)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3135473913399677441)
,p_button_name=>'NEW_DETAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'New Detail'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:127:P127_MEDIA_HD_ID:&P188_ID.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3235768854300428782)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3235784126921428791)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3235768478266428782)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3235783285710428791)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3235767252082428782)
,p_branch_name=>'Branch_load_media'
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:127:P127_MEDIA_HD_ID:&P126_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3235773756687428785)
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3235767725030428782)
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.::P126_ID:&P126_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3235782519216428791)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3235768038777428782)
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.::P126_ID:&P126_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3235782896498428791)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235779293475428788)
,p_name=>'P188_ID_PREV'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235779700609428789)
,p_name=>'P188_ID_NEXT'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235780071469428790)
,p_name=>'P188_DESCRIPTION'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description '
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>110
,p_cMaxlength=>200
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235780438201428790)
,p_name=>'P188_ID_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235780922637428790)
,p_name=>'P188_TABLE_KEY'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Record'
,p_source=>'TABLE_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'GET_RECORD'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
' If :P129_FORM_NAME=''FRMINDIVIDUAL'' Then',
'  RETURN',
'      ''select INDIVIDUAL,ID',
'       from VW_INDIVIDUAL',
'        WHERE IND_ORG_ID =:APP_ORG_ID',
'       ORDER BY INDIVIDUAL'';',
' ',
'ELSIF :P129_FORM_NAME=''FRMADMINDEDUCTIONS'' then',
'RETURN',
'        ''SELECT DESCRIPTION||'''' for ''''||employee||'''' Dated ''''||datestart INDIVIDUAL, a.id',
'        FROM PA_PCF_ADMINDEDUCTION A JOIN PA_PCF_DEDUCTIONCODE B ON A.EXPENSE_ID=B.ID',
'        JOIN vw_employeeall C ON A.EMP_ID=C.ID',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMEMPLOYEE'' then',
'return',
'      ''select EMPLOYEE||''''(no.:''''||EMP_COMPANY_NO||'''')'''' INDIVIDUAL, id ',
'      from VW_EMPLOYEEALL ',
'      WHERE ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMSALARYCANCELLATION'' then',
'return',
'        ''select EMPLOYEE||'''' salary was cancelled due to ''''||CANCEL_TYPE||'''' for period ''''||',
'        (select ',
'                upper( SHORT_NAME)||'''' ''''||Initcap(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''''TABLE_VALUE'''')',
'                 ||'''' ''''||PAYMENT_TYPE',
'                 || '''': '''' || TO_CHAR(a.START_DATE ,''''DD-MON-YYYY'''')',
'                 || '''' -- '''' || TO_CHAR(a.END_DATE,''''DD-Mon-YYYY''''))',
'        from PA_PCF_EARNINGPERIOD a  join HR_HCF_ORGANISATION G on G.id=a.ORG_ID where a.id=EARNINGS_PERIOD_ID) INDIVIDUAL, x.id',
'        from PA_PMG_CANCELSALARY X join VW_EMPLOYEEALL Y on X.EMP_ID=Y.id',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by x.DATE_PROCESSED desc'';',
'',
'ELSIF :P129_FORM_NAME=''FRMMEDICALHISTORY'' then',
'return',
'        ''select EMPLOYEE|| case when cast(HEALTH_PLAN_ID as varchar2(100)) is not null then ''''(HEALTH plan no.''''||  cast(HEALTH_PLAN_ID as varchar2(100))||'''' DATED:''''||a.DATE_HEALTHPLAN_EFFECTIVE||'''')''''',
'        else '''''''' end INDIVIDUAL, a.id',
'        from HR_MED_MEDICALHISTORY a join VW_EMPLOYEEALL B on a.EMP_ID=B.id          ',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by employee'';',
'        ',
'',
'ELSIF :P129_FORM_NAME=''FRMLEAVEHISTORY'' then',
'return',
'        ''select EMPLOYEE||''''(''''||leave_type||'''' between ''''||nvl(a.adjusted_fromdate,FROMDATE) ||'''' and ''''||nvl(a.adjusted_todate,toDATE)||'''')'''' INDIVIDUAL, a.id',
'        from HR_LV_LEAVEHISTORY a join VW_EMPLOYEEALL B on a.EMP_ID=B.id',
'         WHERE A.ORG_ID =:APP_ORG_ID',
'        order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMOFFENCEHISTORYEMP'' then',
'  return',
'      ''select B.EMPLOYEE||'''', committed offence:- ''''||(select ref_no from HR_GRI_OFFENCE where id=c.OFFENCE_ID)||'''', action taken:- ''''||OFFENCE_CLASS||'''' ''''||ACTION_DESCRIPTION INDIVIDUAL, a.id',
'      from HR_GRI_DISCIPLINEEMP a join VW_EMPLOYEEALL B on a.EMP_ID=B.id',
'      join HR_GRI_DISCIPLINARYACTION c on c.id=a.ACTION_TAKEN_ID',
'       WHERE B.ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMACTIVITYHISTORY'' then',
'return ',
'      ''select VALUE_DESCRIPTION||'''' Started on:''''||START_DATE INDIVIDUAL, a.id',
'      from HR_ATT_ACTIVITY a join table(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''''TBLACTIVITYTYPE'''')) C on C.id=a.ACTIVITY_TYPE_ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      order by START_DATE desc'';',
'',
'ELSIF :P129_FORM_NAME=''FRMEMPAPPRAISAL'' then',
'  return',
'      ''select Y.EMPLOYEE||''''; Between ''''||APPRAISAL_START_PERIOD||'''' and ''''|| APPRAISAL_END_PERIOD||''''; Appraiser:- ''''||(select EMPLOYEE from VW_EMPLOYEEALL C where  C.id=APPRAISER) INDIVIDUAL   ,x.id',
'      from HR_APP_MERITINCREMENT x join VW_EMPLOYEEALL y on x.EMP_ID=y.id',
'      WHERE X.ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'ELSIF :P129_FORM_NAME=''FRMEMPDOCUMENTS'' then',
'    return',
'        ''select value_description||'''' Classification: ''''||classification||'''' (Level: ''''||custom_field||'''')'''' INDIVIDUAL, a.id',
'         from hr_hcf_lookup a',
'         where table_name = ''''TBLDOCUMENT''''',
'         and org_id=:APP_ORG_ID',
'         order by 1'';',
'',
'else',
' RETURN',
'      ''select ''''Null'''' INDIVIDUAL,NULL id',
'       from dual'';       ',
'end if;',
''))
,p_lov_cascade_parent_items=>'P188_FORM_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>120
,p_cMaxlength=>255
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'DIALOG',
  'fetch_on_search', 'N',
  'initial_fetch', 'NO_FETCH',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235781278611428790)
,p_name=>'P188_FORM_NAME'
,p_is_required=>true
,p_item_sequence=>65
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Form Name'
,p_source=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_title a, upper(page_Name) b',
'from APEX_APPLICATION_PAGES a join APP_MODULE b on upper(a.page_group)=b.module_name',
'where upper(page_name) like ''FRM%''',
'and b.id=:P188_MODULE',
'and application_id=:APP_ID',
'and exists (select 1',
'            from tblpagelist x',
'            where a.page_id=x.webpage_id               ',
'           )',
' and  workspace=apex_util.find_workspace((select apex_application.get_security_group_id from dual))',
'and  upper(page_name) not like ''%LINE%''',
'and PAGE_ID not in (101,294,1)',
'AND upper(page_Name) NOT IN (''FRMMEDIAHEAD'',''FRM_MEDIA_DETAIL'',''FRMRFQSUPPLIER'')'))
,p_lov_cascade_parent_items=>'P188_MODULE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235781714491428790)
,p_name=>'P188_MODULE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Module'
,p_source=>'MODULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select INITCAP(MODULE_NAME) a, id B',
'from APP_MODULE a',
'Where Exists (Select 1',
'              from TBLPAGELIST b join APEX_APPLICATION_PAGES c on b.webpage_id=c.page_id',
'              Where Page_Label Is Not Null',
'              AND APPLICATION_ID=:APP_ID',
'              And Webpage_Name Not Like ''%MENU%'' ',
'              and upper(c.page_group)=a.module_name',
'              And A.Id=B.App_Module_Id)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3235782087754428790)
,p_name=>'P188_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3135470129180677434)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3235769843477428784)
,p_name=>'Set_form_name'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P188_SCREEN_NAME'
,p_condition_element=>'P188_SCREEN_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3235769401108428783)
,p_event_id=>wwv_flow_imp.id(3235769843477428784)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P188_FORM_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  Select Webpage_Name ',
'      From Tblpagelist',
'      Where Page_Id =:P188_SCREEN_NAME'))
,p_attribute_07=>'P188_SCREEN_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3235771482663428784)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from MEDIA_HEAD'
,p_attribute_02=>'MEDIA_HEAD'
,p_attribute_03=>'P188_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3119987348807115079
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3235771109985428784)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'MEDIA_HEAD'
,p_attribute_03=>'P188_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'FORM_NAME'
,p_attribute_09=>'P188_ID_NEXT'
,p_attribute_10=>'P188_ID_PREV'
,p_attribute_13=>'P188_ID_COUNT'
,p_internal_uid=>3119986976129115079
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3235770674143428784)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of MEDIA_HEAD'
,p_attribute_02=>'MEDIA_HEAD'
,p_attribute_03=>'P188_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P188_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3119986540287115079
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3235770251218428784)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3235783285710428791)
,p_internal_uid=>3119986117362115079
);
wwv_flow_imp.component_end;
end;
/
