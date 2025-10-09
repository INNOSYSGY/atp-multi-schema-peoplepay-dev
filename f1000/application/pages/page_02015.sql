prompt --application/pages/page_02015
begin
--   Manifest
--     PAGE: 02015
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>2015
,p_name=>'rptRelease_Checklist'
,p_step_title=>'Software Updates Release Checklist'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3806580230187387816)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3807018089076118135)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3768717322441834850)
,p_name=>'PeoplePay ERP Releases - Disabled'
,p_template=>2664334895415463485
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RELEASE_HEAD.ID as ID,',
'    RELEASE_HEAD.SOFTWARE_NAME as SOFTWARE_NAME,',
'    RELEASE_HEAD.RELEASE_NAME as RELEASE_NAME,',
'    RELEASE_HEAD.VERSION_NO as VERSION_NO,',
'    RELEASE_HEAD.RELEASE_DUE_DATE as RELEASE_DUE_DATE,',
'    RELEASE_HEAD.REMARKS as REMARKS,',
'    RELEASE_HEAD.ENTERED_BY as ENTERED_BY,',
'    RELEASE_HEAD.ENTRY_DATE as ENTRY_DATE,',
'    RELEASE_HEAD.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    RELEASE_HEAD.LAST_CHANGED_DATE as LAST_CHANGED_DATE ',
' from RELEASE_HEAD RELEASE_HEAD'))
,p_display_condition_type=>'NEVER'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_break_cols=>'0'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_break_type_flag=>'DEFAULT_BREAK_FORMATTING'
,p_csv_output=>'N'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833359053470803157)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Edit'
,p_column_link=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.::P2017_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="">'
,p_heading_alignment=>'LEFT'
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833358655963803153)
,p_query_column_id=>2
,p_column_alias=>'SOFTWARE_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Software Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833358202114803152)
,p_query_column_id=>3
,p_column_alias=>'RELEASE_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Release Name'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833357851527803152)
,p_query_column_id=>4
,p_column_alias=>'VERSION_NO'
,p_column_display_sequence=>4
,p_column_heading=>'Version No.'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833357413007803151)
,p_query_column_id=>5
,p_column_alias=>'RELEASE_DUE_DATE'
,p_column_display_sequence=>5
,p_column_heading=>'Release Due Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833357078456803151)
,p_query_column_id=>6
,p_column_alias=>'REMARKS'
,p_column_display_sequence=>6
,p_column_heading=>'Remarks'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833356604481803150)
,p_query_column_id=>7
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>7
,p_column_heading=>'Entry By'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833356228654803150)
,p_query_column_id=>8
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>8
,p_column_heading=>'Entry Date'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833355861352803149)
,p_query_column_id=>9
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>9
,p_column_heading=>'Last Changed By'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3833355418720803149)
,p_query_column_id=>10
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>10
,p_column_heading=>'Last Changed Date'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3768824141102049404)
,p_plug_name=>'Listing of Reatures and bug fixes'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"MODULE",',
'"FORM_ID",',
'"REGION_NAME",',
'"NEW_FEATURE",',
'"FEATURE_DETAILS",',
'"PRIORITY_LEVEL",',
'"PARENT_ID",',
'"CHANGE_REQUESTED_ID",',
'"DATE_CODED",',
'"SCRIPT_NAME",',
'dbms_lob.substr("SCRIPT",4000,1) "SCRIPT",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE"',
'from "RELEASE_CHECKLIST" ',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3768823945755049403)
,p_name=>'Listing of Reatures and bug fixes'
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
,p_detail_link=>'f?p=&APP_ID.:2016:&SESSION.::&DEBUG.::P2016_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PPLERP'
,p_internal_uid=>105699149073696097
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833367703413803183)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833367372545803180)
,p_db_column_name=>'MODULE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Module'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'MODULE'
,p_rpt_named_lov=>wwv_flow_imp.id(3784542013355296585)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833366943339803179)
,p_db_column_name=>'REGION_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Region Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REGION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833366136206803178)
,p_db_column_name=>'NEW_FEATURE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'New Feature'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'NEW_FEATURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833365716149803177)
,p_db_column_name=>'FEATURE_DETAILS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Feature Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'FEATURE_DETAILS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833365386691803177)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Parent'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'PARENT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833364944071803176)
,p_db_column_name=>'CHANGE_REQUESTED_ID'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Change Requested Id'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CHANGE_REQUESTED_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833364132586803175)
,p_db_column_name=>'DATE_CODED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Coded'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CODED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833363726943803175)
,p_db_column_name=>'SCRIPT_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Script Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SCRIPT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833363371123803174)
,p_db_column_name=>'SCRIPT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Script'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SCRIPT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833362899795803174)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833362547853803174)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833362120390803174)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833361695847803174)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833360944462803172)
,p_db_column_name=>'PRIORITY_LEVEL'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Priority Level'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'PRIORITY_LEVEL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675773314032203929)
,p_db_column_name=>'FORM_ID'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Form Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3768821649322047707)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'411625'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'MODULE:REGION_NAME:FEATURE_DETAILS:NEW_FEATURE:DATE_CODED'
,p_break_on=>'MODULE:REGION_NAME:0:0:0:0'
,p_break_enabled_on=>'MODULE:REGION_NAME:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823260149275039650)
,p_plug_name=>'PeoplePay ERP Releases'
,p_region_template_options=>'#DEFAULT#:is-expanded:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RELEASE_HEAD.ID as ID,',
'    RELEASE_HEAD.SOFTWARE_NAME as SOFTWARE_NAME,',
'    RELEASE_HEAD.RELEASE_NAME as RELEASE_NAME,',
'    RELEASE_HEAD.VERSION_NO as VERSION_NO,',
'    RELEASE_HEAD.RELEASE_DUE_DATE as RELEASE_DUE_DATE,',
'    RELEASE_HEAD.REMARKS as REMARKS,',
'    RELEASE_HEAD.ENTERED_BY as ENTERED_BY,',
'    RELEASE_HEAD.ENTRY_DATE as ENTRY_DATE,',
'    RELEASE_HEAD.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    RELEASE_HEAD.LAST_CHANGED_DATE as LAST_CHANGED_DATE ',
' from RELEASE_HEAD RELEASE_HEAD'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3823260041405039561)
,p_name=>'PeoplePay ERP Releases'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_icon_view_columns_per_row=>1
,p_owner=>'GTT'
,p_internal_uid=>51263053423705939
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833372373263803223)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.::P2017_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833371926851803216)
,p_db_column_name=>'SOFTWARE_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Software Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833371631934803215)
,p_db_column_name=>'RELEASE_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Release Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833371259466803215)
,p_db_column_name=>'VERSION_NO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Version No.'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833370868223803206)
,p_db_column_name=>'RELEASE_DUE_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Release Due Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833370462324803206)
,p_db_column_name=>'REMARKS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833370002784803203)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entry By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833369658653803202)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833369252778803202)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3833368811718803198)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3823255583883038125)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'411546'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:SOFTWARE_NAME:RELEASE_NAME:VERSION_NO:RELEASE_DUE_DATE:REMARKS:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3833158782712035081)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3809820477365137431)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833355005015803149)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3768717322441834850)
,p_button_name=>'2017'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add New'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:2017:&SESSION.::&DEBUG.:2017::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833359741320803162)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3768824141102049404)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3833360181108803170)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3768824141102049404)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2016:&SESSION.::&DEBUG.:2016::'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp.component_end;
end;
/
