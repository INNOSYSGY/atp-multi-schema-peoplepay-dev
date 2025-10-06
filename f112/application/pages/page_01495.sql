prompt --application/pages/page_01495
begin
--   Manifest
--     PAGE: 01495
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1495
,p_name=>'rptEmpAppraisal'
,p_alias=>'RPTEMPAPPRAISAL'
,p_step_title=>'Listing of Employee Appraisals'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297886235910714013)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3270740265737675303)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(144837481373160533)
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
 p_id=>wwv_flow_imp.id(3415773079010357360)
,p_plug_name=>'Generate Employee Appraisals'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-callout:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3425113398537554033)
,p_plug_name=>'Generate Employee Appraisals'
,p_parent_plug_id=>wwv_flow_imp.id(3415773079010357360)
,p_icon_css_classes=>'fa-clipboard-user'
,p_region_template_options=>'#DEFAULT#:t-Region--showIcon:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_header=>'<span style="color:#0076DF; font-weight:bold">All fields are required fields for this process.</span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5822149398932292322)
,p_plug_name=>'Listing of Employee Appraisals for Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID,',
'    MERIT_CONFIG_ID,',
'    EMP_ID, ',
'    APPRAISAL_START_PERIOD,',
'    APPRAISAL_END_PERIOD,',
'    QUESTION_ANSWERED,',
'    APPRAISER_CLASSIFICATION,',
'    SUMMARY_STATUS,',
'    MANAGEMENT_POINTS,',
'    EMPLOYEE_PERCENT,',
'    DEDUCTION_PERCENT,',
'    BONUS,',
'    REFUNDED_POINT,',
'    REVIEWER,',
'    INTERVIEWEE_ASPIRATIONS,',
'    INTERVIEWEE_COMMENTS,',
'    INTERVIEWER_COMMENTS,',
'    EMPLOYEE_POINTS,',
'    MANAGEMENT_PERCENT,',
'    AREAS_OF_STRENGHTS,',
'    AREAS_OF_WEAKNESS,',
'    TRAINING_REQUIRED,',
'    MOBILITY_POTENTIAL,',
'    LAST_CHANGED_BY,',
'    LAST_CHANGED_DATE,',
'    ENTERED_BY,',
'    ENTRY_DATE,',
'    VERIFIED_BY,',
'    VERIFIED_DATE,',
'    APPROVED_BY,',
'    APPROVED_DATE,',
'    ORG_ID,   ',
'    ORG_STRUCTURE,',
'    PAYMENT_TYPE,',
'    EMPLOYMENT_CLASS_ID,',
'    MACHINE_INSERT,',
'    MACHINE_UPDATE,',
'    TRANSACTION_TYPE_ID,',
'    STATUS,',
'    position_name_hist, location_name_hist',
'from',
'    "HR_APP_MERITINCREMENT" x',
'where',
'    MERIT_CONFIG_ID = :P1495_APPRAISAL_CONFIG_1',
'    and exists(',
'        select',
'            1',
'        FROM',
'            VW_USERACCESS A',
'            join VW_SELFREPORT_TO b on a .employee_no = b.employee_no',
'        where',
'            x.org_id = a .org_id',
'            and x.employment_class_id = a .employment_class_id',
'            and upper(x.payment_type) = a .payment_type',
'            and x.report_to_hist = decode(',
'                pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID),',
'                1,',
'                b.employee_no,',
'                x.report_to_hist',
'            )',
'    )',
'union',
'SELECT',
'    ID,',
'    MERIT_CONFIG_ID,',
'    EMP_ID,  ',
'    APPRAISAL_START_PERIOD,',
'    APPRAISAL_END_PERIOD,',
'    QUESTION_ANSWERED,',
'    APPRAISER_CLASSIFICATION,',
'    SUMMARY_STATUS,',
'    MANAGEMENT_POINTS,',
'    EMPLOYEE_PERCENT,',
'    DEDUCTION_PERCENT,',
'    BONUS,',
'    REFUNDED_POINT,',
'    REVIEWER,',
'    INTERVIEWEE_ASPIRATIONS,',
'    INTERVIEWEE_COMMENTS,',
'    INTERVIEWER_COMMENTS,',
'    EMPLOYEE_POINTS,',
'    MANAGEMENT_PERCENT,',
'    AREAS_OF_STRENGHTS,',
'    AREAS_OF_WEAKNESS,',
'    TRAINING_REQUIRED,',
'    MOBILITY_POTENTIAL,',
'    LAST_CHANGED_BY,',
'    LAST_CHANGED_DATE,',
'    ENTERED_BY,',
'    ENTRY_DATE,',
'    VERIFIED_BY,',
'    VERIFIED_DATE,',
'    APPROVED_BY,',
'    APPROVED_DATE,',
'    ORG_ID,   ',
'    ORG_STRUCTURE,',
'    PAYMENT_TYPE,',
'    EMPLOYMENT_CLASS_ID,',
'    MACHINE_INSERT,',
'    MACHINE_UPDATE,',
'    TRANSACTION_TYPE_ID,',
'    STATUS,position_name_hist, location_name_hist',
'from',
'    "#OWNER#"."HR_APP_MERITINCREMENT" x',
'where',
'    MERIT_CONFIG_ID = :P1495_APPRAISAL_CONFIG_1',
'    and exists(',
'        select',
'            1',
'        FROM',
'            VW_USERACCESS A',
'        where',
'            x.org_id = a .org_id',
'            and x.employment_class_id = a .employment_class_id',
'            and upper(x.payment_type) = a .payment_type',
'            and x.emp_id = a .employee_no',
'    )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1495_APPRAISAL_CONFIG_1'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1'
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5822149009516292318)
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.::P1496_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>5706364875659978613
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199851274613039958)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199850949974039957)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199850455428039956)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199850064536039955)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199849741728039954)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199849286557039953)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199848938544039952)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_static_id=>'ORG_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199848460525039951)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199848116944039950)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employment Class Id'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199847696920039949)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199847300348039948)
,p_db_column_name=>'STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199846893839039946)
,p_db_column_name=>'APPRAISER_CLASSIFICATION'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Appraiser Classification'
,p_column_type=>'STRING'
,p_static_id=>'APPRAISER_CLASSIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199846464306039945)
,p_db_column_name=>'SUMMARY_STATUS'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Summary Status'
,p_column_type=>'STRING'
,p_static_id=>'SUMMARY_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199846076897039944)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199845681470039943)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199845273784039942)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199844948135039941)
,p_db_column_name=>'ORG_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326384236008570025)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199844520080039939)
,p_db_column_name=>'MANAGEMENT_POINTS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Management Points'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MANAGEMENT_POINTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199844099519039939)
,p_db_column_name=>'EMPLOYEE_PERCENT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Employee Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EMPLOYEE_PERCENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199843687534039937)
,p_db_column_name=>'EMPLOYEE_POINTS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Employee Points'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EMPLOYEE_POINTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199843328497039935)
,p_db_column_name=>'MANAGEMENT_PERCENT'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Management Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MANAGEMENT_PERCENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199842871926039934)
,p_db_column_name=>'MERIT_CONFIG_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Appraisal Config'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'MERIT_CONFIG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326668678240944541)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199842527720039933)
,p_db_column_name=>'EMP_ID'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3303623385970139501)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199841733685039930)
,p_db_column_name=>'APPRAISAL_START_PERIOD'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Start Period'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPRAISAL_START_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199841310865039929)
,p_db_column_name=>'APPRAISAL_END_PERIOD'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'End Period'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPRAISAL_END_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199840895130039929)
,p_db_column_name=>'QUESTION_ANSWERED'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Ans.'
,p_column_type=>'NUMBER'
,p_static_id=>'QUESTION_ANSWERED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199840535197039928)
,p_db_column_name=>'DEDUCTION_PERCENT'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Deduction Percent'
,p_column_type=>'NUMBER'
,p_static_id=>'DEDUCTION_PERCENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199840092231039927)
,p_db_column_name=>'BONUS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_static_id=>'BONUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199839667525039925)
,p_db_column_name=>'REFUNDED_POINT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Refunded Point'
,p_column_type=>'NUMBER'
,p_static_id=>'REFUNDED_POINT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199839281881039924)
,p_db_column_name=>'REVIEWER'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Reviewer'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'REVIEWER'
,p_rpt_named_lov=>wwv_flow_imp.id(3303623385970139501)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199838897745039923)
,p_db_column_name=>'INTERVIEWEE_ASPIRATIONS'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Interviewee Aspirations'
,p_column_type=>'STRING'
,p_static_id=>'INTERVIEWEE_ASPIRATIONS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199838532335039923)
,p_db_column_name=>'INTERVIEWEE_COMMENTS'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Interviewee Comments'
,p_column_type=>'STRING'
,p_static_id=>'INTERVIEWEE_COMMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199838110035039922)
,p_db_column_name=>'INTERVIEWER_COMMENTS'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Interviewer Comments'
,p_column_type=>'STRING'
,p_static_id=>'INTERVIEWER_COMMENTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199837698579039921)
,p_db_column_name=>'AREAS_OF_STRENGHTS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Areas Of Strenghts'
,p_column_type=>'STRING'
,p_static_id=>'AREAS_OF_STRENGHTS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199837311419039920)
,p_db_column_name=>'AREAS_OF_WEAKNESS'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Areas Of Weakness'
,p_column_type=>'STRING'
,p_static_id=>'AREAS_OF_WEAKNESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199836901215039920)
,p_db_column_name=>'TRAINING_REQUIRED'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Training Required'
,p_column_type=>'STRING'
,p_static_id=>'TRAINING_REQUIRED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199836527161039919)
,p_db_column_name=>'MOBILITY_POTENTIAL'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Mobility Potential'
,p_column_type=>'STRING'
,p_static_id=>'MOBILITY_POTENTIAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199836078757039919)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199835690257039918)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199834950636039916)
,p_db_column_name=>'POSITION_NAME_HIST'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Position Name Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199835280367039917)
,p_db_column_name=>'LOCATION_NAME_HIST'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Location Name Hist'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5822106618699919835)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10283958'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MERIT_CONFIG_ID:ORG_STRUCTURE:EMP_ID:APPRAISAL_START_PERIOD:APPRAISAL_END_PERIOD:QUESTION_ANSWERED:REVIEWER::POSITION_NAME_HIST:LOCATION_NAME_HIST'
,p_break_on=>'MERIT_CONFIG_ID:ORG_STRUCTURE:0:0:0'
,p_break_enabled_on=>'MERIT_CONFIG_ID:ORG_STRUCTURE:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5850930772181129773)
,p_plug_name=>'Listing of Employee Appraisals.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID, id PKID,',
'    MERIT_CONFIG_ID,',
'    EMP_ID,',
'    APPRAISAL_START_PERIOD,',
'    APPRAISAL_END_PERIOD,',
'    QUESTION_ANSWERED,',
'    APPRAISER_CLASSIFICATION,',
'    SUMMARY_STATUS,',
'    MANAGEMENT_POINTS,',
'    EMPLOYEE_PERCENT,',
'    DEDUCTION_PERCENT,',
'    BONUS,',
'    REFUNDED_POINT,',
'    REVIEWER,',
'    INTERVIEWEE_ASPIRATIONS,',
'    INTERVIEWEE_COMMENTS,',
'    INTERVIEWER_COMMENTS,',
'    EMPLOYEE_POINTS,',
'    MANAGEMENT_PERCENT,',
'    AREAS_OF_STRENGHTS,',
'    AREAS_OF_WEAKNESS,',
'    TRAINING_REQUIRED,',
'    MOBILITY_POTENTIAL,',
'    LAST_CHANGED_BY,',
'    LAST_CHANGED_DATE,',
'    ENTERED_BY,',
'    ENTRY_DATE,',
'    VERIFIED_BY,',
'    VERIFIED_DATE,',
'    APPROVED_BY,',
'    APPROVED_DATE,',
'    ORG_ID,',
'    POSITION_LOCATION_ID,',
'    ORG_STRUCTURE,',
'    PAYMENT_TYPE,',
'    EMPLOYMENT_CLASS_ID,',
'    MACHINE_INSERT,',
'    MACHINE_UPDATE,',
'    TRANSACTION_TYPE_ID,',
'    STATUS,',
'    APPRAISAL_DATE',
'from',
'    "HR_APP_MERITINCREMENT" x',
'where MERIT_CONFIG_ID = :P1495_APPRAISAL_CONFIG',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = X.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )       ',
'   AND (',
'        (',
'            exists (',
'                select',
'                    1',
'                FROM',
'                    VW_USERACCESS A                 ',
'                where',
'                    x.org_id = a .org_id',
'                    and x.employment_class_id = a .employment_class_id',
'                    and upper(x.payment_type) = a .payment_type',
'                    ',
'            )          ',
'        )',
'        and exists(',
'            select',
'                1',
'            from',
'                vw_useraccess_finegrain k',
'            where',
'                NVL(k.grade_id, nvl(x.emp_grade_id, 1)) = nvl(x.emp_grade_id, 1)',
'                and user_name = :APP_USER',
'        )',
'    )',
'    AND TRUNC(APPRAISAL_DATE) BETWEEN TRUNC(to_date(:P1495_START_DATE, ''DD-MON-YYYY'')) AND TRUNC(to_date(:P1495_END_DATE, ''DD-MON-YYYY''))',
'    AND X.ORGDTL_ID = NVL(:P1495_DEPARTMENT, X.ORGDTL_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1495_APPRAISAL_CONFIG,P1495_START_DATE,P1495_END_DATE,P1495_DEPARTMENT'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>' pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5850930859124129774)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:RP:P1496_ID,P1496_RETURN_VALUE:#ID#,1495'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'BASUDEV'
,p_internal_uid=>5735146725267816069
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199854562395039969)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199855029380039970)
,p_db_column_name=>'MERIT_CONFIG_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Appraisal Config'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326668678240944541)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199855445932039970)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326577577836849577)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199855826062039971)
,p_db_column_name=>'APPRAISAL_START_PERIOD'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Appraisal Start Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199856230171039972)
,p_db_column_name=>'APPRAISAL_END_PERIOD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Appraisal End Period'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199856624607039974)
,p_db_column_name=>'QUESTION_ANSWERED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Question Answered'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199856964036039974)
,p_db_column_name=>'APPRAISER_CLASSIFICATION'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Appraiser Classification'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199857438467039975)
,p_db_column_name=>'SUMMARY_STATUS'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Summary Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199857827645039976)
,p_db_column_name=>'MANAGEMENT_POINTS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Management Points'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199858161300039977)
,p_db_column_name=>'EMPLOYEE_PERCENT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Employee Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199858573033039978)
,p_db_column_name=>'DEDUCTION_PERCENT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Deduction Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199858977504039979)
,p_db_column_name=>'BONUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Bonus'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199859423717039980)
,p_db_column_name=>'REFUNDED_POINT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Refunded Point'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199859787272039982)
,p_db_column_name=>'REVIEWER'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Reviewer'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199860231851039983)
,p_db_column_name=>'INTERVIEWEE_ASPIRATIONS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interviewee Aspirations'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199860598900039984)
,p_db_column_name=>'INTERVIEWEE_COMMENTS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Interviewee Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199860988572039985)
,p_db_column_name=>'INTERVIEWER_COMMENTS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Interviewer Comments'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199861415944039987)
,p_db_column_name=>'EMPLOYEE_POINTS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Employee Points'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199861803155039988)
,p_db_column_name=>'MANAGEMENT_PERCENT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Management Percent'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199862212671039989)
,p_db_column_name=>'AREAS_OF_STRENGHTS'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Areas Of Strenghts'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199862615914039991)
,p_db_column_name=>'AREAS_OF_WEAKNESS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Areas Of Weakness'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199862969169039992)
,p_db_column_name=>'TRAINING_REQUIRED'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Training Required'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199863441154039994)
,p_db_column_name=>'MOBILITY_POTENTIAL'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Mobility Potential'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199863836293039995)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199864185741039996)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199864632602039997)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199865030780039998)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199865394837039999)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199865850074040000)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199866218463040001)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199866613295040002)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199866997688040003)
,p_db_column_name=>'ORG_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199867360990040004)
,p_db_column_name=>'POSITION_LOCATION_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Position Location Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199867834820040005)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199868185149040006)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199868612570040007)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Employment Class Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199868980715040008)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199869407953040009)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199869781017040010)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199870243078040011)
,p_db_column_name=>'STATUS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(144851337370160545)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199854190916039968)
,p_db_column_name=>'PKID'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1199870646133040012)
,p_db_column_name=>'APPRAISAL_DATE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Appraisal Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5850962342441161571)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10284151'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'MERIT_CONFIG_ID:ORG_STRUCTURE:APPRAISAL_DATE:EMP_ID:APPRAISAL_START_PERIOD:APPRAISAL_END_PERIOD:STATUS:'
,p_break_on=>'MERIT_CONFIG_ID:ORG_STRUCTURE'
,p_break_enabled_on=>'MERIT_CONFIG_ID:ORG_STRUCTURE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144805807155160486)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3425113398537554033)
,p_button_name=>'GEN_APPRAISALS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Employee Appraisals'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144820890224160509)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5822149398932292322)
,p_button_name=>'GEN_EMP_APPRAISALS_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Employee Appraisals'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144834917438160531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(144837481373160533)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144835729555160531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5850930772181129773)
,p_button_name=>'GEN_EMP_APPRAISALS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Employee Appraisals'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-gear'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144805407198160485)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3425113398537554033)
,p_button_name=>'RETURN_2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144820116349160509)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5822149398932292322)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144835292549160531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(144837481373160533)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:1496:P1496_RETURN_VALUE:1495'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(144820479747160509)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5822149398932292322)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1496:&SESSION.::&DEBUG.:1496::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199835691378039917)
,p_name=>'P1495_APPRAISAL_START_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3425113398537554033)
,p_prompt=>'Start Period'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(1199836018224039918)
,p_name=>'P1495_APPRAISAL_END_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3425113398537554033)
,p_prompt=>'End Period'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(1199870088630039992)
,p_name=>'P1495_APPRAISAL_CONFIG_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5822149398932292322)
,p_prompt=>'Appraisal Configuration'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select Upper(TRIM(c.merit_description)||'' - (''||TRIM(lk.value_description)||',
'case when c.supervisor=''Y'' then '' (MANAGEMENT))'' else '')'' end||'' Duration (Mths): ''||c.duration_in_mths||'' EFFECTIVE(''||to_char(c.Date_Effective,''DD-MON-YYYY''))||'')'' A,c.id',
'from HR_APP_MERITCONFIG c join HR_HCF_ORGANISATION o on c.org_id=o.id',
'join hr_hcf_lookup lk on c.employment_class_id=lk.id',
'WHERE c.ORG_ID =:APP_ORG_ID',
'AND EXISTS (SELECT 1',
'            FROM HR_APP_MERITINCREMENT mi',
'            where mi.MERIT_CONFIG_ID=c.id',
'            )         ',
'order by c.date_effective desc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1199904272749040068)
,p_name=>'P1495_DEPARTMENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5850930772181129773)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    ''Level ''|| a.unit_level || '': '' || a.unit_name||''(''||short_name||'')'' reply, a.id',
'from  hr_hcf_orgstructuredtl a join hr_hcf_orgstructurehd b on a.org_structure_id = b.id',
'join hr_hcf_organisation c on c.id = b.org_id',
'where c.id= :APP_ORG_ID',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = a.id',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )  ',
'order by',
'   c.short_name asc, a.unit_name asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_cSize=>30
,p_tag_attributes=>'style="width:85%;"'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(1199904665329040069)
,p_name=>'P1495_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5850930772181129773)
,p_item_default=>'TRUNC(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Between'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(1199905029335040070)
,p_name=>'P1495_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5850930772181129773)
,p_item_default=>'ADD_MONTHS(TRUNC(current_date), 3)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'and'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(1199905496270040070)
,p_name=>'P1495_APPRAISAL_CONFIG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5850930772181129773)
,p_prompt=>'Appraisal Configuration'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    INITCAP(TRIM(c.merit_description))|| '' :- '' || hhl.value_description || ''- Duration: ''|| c.duration_in_mths || '' month(s))'' ||'' :- Effective (''||to_char(c.Date_Effective,''DD-MON-YYYY'')||'')'' A,c.id',
'from ',
'    HR_APP_MERITCONFIG c ',
'    join HR_HCF_ORGANISATION o on c.org_id=o.id',
'    left join hr_hcf_lookup hhl on (c.appraisal_type = hhl.table_value and hhl.table_name = ''TBLAPPRAISALTYPE'' and pkg_global_fnts.fn_sharereforg(hhl.org_id) = :APP_ORG_SHR_DED)',
'WHERE ',
'    c.ORG_ID =:APP_ORG_ID',
'    -- AND EXISTS ',
'    --     (SELECT ',
'    --         1',
'    --     FROM ',
'    --         HR_APP_MERITINCREMENT mi',
'    --     where ',
'    --         mi.MERIT_CONFIG_ID=c.id',
'    --     )',
'order by ',
'    c.date_effective desc',
'',
'/* Old code',
'select Upper(TRIM(c.merit_description)||'' - (''||TRIM(lk.value_description)||',
'case when c.supervisor=''Y'' then '' (MANAGEMENT))'' else '')'' end||'' Duration (Mths): ''||c.duration_in_mths||'' EFFECTIVE(''||to_char(c.Date_Effective,''DD-MON-YYYY''))||'')'' A,c.id',
'from HR_APP_MERITCONFIG c join HR_HCF_ORGANISATION o on c.org_id=o.id',
'join hr_hcf_lookup lk on c.employment_class_id=lk.id',
'WHERE c.ORG_ID =:APP_ORG_ID',
'AND EXISTS (SELECT 1',
'            FROM HR_APP_MERITINCREMENT mi',
'            where mi.MERIT_CONFIG_ID=c.id',
'            )',
'order by c.date_effective desc*/',
'---',
'',
'',
'/*Richard''s old code',
'select case when supervisor=''YES'' then ''Mgr ''',
'else '''' end||upper(short_name)||'' ''||initcap(trim(c.value_description)||',
''' Range ''||lower_range||''--''||upper_range||'' EFFECTIVE(''||to_char(Date_Effective,''DD-MON-YYYY''))||'')''|| case when add_info is null then '''' else ''--''||add_info end A, a.id',
'from HR_APP_MERITCONFIG a join HR_HCF_ORGANISATION b on a.org_id=b.id',
'join table(pkg_global_fnts.get_lookup_value(''TBLEMPLOYMENTCLASS'')) c on a.employment_class_id=c.id',
'where b.id =:APP_ORG_ID',
'AND EXISTS (SELECT 1',
'            FROM HR_APP_MERITINCREMENT W',
'            where w.MERIT_CONFIG_ID=a.id)',
'ORDER BY Date_Effective DESC',
'*/'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(144838264653160534)
,p_validation_name=>'chk_spanning_appraisals'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_count number :=0;',
'begin',
'    select',
'        count(1)',
'    into',
'        l_count',
'    from',
'        hr_app_meritincrement ',
'    where',
'        merit_config_id = nvl(:P1495_APPRAISAL_CONFIG, :P1495_APPRAISAL_CONFIG_1)',
'        and trunc(to_date(:P1495_APPRAISAL_START_PERIOD, ''DD-MON-YYYY'')) between trunc(appraisal_start_period) and trunc(appraisal_end_period);',
'    ',
'    if l_count > 0 then',
'        return ''Employee Appraisals based on the selected appraisal configuration has already been generated.'';',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(144805807155160486)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144838986925160536)
,p_name=>'first_search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1495_APPRAISAL_CONFIG'
,p_condition_element=>'P1495_APPRAISAL_CONFIG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144839447086160536)
,p_event_id=>wwv_flow_imp.id(144838986925160536)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(144835729555160531)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144840016656160536)
,p_event_id=>wwv_flow_imp.id(144838986925160536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(144835729555160531)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144840412094160537)
,p_name=>'search_report_to'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1495_APPRAISAL_CONFIG_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144840840311160537)
,p_event_id=>wwv_flow_imp.id(144840412094160537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5822149398932292322)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144841246696160537)
,p_name=>'show_criteria_page'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144835729555160531)
,p_condition_element=>'P1495_APPRAISAL_CONFIG'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144841832158160537)
,p_event_id=>wwv_flow_imp.id(144841246696160537)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3415773079010357360)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144842242701160538)
,p_event_id=>wwv_flow_imp.id(144841246696160537)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3415773079010357360)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144842712742160538)
,p_name=>'show_criteria_page_1'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144820890224160509)
,p_condition_element=>'P1495_APPRAISAL_CONFIG_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144843232006160538)
,p_event_id=>wwv_flow_imp.id(144842712742160538)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3415773079010357360)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144843638141160538)
,p_event_id=>wwv_flow_imp.id(144842712742160538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3415773079010357360)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144844043140160538)
,p_name=>'close_popup'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(144805407198160485)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144844629778160539)
,p_event_id=>wwv_flow_imp.id(144844043140160538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3415773079010357360)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144844944578160539)
,p_name=>'show_gen_1'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1495_APPRAISAL_START_PERIOD,P1495_APPRAISAL_END_PERIOD,P1495_APPRAISAL_CONFIG,P1495_APPRAISAL_CONFIG_1'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P1495_APPRAISAL_START_PERIOD").getValue() != ''''',
'&& apex.item("P1495_APPRAISAL_END_PERIOD").getValue() != ''''',
'&& (apex.item("P1495_APPRAISAL_CONFIG").getValue() != '''' || apex.item("P1495_APPRAISAL_CONFIG_1").getValue() != '''')'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144845464557160539)
,p_event_id=>wwv_flow_imp.id(144844944578160539)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(144805807155160486)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144845994501160540)
,p_event_id=>wwv_flow_imp.id(144844944578160539)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(144805807155160486)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144846360195160540)
,p_name=>'show_gen_4'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1495_APPRAISAL_PERIOD'
,p_condition_element=>'P1495_APPRAISAL_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144846881101160540)
,p_event_id=>wwv_flow_imp.id(144846360195160540)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(144805807155160486)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144847391947160540)
,p_event_id=>wwv_flow_imp.id(144846360195160540)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(144805807155160486)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144847778937160541)
,p_name=>'dy_refresh_report'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1495_APPRAISAL_CONFIG,P1495_START_DATE,P1495_END_DATE,P1495_DEPARTMENT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144848272643160541)
,p_event_id=>wwv_flow_imp.id(144847778937160541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5850930772181129773)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(144848694698160541)
,p_name=>'dy_set_end_period'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1495_APPRAISAL_START_PERIOD'
,p_condition_element=>'P1495_APPRAISAL_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(144849183917160541)
,p_event_id=>wwv_flow_imp.id(144848694698160541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1495_APPRAISAL_END_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select add_months(to_date(:P1495_APPRAISAL_START_PERIOD,''DD-MON-YYYY''),DURATION_IN_MTHS)-1',
'FROM HR_APP_MERITCONFIG',
'WHERE ID=to_number(NVL(:P1495_APPRAISAL_CONFIG, :P1495_APPRAISAL_CONFIG_1))'))
,p_attribute_07=>'P1495_APPRAISAL_CONFIG,P1495_APPRAISAL_CONFIG_1,P1495_APPRAISAL_START_PERIOD'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(144838604354160535)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_emp_appraisals'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    pkg_appraisal.prcd_generate_emp_appraisals',
'        (',
'            in_appraisal_config_id => nvl(:P1495_APPRAISAL_CONFIG, :P1495_APPRAISAL_CONFIG_1), ',
'            in_start_period => to_date(:P1495_APPRAISAL_START_PERIOD, ''DD-MON-YYYY''),',
'            in_end_period => to_date(:P1495_APPRAISAL_END_PERIOD, ''DD-MON-YYYY'')',
'        );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'Error occurred when generating employee appraisals. Check error log for more info.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(144805807155160486)
,p_process_when=>':P1495_APPRAISAL_START_PERIOD is not null and :P1495_APPRAISAL_END_PERIOD is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_process_success_message=>'Employee Appraisals succesfully generated!'
,p_internal_uid=>29054470497846830
);
wwv_flow_imp.component_end;
end;
/
