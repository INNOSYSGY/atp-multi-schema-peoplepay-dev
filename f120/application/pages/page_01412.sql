prompt --application/pages/page_01412
begin
--   Manifest
--     PAGE: 01412
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
 p_id=>1412
,p_name=>'rptEmpMovement'
,p_step_title=>'Listing of Change Positions'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825717831892571292)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798571118325496754)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3738688549990204853)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3810485952033454023)
,p_plug_name=>'Listing of Change Positions Reporting &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_MOV_EMPMOVEMENT.ID as ID, ind_id, id PK_ID, compute_gross,',
'    HR_MOV_EMPMOVEMENT.EMP_ID as EMP_ID,',
'    HR_MOV_EMPMOVEMENT.CHANGE_TYPE as CHANGE_TYPE,',
'     HR_MOV_EMPMOVEMENT.FROM_DATE as FROM_DATE,',
'    HR_MOV_EMPMOVEMENT.TO_DATE as TO_DATE,',
'    HR_MOV_EMPMOVEMENT.EFFECTIVE_DATE as EFFECTIVE_DATE,Personal_Rate,',
'    case when HR_MOV_EMPMOVEMENT.EXECUTED=1 then ''Yes'' else ''No'' end as EXECUTED, HR_MOV_EMPMOVEMENT.org_structure,',
'    HR_MOV_EMPMOVEMENT.EMPLOYMENT_CLASS_ID as EMPLOYMENT_CLASS,job_id, job_class,',
'    HR_MOV_EMPMOVEMENT.from_date as DATE_EMPLOYED,',
'    HR_MOV_EMPMOVEMENT.APPROVED_BY as APPROVED_BY,',
'    HR_MOV_EMPMOVEMENT.APPROVED_DATE as APPROVED_DATE,',
'    HR_MOV_EMPMOVEMENT.WKLOCATION_ID as WKLOCATION_ID,',
' HR_MOV_EMPMOVEMENT.LAST_CHANGED_BY,',
' HR_MOV_EMPMOVEMENT.LAST_CHANGED_DATE,',
' HR_MOV_EMPMOVEMENT.POSITION_ID,',
' HR_MOV_EMPMOVEMENT.ORG_ID,',
' HR_MOV_EMPMOVEMENT.ENTERED_BY,',
' HR_MOV_EMPMOVEMENT.ENTRY_DATE,',
' HR_MOV_EMPMOVEMENT.VERIFIED_BY,',
' HR_MOV_EMPMOVEMENT.VERIFIED_DATE,',
' HR_MOV_EMPMOVEMENT.ACTING_FOR,PAYMENT_TYPE, old_PAYMENT_TYPE,',
' case  HR_MOV_EMPMOVEMENT.transfer when 0 then ''NO'' when 1 then ''YES'' else null end TRANSFER,',
' report_to_admin, REPORT_TO_FUNC,',
'  OLD_ORGANISATION, OLD_ORG_STRUCTURE, OLD_FROM_DATE, OLD_TO_DATE, OLD_POSITION_NAME, OLD_WKLOCATION, OLD_JOB_NAME, OLD_JOB_CLASS, OLD_EMPLOYMENT_CLASS, OLD_GRADE, OLD_GRADE_POINT, OLD_PERSONAL_RATE, OLD_HOURLY_RATE, OLD_REPORT_TO_ADMIN, OLD_REPORT_T'
||'O_FUNC, OLD_PAYROLL_EFFECTIVE, OLD_TRANSACTION_TYPE_ID, OLD_STATUS, OLD_APPROVED_BY, OLD_APPROVED_DATE',
' FROM HR_MOV_EMPMOVEMENT_NEW HR_MOV_EMPMOVEMENT  ',
'where upper(HR_MOV_EMPMOVEMENT.CHANGE_TYPE) != ''NEW EMPLOYMENT'' ',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where HR_MOV_EMPMOVEMENT.org_id=a.org_id',
'              and HR_MOV_EMPMOVEMENT.employment_class_id=a.employment_class_id',
'              AND UPPER(HR_MOV_EMPMOVEMENT.PAYMENT_TYPE)=A.PAYMENT_TYPE',
'              and nvl(HR_MOV_EMPMOVEMENT.emp_id,1) = case when pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=1 then a.employee_no',
'                else nvl(HR_MOV_EMPMOVEMENT.emp_id,1) end',
'              union',
'              select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where HR_MOV_EMPMOVEMENT.org_id = a.org_id',
'              and HR_MOV_EMPMOVEMENT.employment_class_id = a.employment_class_id',
'              and upper(HR_MOV_EMPMOVEMENT.payment_type) =  upper(a.payment_type)',
'              and HR_MOV_EMPMOVEMENT.report_to_admin = decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID), 1, b.employee_no, HR_MOV_EMPMOVEMENT.id)',
'              )              '))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(3810485649821454020)
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>64178206514719115
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810485494536454019)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810485328611454017)
,p_db_column_name=>'ORG_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3844632955186707379)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810485204669454016)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810485061460454015)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484957901454014)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484892169454013)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484777522454012)
,p_db_column_name=>'ACTING_FOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Acting For'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ACTING_FOR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484734732454011)
,p_db_column_name=>'EXECUTED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484585114454010)
,p_db_column_name=>'EMP_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831455935501007936)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484494310454009)
,p_db_column_name=>'CHANGE_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Change Type'
,p_column_type=>'STRING'
,p_static_id=>'CHANGE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484275949454007)
,p_db_column_name=>'FROM_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'FROM_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484212163454006)
,p_db_column_name=>'TO_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'TO_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810484137104454005)
,p_db_column_name=>'EFFECTIVE_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Effective Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EFFECTIVE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810483733903454001)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810483651463454000)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810483296824453997)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810483175749453996)
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
 p_id=>wwv_flow_imp.id(3810482586050453990)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810482519193453989)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762868745137635228)
