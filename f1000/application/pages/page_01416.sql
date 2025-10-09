prompt --application/pages/page_01416
begin
--   Manifest
--     PAGE: 01416
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
 p_id=>1416
,p_name=>'rptLeaveHistory'
,p_alias=>'RPTLEAVEHISTORY'
,p_step_title=>'Listing Of Employee Leave Records'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825577203571145519)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(675773704417203933)
,p_plug_name=>'Leave Requests Disapproved or Cancelled'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>71
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID"',
', leave_weekend,',
'"EMP_ID",',
'v."FROMDATE",',
'"TODATE",',
'"ADJUSTED_TODATE",  actual_days DAYS_TAKEN,',
'(select LISTAGG(Va_year, ''; '') WITHIN GROUP (ORDER BY Va_year) from HR_LV_LEAVEHISTORY_VA w where w.Leave_Id = v.id) VA_YEAR,',
'(select nvl(sum(va_amount),0) a from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_AMOUNT,',
' (select min(verified_date) from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_VERIFIED_DATE,',
'"HOLIDAYS",',
'"LEAVE_STATUS" AFFECT_SALARY,',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE A JOIN HR_HCF_LOOKUP B ON A.LEAVE_TYPE_ID=B.ID',
'WHERE A.ID=V.EMPLVENT_ID) "EMPLVENT_ID",',
'v."REMARKS",',
'v."SHIFT_ID",',
'"LEAVE_MODE",',
'"LEAVE_DOLLAR_VALUE",',
'"EARNINGS_PERIOD_ID",',
'case when "DEFERRED_LEAVE"=0 then ''No'' else ''Yes'' end "DEFERRED_LEAVE",',
'v."ADJUSTED_FROMDATE",',
'v."APPROVED_BY",',
'v."APPROVED_DATE",',
'v."POSITION_ID",',
'v.wklocation_id,',
'v."PAYMENT_TYPE",',
'v."EMPLOYMENT_CLASS_ID",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."LAST_CHANGED_DATE",',
'v."LAST_CHANGED_BY",',
'v."VERIFIED_DATE",',
'v."VERIFIED_BY",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
'v."STATUS"',
'from "HR_LV_LEAVEHISTORY"  v ',
'join hr_rcm_employee w on w.id = v.emp_id',
'where v.org_id=:APP_ORG_ID',
'and v.FROMDATE between to_date(:P1416_START_PERIOD) and to_date(:P1416_END_PERIOD)',
'and w.orgdtl_id  = nvl(:P1416_DEPARTMENT,w.orgdtl_id)',
'and  exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A  left outer join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)',
'              and  nvl(w.report_to,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no,nvl(w.report_to,1) )			',
'              )       ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(w.emp_grade_id,1)) = nvl(w.emp_grade_id,1)',
'             and user_name=:APP_USER)    ',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = w.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )                       ',
'AND ( upper(pkg_global_fnts.status_descript(v.status))   like ''CANCEL%'' or upper(pkg_global_fnts.status_descript(v.status))   like ''DISAB%'')',
'and w.id=nvl(:P1416_EMPLOYEE,w.id)',
'and w.orgdtl_id=nvl(:P1416_DEPARTMENT,w.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1416_END_PERIOD,P1416_START_PERIOD,P1416_DEPARTMENT'
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
 p_id=>wwv_flow_imp.id(675773792163203934)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_ID,P1417_RETURN_VALUE:#ID#,1416'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'RLANGFORD'
