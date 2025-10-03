prompt --application/pages/page_00128
begin
--   Manifest
--     PAGE: 00128
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
 p_id=>128
,p_name=>'128 rptMediaHeader'
,p_alias=>'128-RPTMEDIAHEADER'
,p_step_title=>'Document Management'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3603893687174391547)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3576740638981230120)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(438804411322609814)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>21
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(448638770123841710)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1322207218239518965)
,p_plug_name=>'Global Documents Preview'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>22
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,IMAGE_SEQUENCE,',
'  RECORD_DETAILS,',
'  ''f?p=:''||:APP_ID||'':''||FORM_ID||'':''||:APP_SESSION||''::::P''||FORM_ID||''_ID:''||id URL,',
'   REMARKS,',
'  file_name,',
'   get_image,',
'   file_data,',
'  MEDIA_HD_ID,',
'  Parent_Id,',
'to_char(Created_By) Created_By, Date_Created,',
' to_char(Last_Modified_By) Last_Modified_By, DATE_LAST_MODIFIED,',
'  FILE_DATE_UPLOADED, 20 Add_Info,',
' DOCUMENT_TYPE_ID, ''fa-folder-user'' Icon,',
'  MEDIA_EMP_ID',
'from vw_globalDocument',
'where org_id = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P128_DOCUMENT_TYPE, P128_UPLOAD_DATE_START,P128_UPLOAD_DATE_END,P128_EMPLOYEE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(1322207482063518968)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>900415488865522394
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447004826426904216)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447005241277904217)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CREATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447005610699904217)
,p_db_column_name=>'LAST_MODIFIED_BY'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Last Modified By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_MODIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447006006541904217)
,p_db_column_name=>'DATE_LAST_MODIFIED'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Date Last Modified'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_LAST_MODIFIED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447006412667904218)
,p_db_column_name=>'ID'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447008412030904219)
,p_db_column_name=>'MEDIA_HD_ID'
,p_display_order=>80
,p_column_identifier=>'N'
,p_column_label=>'Media Hd Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447007233234904218)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>130
,p_column_identifier=>'K'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447008080599904219)
,p_db_column_name=>'FILE_DATA'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>'DownLoad'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:MEDIA_DETAIL:FILE_DATA:ID::FILE_MIME:FILE_NAME:::attachment:<span aria-hidden="true" class="fa fa-cloud-download fa-2x"></span>:'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447007667317904219)
,p_db_column_name=>'GET_IMAGE'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Preview'
,p_column_link=>'javascript:window.open(''http://reports.innosysgy.com:8080/Preview/DocumentViewer?did=#ID#&serv=&P128_SERVER.'',''popUpWindow'',''height=400,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,directories=no, status=y'
||'es'');'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt="">'
,p_column_link_attr=>'class="get-pdf"'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'GET_IMAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447009215627904220)
,p_db_column_name=>'FILE_DATE_UPLOADED'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'File Date Uploaded'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447006860381904218)
,p_db_column_name=>'IMAGE_SEQUENCE'
,p_display_order=>180
,p_column_identifier=>'H'
,p_column_label=>'Seq'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447008865936904220)
,p_db_column_name=>'PARENT_ID'
,p_display_order=>190
,p_column_identifier=>'O'
,p_column_label=>'Parent File'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632525194982481171)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447010057566904221)
,p_db_column_name=>'DOCUMENT_TYPE_ID'
,p_display_order=>210
,p_column_identifier=>'S'
,p_column_label=>'Document Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3506850866466308920)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447010406741904221)
,p_db_column_name=>'ICON'
,p_display_order=>230
,p_column_identifier=>'T'
,p_column_label=>'Icon'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447010807248904221)
,p_db_column_name=>'MEDIA_EMP_ID'
,p_display_order=>250
,p_column_identifier=>'U'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632585437178532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447011256739904222)
,p_db_column_name=>'RECORD_DETAILS'
,p_display_order=>260
,p_column_identifier=>'V'
,p_column_label=>'Record Details'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447011624220904222)
,p_db_column_name=>'URL'
,p_display_order=>270
,p_column_identifier=>'W'
,p_column_label=>'View Source'
,p_column_link=>'#URL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447012087545904222)
,p_db_column_name=>'REMARKS'
,p_display_order=>280
,p_column_identifier=>'X'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(438804307692609813)
,p_db_column_name=>'ADD_INFO'
,p_display_order=>290
,p_column_identifier=>'Y'
,p_column_label=>'Add Info'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1338609024940568258)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'8665575'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'MEDIA_EMP_ID:DOCUMENT_TYPE_ID:GET_IMAGE:FILE_DATA:FILE_NAME:PARENT_ID:FILE_DATE_UPLOADED:LAST_MODIFIED_BY:DATE_LAST_MODIFIED:ICON'
,p_break_on=>'MEDIA_EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'MEDIA_EMP_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2716583066812265407)
,p_plug_name=>'Document Center Management'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", "RECORD_DETAILS",',
'"FORM_ID" "TABLE_NAME",',
'"TABLE_KEY",',
'"MODULE",',
'"DESCRIPTION" "DESCRIPTION",',
'"CREATED_BY",',
'"DATE_CREATED",',
'"LAST_MODIFIED_BY",',
'"DATE_LAST_MODIFIED",',
'id Add_info,',
'"MEDIA_EMP_ID",',
'"EMP_GRADE_ID"',
'from "MEDIA_HEAD"  ',
'where exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id = w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = nvl(MEDIA_HEAD.ORGDTL_ID, t.id)',
'          and nvl(MEDIA_HEAD.ORGDTL_ID, t.id) = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, nvl(MEDIA_HEAD.ORGDTL_ID, t.id), w.org_structure_id)         ',
'          ) ',
'and EXISTS (',
'            select 1',
'            from APP_MODULE a',
'            Where Exists (Select 1',
'                          from TBLPAGELIST b join APEX_APPLICATION_PAGES c on b.webpage_id=c.page_id',
'                          Where Page_Label Is Not Null',
'                          AND APPLICATION_ID=:APP_ID',
'                          And Webpage_Name Not Like ''%MENU%'' ',
'                          and upper(c.page_group)=a.module_name',
'                          AND A.ID=B.APP_MODULE_ID)',
'            AND  MEDIA_HEAD.MODULE=A.ID',
'            )  ',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where MEDIA_HEAD.org_id=a.org_id',
'              and nvl(MEDIA_HEAD.employment_class_id,1)=decode(MEDIA_HEAD.employment_class_id, null, 1,  a.employment_class_id)',
'              and nvl(MEDIA_HEAD.payment_type,''Y'') = decode(MEDIA_HEAD.payment_type, null, ''Y'', a.payment_type)              ',
'              )',
'and  exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(MEDIA_HEAD.emp_grade_id,1)) = nvl(MEDIA_HEAD.emp_grade_id,1)',
'             and user_name=:APP_USER)             '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P128_EMPLOYEE'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2716582861200265405)
,p_name=>'Listing of Media'
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
,p_detail_link=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:#ID#,128'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'MCC_TRADING_DEV'
,p_internal_uid=>2294790868002268831
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447017486586904233)
,p_db_column_name=>'TABLE_KEY'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TABLE_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447017035957904232)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Description '
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447016642485904232)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447016250592904231)
,p_db_column_name=>'DATE_CREATED'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Date Created'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_CREATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447015805939904231)
,p_db_column_name=>'LAST_MODIFIED_BY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Modified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_MODIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447015406646904230)
,p_db_column_name=>'DATE_LAST_MODIFIED'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Date Last Modified'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_LAST_MODIFIED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447015039347904230)
,p_db_column_name=>'ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447014666544904229)
,p_db_column_name=>'TABLE_NAME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Screen Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'TABLE_NAME'
,p_rpt_named_lov=>wwv_flow_imp.id(3585349357276556459)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447014237146904229)
,p_db_column_name=>'RECORD_DETAILS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Record Details'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'RECORD_DETAILS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447013889106904228)
,p_db_column_name=>'MODULE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Module'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MODULE'
,p_rpt_named_lov=>wwv_flow_imp.id(3585354932801556462)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447018202683904234)
,p_db_column_name=>'MEDIA_EMP_ID'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Media Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447017859310904233)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Emp Grade Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(447013465987904227)
,p_db_column_name=>'ADD_INFO'
,p_display_order=>46
,p_column_identifier=>'S'
,p_column_label=>'Add Info'
,p_column_link=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.:20:P20_MEDIA_HD_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2716581785870265399)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'806159'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'MODULE:TABLE_NAME:RECORD_DETAILS:DESCRIPTION:LAST_MODIFIED_BY:DATE_LAST_MODIFIED::ADD_INFO'
,p_break_on=>'MODULE:TABLE_NAME:0:0:0:0'
,p_break_enabled_on=>'MODULE:TABLE_NAME:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(447018964387904234)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(448638770123841710)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(447019382892904235)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(448638770123841710)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'New Media'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_RETURN_VALUE:128'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(447002964032904208)
,p_name=>'P128_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2716583066812265407)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(x.employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'join media_head on media_emp_id = x.id',
'where exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and x.org_id=:APP_ORG_ID  ',
'order by 1;'))
,p_cSize=>300
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(447003325641904209)
,p_name=>'P128_DOCUMENT_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2716583066812265407)
,p_prompt=>'Document Type'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLDOCUMENT'')) a',
'where org_id=:APP_ORG_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--All--'
,p_lov_cascade_parent_items=>'P128_EMPLOYEE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(447003757936904209)
,p_name=>'P128_UPLOAD_DATE_START'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2716583066812265407)
,p_item_default=>'TRUNC(current_date, ''MM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Upload Start'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(447004183102904210)
,p_name=>'P128_UPLOAD_DATE_END'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2716583066812265407)
,p_item_default=>'LAST_DAY(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Upload End'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(447012726152904226)
,p_name=>'P128_SERVER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1322207218239518965)
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
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447019786389904240)
,p_name=>'refresh_by_employee'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P128_EMPLOYEE'
,p_condition_element=>'P128_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447020241544904241)
,p_event_id=>wwv_flow_imp.id(447019786389904240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1322207218239518965)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447020714061904242)
,p_event_id=>wwv_flow_imp.id(447019786389904240)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2716583066812265407)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447021151004904242)
,p_name=>'set_date_employed'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P128_EMPLOYEE'
,p_condition_element=>'P128_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447021666553904242)
,p_event_id=>wwv_flow_imp.id(447021151004904242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P128_UPLOAD_DATE_START'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select date_employed',
'from hr_rcm_employee',
'where id = :P128_EMPLOYEE'))
,p_attribute_07=>'P128_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447022091639904243)
,p_name=>'refresh_global_view_start'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P128_UPLOAD_DATE_START'
,p_condition_element=>'P128_UPLOAD_DATE_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447022519236904243)
,p_event_id=>wwv_flow_imp.id(447022091639904243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1322207218239518965)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447022986506904243)
,p_name=>'refresh_global_view_end'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P128_UPLOAD_DATE_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447023462030904243)
,p_event_id=>wwv_flow_imp.id(447022986506904243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1322207218239518965)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(447023840196904244)
,p_name=>'refresh_global'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P128_DOCUMENT_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(447024348969904244)
,p_event_id=>wwv_flow_imp.id(447023840196904244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1322207218239518965)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
