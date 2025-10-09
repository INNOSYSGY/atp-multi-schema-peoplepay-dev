prompt --application/pages/page_01428
begin
--   Manifest
--     PAGE: 01428
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
 p_id=>1428
,p_name=>'rptMemoranda'
,p_step_title=>'Listing of Employee Memos'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825577615856149478)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798424567662988051)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3739922226624126490)
,p_plug_name=>'Listing of Employee Memos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct "MEMO_ID", ',
'(Select DESCRIPTION',
'From Hr_Gri_Discipline A Join Hr_Gri_Offence B On A.Offence_Id=B.Id',
'where a.id=w."DISCIPLINE_ID")',
'"DISCIPLINE_ID",',
'"DATE_WRITTEN",',
'"EMPLOYEE",',
'"FROM_EMPLOYEE",',
'"CLASSIFICATION",',
'"SUBJECT",',
'--"MEMO_ATTACHED",',
'"CC_TO",',
'w."ENTERED_BY",',
'w."ENTRY_DATE",',
'w."VERIFIED_BY",',
'w."VERIFIED_DATE",',
'w."LAST_CHANGED_BY",',
'w."LAST_CHANGED_DATE",',
'w."TRANSACTION_TYPE_ID",',
'w."STATUS",',
'w."MACHINE_INSERT",',
'w."MACHINE_UPDATE"',
'from "#OWNER#"."HR_DOC_MEMORANDA" w join hr_rcm_employee q on q.id=w.EMPLOYEE',
'where exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = q.ORGDTL_ID',
'          and q.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, q.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where  q.org_id=a.org_id',
'              and q.employment_class_id=a.employment_class_id',
'              and upper(q.payment_type)=a.payment_type            ',
'              )',
' and   exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(q.emp_grade_id,1)) = nvl(q.emp_grade_id,1)',
'             and user_name=:APP_USER)  '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3739922040005126484)
,p_name=>'List of Employee Memoranda History'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1429:&SESSION.::&DEBUG.::P1429_MEMO_ID,P1429_NAVIGATOR:#MEMO_ID#,1428'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_owner=>'PUR_INV'
,p_internal_uid=>134601054823619016
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831876239564587362)
,p_db_column_name=>'MEMO_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Memo ID'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'MEMO_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831875871424587362)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'To Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'EMPLOYEE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831875049545587360)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831874637095587360)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831874284682587359)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831873873187587359)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831873420275587358)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831873092158587358)
,p_db_column_name=>'STATUS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831872619105587357)
,p_db_column_name=>'DATE_WRITTEN'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Date Written'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_WRITTEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831872243508587357)
,p_db_column_name=>'FROM_EMPLOYEE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'From Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'FROM_EMPLOYEE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269365860290377)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831871838804587357)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CLASSIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831871429402587357)
,p_db_column_name=>'SUBJECT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBJECT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831871079137587355)
,p_db_column_name=>'CC_TO'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Cc To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CC_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831870648482587355)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831870283271587354)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831869822535587353)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831869467570587353)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831876690050587366)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Offence'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3739919519871123551)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'426540'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FROM_EMPLOYEE:CLASSIFICATION:EMPLOYEE:SUBJECT:DATE_WRITTEN:CC_TO:DISCIPLINE_ID'
,p_break_on=>'DISCIPLINE_ID:0:0:0:0:0'
,p_break_enabled_on=>'DISCIPLINE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3792944260539635566)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'815789'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'FROM_EMPLOYEE:CLASSIFICATION:EMPLOYEE:SUBJECT:DATE_WRITTEN:CC_TO:DISCIPLINE_ID'
,p_break_on=>'DISCIPLINE_ID:0:0:0:0:0'
,p_break_enabled_on=>'DISCIPLINE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792943855472635566)
,p_report_id=>wwv_flow_imp.id(3792944260539635566)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMPLOYEE'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMPLOYEE" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3810307722888099877)
,p_plug_name=>'Listing of Employee Memos Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "MEMO_ID", ',
'(Select DESCRIPTION',
'From Hr_Gri_Discipline A Join Hr_Gri_Offence B On A.Offence_Id=B.Id',
'where a.id=w."DISCIPLINE_ID")',
'"DISCIPLINE_ID",',
'"DATE_WRITTEN",',
'"EMPLOYEE",',
'"FROM_EMPLOYEE",',
'"CLASSIFICATION",',
'"SUBJECT",',
'--"MEMO_ATTACHED",',
'"CC_TO",',
'w."ENTERED_BY",',
'w."ENTRY_DATE",',
'w."VERIFIED_BY",',
'w."VERIFIED_DATE",',
'w."LAST_CHANGED_BY",',
'w."LAST_CHANGED_DATE",',
'w."TRANSACTION_TYPE_ID",',
'w."STATUS",',
'w."MACHINE_INSERT",',
'w."MACHINE_UPDATE"',
'from "#OWNER#"."HR_DOC_MEMORANDA" w join hr_rcm_employee q on q.id=w.EMPLOYEE',
'where exists(',
'              select 1',
'              FROM VW_USERACCESS A  join VW_SELFREPORT_TO b on a.employee_no=b.employee_no',
'              where w.org_id=a.org_id',
'              and q.employment_class_id=a.employment_class_id',
'              and upper(w.payment_type_hist)=a.payment_type',
'              and w.report_to_hist=decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID),1,b.employee_no,w.report_to_hist)',
'              )  ',
'union',
'select "MEMO_ID", ',
'(Select DESCRIPTION',
'From Hr_Gri_Discipline A Join Hr_Gri_Offence B On A.Offence_Id=B.Id',
'where a.id=w."DISCIPLINE_ID")',
'"DISCIPLINE_ID",',
'"DATE_WRITTEN",',
'"EMPLOYEE",',
'"FROM_EMPLOYEE",',
'"CLASSIFICATION",',
'"SUBJECT",',
'--"MEMO_ATTACHED",',
'"CC_TO",',
'w."ENTERED_BY",',
'w."ENTRY_DATE",',
'w."VERIFIED_BY",',
'w."VERIFIED_DATE",',
'w."LAST_CHANGED_BY",',
'w."LAST_CHANGED_DATE",',
'w."TRANSACTION_TYPE_ID",',
'w."STATUS",',
'w."MACHINE_INSERT",',
'w."MACHINE_UPDATE"',
'from "#OWNER#"."HR_DOC_MEMORANDA" w join hr_rcm_employee q on q.id=w.EMPLOYEE',
'where exists(',
'              select 1',
'              FROM VW_USERACCESS A',
'              where q.org_id=a.org_id',
'              and q.employment_class_id=a.employment_class_id',
'              and upper(q.payment_type)=a.payment_type',
'              and q.id = a.employee_no',
'              ) '))
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
 p_id=>wwv_flow_imp.id(3810307396590099874)
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1429:&SESSION.::&DEBUG.::P1429_MEMO_ID:#MEMO_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3786032921827759264)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>64215698238645626
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810307301467099873)
,p_db_column_name=>'MEMO_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Memo ID'
,p_column_type=>'NUMBER'
,p_static_id=>'MEMO_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810307262649099872)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810307140814099871)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810307022750099870)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306931299099869)
,p_db_column_name=>'DISCIPLINE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Offence'
,p_column_type=>'STRING'
,p_static_id=>'DISCIPLINE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306828064099868)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'To Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'EMPLOYEE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306639460099866)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306530869099865)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306426770099864)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306295270099863)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306254061099862)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306115241099861)
,p_db_column_name=>'STATUS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810306093093099860)
,p_db_column_name=>'DATE_WRITTEN'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Date Written'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_WRITTEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810305928147099859)
,p_db_column_name=>'FROM_EMPLOYEE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'From Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'FROM_EMPLOYEE'
,p_rpt_named_lov=>wwv_flow_imp.id(3854269632822290378)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810305834738099858)
,p_db_column_name=>'CLASSIFICATION'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Classification'
,p_column_type=>'STRING'
,p_static_id=>'CLASSIFICATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810305736394099857)
,p_db_column_name=>'SUBJECT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_static_id=>'SUBJECT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810305655239099856)
,p_db_column_name=>'CC_TO'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Cc To'
,p_column_type=>'STRING'
,p_static_id=>'CC_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810305548654099855)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3810287477530863347)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'642357'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DISCIPLINE_ID:FROM_EMPLOYEE:CLASSIFICATION:EMPLOYEE:SUBJECT:DATE_WRITTEN:CC_TO:'
,p_break_on=>'DISCIPLINE_ID:0:0:0:0:0'
,p_break_enabled_on=>'DISCIPLINE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3810307634725099876)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3810307722888099877)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831868211362587344)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3739922226624126490)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3810307588539099875)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3810307722888099877)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1429:&SESSION.::&DEBUG.:1429::'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831868676521587348)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3739922226624126490)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1429:&SESSION.::&DEBUG.:1429::'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp.component_end;
end;
/
