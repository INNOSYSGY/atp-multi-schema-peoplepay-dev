prompt --application/pages/page_00697
begin
--   Manifest
--     PAGE: 00697
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
 p_id=>697
,p_name=>'rptconfirmationmovement'
,p_alias=>'RPTCONFIRMATIONMOVEMENT'
,p_step_title=>'Listing of Confirmation Movements'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825577070385143657)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798430356818069119)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3756343033597929620)
,p_plug_name=>'Listing of Confirmation Movements for Reporting Management'
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
'where org_id =:APP_ORG_ID',
'AND UPPER(CHANGE_TYPE)=''CONFIRMATION''',
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
'              )   ',
'and HR_MOV_EMPMOVEMENT.ORG_ID = :APP_ORG_ID',
''))
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
 p_id=>wwv_flow_imp.id(3756342731385929617)
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
,p_detail_link=>'f?p=&APP_ID.:698:&SESSION.::&DEBUG.::P698_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>433841582837820746
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714431124624655462)
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
 p_id=>wwv_flow_imp.id(3714431554106655463)
,p_db_column_name=>'ORG_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3844492193679279744)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714431941811655464)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714432368057655464)
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
 p_id=>wwv_flow_imp.id(3714432796267655465)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714433198160655465)
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
 p_id=>wwv_flow_imp.id(3714433578521655466)
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
 p_id=>wwv_flow_imp.id(3714433955235655467)
,p_db_column_name=>'EXECUTED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714434318273655467)
,p_db_column_name=>'EMP_ID'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714434795360655468)
,p_db_column_name=>'CHANGE_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Change Type'
,p_column_type=>'STRING'
,p_static_id=>'CHANGE_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714435157530655468)
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
 p_id=>wwv_flow_imp.id(3714435585421655469)
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
 p_id=>wwv_flow_imp.id(3714435908087655469)
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
 p_id=>wwv_flow_imp.id(3714436405443655470)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714436758085655470)
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
 p_id=>wwv_flow_imp.id(3714437185495655471)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_static_id=>'APPROVED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714437571255655472)
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
 p_id=>wwv_flow_imp.id(3714437920821655473)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714438354349655473)
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
 p_id=>wwv_flow_imp.id(3714430362613655461)
,p_db_column_name=>'IND_ID'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854230252600239147)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714430746153655461)
,p_db_column_name=>'PK_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Pk Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714417552118655442)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714417933421655443)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714418400965655444)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714418732513655445)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714419154226655445)
,p_db_column_name=>'JOB_ID'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Job Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714419525727655446)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714419979112655446)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714420328703655447)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Position Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714420764175655448)
,p_db_column_name=>'OLD_PAYMENT_TYPE'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Old Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714421108876655448)
,p_db_column_name=>'TRANSFER'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Transfer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714421577178655449)
,p_db_column_name=>'REPORT_TO_ADMIN'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714421971558655449)
,p_db_column_name=>'REPORT_TO_FUNC'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714422321219655450)
,p_db_column_name=>'OLD_ORGANISATION'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Old Organisation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714422794293655450)
,p_db_column_name=>'OLD_ORG_STRUCTURE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Old Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714423167069655451)
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
 p_id=>wwv_flow_imp.id(3714423521787655452)
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
 p_id=>wwv_flow_imp.id(3714423913346655453)
,p_db_column_name=>'OLD_POSITION_NAME'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Old Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714424310456655453)
,p_db_column_name=>'OLD_WKLOCATION'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Old Wklocation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714424792917655454)
,p_db_column_name=>'OLD_JOB_NAME'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Old Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714425156617655454)
,p_db_column_name=>'OLD_JOB_CLASS'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Old Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714425577290655455)
,p_db_column_name=>'OLD_EMPLOYMENT_CLASS'
,p_display_order=>560
,p_column_identifier=>'BD'
,p_column_label=>'Old Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714426005986655455)
,p_db_column_name=>'OLD_GRADE'
,p_display_order=>570
,p_column_identifier=>'BE'
,p_column_label=>'Old Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714426349311655456)
,p_db_column_name=>'OLD_GRADE_POINT'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Old Grade Point'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714426717978655456)
,p_db_column_name=>'OLD_PERSONAL_RATE'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Old Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714427109973655457)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714427537401655457)
,p_db_column_name=>'OLD_REPORT_TO_ADMIN'
,p_display_order=>610
,p_column_identifier=>'BI'
,p_column_label=>'Old Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714427937311655458)
,p_db_column_name=>'OLD_REPORT_TO_FUNC'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Old Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714428381043655458)
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
 p_id=>wwv_flow_imp.id(3714428749092655459)