,p_db_column_name=>'IND_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854371014107666782)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762869097346635231)
,p_db_column_name=>'PK_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Pk Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335422594904269)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335498869904270)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335657720904271)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335777251904272)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335871421904273)
,p_db_column_name=>'JOB_ID'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Job Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335984815904274)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336031239904275)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336175264904276)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Position Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336220241904277)
,p_db_column_name=>'OLD_PAYMENT_TYPE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Old Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336343386904278)
,p_db_column_name=>'TRANSFER'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Transfer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336457221904279)
,p_db_column_name=>'REPORT_TO_ADMIN'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336566604904280)
,p_db_column_name=>'REPORT_TO_FUNC'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336673564904281)
,p_db_column_name=>'OLD_ORGANISATION'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Old Organisation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336711847904282)
,p_db_column_name=>'OLD_ORG_STRUCTURE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Old Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336794823904283)
,p_db_column_name=>'OLD_FROM_DATE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Old From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712336953607904284)
,p_db_column_name=>'OLD_TO_DATE'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Old To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337048823904285)
,p_db_column_name=>'OLD_POSITION_NAME'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Old Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337110504904286)
,p_db_column_name=>'OLD_WKLOCATION'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Old Wklocation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337224856904287)
,p_db_column_name=>'OLD_JOB_NAME'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Old Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337358151904288)
,p_db_column_name=>'OLD_JOB_CLASS'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Old Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337401334904289)
,p_db_column_name=>'OLD_EMPLOYMENT_CLASS'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Old Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337503168904290)
,p_db_column_name=>'OLD_GRADE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Old Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337674821904291)
,p_db_column_name=>'OLD_GRADE_POINT'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Old Grade Point'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337703120904292)
,p_db_column_name=>'OLD_PERSONAL_RATE'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Old Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337877462904293)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712337927915904294)
,p_db_column_name=>'OLD_REPORT_TO_ADMIN'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Old Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712338071310904295)
,p_db_column_name=>'OLD_REPORT_TO_FUNC'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Old Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712338130500904296)
,p_db_column_name=>'OLD_PAYROLL_EFFECTIVE'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Old Payroll Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712338220212904297)
,p_db_column_name=>'OLD_TRANSACTION_TYPE_ID'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Old Transaction Type Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712338338579904298)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Old Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712338434126904299)
,p_db_column_name=>'OLD_APPROVED_BY'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Old Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712338503112904300)
,p_db_column_name=>'OLD_APPROVED_DATE'
,p_display_order=>670
,p_column_identifier=>'BO'
,p_column_label=>'Old Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3810453596628909876)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'642103'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_ID:EMP_ID:CHANGE_TYPE:FROM_DATE:TO_DATE:EFFECTIVE_DATE:PAYMENT_TYPE:EXECUTED::IND_ID:PK_ID:COMPUTE_GROSS:PERSONAL_RATE:ORG_STRUCTURE:JOB_ID:JOB_CLASS:WKLOCATION_ID:POSITION_ID:OLD_PAYMENT_TYPE:TRANSFER:REPORT_TO_ADMIN:REPORT_TO_FUNC:OLD_ORGANISAT'
||'ION:OLD_ORG_STRUCTURE:OLD_FROM_DATE:OLD_TO_DATE:OLD_POSITION_NAME:OLD_WKLOCATION:OLD_JOB_NAME:OLD_JOB_CLASS:OLD_EMPLOYMENT_CLASS:OLD_GRADE:OLD_GRADE_POINT:OLD_PERSONAL_RATE:OLD_HOURLY_RATE:OLD_REPORT_TO_ADMIN:OLD_REPORT_TO_FUNC:OLD_PAYROLL_EFFECTIVE:'
||'OLD_TRANSACTION_TYPE_ID:OLD_STATUS:OLD_APPROVED_BY:OLD_APPROVED_DATE'
,p_break_on=>'ORG_ID:EMP_ID:CHANGE_TYPE:0:0:0'
,p_break_enabled_on=>'ORG_ID:EMP_ID:CHANGE_TYPE:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3839200933071201254)
,p_plug_name=>'Listing of Change Positions'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EM.ID as ID, ind_id, id PK_ID, compute_gross,',
'    EM.EMP_ID as EMP_ID,',
'    EM.CHANGE_TYPE as CHANGE_TYPE,',
'     EM.FROM_DATE as FROM_DATE,',
'    EM.TO_DATE as TO_DATE,',
'    EM.EFFECTIVE_DATE as EFFECTIVE_DATE,Personal_Rate,',
'    case when EM.EXECUTED=1 then ''Yes'' else ''No'' end as EXECUTED, EM.org_structure,',
'    EM.EMPLOYMENT_CLASS_ID as EMPLOYMENT_CLASS,job_id, job_class,',
'    EM.from_date as DATE_EMPLOYED,',
'    EM.APPROVED_BY as APPROVED_BY,',
'    EM.APPROVED_DATE as APPROVED_DATE,',
'    EM.WKLOCATION_ID as WKLOCATION_ID,',
' EM.LAST_CHANGED_BY,',
' EM.LAST_CHANGED_DATE,',
' EM.POSITION_ID,',
' EM.ORG_ID,',
' EM.ENTERED_BY,',
' EM.ENTRY_DATE,',
' EM.VERIFIED_BY,',
' EM.VERIFIED_DATE,',
' EM.ACTING_FOR,PAYMENT_TYPE, old_PAYMENT_TYPE, status,change_type_sub,',
' case  EM.transfer when 0 then ''NO'' when 1 then ''YES'' else null end TRANSFER,',
' report_to_admin, REPORT_TO_FUNC,',
'  OLD_ORGANISATION, OLD_ORG_STRUCTURE, OLD_FROM_DATE, OLD_TO_DATE, OLD_POSITION_NAME, OLD_WKLOCATION, OLD_JOB_NAME, OLD_JOB_CLASS, OLD_EMPLOYMENT_CLASS, OLD_GRADE, OLD_GRADE_POINT, OLD_PERSONAL_RATE, OLD_HOURLY_RATE, OLD_REPORT_TO_ADMIN, OLD_REPORT_T'
||'O_FUNC, OLD_PAYROLL_EFFECTIVE, OLD_TRANSACTION_TYPE_ID, OLD_STATUS, OLD_APPROVED_BY, OLD_APPROVED_DATE',
' FROM HR_MOV_EMPMOVEMENT_NEW EM  ',
' join',
'         (',
'         select UPPER(tblmv.VALUE_DESCRIPTION) M_DESCRIPTION, tblmv.ID M_ID',
'            from ',
'               hr_hcf_lookup tblmv',
'               join (select * from hr_hcf_lookup ',
'                      where TABLE_NAME = UPPER(''TBLMOVEMENTCLASS'') ',
'                      and table_value in (''EMPMOVE'')',
'                     ) tblmvclass on tblmv.lookup_id = tblmvclass.id',
'                where  tblmv.TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'         ) tblmvclasslink on EM.change_type_id = tblmvclasslink.m_id',
'where FROM_DATE BETWEEN :P1412_START_DATE AND :P1412_END_DATE',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where EM.org_id=a.org_id',
'              and EM.employment_class_id=a.employment_class_id',
'              AND UPPER(EM.PAYMENT_TYPE)=A.PAYMENT_TYPE           ',
'            )',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(EM.emp_grade_id,1)) = nvl(EM.emp_grade_id,1)',
'             and user_name=:APP_USER)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1412_START_DATE,P1412_END_DATE'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>' pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID) = 0'
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
 p_id=>wwv_flow_imp.id(3839201028098201255)
