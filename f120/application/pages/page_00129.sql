prompt --application/pages/page_00129
begin
--   Manifest
--     PAGE: 00129
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>129
,p_name=>'frmMediaHead'
,p_step_title=>'Create/Edit Documents'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825718377363577113)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}',
'',
'#P1417_DAYS_TAKEN,#P1417_LEAVE_WEEKEND,#P1417_LEAVE_HOLIDAY,#P1417_HOLIDAYS{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:12px;',
'    font-weight:bolder;',
'}'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2778552295090536741)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3717264530772459962)
,p_plug_name=>'Document Details for &P129_DESCRIPTION.'
,p_parent_plug_id=>wwv_flow_imp.id(2778552295090536741)
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:::t-Region--accent2::t-Region--scrollBody:::::::::'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select B.id,IMAGE_SEQUENCE,',
'  RECORD_DETAILS,',
'  SUBSTR(b.URL,1,INSTR(URL,''APP_ID'')-2)||:APP_ID||'':''||B.FORM_ID||'':''||:APP_SESSION||SUBSTR(URL,INSTR(URL,''APP_SESSION'')+11,length(URL)) URL,',
'  REMARKS,',
'  file_name,',
'  dbms_lob.getlength(file_data) get_image,',
'  dbms_lob.getlength(file_data) file_data,',
'  MEDIA_HD_ID,',
'  Parent_Id,',
'  b.Created_By,',
'  b.Date_Created,',
'  b.Last_Modified_By,',
'  b.DATE_LAST_MODIFIED,',
'  FILE_DATE_UPLOADED, 20 Add_Info,',
'  ''Delete'' delete_file,DOCUMENT_TYPE_ID',
'from MEDIA_HEAD a join MEDIA_DETAIL B on a.id=B.MEDIA_HD_ID',
'Where A.FORM_NAME=:P129_FORM_NAME',
'and Nvl(Module,''a'')=:P129_MODULE',
'and MEDIA_HD_ID=:P129_ID',
'--and a.org_id =:APP_ORG_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P129_ID'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_plug_footer=>'<script src="#APP_IMAGES#aes.js" type="text/javascript"></script>'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3717264304070459961)
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
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'MCC_TRADING_DEV'
,p_internal_uid=>157399552265713174
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847362543446311674)
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
 p_id=>wwv_flow_imp.id(3847362995200311674)
,p_db_column_name=>'URL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'View Reference'
,p_column_link=>'#URL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#edit_big.gif" alt="">'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_static_id=>'URL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847363351669311674)
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
 p_id=>wwv_flow_imp.id(3847363790468311675)
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
 p_id=>wwv_flow_imp.id(3847364140742311675)
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
 p_id=>wwv_flow_imp.id(3847364548951311675)
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
 p_id=>wwv_flow_imp.id(3847364980806311675)