,p_internal_uid=>32297870283449429
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675773824770203935)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675773971908203936)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(662162217514316185)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774115978203937)
,p_db_column_name=>'FROMDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774213346203938)
,p_db_column_name=>'TODATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774303725203939)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Holidays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774383810203940)
,p_db_column_name=>'AFFECT_SALARY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Affect Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774503719203941)
,p_db_column_name=>'VA_VERIFIED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Va Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774571249203942)
,p_db_column_name=>'ADJUSTED_TODATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Adjusted Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774708180203943)
,p_db_column_name=>'VA_YEAR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Va Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774815188203944)
,p_db_column_name=>'VA_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Va Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774905587203945)
,p_db_column_name=>'LEAVE_WEEKEND'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Leave Weekend'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675774999399203946)
,p_db_column_name=>'STATUS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728051576298222734)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775046358203947)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775131591203948)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775319611203949)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854141471353093625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775349526203950)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838140087894150731)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775436769203951)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775591783203952)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775697881203953)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775749616203954)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675775854345203955)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682862668363535306)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682862791917535307)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682862831479535308)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682862931408535309)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863103759535310)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863158757535311)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863264458535312)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863394042535313)
,p_db_column_name=>'REMARKS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863496512535314)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Shift'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863551979535315)
,p_db_column_name=>'LEAVE_MODE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Leave Mode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863708459535316)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863777549535317)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863860897535318)
,p_db_column_name=>'DEFERRED_LEAVE'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Deferred Leave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682863922353535319)
,p_db_column_name=>'ADJUSTED_FROMDATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Adjusted Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(682864096350535320)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Days Taken'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(682879944232540729)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'394041'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:EMP_ID:FROMDATE:TODATE:HOLIDAYS:AFFECT_SALARY:VA_VERIFIED_DATE:ADJUSTED_TODATE:VA_YEAR:VA_AMOUNT:LEAVE_WEEKEND:STATUS:APPROVED_BY:APPROVED_DATE:POSITION_ID:WKLOCATION_ID:PAYMENT_TYPE:EMPLOYMENT_CLASS_ID:ENTERED_BY:ENTRY_DATE:LAST_CHANGED_DATE:LAST'
||'_CHANGED_BY:VERIFIED_DATE:VERIFIED_BY:MACHINE_INSERT:MACHINE_UPDATE:TRANSACTION_TYPE_ID:EMPLVENT_ID:REMARKS:SHIFT_ID:LEAVE_MODE:LEAVE_DOLLAR_VALUE:EARNINGS_PERIOD_ID:DEFERRED_LEAVE:ADJUSTED_FROMDATE:DAYS_TAKEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(717451913805852468)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(811814536326773255)
,p_plug_name=>'Leave History To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>31
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID", leave_weekend,',
'"EMP_ID",',
'"FROMDATE",',
'"TODATE",',
'pkg_global_fnts.fn_contimedaily(DAYS_TAKEN, :APP_ORG_ID, V.ID ) DAYS_TAKEN,',
'(select LISTAGG(Va_year, ''; '') WITHIN GROUP (ORDER BY Va_year) from HR_LV_LEAVEHISTORY_VA w where w.Leave_Id = v.id) VA_YEAR,',
'(select nvl(sum(va_amount),0) a from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_AMOUNT,',
'"HOLIDAYS",',
'"LEAVE_STATUS" AFFECT_SALARY,',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE A JOIN HR_HCF_LOOKUP B ON A.LEAVE_TYPE_ID=B.ID',
'WHERE A.ID=V.EMPLVENT_ID) "EMPLVENT_ID",',
'v."REMARKS",',
'v."SHIFT_ID",',
'"LEAVE_MODE",',
'"LEAVE_DOLLAR_VALUE",',
'"EARNINGS_PERIOD_ID",',
'case when "DEFERRED_LEAVE"=0 then ''No'' else ''Yes'' end "DEFERRED_LEAVE",',
'v."APPROVED_BY",',
'v."APPROVED_DATE",',
'v."POSITION_ID",',
'v.wklocation_id,',
'v."PAYMENT_TYPE",',
'v."EMPLOYMENT_CLASS_ID",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."LAST_CHANGED_DATE",',
'v."LAST_CHANGED_BY",',
'v."VERIFIED_DATE",',
'v."VERIFIED_BY",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
'v."STATUS" ,',
'v."ORG_STRUCTURE" Department',
'from "HR_LV_LEAVEHISTORY"  v join hr_rcm_employee w on w.id = v.emp_id',
'where exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A LEFT OUTER join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)',
'              AND nvl(w.report_to,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no,nvl(w.report_to,1))			',
'              ) ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(w.emp_grade_id,1)) = nvl(w.emp_grade_id,1)',
'             and user_name=:APP_USER)    ',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = w.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )                  ',
'and w.org_id=:APP_ORG_ID',
'and trunc(FROMDATE) between :P1416_START_PERIOD and :P1416_END_PERIOD',
'and w.id=nvl(:P1416_EMPLOYEE,w.id)',
'and w.orgdtl_id=nvl(:P1416_DEPARTMENT,w.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1416_EMPLOYEE,P1416_DEPARTMENT'
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
 p_id=>wwv_flow_imp.id(811815137634773261)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_ID,P1417_RETURN_VALUE:#ID#,1416'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>168339215755018756
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787906022029031297)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787906352081031300)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787906770177031302)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787907179023031305)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787907620701031307)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Transaction Type'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787907971358031310)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787908393483031312)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_static_id=>'EMPLVENT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787908833587031315)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EMPLOYMENT_CLASS_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(613691427519151100)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787909168718031316)
,p_db_column_name=>'DEFERRED_LEAVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Deferred leave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787909626872031318)
,p_db_column_name=>'EMP_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269365860290377)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787909941327031321)
,p_db_column_name=>'FROMDATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FROMDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787910388601031322)
,p_db_column_name=>'TODATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'TODATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787911216804031326)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Holidays & Week Ends'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'HOLIDAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787911636866031327)
,p_db_column_name=>'REMARKS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787911993881031329)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Shift Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'SHIFT_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787912354251031331)
,p_db_column_name=>'LEAVE_MODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Leave Mode'
,p_column_type=>'STRING'
,p_static_id=>'LEAVE_MODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787912804153031332)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_static_id=>'LEAVE_DOLLAR_VALUE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787913209521031333)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Earnings Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EARNINGS_PERIOD_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787914036644031336)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787914405737031337)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPROVED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787914786452031339)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787915210048031340)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787915600179031341)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787915964700031343)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787916369110031344)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787916768742031345)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787905589910031295)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Days Taken'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787903995687031285)
,p_db_column_name=>'VA_AMOUNT'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Va Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787904376070031288)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854141471353093625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787904824150031290)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3838140087894150731)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787905161026031292)
,p_db_column_name=>'LEAVE_WEEKEND'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Leave Weekend'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787903631152031283)
,p_db_column_name=>'VA_YEAR'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Va Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787903158517031277)
,p_db_column_name=>'AFFECT_SALARY'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Affect Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(612879226523247605)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(812042973277903729)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'276065'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:EMPLVENT_ID:FROMDATE:TODATE:LEAVE_WEEKEND:HOLIDAYS:LEAVE_MODE:DEPARTMENT:POSITION_ID:EMPLOYMENT_CLASS_ID:PAYMENT_TYPE:DAYS_TAKEN:APPROVED_DATE:APPROVED_BY:'
,p_break_on=>'EMP_ID'
,p_break_enabled_on=>'EMP_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(860322829728302154)
,p_plug_name=>'Leave Requests Keyed or Sent For Approval'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>51
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID"',
', leave_weekend,',
'"EMP_ID",',
'"FROMDATE",',
'"TODATE",',
'"ADJUSTED_TODATE", actual_days DAYS_TAKEN,',
'(select LISTAGG(Va_year, ''; '') WITHIN GROUP (ORDER BY Va_year) from HR_LV_LEAVEHISTORY_VA w where w.Leave_Id = v.id) VA_YEAR,',
'(select nvl(sum(va_amount),0) a from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_AMOUNT,',
' (select min(verified_date) from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_VERIFIED_DATE,',
'"HOLIDAYS",',
'"LEAVE_STATUS" AFFECT_SALARY,',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE A JOIN HR_HCF_LOOKUP B ON A.LEAVE_TYPE_ID=B.ID',
'WHERE A.ID=V.EMPLVENT_ID) "EMPLVENT_ID",',
'v."REMARKS",',
'v."SHIFT_ID",',
'"LEAVE_MODE",',
'"LEAVE_DOLLAR_VALUE",',
'"EARNINGS_PERIOD_ID",',
'case when "DEFERRED_LEAVE"=0 then ''No'' else ''Yes'' end "DEFERRED_LEAVE",',
'v."ADJUSTED_FROMDATE",',
'v."APPROVED_BY",',
'v."APPROVED_DATE",',
'v."POSITION_ID",',
'v.wklocation_id,',
'v."PAYMENT_TYPE",',
'v."EMPLOYMENT_CLASS_ID",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."LAST_CHANGED_DATE",',
'v."LAST_CHANGED_BY",',
'v."VERIFIED_DATE",',
'v."VERIFIED_BY",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
'v."STATUS"',
'from "HR_LV_LEAVEHISTORY"  v ',
'join hr_rcm_employee w on w.id = v.emp_id',
'where v.org_id=:APP_ORG_ID',
'and extract(year from fromdate) = extract(year from to_date(:P1416_START_PERIOD))',
'and w.orgdtl_id  = nvl(:P1416_DEPARTMENT,w.orgdtl_id)',
'and  exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A  left outer join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)',
'              AND nvl(w.report_to,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no,nvl(w.report_to,1) )			',
'              ) ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(w.emp_grade_id,1)) = nvl(w.emp_grade_id,1)',
'             and user_name=:APP_USER)    ',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = w.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )                 ',
'and upper(pkg_global_fnts.status_descript(v.status))  like ''KEY%'' or upper(pkg_global_fnts.status_descript(v.status)) like ''SEN%''',
'and w.id =nvl(:P1416_EMPLOYEE,w.id)',
'and w.orgdtl_id=nvl(:P1416_DEPARTMENT,w.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1416_START_PERIOD ,P1416_END_PERIOD,P1416_DEPARTMENT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(860323044598302159)
,p_name=>'Listing of Employee Leave Records'
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
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_ID,P1417_RETURN_VALUE:#ID#,1416'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'PUR_INV'
,p_internal_uid=>216847122718547654
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787931874268031481)
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
 p_id=>wwv_flow_imp.id(795097053875232866)