,p_max_row_count=>'1000000'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BASUDEV'
,p_internal_uid=>41191132879106522
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201168592201256)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.::P51_ID,P51_RETURN_VALUE,P51_PHOTO_ID:#ID#,1412,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3807159759962545770)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201272766201257)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854410394329718013)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201321711201258)
,p_db_column_name=>'CHANGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Change Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728202844848339712)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201519681201260)
,p_db_column_name=>'FROM_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201685870201261)
,p_db_column_name=>'TO_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201744310201262)
,p_db_column_name=>'EFFECTIVE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Effective Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839201829112201263)
,p_db_column_name=>'EXECUTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839202347795201268)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839202679541201271)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839202744799201272)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839203428220201279)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839203551263201280)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839226944145364934)
,p_db_column_name=>'ORG_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Org ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839227007777364935)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839227181153364936)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839227253387364937)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839227375041364938)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3839227494156364939)
,p_db_column_name=>'ACTING_FOR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Acting For'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729007580547295319)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838280849401578366)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729007622883295320)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854282232860521260)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729007770972295321)
,p_db_column_name=>'REPORT_TO_ADMIN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729007864749295322)
,p_db_column_name=>'REPORT_TO_FUNC'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008234930295326)
,p_db_column_name=>'OLD_ORG_STRUCTURE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Old Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008396385295327)
,p_db_column_name=>'OLD_FROM_DATE'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Old From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008457762295328)
,p_db_column_name=>'OLD_TO_DATE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Old To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008655253295330)
,p_db_column_name=>'OLD_WKLOCATION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Old Work Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008734472295331)
,p_db_column_name=>'OLD_JOB_NAME'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Old Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008810968295332)
,p_db_column_name=>'OLD_JOB_CLASS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Old Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729008970596295333)
,p_db_column_name=>'OLD_EMPLOYMENT_CLASS'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Old Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009029802295334)
,p_db_column_name=>'OLD_GRADE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Old Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009175577295335)
,p_db_column_name=>'OLD_GRADE_POINT'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Old Grade Point'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009269643295336)
,p_db_column_name=>'OLD_PERSONAL_RATE'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Old Personal Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009398814295337)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009498870295338)
,p_db_column_name=>'OLD_REPORT_TO_ADMIN'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Old Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009583424295339)
,p_db_column_name=>'OLD_REPORT_TO_FUNC'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Old Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009646536295340)
,p_db_column_name=>'OLD_PAYROLL_EFFECTIVE'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Old Payroll Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009845955295342)
,p_db_column_name=>'OLD_TRANSACTION_TYPE_ID'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Old Transaction Type Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729009957538295343)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Old Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729010078130295344)
,p_db_column_name=>'OLD_APPROVED_BY'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Old Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729010104847295345)
,p_db_column_name=>'OLD_APPROVED_DATE'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Old Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729010245554295346)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854315722757558986)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729010371064295347)
,p_db_column_name=>'JOB_ID'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Job ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729010460301295348)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729730328609154599)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3729730472916154600)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762868514476635226)
,p_db_column_name=>'IND_ID'
,p_display_order=>670
,p_column_identifier=>'BP'
,p_column_label=>'Individual'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854371014107666782)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762868643044635227)
,p_db_column_name=>'OLD_ORGANISATION'
,p_display_order=>680
,p_column_identifier=>'BQ'
,p_column_label=>'Old Organisation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3762868974284635230)
,p_db_column_name=>'PK_ID'
,p_display_order=>690
,p_column_identifier=>'BR'
,p_column_label=>'Pk ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3704185492018764896)
,p_db_column_name=>'OLD_POSITION_NAME'
,p_display_order=>700
,p_column_identifier=>'BS'
,p_column_label=>'Old Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703974132275943278)
,p_db_column_name=>'TRANSFER'
,p_display_order=>710
,p_column_identifier=>'BU'
,p_column_label=>'Transfer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712334710172904262)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>720
,p_column_identifier=>'BV'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712334804257904263)
,p_db_column_name=>'OLD_PAYMENT_TYPE'
,p_display_order=>730
,p_column_identifier=>'BW'
,p_column_label=>'Old Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3712335322427904268)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>740
,p_column_identifier=>'BX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784022489913735431)
,p_db_column_name=>'STATUS'
,p_display_order=>750
,p_column_identifier=>'BY'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854810471495819812)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3784021379084735420)
,p_db_column_name=>'CHANGE_TYPE_SUB'
,p_display_order=>760
,p_column_identifier=>'BZ'
,p_column_label=>'Change Type Sub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3839243309338366469)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'412335'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'CHANGE_TYPE:ID:FROM_DATE:TO_DATE:IND_ID:EMP_ID:POSITION_ID:WKLOCATION_ID:PERSONAL_RATE:EXECUTED:TRANSFER:PAYMENT_TYPE:COMPUTE_GROSS::STATUS:CHANGE_TYPE_SUB'
,p_sort_column_1=>'FROM_DATE'
,p_sort_direction_1=>'ASC'
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
,p_break_on=>'CHANGE_TYPE:0:0:0'
,p_break_enabled_on=>'CHANGE_TYPE:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3852852160551915490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3738688549990204853)
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
 p_id=>wwv_flow_imp.id(3852851834166915475)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3738688549990204853)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:51:P51_RETURN_VALUE:1412'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3694515325635354391)
,p_name=>'P1412_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3839200933071201254)
,p_item_default=>'ADD_MONTHS(trunc(current_date,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
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
 p_id=>wwv_flow_imp.id(3694515617354356436)
,p_name=>'P1412_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3839200933071201254)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694635804874684563)
,p_name=>'show_date_start'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1412_START_DATE'
,p_condition_element=>'P1412_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694635780186684562)
,p_event_id=>wwv_flow_imp.id(3694635804874684563)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3839200933071201254)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3694514046966305011)
,p_name=>'show_date_end'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1412_END_DATE'
,p_condition_element=>'P1412_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3694513926730305010)
,p_event_id=>wwv_flow_imp.id(3694514046966305011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3839200933071201254)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