,p_db_column_name=>'OLD_TRANSACTION_TYPE_ID'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Old Transaction Type Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714429179935655459)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Old Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714429593052655460)
,p_db_column_name=>'OLD_APPROVED_BY'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Old Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714429926483655460)
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
 p_id=>wwv_flow_imp.id(3756310678193385473)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'273959'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_ID:EMP_ID:CHANGE_TYPE:FROM_DATE:TO_DATE:EFFECTIVE_DATE:PAYMENT_TYPE:EXECUTED::IND_ID:PK_ID:COMPUTE_GROSS:PERSONAL_RATE:ORG_STRUCTURE:JOB_ID:JOB_CLASS:WKLOCATION_ID:POSITION_ID:OLD_PAYMENT_TYPE:TRANSFER:REPORT_TO_ADMIN:REPORT_TO_FUNC:OLD_ORGANISAT'
||'ION:OLD_ORG_STRUCTURE:OLD_FROM_DATE:OLD_TO_DATE:OLD_POSITION_NAME:OLD_WKLOCATION:OLD_JOB_NAME:OLD_JOB_CLASS:OLD_EMPLOYMENT_CLASS:OLD_GRADE:OLD_GRADE_POINT:OLD_PERSONAL_RATE:OLD_HOURLY_RATE:OLD_REPORT_TO_ADMIN:OLD_REPORT_TO_FUNC:OLD_PAYROLL_EFFECTIVE:'
||'OLD_TRANSACTION_TYPE_ID:OLD_STATUS:OLD_APPROVED_BY:OLD_APPROVED_DATE'
,p_break_on=>'ORG_ID:EMP_ID:CHANGE_TYPE:0:0:0'
,p_break_enabled_on=>'ORG_ID:EMP_ID:CHANGE_TYPE:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3792549945410873986)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3825676935488544219)
,p_plug_name=>'Listing of Confirmation Movements'
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
'                      and table_value = ''EMPCONF''',
'                     ) tblmvclass on tblmv.lookup_id = tblmvclass.id',
'                where  tblmv.TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'         ) tblmvclasslink on EM.change_type_id = tblmvclasslink.m_id',
'where FROM_DATE BETWEEN :P697_START_DATE AND :P697_END_DATE',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where EM.org_id=a.org_id',
'              and EM.employment_class_id=a.employment_class_id',
'              AND UPPER(EM.PAYMENT_TYPE)=A.PAYMENT_TYPE             ',
'            )',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(EM.emp_grade_id,1)) = nvl(EM.emp_grade_id,1)',
'             and user_name=:APP_USER)',
'and EM.ORG_ID = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P697_START_DATE,P697_END_DATE'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
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
 p_id=>wwv_flow_imp.id(3825676840461544218)
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
,p_internal_uid=>364507473762206145
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714408867025655427)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:698:&SESSION.::&DEBUG.::P698_ID,P698_RETURN_VALUE,P698_PHOTO_ID:#ID#,698,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3859301394239210948)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714409232857655428)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714409690481655428)
,p_db_column_name=>'CHANGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Change Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3728062083340912077)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714410021652655429)
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
 p_id=>wwv_flow_imp.id(3714410412553655430)
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
 p_id=>wwv_flow_imp.id(3714410848349655431)
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
 p_id=>wwv_flow_imp.id(3714411225557655432)
,p_db_column_name=>'EXECUTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714411650281655432)
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
 p_id=>wwv_flow_imp.id(3714412033077655433)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714412478756655433)
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
 p_id=>wwv_flow_imp.id(3714412838839655434)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714413304626655434)
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
 p_id=>wwv_flow_imp.id(3714413664711655435)
,p_db_column_name=>'ORG_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Org ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714414025513655436)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714414489871655437)
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
 p_id=>wwv_flow_imp.id(3714414904533655437)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714415271785655438)
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
 p_id=>wwv_flow_imp.id(3714415646249655439)
,p_db_column_name=>'ACTING_FOR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Acting For'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714396808619655408)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3838140087894150731)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714397238329655408)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854141471353093625)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714397703129655409)
,p_db_column_name=>'REPORT_TO_ADMIN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714398010495655409)
,p_db_column_name=>'REPORT_TO_FUNC'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714398420286655410)
,p_db_column_name=>'OLD_ORG_STRUCTURE'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Old Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714398823813655410)
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
 p_id=>wwv_flow_imp.id(3714399214631655411)
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
 p_id=>wwv_flow_imp.id(3714399667310655411)
