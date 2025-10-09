prompt --application/pages/page_01422
begin
--   Manifest
--     PAGE: 01422
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1422
,p_name=>'rptOffenceHistory'
,p_step_title=>'Listing of Employee Offence History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825296036105001409)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798150090515950492)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3760547642607147133)
,p_plug_name=>'Listing of Employee Offence History'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A."ID", ',
'A."OFFENCE_ID",',
'"OFFENCE_DATE",',
'"DISCIPLINARIAN",',
'A."REMARKS",',
'"OFFENCE_END_DATE",',
'"MAGISTRATE_NAME",',
'"COURT_NAME",',
'a."ENTERED_BY",',
'a."ENTRY_DATE",',
'a."LAST_CHANGED_BY",',
'a."LAST_CHANGED_DATE",',
'a."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'"INCIDENT_LEADING_UP",',
'a."MACHINE_INSERT",',
'A."MACHINE_UPDATE",',
'A."TRANSACTION_TYPE_ID",',
'A."STATUS",',
' "EMP_ID"',
'from "HR_GRI_DISCIPLINE" A left outer JOIN  HR_GRI_DISCIPLINEEMP X ON A.ID=X.DISCIPLINE_ID    ',
'where dis_ORG_ID=:APP_ORG_ID',
'AND X.EMP_ID IS NULL',
'UNION',
'select A."ID", ',
'A."OFFENCE_ID",',
'"OFFENCE_DATE",',
'"DISCIPLINARIAN",',
'A."REMARKS",',
'"OFFENCE_END_DATE",',
'"MAGISTRATE_NAME",',
'"COURT_NAME",',
'a."ENTERED_BY",',
'a."ENTRY_DATE",',
'a."LAST_CHANGED_BY",',
'a."LAST_CHANGED_DATE",',
'a."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'"INCIDENT_LEADING_UP",',
'a."MACHINE_INSERT",',
'A."MACHINE_UPDATE",',
'A."TRANSACTION_TYPE_ID",',
'A."STATUS",',
' "EMP_ID"',
'from "HR_GRI_DISCIPLINE" A left outer JOIN  HR_GRI_DISCIPLINEEMP X ON A.ID=X.DISCIPLINE_ID    ',
'join hr_rcm_employee k on k.id=a.DISCIPLINARIAN',
'where dis_ORG_ID=:APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT f on ( t.id = F.ORG_STRUCTURE_ID  and nvl(f.user_name,''1'') = decode(f.user_name, null, ''1'', :APP_USER))',
'          where  t.id = X.ORGDTL_ID',
'          and X.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, F.org_structure_id)         ',
'          )          ',
' and ( (exists( ',
'                select 1',
'                FROM VW_USERACCESS w ',
'                where x.org_id=w.org_id',
'                and x.employment_class_id=w.employment_class_id',
'                AND UPPER(x.PAYMENT_TYPE)=UPPER(w.PAYMENT_TYPE)               ',
'                ) ',
'            or ',
'         exists ( ',
'                  select 1',
'                  FROM VW_USERACCESS A ',
'                  WHERE  k.org_id=a.org_id',
'                  and k.employment_class_id=a.employment_class_id',
'                  and upper(k.PAYMENT_TYPE)=a.payment_type',
'                  and  x.DISCIPLINE_ID is null                           ',
'                 ))',
'       and',
'      exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'             and user_name=:APP_USER)  ',
'      )',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
,p_plug_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3760547434776147133)
,p_name=>'Listing of Employee Offence History'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.::P1423_ID,P1423_RETURN_VALUE:#ID#,1422'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'PUR_INV'
,p_internal_uid=>113694287952452130
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852327018346247833)
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
 p_id=>wwv_flow_imp.id(3852326574207247833)
,p_db_column_name=>'OFFENCE_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Offence'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'OFFENCE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853895224697985119)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852326218723247833)
,p_db_column_name=>'OFFENCE_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Offence Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'OFFENCE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852325747638247833)
,p_db_column_name=>'DISCIPLINARIAN'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Disciplinarian'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DISCIPLINARIAN'
,p_rpt_named_lov=>wwv_flow_imp.id(3831033801893434064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852325391645247830)
,p_db_column_name=>'OFFENCE_END_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Offence End Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'OFFENCE_END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852325009865247830)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852324573571247829)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852324204892247829)
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
 p_id=>wwv_flow_imp.id(3852323774398247828)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852323402964247828)