,p_db_column_name=>'LEAVE_WEEKEND'
,p_display_order=>11
,p_column_identifier=>'B'
,p_column_label=>'Leave Weekend'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(795097155891232867)
,p_db_column_name=>'STATUS'
,p_display_order=>21
,p_column_identifier=>'C'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728051576298222734)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(795097244863232868)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>31
,p_column_identifier=>'D'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(795097408643232869)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>41
,p_column_identifier=>'E'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(795097494981232870)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>51
,p_column_identifier=>'F'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854141471353093625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(795097567794232871)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>61
,p_column_identifier=>'G'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838140087894150731)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(795097672067232872)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>71
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828097458250762923)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>81
,p_column_identifier=>'I'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828097546859762924)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>91
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828097703635762925)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>101
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828097752199762926)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>111
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828097848329762927)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>121
,p_column_identifier=>'M'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828097996845762928)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>131
,p_column_identifier=>'N'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098136988762929)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>141
,p_column_identifier=>'O'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098173885762930)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>151
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098250765762931)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>161
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098424012762932)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>171
,p_column_identifier=>'R'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098448616762933)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>181
,p_column_identifier=>'S'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098559331762934)
,p_db_column_name=>'REMARKS'
,p_display_order=>191
,p_column_identifier=>'T'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098667242762935)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>201
,p_column_identifier=>'U'
,p_column_label=>'Shift'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098804791762936)
,p_db_column_name=>'LEAVE_MODE'
,p_display_order=>211
,p_column_identifier=>'V'
,p_column_label=>'Leave Mode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828098897657762937)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>221
,p_column_identifier=>'W'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099029022762938)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>231
,p_column_identifier=>'X'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099072219762939)
,p_db_column_name=>'DEFERRED_LEAVE'
,p_display_order=>241
,p_column_identifier=>'Y'
,p_column_label=>'Deferred Leave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099166963762940)
,p_db_column_name=>'ADJUSTED_FROMDATE'
,p_display_order=>251
,p_column_identifier=>'Z'
,p_column_label=>'Adjusted Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099288218762941)
,p_db_column_name=>'EMP_ID'
,p_display_order=>261
,p_column_identifier=>'AA'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269365860290377)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099359510762942)
,p_db_column_name=>'FROMDATE'
,p_display_order=>271
,p_column_identifier=>'AB'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099536032762943)
,p_db_column_name=>'TODATE'
,p_display_order=>281
,p_column_identifier=>'AC'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099607604762944)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>291
,p_column_identifier=>'AD'
,p_column_label=>'Holidays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099701482762945)
,p_db_column_name=>'AFFECT_SALARY'
,p_display_order=>301
,p_column_identifier=>'AE'
,p_column_label=>'Affect Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099816674762946)
,p_db_column_name=>'VA_VERIFIED_DATE'
,p_display_order=>311
,p_column_identifier=>'AF'
,p_column_label=>'Va Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828099846757762947)
,p_db_column_name=>'ADJUSTED_TODATE'
,p_display_order=>321
,p_column_identifier=>'AG'
,p_column_label=>'Adjusted Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828100070528762949)
,p_db_column_name=>'VA_YEAR'
,p_display_order=>341
,p_column_identifier=>'AI'
,p_column_label=>'Va Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(828100194870762950)
,p_db_column_name=>'VA_AMOUNT'
,p_display_order=>351
,p_column_identifier=>'AJ'
,p_column_label=>'Va Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1395382288766070063)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>361
,p_column_identifier=>'AK'
,p_column_label=>'Days Taken'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(860326641428302426)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'276232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100
,p_report_columns=>'EMP_ID:FROMDATE:TODATE:AFFECT_SALARY:EMPLVENT_ID:STATUS:ENTRY_DATE:APPROVED_DATE:VERIFIED_DATE:'
,p_sort_column_1=>'FROMDATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'EMPLVENT_ID'
,p_chart_value_column=>'DAYS_TAKEN'
,p_chart_aggregate=>'SUM'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(682492381692671286)
,p_report_id=>wwv_flow_imp.id(860326641428302426)
,p_condition_type=>'HIGHLIGHT'
,p_allow_delete=>'Y'
,p_column_name=>'VA_YEAR'
,p_operator=>'is not null'
,p_condition_sql=>' (case when ("VA_YEAR" is not null) then #APXWS_HL_ID# end) '
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
,p_highlight_sequence=>10
,p_row_bg_color=>'#FFF5CE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(868441156530554646)
,p_plug_name=>'Listing of Employee Leave Track'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>81
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' x."ID",entitlement, leave_earn,',
' lv_track_effective_date start_Date,',
' x.cr_adjustments,',
' x.dr_adjustments,',
' x.end_date,',
' x."EMP_ID",',
' case when fn_get_leave_format(:APP_ORG_ID) =''TIME'' and LEAVE_TYPE=''Personal Days'' then  pkg_global_fnts.fn_contimedailyoneParam(x.BROUGHT_FWD) else  to_char(BROUGHT_FWD) end BROUGHT_FWD,',
' case when fn_get_leave_format(:APP_ORG_ID) =''TIME'' and LEAVE_TYPE=''Personal Days'' then  pkg_global_fnts.fn_contimedailyoneParam(x.USED) else  to_char(USED) end  USED,',
' case when fn_get_leave_format(:APP_ORG_ID) =''TIME'' and LEAVE_TYPE=''Personal Days'' then  pkg_global_fnts.fn_contimedailyoneParam(x.PENDING) else  to_char(PENDING) end  PENDING,',
' x."COMPANY_YEAR",',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE a join hr_hcf_lookup b on a.leave_type_id=b.id',
'WHERE A.id=X.EMPLVENT_ID',
') "LEAVE_TYPE_ID",',
' x."LESS_DAYS",',
'x."MACHINE_INSERT",',
' x."MACHINE_UPDATE",',
' x."ENTERED_BY",',
' x."ENTRY_DATE",',
' x."LAST_CHANGED_BY",',
' x."LAST_CHANGED_DATE"',
'from HR_LV_LEAVETRACK X join hr_rcm_employee v on x.emp_id=v.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=upper(a.payment_type)',
'             )',
'and org_id=:APP_ORG_ID',
'and x.company_year = extract(year from to_date(:P1416_START_PERIOD))',
'and v.orgdtl_id  = nvl(:P1416_DEPARTMENT,v.orgdtl_id)',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(v.emp_grade_id,1)) = nvl(v.emp_grade_id,1)',
'             and user_name=:APP_USER)    ',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id=v.ORGDTL_ID',
'          and v.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, v.ORGDTL_ID, w.org_structure_id)         ',
'          )  ',
'and  exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A LEFT OUTER join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where V.org_id = a.org_id',
'              and V.employment_class_id = a.employment_class_id',
'              and upper(V.payment_type) =  upper(a.payment_type)',
'              and nvl(V.report_to,1)= decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, nvl(v.report_to,1))			 ',
'              )    ',
'and v.id=nvl(:P1416_EMPLOYEE,v.id)  ',
'and v.orgdtl_id=nvl(:P1416_DEPARTMENT,v.orgdtl_id)     ',
'order by COMPANY_YEAR desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1416_START_PERIOD,P1416_END_PERIOD,P1416_DEPARTMENT'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(868441256482554646)
,p_name=>'Listing of Employee Leave Tracking'
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
,p_internal_uid=>224965334602800141
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787945458123031581)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787945896959031585)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787946256850031586)
,p_db_column_name=>'COMPANY_YEAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_YEAR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787946731318031587)
,p_db_column_name=>'LESS_DAYS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Less Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LESS_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787947052358031589)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'MACHINE_INSERT'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787947488375031590)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'MACHINE_UPDATE'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787947928297031590)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'ENTERED_BY'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787948269388031591)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'ENTRY_DATE'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787948704251031592)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed by'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787949047016031593)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787949478262031594)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787944332770031569)
,p_db_column_name=>'BROUGHT_FWD'
,p_display_order=>25
,p_column_identifier=>'P'
,p_column_label=>'Brought Fwd'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787944672257031573)
,p_db_column_name=>'USED'
,p_display_order=>35
,p_column_identifier=>'Q'
,p_column_label=>'Used'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787945115767031577)
,p_db_column_name=>'PENDING'
,p_display_order=>45
,p_column_identifier=>'R'
,p_column_label=>'Pending'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787943516290031561)
,p_db_column_name=>'ENTITLEMENT'
,p_display_order=>55
,p_column_identifier=>'S'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(787943920155031565)
,p_db_column_name=>'LEAVE_EARN'
,p_display_order=>65
,p_column_identifier=>'T'
,p_column_label=>'Leave Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875038198090311)
,p_db_column_name=>'START_DATE'
,p_display_order=>75
,p_column_identifier=>'U'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875217948090312)
,p_db_column_name=>'END_DATE'
,p_display_order=>85
,p_column_identifier=>'V'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671876094034090321)
,p_db_column_name=>'CR_ADJUSTMENTS'
,p_display_order=>95
,p_column_identifier=>'W'
,p_column_label=>'Cr Adjustments'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671876214298090322)
,p_db_column_name=>'DR_ADJUSTMENTS'
,p_display_order=>105
,p_column_identifier=>'X'
,p_column_label=>'Dr Adjustments'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(868442957223554878)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'276392'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EMP_ID:LEAVE_TYPE_ID:START_DATE:END_DATE:ENTITLEMENT:BROUGHT_FWD:LEAVE_EARN:USED:PENDING:DR_ADJUSTMENTS:CR_ADJUSTMENTS:'
,p_sort_column_1=>'COMPANY_YEAR'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'0'
,p_sort_direction_2=>'ASC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EMP_ID:LEAVE_TYPE_ID:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:LEAVE_TYPE_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1590545661328573170)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>21
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1590549508959573558)
,p_plug_name=>'Leave Requests Verified '
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>61
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID"',
', leave_weekend,',
'"EMP_ID",',
'v."FROMDATE",',
'"TODATE",',
'"ADJUSTED_TODATE",  actual_days DAYS_TAKEN,',
'(select LISTAGG(Va_year, ''; '') WITHIN GROUP (ORDER BY Va_year) from HR_LV_LEAVEHISTORY_VA w where w.Leave_Id = v.id) VA_YEAR,',
'(select nvl(sum(va_amount),0) a from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_AMOUNT,',
' (select min(verified_date) from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_VERIFIED_DATE,',
'"HOLIDAYS",',
'"LEAVE_STATUS" AFFECT_SALARY,',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE A JOIN HR_HCF_LOOKUP B ON A.LEAVE_TYPE_ID=B.ID',
'WHERE A.ID=V.EMPLVENT_ID) "EMPLVENT_ID",',
'v."REMARKS",',
'v."SHIFT_ID",',
'"LEAVE_MODE",',
'"LEAVE_DOLLAR_VALUE",',
'"EARNINGS_PERIOD_ID",',
'case when "DEFERRED_LEAVE"=0 then ''No'' else ''Yes'' end "DEFERRED_LEAVE",',
'v."ADJUSTED_FROMDATE",',
'v."APPROVED_BY",',
'v."APPROVED_DATE",',
'v."POSITION_ID",',
'v.wklocation_id,',
'v."PAYMENT_TYPE",',
'v."EMPLOYMENT_CLASS_ID",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."LAST_CHANGED_DATE",',
'v."LAST_CHANGED_BY",',
'v."VERIFIED_DATE",',
'v."VERIFIED_BY",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
'v."STATUS"',
'from "HR_LV_LEAVEHISTORY"  v ',
'join hr_rcm_employee w on w.id = v.emp_id',
'where v.org_id=:APP_ORG_ID',
'and v.FROMDATE between to_date(:P1416_START_PERIOD) and to_date(:P1416_END_PERIOD)',
'and w.orgdtl_id  = nvl(:P1416_DEPARTMENT,w.orgdtl_id)',
'and  exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A  left outer join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)',
'              and  nvl(w.report_to,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no,nvl(w.report_to,1) )			',
'              )       ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(w.emp_grade_id,1)) = nvl(w.emp_grade_id,1)',
'             and user_name=:APP_USER)    ',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = w.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )                       ',
'AND upper(pkg_global_fnts.status_descript(v.status))   like ''VERI%''',
'and w.id=nvl(:P1416_EMPLOYEE,w.id)',
'and w.orgdtl_id=nvl(:P1416_DEPARTMENT,w.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1416_END_PERIOD,P1416_START_PERIOD,P1416_DEPARTMENT'
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
 p_id=>wwv_flow_imp.id(1590549328730573557)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_ID,P1417_RETURN_VALUE:#ID#,1416'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'JAY.KHAN'