,p_db_column_name=>'OLD_WKLOCATION'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Old Work Location'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714400090941655412)
,p_db_column_name=>'OLD_JOB_NAME'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Old Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714400424902655413)
,p_db_column_name=>'OLD_JOB_CLASS'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Old Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714400903657655413)
,p_db_column_name=>'OLD_EMPLOYMENT_CLASS'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Old Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714401257447655414)
,p_db_column_name=>'OLD_GRADE'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Old Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714401622861655415)
,p_db_column_name=>'OLD_GRADE_POINT'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Old Grade Point'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714402045671655416)
,p_db_column_name=>'OLD_PERSONAL_RATE'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Old Personal Rate'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714402486719655416)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714402837229655417)
,p_db_column_name=>'OLD_REPORT_TO_ADMIN'
,p_display_order=>540
,p_column_identifier=>'BB'
,p_column_label=>'Old Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714403228577655418)
,p_db_column_name=>'OLD_REPORT_TO_FUNC'
,p_display_order=>550
,p_column_identifier=>'BC'
,p_column_label=>'Old Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714403609576655419)
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
 p_id=>wwv_flow_imp.id(3714404034719655420)
,p_db_column_name=>'OLD_TRANSACTION_TYPE_ID'
,p_display_order=>580
,p_column_identifier=>'BF'
,p_column_label=>'Old Transaction Type Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714404457911655420)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>590
,p_column_identifier=>'BG'
,p_column_label=>'Old Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714404870042655421)
,p_db_column_name=>'OLD_APPROVED_BY'
,p_display_order=>600
,p_column_identifier=>'BH'
,p_column_label=>'Old Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714405302941655422)
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
 p_id=>wwv_flow_imp.id(3714405645472655422)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854174961250131351)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714406064718655423)
,p_db_column_name=>'JOB_ID'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Job ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714406447858655423)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714406902465655424)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714407226268655424)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714407659340655425)
,p_db_column_name=>'IND_ID'
,p_display_order=>670
,p_column_identifier=>'BP'
,p_column_label=>'Individual'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854230252600239147)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714408027369655426)
,p_db_column_name=>'OLD_ORGANISATION'
,p_display_order=>680
,p_column_identifier=>'BQ'
,p_column_label=>'Old Organisation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714408478726655426)
,p_db_column_name=>'PK_ID'
,p_display_order=>690
,p_column_identifier=>'BR'
,p_column_label=>'Pk ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714395223460655405)
,p_db_column_name=>'OLD_POSITION_NAME'
,p_display_order=>700
,p_column_identifier=>'BS'
,p_column_label=>'Old Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714394889383655404)
,p_db_column_name=>'TRANSFER'
,p_display_order=>710
,p_column_identifier=>'BU'
,p_column_label=>'Transfer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714395673541655406)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>720
,p_column_identifier=>'BV'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714396076914655407)
,p_db_column_name=>'OLD_PAYMENT_TYPE'
,p_display_order=>730
,p_column_identifier=>'BW'
,p_column_label=>'Old Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3714396414286655407)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>740
,p_column_identifier=>'BX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783881992362307799)
,p_db_column_name=>'STATUS'
,p_display_order=>750
,p_column_identifier=>'BY'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854669709988392177)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783880690217307786)
,p_db_column_name=>'CHANGE_TYPE_SUB'
,p_display_order=>760
,p_column_identifier=>'BZ'
,p_column_label=>'Change Type Sub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3825634559221379004)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'273732'
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
 p_id=>wwv_flow_imp.id(3714393793266655401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3792549945410873986)
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
 p_id=>wwv_flow_imp.id(3714394171592655401)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3792549945410873986)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:698:&SESSION.::&DEBUG.:697:P698_RETURN_VALUE:697'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3714416437287655441)
,p_name=>'P697_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3825676935488544219)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3714416905144655441)
,p_name=>'P697_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3825676935488544219)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3714439766294655475)
,p_name=>'show_date_start'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P697_START_DATE'
,p_condition_element=>'P697_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3714440255023655476)
,p_event_id=>wwv_flow_imp.id(3714439766294655475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3825676935488544219)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3714440632119655476)
,p_name=>'show_date_end'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P697_END_DATE'
,p_condition_element=>'P697_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3714441133007655476)
,p_event_id=>wwv_flow_imp.id(3714440632119655476)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3825676935488544219)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
