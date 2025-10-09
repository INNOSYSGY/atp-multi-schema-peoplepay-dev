prompt --application/pages/page_01320
begin
--   Manifest
--     PAGE: 01320
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
 p_id=>1320
,p_name=>'rptPageList'
,p_step_title=>'Listing of PageList'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806439638758309816)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3765736419736824570)
,p_plug_name=>'Listing of Application Pages'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.PAGE_ID as PAGE_ID,startscreen_label,MODULE_START_PAGETYPE,PAGE_ID pkkey,c.start_date,c.end_date,',
'    c.WEBPAGE_NAME as WEBPAGE_NAME,',
'    c.WEBPAGE_ID as WEBPAGE_ID, new_icon,',
'     c.WEBPAGE_ID as WEBPAGE_kEY,',
'    c.CREATED_BY as CREATED_BY,',
'    c.CREATION_DATE as CREATION_DATE,',
'    c.LAST_UPDATED_BY as LAST_UPDATED_BY,',
'    c.LAST_UPDATE_DATE as LAST_UPDATE_DATE,',
'    c.WEBPAGE_TYPE as WEBPAGE_TYPE,',
'    c.APPLICATION_TAB as APPLICATION_TAB,',
'    c.PURPOSE as PURPOSE,',
'    c.APP_MODULE_ID as APP_MODULE_ID,',
'    c.PARENT_PAGE as PARENT_PAGE,',
'    c.PAGE_LABEL as PAGE_LABEL,',
'    c.ADD_CHILD_ONLY as ADD_CHILD_ONLY,',
'   c.display_sequence,',
'   DISPLAY_MODULE_STARTSCREEN, module_main',
'From Tblpagelist C left outer join app_module b on b.id = c.app_module_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3765736316353824570)
,p_name=>'Listing of Application Pages'
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PUR_INV'
,p_internal_uid=>108646108613841919
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3854282246814947052)
,p_db_column_name=>'PAGE_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1321:&SESSION.::&DEBUG.::P1321_PAGE_ID:#PAGE_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PAGE_ID'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3806878328594039124)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3846603562164858900)
,p_db_column_name=>'DISPLAY_MODULE_STARTSCREEN'
,p_display_order=>25
,p_column_identifier=>'P'
,p_column_label=>'Display Module Startscreen'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750467777397986694)
,p_db_column_name=>'WEBPAGE_NAME'
,p_display_order=>35
,p_column_identifier=>'Q'
,p_column_label=>'Webpage Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750467963492986695)
,p_db_column_name=>'WEBPAGE_ID'
,p_display_order=>45
,p_column_identifier=>'R'
,p_column_label=>'Webpage Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468065903986696)
,p_db_column_name=>'WEBPAGE_KEY'
,p_display_order=>55
,p_column_identifier=>'S'
,p_column_label=>'Webpage Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468156958986697)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>65
,p_column_identifier=>'T'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468178669986698)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>75
,p_column_identifier=>'U'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468364625986699)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>85
,p_column_identifier=>'V'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468460157986700)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>95
,p_column_identifier=>'W'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468558372986701)
,p_db_column_name=>'WEBPAGE_TYPE'
,p_display_order=>105
,p_column_identifier=>'X'
,p_column_label=>'Webpage Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750468602750986702)
,p_db_column_name=>'APPLICATION_TAB'
,p_display_order=>115
,p_column_identifier=>'Y'
,p_column_label=>'Application Tab'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750606605894663453)
,p_db_column_name=>'PURPOSE'
,p_display_order=>125
,p_column_identifier=>'Z'
,p_column_label=>'Purpose'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750606697865663454)
,p_db_column_name=>'APP_MODULE_ID'
,p_display_order=>135
,p_column_identifier=>'AA'
,p_column_label=>'App Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3806898191622235382)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750606850140663455)
,p_db_column_name=>'PARENT_PAGE'
,p_display_order=>145
,p_column_identifier=>'AB'
,p_column_label=>'Parent Page'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750606869086663456)
,p_db_column_name=>'PAGE_LABEL'
,p_display_order=>155
,p_column_identifier=>'AC'
,p_column_label=>'Page Label'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750607025613663457)
,p_db_column_name=>'ADD_CHILD_ONLY'
,p_display_order=>165
,p_column_identifier=>'AD'
,p_column_label=>'Add Child Only'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3750607155344663458)
,p_db_column_name=>'DISPLAY_SEQUENCE'
,p_display_order=>175
,p_column_identifier=>'AE'
,p_column_label=>'Display Sequence'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729817919105958561)
,p_db_column_name=>'STARTSCREEN_LABEL'
,p_display_order=>185
,p_column_identifier=>'AF'
,p_column_label=>'Startscreen Label'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3720954295100014217)
,p_db_column_name=>'MODULE_START_PAGETYPE'
,p_display_order=>195
,p_column_identifier=>'AG'
,p_column_label=>'Module Start Pagetype'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3720954459796014218)
,p_db_column_name=>'MODULE_MAIN'
,p_display_order=>205
,p_column_identifier=>'AH'
,p_column_label=>'Module Main'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3710278480863260831)
,p_db_column_name=>'NEW_ICON'
,p_display_order=>215
,p_column_identifier=>'AI'
,p_column_label=>'New Icon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3766547826590333977)
,p_db_column_name=>'PKKEY'
,p_display_order=>225
,p_column_identifier=>'AJ'
,p_column_label=>'Pkkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535354338530702876)
,p_db_column_name=>'START_DATE'
,p_display_order=>235
,p_column_identifier=>'AK'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535354388394702877)
,p_db_column_name=>'END_DATE'
,p_display_order=>245
,p_column_identifier=>'AL'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3765734718697824323)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'201057'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'APP_MODULE_ID:WEBPAGE_TYPE:DISPLAY_MODULE_STARTSCREEN:PAGE_ID:WEBPAGE_NAME:STARTSCREEN_LABEL:PAGE_LABEL:PURPOSE:PARENT_PAGE:ADD_CHILD_ONLY:DISPLAY_SEQUENCE:LAST_UPDATED_BY:LAST_UPDATE_DATE:MODULE_START_PAGETYPE:MODULE_MAIN:NEW_ICON:WEBPAGE_ID::PKKEY:'
||'START_DATE:END_DATE'
,p_break_on=>'APP_MODULE_ID:WEBPAGE_TYPE:DISPLAY_MODULE_STARTSCREEN:0:0:0'
,p_break_enabled_on=>'APP_MODULE_ID:WEBPAGE_TYPE:DISPLAY_MODULE_STARTSCREEN:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3854366405792792360)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796490572072871550)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854275839248947023)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3854366405792792360)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3854276294221947030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3854366405792792360)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1321:&SESSION.::&DEBUG.:1321::'
,p_security_scheme=>wwv_flow_imp.id(3806878774902039125)
);
wwv_flow_imp.component_end;
end;
/