,p_db_column_name=>'STATUS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852322977516247827)
,p_db_column_name=>'REMARKS'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852322528520247827)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852322216313247826)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852321786570247826)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852321372210247825)
,p_db_column_name=>'INCIDENT_LEADING_UP'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Incident Leading Up'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'INCIDENT_LEADING_UP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852320969773247825)
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
 p_id=>wwv_flow_imp.id(3852320554622247824)
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
 p_id=>wwv_flow_imp.id(3852320180838247824)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831033801893434064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852327812429247835)
,p_db_column_name=>'MAGISTRATE_NAME'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Magistrate Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAGISTRATE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3852327403132247834)
,p_db_column_name=>'COURT_NAME'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Court Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COURT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3760515530756094481)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'219219'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCIDENT_LEADING_UP:OFFENCE_ID:OFFENCE_DATE:DISCIPLINARIAN:OFFENCE_END_DATE:REMARKS:'
,p_break_on=>'OFFENCE_ID:0:0:0:0:0'
,p_break_enabled_on=>'OFFENCE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3792664262824494560)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated'
,p_report_seq=>10
,p_report_alias=>'815775'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCIDENT_LEADING_UP:OFFENCE_ID:OFFENCE_DATE:DISCIPLINARIAN:OFFENCE_END_DATE:REMARKS:'
,p_break_on=>'OFFENCE_ID:0:0:0:0:0'
,p_break_enabled_on=>'OFFENCE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3792663845738494559)
,p_report_id=>wwv_flow_imp.id(3792664262824494560)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'EMP_ID'
,p_operator=>'like'
,p_expr=>'%Separated%'
,p_condition_sql=>'"EMP_ID" like #APXWS_EXPR#'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME# ''%Separated%''  '
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3810060083199880114)
,p_plug_name=>'Listing of Employee Offence History for Reporting To &APP_USER.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A."ID", ',
'A."OFFENCE_ID",',
'"OFFENCE_DATE",',
'"DISCIPLINARIAN",',
'A."REMARKS",',
'"OFFENCE_END_DATE",',
'"MAGISTRATE_NAME",',
'"COURT_NAME",',
'a."ENTERED_BY",',
'a."ENTRY_DATE",',
'a."LAST_CHANGED_BY",',
'a."LAST_CHANGED_DATE",',
'a."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'"INCIDENT_LEADING_UP",',
'a."MACHINE_INSERT",',
'A."MACHINE_UPDATE",',
'A."TRANSACTION_TYPE_ID",',
'A."STATUS",',
' "EMP_ID"',
'from "HR_GRI_DISCIPLINE" A left outer JOIN  HR_GRI_DISCIPLINEEMP X ON A.ID=X.DISCIPLINE_ID    ',
'where dis_ORG_ID=:APP_ORG_ID',
'AND X.EMP_ID IS NULL',
'UNION',
'select A."ID", ',
'A."OFFENCE_ID",',
'"OFFENCE_DATE",',
'"DISCIPLINARIAN",',
'A."REMARKS",',
'"OFFENCE_END_DATE",',
'"MAGISTRATE_NAME",',
'"COURT_NAME",',
'a."ENTERED_BY",',
'a."ENTRY_DATE",',
'a."LAST_CHANGED_BY",',
'a."LAST_CHANGED_DATE",',
'a."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'"INCIDENT_LEADING_UP",',
'a."MACHINE_INSERT",',
'A."MACHINE_UPDATE",',
'A."TRANSACTION_TYPE_ID",',
'A."STATUS",',
' "EMP_ID"',
'from "HR_GRI_DISCIPLINE" A left outer JOIN  HR_GRI_DISCIPLINEEMP X ON A.ID=X.DISCIPLINE_ID    ',
'where dis_ORG_ID=:APP_ORG_ID',
' and exists (',
'              select 1',
'              FROM VW_USERACCESS V  join VW_SELFREPORT_TO b on V.employee_no=b.employee_no',
'              where v.ORG_ID=X.org_id',
'              and v.employment_class_ID=X.employment_class_id',
'              and upper(v.payment_type)=X.payment_type',
'              and nvl(X.report_to_HIST,1)=decode(pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID),1,b.employee_no,nvl(X.report_to_HIST,1))',
'              ) ',
'UNION',
'select A."ID", ',
'A."OFFENCE_ID",',
'"OFFENCE_DATE",',
'"DISCIPLINARIAN",',
'A."REMARKS",',
'"OFFENCE_END_DATE",',
'"MAGISTRATE_NAME",',
'"COURT_NAME",',
'a."ENTERED_BY",',
'a."ENTRY_DATE",',
'a."LAST_CHANGED_BY",',
'a."LAST_CHANGED_DATE",',
'a."VERIFIED_BY",',
'A."VERIFIED_DATE",',
'"INCIDENT_LEADING_UP",',
'a."MACHINE_INSERT",',
'A."MACHINE_UPDATE",',
'A."TRANSACTION_TYPE_ID",',
'A."STATUS",',
' "EMP_ID"',
'from "HR_GRI_DISCIPLINE" A JOIN  HR_GRI_DISCIPLINEEMP X ON A.ID=X.DISCIPLINE_ID    ',
'where dis_ORG_ID=:APP_ORG_ID',
' and exists (',
'              select 1',
'              FROM VW_USERACCESS V ',
'              where v.ORG_ID=A.dis_ORG_ID',
'              and v.employment_class_ID=X.employment_class_id',
'              and upper(v.payment_type)=X.payment_type',
'              and X.EMP_ID=V.employee_no',
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
 p_id=>wwv_flow_imp.id(3810028463106953661)
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
,p_detail_link=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.::P1423_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>64213259621645602
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810028350019953660)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810028288883953659)
,p_db_column_name=>'INCIDENT_LEADING_UP'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Incident Leading Up'
,p_column_type=>'STRING'
,p_display_text_as=>'STRIP_HTML_ESCAPE_SC'
,p_static_id=>'INCIDENT_LEADING_UP'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810028220304953658)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810028031704953657)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027985694953656)
,p_db_column_name=>'EMP_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831033801893434064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027844799953655)
,p_db_column_name=>'MAGISTRATE_NAME'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Magistrate Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'MAGISTRATE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027760920953654)
,p_db_column_name=>'COURT_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Court Name'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'COURT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027703302953653)
,p_db_column_name=>'OFFENCE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Offence'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'OFFENCE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853895224697985119)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027538621953652)
,p_db_column_name=>'OFFENCE_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Offence Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'OFFENCE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027471203953651)
,p_db_column_name=>'DISCIPLINARIAN'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Disciplinarian'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'DISCIPLINARIAN'
,p_rpt_named_lov=>wwv_flow_imp.id(3831033801893434064)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027364767953650)
,p_db_column_name=>'OFFENCE_END_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Offence End Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_static_id=>'OFFENCE_END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027278655953649)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027126269953648)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027074241953647)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810027003402953646)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810026864541953645)
,p_db_column_name=>'STATUS'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810026796526953644)
,p_db_column_name=>'REMARKS'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810026695756953643)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810026566546953642)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3810026497954953641)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3810016337369895484)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'642254'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'OFFENCE_ID:EMP_ID:INCIDENT_LEADING_UP:OFFENCE_DATE:DISCIPLINARIAN:OFFENCE_END_DATE:REMARKS:'
,p_break_on=>'OFFENCE_ID:0:0:0:0:0'
,p_break_enabled_on=>'OFFENCE_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3810059997058880113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3810060083199880114)
,p_button_name=>'RETURN_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3852319009785247821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3760547642607147133)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3810028611977953662)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3810060083199880114)
,p_button_name=>'CREATE_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.:1423::'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3852319393808247822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3760547642607147133)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1423:&SESSION.::&DEBUG.:1423:P1423_RETURN_VALUE:1422'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp.component_end;
end;
/