,p_db_column_name=>'DATE_LAST_MODIFIED'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Date Last Modified'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_LAST_MODIFIED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847365385317311675)
,p_db_column_name=>'RECORD_DETAILS'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Record Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RECORD_DETAILS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847359753323311673)
,p_db_column_name=>'REMARKS'
,p_display_order=>24
,p_column_identifier=>'O'
,p_column_label=>'Remarks/Description'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847360141699311673)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>34
,p_column_identifier=>'P'
,p_column_label=>'File name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847360984242311674)
,p_db_column_name=>'FILE_DATA'
,p_display_order=>54
,p_column_identifier=>'R'
,p_column_label=>'Download'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:MEDIA_DETAIL:FILE_DATA:ID::FILE_MIME:FILE_NAME:::attachment:<span aria-hidden="true" class="fa fa-cloud-download fa-2x"></span>:'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847360593067311673)
,p_db_column_name=>'GET_IMAGE'
,p_display_order=>64
,p_column_identifier=>'Q'
,p_column_label=>'Preview'
,p_column_link=>'javascript:window.open(''http://apps3.innosysgy.com:8080/Preview/DocumentViewer?did=#ID#&serv=&P129_SERVER.'',''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=yes'
||''');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_attr=>'class="get-pdf"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_static_id=>'GET_IMAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847358962273311673)
,p_db_column_name=>'FILE_DATE_UPLOADED'
,p_display_order=>74
,p_column_identifier=>'S'
,p_column_label=>'File date uploaded'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847359336610311673)
,p_db_column_name=>'ADD_INFO'
,p_display_order=>94
,p_column_identifier=>'W'
,p_column_label=>'Add/Edit Info'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,20:P20_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847361416484311674)
,p_db_column_name=>'IMAGE_SEQUENCE'
,p_display_order=>104
,p_column_identifier=>'X'
,p_column_label=>'Seq'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847361734519311674)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>114
,p_column_identifier=>'Y'
,p_column_label=>'Parent File'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854349885171666737)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3847362224781311674)
,p_db_column_name=>'DELETE_FILE'
,p_display_order=>124
,p_column_identifier=>'Z'
,p_column_label=>'Delete Record'
,p_column_link=>'javascript:$.event.trigger(''deleteFile'',''#ID#'');'
,p_column_linktext=>'<span aria-hidden="true" style="color:#b94a48" class="fa fa-times fa-2x"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3727812154953106191)
,p_db_column_name=>'DOCUMENT_TYPE_ID'
,p_display_order=>134
,p_column_identifier=>'AB'
,p_column_label=>'Document Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728675556655494486)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3717263112977459960)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'30088'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'DOCUMENT_TYPE_ID:IMAGE_SEQUENCE:ADD_INFO:DELETE_FILE:GET_IMAGE:URL:FILE_DATA:FILE_NAME:REMARKS:PARENT_ID:FILE_DATE_UPLOADED:LAST_MODIFIED_BY:DATE_LAST_MODIFIED:'
,p_break_on=>'DOCUMENT_TYPE_ID:0:0:0:0:0'
,p_break_enabled_on=>'DOCUMENT_TYPE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3786718486715195900)
,p_plug_name=>'Create/Edit Documents'
,p_parent_plug_id=>wwv_flow_imp.id(2778552295090536741)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3786713077752195892)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(DATE_CREATED,''DD-MON-YYYY HH:MIPM'')||'' by ''||CREATED_BY entered,',
'  to_char(DATE_LAST_MODIFIED,''DD-MON-YYYY HH:MIPM'')||'' by ''||DATE_LAST_MODIFIED last_changed,',
'  apex_util.get_since(DATE_LAST_MODIFIED) updated',
'from  MEDIA_HEAD',
'where  id = :P129_ID'))
,p_display_when_condition=>'P129_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P129_ID'
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
 p_id=>wwv_flow_imp.id(687059391463348556)
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
 p_id=>wwv_flow_imp.id(687059514713348557)
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
 p_id=>wwv_flow_imp.id(687059919393348561)
,p_query_column_id=>3
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3855721277685320799)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3957343356032954881)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>90
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3758989902988978794)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(3957343356032954881)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')'' label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P129_MEDIA_EMP_ID',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P129_MEDIA_EMP_ID',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P129_MEDIA_EMP_ID',
'            union',
'     select 11 order_num, ''National IDs:'' label,   ',
'    (SELECT ',
'    LISTAGG(ID_TYPE||'':-''||ID_NUMBER, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier',
'    where ind_id=a.id',
'    and end_date is null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee emp on a.id = emp.ind_id',
'    where emp.id=:P129_MEDIA_EMP_ID',
'    union',
'    select 12 order_num, ''Work Stints:'' label,  to_char(count(1))label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P129_MEDIA_EMP_ID',
'     union',
'    select 13 order_num, ''Gender:'' label,  case when sex_code=''M'' then ''Male'' ',
'                                                when sex_code=''F'' then ''Female''',
'                                                when sex_code=''C'' then ''Common''',
'                                                else ''Neuter''       end label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P129_MEDIA_EMP_ID',
'    union',
'    select 14 order_num, ''Contact Numbers:'' label,   ',
'    (SELECT ',
'    LISTAGG(initcap(relation)||'': ''||cell_phone, ''; '') WITHIN GROUP (ORDER BY ind_id desc) label_value',
'    FROM HR_RCM_RELATIVESFRD rel join hr_rcm_individual ind on ind.id =related_to',
'    where ind_id=a.id',
'    and cell_phone is not null',
'    ) ||'' ''||TELEPHONE||'',''||CELL_PHONE label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P129_MEDIA_EMP_ID',
'    union',
'    select 15 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION',
'    where ind_id=a.id',
'    and rownum=1)label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P129_MEDIA_EMP_ID',
'     order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3717815869690548867)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3758989902988978794)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P129_MEDIA_EMP_ID.,129'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3794068240878257599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3717264530772459962)
,p_button_name=>'LOAD_MEDIA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Load Multiple Files'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_MEDIA_HD_ID:&P129_ID.'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851631454095475247)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P129_RETURN_VALUE.:&SESSION.:&SESSION.:&DEBUG.:&DEBUG.::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3717630846244300278)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3717264530772459962)
,p_button_name=>'LOAD_MEDIA_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Load Files'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:RP,20:P20_MEDIA_HD_ID:&P129_ID.'
,p_icon_css_classes=>'fa-upload-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851630227837475246)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3847366182705311675)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3717264530772459962)
,p_button_name=>'NEW_DETAIL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'New Detail'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:P131_MEDIA_HD_ID:&P129_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from MEDIA_DETAIL',
'where MEDIA_HD_ID=:P129_ID'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851629837195475244)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851630591774475246)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save'
,p_security_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851628597301475243)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129::'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-plus-square-o'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851630958313475247)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P129_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash'
,p_security_scheme=>wwv_flow_imp.id(3807160074582545770)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851629447059475244)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851629027222475243)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition_type=>'NEVER'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3851628226153475242)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add File Details'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3718412087624899573)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(3855721277685320799)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:RP,37:P37_PK_KEY,P37_PK_KEY_ITEM,P37_STATUS_M,P37_TABLE_NAME,P37_TRANSACTION_TYPE_ID_M,P37_PROCESS_NAME,P37_PAGE_NUM,P37_USER_REMARKS:&P129_ID.,ID,&P129_STATUS.,MEDIA_HEAD,&P129_TRANSACTION_TYPE_ID.,Document Center Management,129,&P129_WORK_FLOW_COMMENT.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )',
'where :P129_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3851614456917475221)
,p_branch_name=>'CREATE_AGAIN'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3851629837195475244)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3851614102957475221)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:128:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3851630958313475247)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3851613697745475221)
,p_branch_name=>'Branch_load_media'
,p_branch_action=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131:P131_MEDIA_HD_ID:&P129_ID.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3851628226153475242)
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3851614937307475221)
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_ID:&P129_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3851629447059475244)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3851615264563475222)
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.::P129_ID:&P129_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3851629027222475243)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(542540574358217101)
,p_name=>'P129_SERVER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_position number;',
'v_server varchar2(500);',
'v_out varchar2(10);',
'begin',
' select TABLE_VALUE  into v_server from HR_HCF_LOOKUP where upper(VALUE_DESCRIPTION)=''JASPERSERVER URL'' and org_id=pkg_global_fnts.fn_shareRefOrg(:APP_ORG_ID);',
' select INSTR(v_server, ''='', 1) into v_position from dual;',
' select SUBSTR(v_server, v_position+1) into v_out from dual;',
' return v_out;',
'end;'))
,p_source_type=>'FUNCTION_BODY'
,p_source_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3717815082440548865)
,p_name=>'P129_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3957343356032954881)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
    'where exists (select 1',
    '              from media_head C ',
    '              where  C.Media_EMP_ID=B.ID',
    '              and c.id=:P129_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3717826610888900740)