,p_internal_uid=>947073406850819052
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549300127573556)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549174768573555)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269365860290377)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549037211573554)
,p_db_column_name=>'FROMDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549023909573553)
,p_db_column_name=>'TODATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548879743573552)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Holidays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548745785573551)
,p_db_column_name=>'AFFECT_SALARY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Affect Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548697425573550)
,p_db_column_name=>'VA_VERIFIED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Va Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548554110573549)
,p_db_column_name=>'ADJUSTED_TODATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Adjusted Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548425321573547)
,p_db_column_name=>'VA_YEAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Va Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548245292573546)
,p_db_column_name=>'VA_AMOUNT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Va Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548146779573545)
,p_db_column_name=>'LEAVE_WEEKEND'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Leave Weekend'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590548122732573544)
,p_db_column_name=>'STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728051576298222734)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547994009573543)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547902684573542)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547732805573541)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854141471353093625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547637101573540)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838140087894150731)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547621876573539)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547449768573538)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547359634573537)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547322886573536)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547181434573535)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590547049181573534)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546989222573533)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546849899573532)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546760078573531)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546651159573530)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546589413573529)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546510248573528)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546372893573527)
,p_db_column_name=>'REMARKS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546310621573526)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Shift'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546224170573525)
,p_db_column_name=>'LEAVE_MODE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Leave Mode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590546122638573524)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590545948583573523)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590545919497573172)
,p_db_column_name=>'DEFERRED_LEAVE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Deferred Leave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590545802844573171)
,p_db_column_name=>'ADJUSTED_FROMDATE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Adjusted Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1395382516262070065)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Days Taken'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1590419477829540594)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5776687'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:FROMDATE:TODATE:DAYS_TAKEN:STATUS:APPROVED_BY:APPROVED_DATE:PAYMENT_TYPE:ENTRY_DATE:EMPLVENT_ID:VERIFIED_DATE:VERIFIED_BY:'
,p_sum_columns_on_break=>'DAYS_TAKEN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1591685624477642646)
,p_plug_name=>'Leave Requests Approved'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>52
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v."ID"',
', leave_weekend,',
'"EMP_ID",',
'"FROMDATE",',
'"TODATE",',
'"ADJUSTED_TODATE", actual_days DAYS_TAKEN,',
'(select LISTAGG(Va_year, ''; '') WITHIN GROUP (ORDER BY Va_year) from HR_LV_LEAVEHISTORY_VA w where w.Leave_Id = v.id) VA_YEAR,',
'(select nvl(sum(va_amount),0) a from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_AMOUNT,',
' (select min(verified_date) from HR_LV_LEAVEHISTORY_VA k where k.Leave_Id = v.id) VA_VERIFIED_DATE,',
'"HOLIDAYS",',
'"LEAVE_STATUS" AFFECT_SALARY,',
'(SELECT b.value_description',
'FROM HR_RCM_EMPLEAVEENTITLE A JOIN HR_HCF_LOOKUP B ON A.LEAVE_TYPE_ID=B.ID',
'WHERE A.ID=V.EMPLVENT_ID) "EMPLVENT_ID",',
'v."REMARKS",',
'v."SHIFT_ID",',
'"LEAVE_MODE",',
'"LEAVE_DOLLAR_VALUE",',
'"EARNINGS_PERIOD_ID",',
'case when "DEFERRED_LEAVE"=0 then ''No'' else ''Yes'' end "DEFERRED_LEAVE",',
'v."ADJUSTED_FROMDATE",',
'v."APPROVED_BY",',
'v."APPROVED_DATE",',
'v."POSITION_ID",',
'v.wklocation_id,',
'v."PAYMENT_TYPE",',
'v."EMPLOYMENT_CLASS_ID",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'v."LAST_CHANGED_DATE",',
'v."LAST_CHANGED_BY",',
'v."VERIFIED_DATE",',
'v."VERIFIED_BY",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."TRANSACTION_TYPE_ID",',
'v."STATUS"',
'from "HR_LV_LEAVEHISTORY"  v ',
'join hr_rcm_employee w on w.id = v.emp_id',
'where v.org_id=:APP_ORG_ID',
'and trunc(FROMDATE) between :P1416_START_PERIOD and :P1416_END_PERIOD',
'and w.orgdtl_id  = nvl(:P1416_DEPARTMENT,w.orgdtl_id)',
'and exists ( ',
'             select 1',
'              FROM VW_USERACCESS A  left outer join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where v.org_id = a.org_id',
'              and v.employment_class_id = a.employment_class_id',
'              and upper(v.payment_type) =  upper(a.payment_type)',
'              and nvl(w.report_to,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, nvl(w.report_to,1))        ',
'              )',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(w.emp_grade_id,1)) = nvl(w.emp_grade_id,1)',
'             and user_name=:APP_USER)    ',
'and exists(select 1',
'           from HR_HCF_ORGSTRUCTUREDTL z left outer join VW_USERORGSTRUCT y on ( z.id=y.ORG_STRUCTURE_ID  and nvl(y.user_name,''1'') = decode(y.user_name, null, ''1'', :APP_USER))',
'           where  z.id = w.ORGDTL_ID',
'           and z.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,  z.id, y.org_structure_id)         ',
'          )           ',
'and  upper(pkg_global_fnts.status_descript(v.status))   like ''APPR%''',
'and w.id=nvl(:P1416_EMPLOYEE,w.id)',
'and w.orgdtl_id=nvl(:P1416_DEPARTMENT,w.orgdtl_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1416_START_PERIOD ,P1416_END_PERIOD,P1416_DEPARTMENT'
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
 p_id=>wwv_flow_imp.id(1591685453630642645)
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
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_ID,P1417_RETURN_VALUE:#ID#,1416'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'JAY.KHAN'
,p_internal_uid=>948209531750888140
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591685386420642644)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591685234099642643)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269365860290377)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591685133581642642)
,p_db_column_name=>'FROMDATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591685110174642641)
,p_db_column_name=>'TODATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684934336642640)
,p_db_column_name=>'HOLIDAYS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Holidays'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684916291642639)
,p_db_column_name=>'AFFECT_SALARY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Affect Salary'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684735834642638)
,p_db_column_name=>'VA_VERIFIED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Va Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684646650642637)
,p_db_column_name=>'ADJUSTED_TODATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Adjusted Todate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684527175642635)
,p_db_column_name=>'VA_YEAR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Va Year'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684348985642634)
,p_db_column_name=>'VA_AMOUNT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Va Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684293976642633)
,p_db_column_name=>'LEAVE_WEEKEND'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Leave Weekend'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684151132642632)
,p_db_column_name=>'STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728051576298222734)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591684092840642631)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683990983642630)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683886998642629)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683826178642628)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683677990642627)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683585310642626)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683462768642625)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683344917642624)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1591683248539642623)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550844714573572)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550825756573571)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550666287573570)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550552041573569)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550470556573568)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550420369573567)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550281935573566)
,p_db_column_name=>'EMPLVENT_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550183221573565)
,p_db_column_name=>'REMARKS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590550090069573564)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Shift'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549983702573563)
,p_db_column_name=>'LEAVE_MODE'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Leave Mode'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549840717573562)
,p_db_column_name=>'LEAVE_DOLLAR_VALUE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Leave Dollar Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549800282573561)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549632762573560)
,p_db_column_name=>'DEFERRED_LEAVE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Deferred Leave'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1590549565864573559)
,p_db_column_name=>'ADJUSTED_FROMDATE'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Adjusted Fromdate'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1395382414263070064)
,p_db_column_name=>'DAYS_TAKEN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Days Taken'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1590418876593540538)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'5776693'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:FROMDATE:TODATE:EMPLVENT_ID:AFFECT_SALARY:HOLIDAYS:DAYS_TAKEN:STATUS:ENTERED_BY:APPROVED_BY:VERIFIED_BY:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1591685660848642647)
,p_plug_name=>'Filter'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Form--slimPadding:t-Form--stretchInputs:t-Form--labelsAbove:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(662153218443316178)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(717451913805852468)
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
 p_id=>wwv_flow_imp.id(662153590279316178)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(717451913805852468)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_RETURN_VALUE:1416'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(612879148844247604)