,p_name=>'P129_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
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
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3717826888701903761)
,p_name=>'P129_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id) ',
'and upper(Wfl_Status_Description) not like DECODE(:P129_ID, NULL,''%VERI%'',''test'')  ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P129_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P129_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3729824643272824701)
,p_name=>'P129_RETURN_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3846484268425558848)
,p_name=>'P129_COMENT_SWITCH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3846484550029561475)
,p_name=>'P129_WORK_FLOW_COMMENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3847366581292311676)
,p_name=>'P129_DEL_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3717264530772459962)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851353889401398951)
,p_name=>'P129_MEDIA_EMP_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_source=>'MEDIA_EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851642575651475269)
,p_name=>'P129_ID_PREV'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851642995903475269)
,p_name=>'P129_ID_NEXT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851643424321475271)
,p_name=>'P129_DESCRIPTION'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Description '
,p_source=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cMaxlength=>200
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851643823821475271)
,p_name=>'P129_TABLE_KEY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
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
'ELSIF :P129_FORM_NAME=''FRMORGANISATION'' OR upper(:P129_FORM_NAME) LIKE UPPER(''%MENU SEPARATOR%'') then',
'    return  ',
'        ''select a.organisation_name INDIVIDUAL, a.id',
'        from HR_HCF_ORGANISATION a ',
'        where a.organisation_type = ''''SOFTWARE USER''''',
'        and a.id = :APP_ORG_ID'';',
'else',
' RETURN',
'      ''select ''''Null'''' INDIVIDUAL,NULL id',
'       from dual'';       ',
'end if;',
''))
,p_lov_cascade_parent_items=>'P129_FORM_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3851644249178475274)
,p_name=>'P129_TABLE_KEY_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Record'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TABLE_KEY',
'FROM MEDIA_HEAD',
'where id=:P129_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'GET_RECORD2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :P129_FORM_NAME=''FRMINSURANCECATEGORY'' Then',
'  RETURN',
'      ''select CATEGORY_DESCRIP||''''(''''||CATEGORY_CODE||'''') Start from:''''||start_date INDIVIDUAL ,id',
'        from HR_MED_INSURANCECATGRY',
'        WHERE ORG_ID =:APP_ORG_SHR_DED',
'        order by 1'';',
'',
'elsif :P129_FORM_NAME=''FRMSEPARATION'' then',
'  RETURN',
'      ''SELECT SURNAME||'''', ''''||FIRST_NAME||'''' ''''||INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(SEPARATION_TYPE,''''TABLE_VALUE''''))||'''' Effective:''''||A.DATE_SEPARATED INDIVIDUAL, a.id',
'      FROM HR_MOV_SEPARATIONBENEFIT A JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID=B.ID',
'      JOIN HR_RCM_INDIVIDUAL C ON B.IND_ID=C.ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      ORDER BY 1'';',
'',
'elsif :P129_FORM_NAME=''FRMLEAVEMARKUP'' then',
'  RETURN',
'      ''select SURNAME_HIST||'''', ''''||FIRST_NAME_HIST||'''' ''''||value_description||'''' Start Period ''''||COMPANY_START_PERIOD INDIVIDUAL,a.id',
'      from HR_LV_MAKEUPPAYMENT A JOIN HR_RCM_EMPLEAVEENTITLE B ON B.ID=A.EMPENT_ID',
'      JOIN table(pkg_global_fnts.get_lookup_value(''''TBLLEAVETYPE'''')) c on c.id=LEAVE_TYPE_ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      order by 1'';',
'',
'elsif :P129_FORM_NAME=''FRMMOVEMENTMANAGEMENT'' then',
'  RETURN',
'      ''SELECT SURNAME||'''', ''''||FIRST_NAME||'''' ''''||initcap(CHANGE_TYPE)||'''', Status: ''''||nvl(CHANGE_TYPE_SUB,'''''''')||'''' Effective:''''||EFFECTIVE_DATE INDIVIDUAL, a.id',
'      FROM HR_MOV_EMPMOVEMENT_NEW A JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID=B.ID',
'      JOIN HR_RCM_INDIVIDUAL C ON B.IND_ID=C.ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      ORDER BY 1'';',
'',
'elsif :P129_FORM_NAME=''FRMAPPRAISALCONFIG'' then',
'  RETURN',
'      ''select case when supervisor=''''YES'''' then ''''Mgr ''''',
'      else '''''''' end||upper(short_name)||'''' ''''||initcap(trim(c.value_description)||',
'      '''' Range ''''||lower_range||''''--''''||upper_range||'''' EFFECTIVE(''''||to_char(Date_Effective,''''DD-MON-YYYY''''))||'''')''''|| case when add_info is null then '''''''' else ''''--''''||add_info end INDIVIDUAL, a.id',
'      from HR_APP_MERITCONFIG a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'      JOIN TABLE(PKG_GLOBAL_FNTS.GET_LOOKUP_VALUE(''''TBLEMPLOYMENTCLASS'''')) C ON A.EMPLOYMENT_CLASS_ID=C.ID',
'      WHERE A.ORG_ID =:APP_ORG_ID',
'      ORDER BY DATE_EFFECTIVE DESC'';',
'      ',
'',
'elsif :P129_FORM_NAME=''FRMSALARYCANCELLATION'' then',
'  RETURN',
'      ''SELECT SURNAME||'''', ''''||FIRST_NAME||'''' Salary Cancel due to ''''||CANCEL_TYPE||'''' For Period:''''|| INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(d.EMPLOYMENT_CLASS_ID,''''TABLE_VALUE''''))',
'           ||'''' ''''||d.PAYMENT_TYPE',
'           || '''': '''' || TO_CHAR(D.START_DATE ,''''DD-Mon-YYYY'''')',
'           || '''' -- '''' || TO_CHAR(d.END_DATE,''''DD-Mon-YYYY'''') INDIVIDUAL, a.id',
'        from PA_PMG_CANCELSALARY a JOIN HR_RCM_EMPLOYEE B ON A.EMP_ID=B.ID',
'        JOIN HR_RCM_INDIVIDUAL C ON B.IND_ID=C.ID ',
'        JOIN PA_PCF_EARNINGPERIOD D ON D.ID=A.EARNINGS_PERIOD_ID',
'        WHERE A.ORG_ID =:APP_ORG_ID'';',
'',
'ELSIF :P129_FORM_NAME=''FRMSEPARATION'' then',
'  return',
'        ''select b.EMPLOYEE||'''' ''''||c.VALUE_DESCRIPTION||'''' on ''''||a.DATE_SEPARATED  INDIVIDUAL, a.id',
'        from HR_MOV_SEPARATIONBENEFIT a join VW_EMPLOYEEALL B on a.EMP_ID=B.id',
'        join table(pkg_global_fnts.get_lookup_value(''''TBLSEPARATEDSTATUS'''')) c on c.id=a.SEPARATION_TYPE',
'        WHERE A.ORG_ID =:APP_ORG_ID',
'        order by 1'';',
'ELSIF :P129_FORM_NAME=''FRMORGANISATION'' then',
'    return  ',
'        ''select a.organisation_name INDIVIDUAL, a.id',
'        from HR_HCF_ORGANISATION a ',
'        where a.organisation_type = ''''SOFTWARE USER''''',
'        and a.id = :APP_ORG_ID'';              ',
'else',
' RETURN',
'      ''select ''''Null'''' INDIVIDUAL, NULL ID',
'       from dual'';           ',
'end if;        '))
,p_lov_cascade_parent_items=>'P129_FORM_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3851644559000475275)
,p_name=>'P129_FORM_NAME'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Form Name'
,p_source=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select page_title a, upper(page_Name) b',
'from APEX_APPLICATION_PAGES a join APP_MODULE b on upper(a.page_group)=b.module_name',
'where upper(page_name) like ''FRM%''',
'and b.id=:P129_MODULE',
'and application_id=:APP_ID',
'AND upper(page_Name) in (',
'''FRMACTIVITYHISTORY'' ,',
'''FRMOFFENCEHISTORYEMP'' ,',
'''FRMEMPAPPRAISAL'' ,',
'''FRMSALARYCANCELLATION'' ,',
'''FRMINDIVIDUAL'',',
'''FRMEARNINGSTYPE'',',
'''FRMADMINDEDUCTIONS'',',
'''FRMEMPLOYEE'',',
'''FRMMEDICALHISTORY'',',
'''FRMLEAVEHISTORY'',',
'''FRMSEPARATION'',',
'''FRMINSURANCECATEGORY'',',
'''FRMLEAVEMARKUP'',',
'''FRMMOVEMENTMANAGEMENT'',',
'''FRMAPPRAISALCONFIG'',',
'''FRMSALARYCANCELLATION'',',
'''FRMSEPARATION'',',
'''FRMEMPDOCUMENTS'',',
'''FRMMEDIAHEAD'', ',
'''FRMORGANISATION''',
')'))
,p_lov_cascade_parent_items=>'P129_MODULE'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3851645004040475275)
,p_name=>'P129_ID_COUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851645368625475275)
,p_name=>'P129_MODULE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Module'
,p_source=>'MODULE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
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
'and UPPER(MODULE_NAME) not in (''ASSET SETUP'',''DOCUMENT MANAGEMENT'')',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3851645779711475276)
,p_name=>'P129_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3786718486715195900)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3851622787959475234)
,p_name=>'Set_form_name'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_SCREEN_NAME'
,p_condition_element=>'P129_SCREEN_NAME'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851622347157475233)
,p_event_id=>wwv_flow_imp.id(3851622787959475234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_FORM_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  Select Webpage_Name ',
'      From Tblpagelist',
'      Where Page_Id =:P129_SCREEN_NAME'))
,p_attribute_07=>'P129_SCREEN_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3851621929832475232)
,p_name=>'show_hide'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_FORM_NAME'
,p_condition_element=>'P129_FORM_NAME'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'FRMMOVEMENTMANAGEMENT,FRMOFFENCEHISTORYEMP,FRMSEPARATION,FRMINSURANCECATEGORY,FRMLEAVEMARKUP,FRMEMPMOVEMENT,FRMAPPRAISALCONFIG,FRMSALARYCANCELLATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851621414736475231)
,p_event_id=>wwv_flow_imp.id(3851621929832475232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_TABLE_KEY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851620888645475231)
,p_event_id=>wwv_flow_imp.id(3851621929832475232)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_TABLE_KEY'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3851620529470475230)
,p_name=>'show_hide2'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_FORM_NAME'
,p_condition_element=>'P129_FORM_NAME'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'FRMMOVEMENTMANAGEMENT,FRMOFFENCEHISTORYEMP,FRMSEPARATION,FRMINSURANCECATEGORY,FRMLEAVEMARKUP,FRMEMPMOVEMENT,FRMAPPRAISALCONFIG,FRMSALARYCANCELLATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851620019590475230)
,p_event_id=>wwv_flow_imp.id(3851620529470475230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_TABLE_KEY_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851619542626475229)
,p_event_id=>wwv_flow_imp.id(3851620529470475230)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_TABLE_KEY_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3851617707415475225)
,p_name=>'deleteFile'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'deleteFile'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851616751677475223)
,p_event_id=>wwv_flow_imp.id(3851617707415475225)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_DEL_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3851617236054475225)
,p_event_id=>wwv_flow_imp.id(3851617707415475225)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.submit(''DELETE_FILE'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3795001018938551898)
,p_name=>'openPreview'
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'openPreview'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3795000904006551897)
,p_event_id=>wwv_flow_imp.id(3795001018938551898)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var selectedDocID = this.data;',
'var win = window.open(''f?p=&APP_ID.:9997:&APP_SESSION.::NO:9997:P9997_DOC_ID:''+selectedDocID, "popupWindow", "scrollbars=yes");',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3795000593640551894)
,p_name=>'Close Dialog'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3794068240878257599)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3795000511242551893)
,p_event_id=>wwv_flow_imp.id(3795000593640551894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3717264530772459962)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3795000431761551892)
,p_event_id=>wwv_flow_imp.id(3795000593640551894)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSucess("Action Processed.");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3717631472147300284)
,p_name=>'Close Dialog_1'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3717630846244300278)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3717631517832300285)
,p_event_id=>wwv_flow_imp.id(3717631472147300284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3717264530772459962)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3717631594939300286)
,p_event_id=>wwv_flow_imp.id(3717631472147300284)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSucess("Action Processed.");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3846484792029562906)
,p_name=>'show_comments'
,p_event_sequence=>90
,p_condition_element=>'P129_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3846485131676562907)
,p_event_id=>wwv_flow_imp.id(3846484792029562906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3846485633422562907)
,p_event_id=>wwv_flow_imp.id(3846484792029562906)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3846486071345564575)
,p_name=>'show_comment'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P129_COMENT_SWITCH'
,p_condition_element=>'P129_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3846486430679564575)
,p_event_id=>wwv_flow_imp.id(3846486071345564575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3846486953298564575)
,p_event_id=>wwv_flow_imp.id(3846486071345564575)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P129_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3851624802594475238)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from MEDIA_HEAD'
,p_attribute_02=>'MEDIA_HEAD'
,p_attribute_03=>'P129_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3208008119207293098
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3851624399539475237)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'MEDIA_HEAD'
,p_attribute_03=>'P129_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'FORM_NAME'
,p_attribute_09=>'P129_ID_NEXT'
,p_attribute_10=>'P129_ID_PREV'
,p_attribute_13=>'P129_ID_COUNT'
,p_internal_uid=>3208007716152293097
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3851624041349475237)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of MEDIA_HEAD'
,p_attribute_02=>'MEDIA_HEAD'
,p_attribute_03=>'P129_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P129_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3208007357962293097
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3851623572139475237)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'126'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3851630958313475247)
,p_internal_uid=>3208006888752293097
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3851623205829475235)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_altenate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF :P129_TABLE_KEY_ID IS NOT NULL THEN',
'',
'    UPDATE MEDIA_HEAD',
'    SET TABLE_KEY= :P129_TABLE_KEY_ID',
'       ,RECORD_DETAILS= :P129_TABLE_KEY_DTL',
'    WHERE ID =:P129_ID;',
'    ',
'END IF;    ',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>3208006522442293095
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3795000234527551890)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete Upload'
,p_process_sql_clob=>'delete from media_detail where ID=:P129_DEL_ID;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE_FILE'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
,p_process_success_message=>'Delete Successful.'
,p_internal_uid=>3151383551140369750
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3846496229086667870)
,p_process_sequence=>70
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
'where TRANSACTION_TYPE_ID=:P129_TRANSACTION_TYPE;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P129_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: Employee media assigned to specific records'',',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,',
'	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P129_ID,',
'	v_description||'' ''||get_transaction||'' for employee media'',',
'	:P129_STATUS,:APP_PAGE_ID,:P129_TRANSACTION_TYPE_ID,',
'        ''MEDIA_HEAD'',:P129_WORK_FLOW_COMMENT,:P129_ID);',
'',
'exception',
'    when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3851630591774475246)
,p_internal_uid=>3202879545699485730
);
wwv_flow_imp.component_end;
end;
/