,p_name=>'P1416_EMPLOYEE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1591685660848642647)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a,x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'and exists(select 1',
'        from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'        where  t.id=x.ORGDTL_ID',
'        and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and exists ( ',
'			  select 1',
'              FROM VW_USERACCESS A LEFT OUTER join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where x.org_id = a.org_id',
'              and x.employment_class_id = a.employment_class_id',
'              and upper(x.payment_type) =  upper(a.payment_type)',
'              AND nvl(x.report_to,1) = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no,nvl(x.report_to,1))			',
'              ) ',
'and org_id=:APP_ORG_ID ',
'and ORGDTL_ID= nvl(:P1416_DEPARTMENT,  ORGDTL_ID)    ',
'order by 1',
'',
'',
''))
,p_lov_cascade_parent_items=>'P1416_DEPARTMENT'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(787942091020031557)
,p_name=>'P1416_START_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1591685660848642647)
,p_item_default=>'add_months(current_date,-3)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Leave Start From'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is the default start date, however can change to any date in the pass.'
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
 p_id=>wwv_flow_imp.id(787942920842031561)
,p_name=>'P1416_END_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1591685660848642647)
,p_item_default=>'LAST_DAY(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Leave Start To'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'This is the default end date, however can change to any date in the future.'
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
 p_id=>wwv_flow_imp.id(1725858442090804866)
,p_name=>'P1416_DEPARTMENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1591685660848642647)
,p_prompt=>'Department'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_char(level)||'': ''||UNIT_NAME||''....N:''||to_char(nvl(Number_of_positions,0))||'' F:''||to_char(nvl(Filled_amount,0)) as title,',
'       wu.ID',
'from',
'(',
'select',
'od.id',
',od.unit_name',
',od.unit_parent',
',od.org_structure_id',
',count(p.id) as Number_of_positions',
',sum(nvl(p.no_filled,0)) as Filled_amount',
'from (select * from hr_hcf_orgstructuredtl',
'      where trunc(start_date) <= trunc(current_date)',
'      and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)',
'     ) od',
'left join hr_hcf_position p on od.id = p.orgdtl_id',
'group by od.id, od.unit_name,od.unit_parent,od.org_structure_id',
') wu',
'JOIN hr_hcf_orgstructurehd oh on oh.id = wu.org_structure_id',
'where oh.org_id = :APP_ORG_ID',
'/*',
'and exists ( ',
'             select 1',
'              FROM VW_USERACCESS A  left outer join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where w.org_id = a.org_id',
'              and w.employment_class_id = a.employment_class_id',
'              and upper(w.payment_type) =  upper(a.payment_type)',
'              and w.report_to = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, w.id)        ',
'              )',
'              */',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = wu.id',
'          and wu.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, wu.id, w.org_structure_id)         ',
'          ) ',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(662154791013316180)
,p_name=>'show_data_start'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1416_START_PERIOD,P1416_DEPARTMENT,P1416_EMPLOYEE'
,p_condition_element=>'P1416_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662155265300316180)
,p_event_id=>wwv_flow_imp.id(662154791013316180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(860322829728302154)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(662155642311316180)
,p_name=>'show_data_end_date'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1416_END_PERIOD,P1416_DEPARTMENT,P1416_EMPLOYEE'
,p_condition_element=>'P1416_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662156199629316181)
,p_event_id=>wwv_flow_imp.id(662155642311316180)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(860322829728302154)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(662156554996316181)
,p_name=>'refresh_from_start_report_to'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1416_START_PERIOD_1'
,p_condition_element=>'P1416_END_PERIOD_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662157052336316181)
,p_event_id=>wwv_flow_imp.id(662156554996316181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(811814536326773255)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(662157488177316181)
,p_name=>'refresh_from_end_report_to'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1416_END_PERIOD_1'
,p_condition_element=>'P1416_START_PERIOD_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662157990819316182)
,p_event_id=>wwv_flow_imp.id(662157488177316181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(811814536326773255)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(662158345516316182)
,p_name=>'refresh_regions'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1416_DEPARTMENT,P1416_EMPLOYEE,P1416_START_PERIOD'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662158822936316182)
,p_event_id=>wwv_flow_imp.id(662158345516316182)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(860322829728302154)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662159351926316182)
,p_event_id=>wwv_flow_imp.id(662158345516316182)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1591685624477642646)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662159841232316183)
,p_event_id=>wwv_flow_imp.id(662158345516316182)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1590549508959573558)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662160358580316183)
,p_event_id=>wwv_flow_imp.id(662158345516316182)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(811814536326773255)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(662160834541316183)
,p_event_id=>wwv_flow_imp.id(662158345516316182)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(868441156530554646)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
