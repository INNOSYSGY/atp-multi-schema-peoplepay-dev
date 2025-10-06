prompt --application/pages/page_01301
begin
--   Manifest
--     PAGE: 01301
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
 p_id=>1301
,p_name=>'frmposition'
,p_alias=>'FRMPOSITION'
,p_step_title=>'Create/Edit Position'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.DISPLAY_ONLY{  ',
'    pointer-events: none;',
'    border: none;',
'    background-color: white;',
'    font-size:15px;',
'    font-weight:bolder;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4234878511689787722)
,p_name=>'Listing of Position Vacancies'
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_JOBOPENING.ID as ID,',
'    HR_HCF_JOBOPENING.POSITION_ID as POSITION_ID,',
'    HR_HCF_JOBOPENING.APPLICATION_START as APPLICATION_START,',
'    HR_HCF_JOBOPENING.APPLICATION_END as APPLICATION_END,',
'    HR_HCF_JOBOPENING.EXPECTED_SHORT_LIST as EXPECTED_SHORT_LIST,',
'    HR_HCF_JOBOPENING.APPLICANT_TYPE as APPLICANT_TYPE,',
'    HR_HCF_JOBOPENING.SEGMENT1 as SEGMENT1,',
'    HR_HCF_JOBOPENING.SEGMENT2 as SEGMENT2,',
'    HR_HCF_JOBOPENING.SEGMENT_EFFECT1 as SEGMENT_EFFECT1,',
'    HR_HCF_JOBOPENING.SEGMENT_EFFECT2 as SEGMENT_EFFECT2,',
'    HR_HCF_JOBOPENING.SEGMENT_NO1 as SEGMENT_NO1,',
'    HR_HCF_JOBOPENING.SEGMENT_NO2 as SEGMENT_NO2,',
'    HR_HCF_JOBOPENING.ENTERED_BY as ENTERED_BY,',
'    HR_HCF_JOBOPENING.ENTRY_DATE as ENTRY_DATE,',
'    HR_HCF_JOBOPENING.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_HCF_JOBOPENING.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_HCF_JOBOPENING.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_HCF_JOBOPENING.MACHINE_UPDATE as MACHINE_UPDATE,',
'    HR_HCF_JOBOPENING.WKLOCATION_ID as WKLOCATION_ID ',
' from HR_HCF_JOBOPENING HR_HCF_JOBOPENING',
'where  HR_HCF_JOBOPENING.POSITION_ID=:P1301_ID'))
,p_display_when_condition=>':P1301_ID is not null and pkg_security.GET_REGION_ACCESS(''FRMJOBOPENING'')>0'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1301_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877548057010094756)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'EDIT'
,p_column_link=>'f?p=&APP_ID.:1395:&SESSION.::&DEBUG.:1395:P1395_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877548457987094757)
,p_query_column_id=>2
,p_column_alias=>'POSITION_ID'
,p_column_display_sequence=>2
,p_column_heading=>'POSITION_ID'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877548891315094757)
,p_query_column_id=>3
,p_column_alias=>'APPLICATION_START'
,p_column_display_sequence=>4
,p_column_heading=>'APPLICATION START'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877549284789094758)
,p_query_column_id=>4
,p_column_alias=>'APPLICATION_END'
,p_column_display_sequence=>5
,p_column_heading=>'APPLICATION END'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877549708996094758)
,p_query_column_id=>5
,p_column_alias=>'EXPECTED_SHORT_LIST'
,p_column_display_sequence=>6
,p_column_heading=>'NO. SHORT LIST'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877550110644094759)
,p_query_column_id=>6
,p_column_alias=>'APPLICANT_TYPE'
,p_column_display_sequence=>3
,p_column_heading=>'APPLICANT TYPE'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877550468410094759)
,p_query_column_id=>7
,p_column_alias=>'SEGMENT1'
,p_column_display_sequence=>7
,p_column_heading=>'SEGMENT1'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877550886180094760)
,p_query_column_id=>8
,p_column_alias=>'SEGMENT2'
,p_column_display_sequence=>8
,p_column_heading=>'SEGMENT2'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877551289262094760)
,p_query_column_id=>9
,p_column_alias=>'SEGMENT_EFFECT1'
,p_column_display_sequence=>9
,p_column_heading=>'SEGMENT_EFFECT1'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877551665311094760)
,p_query_column_id=>10
,p_column_alias=>'SEGMENT_EFFECT2'
,p_column_display_sequence=>10
,p_column_heading=>'SEGMENT_EFFECT2'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877552080035094761)
,p_query_column_id=>11
,p_column_alias=>'SEGMENT_NO1'
,p_column_display_sequence=>11
,p_column_heading=>'SEGMENT_NO1'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877552535763094761)
,p_query_column_id=>12
,p_column_alias=>'SEGMENT_NO2'
,p_column_display_sequence=>12
,p_column_heading=>'SEGMENT_NO2'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877552942586094762)
,p_query_column_id=>13
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>13
,p_column_heading=>'ENTERED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877553299290094762)
,p_query_column_id=>14
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>14
,p_column_heading=>'ENTRY_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877553710985094763)
,p_query_column_id=>15
,p_column_alias=>'LAST_CHANGED_BY'
,p_column_display_sequence=>15
,p_column_heading=>'LAST_CHANGED_BY'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877554070987094763)
,p_query_column_id=>16
,p_column_alias=>'LAST_CHANGED_DATE'
,p_column_display_sequence=>16
,p_column_heading=>'LAST_CHANGED_DATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877554500296094763)
,p_query_column_id=>17
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>17
,p_column_heading=>'MACHINE_INSERT'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877554923975094764)
,p_query_column_id=>18
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>18
,p_column_heading=>'MACHINE_UPDATE'
,p_hidden_column=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2877555325564094764)
,p_query_column_id=>19
,p_column_alias=>'WKLOCATION_ID'
,p_column_display_sequence=>19
,p_column_heading=>'WORK LOCATION'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3304474040474083971)
,p_lov_show_nulls=>'NO'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4235042594628644028)
,p_plug_name=>'Create/Edit Position'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_HCF_POSITION'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4235031696803643704)
,p_name=>'Audit Record Verified by: &P1301_VERIFIED_BY.'
,p_parent_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_template=>2664334895415463485
,p_display_sequence=>9
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_HCF_POSITION',
'where  id = :P1301_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1301_ID'
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
 p_id=>wwv_flow_imp.id(2060646925012196)
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
 p_id=>wwv_flow_imp.id(2060722040012197)
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
 p_id=>wwv_flow_imp.id(2060854475012198)
,p_query_column_id=>3
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>30
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4245998223232410327)
,p_plug_name=>'Generate Related Data from one position to another'
,p_parent_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>8
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4292103789581677368)
,p_plug_name=>'Listing of Employees with Current Position'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v."ID", v.transaction_type_id,COMPUTE_GROSS,employee_status,employment_type_id,emp_grade_id,',
'"EMP_COMPANY_NO",',
'"IND_ID",',
'V.IND_ID NEW_IND_ID,',
'"REPORT_TO",',
'"CONFIRMED",',
'"PERMANENT_STAFF",',
'initcap("EMPLOYMENT_STATUS") EMPLOYMENT_STATUS,',
'initcap("EMPLOYMENT_CLASS") EMPLOYMENT_CLASS,',
'"PAYMENT_TYPE",',
'"DATE_EMPLOYED",',
'"SHIRT",',
'"SHOE",',
'"TROUSERS",',
'"CAP_SIZE",',
'"WAIST",',
'"DATE_INTERVIEWED",',
'"INTERVIEWED_BY",',
'"REPORT_TO_FUNCTIONAL",',
'"APPOINTMENT_DATE",',
'"CONTRACT_STAFF",',
'"BADGE",',
'"DATE_SEPARATED",',
'"REHIRED",',
'v."PRIMARY_TAX_JOB",',
'v."ENTERED_BY",',
'v."ENTRY_DATE",',
'"APPLICATION_DATE",',
'"JOB_APPLIED_FOR",',
'"UNION_CODE",',
'"SEPARATED_STATUS",',
'"PAYROLL_EFFECTIVE",',
'v."MACHINE_INSERT",',
'v."MACHINE_UPDATE",',
'v."LAST_CHANGED_BY",',
'v."LAST_CHANGED_DATE",',
'"POSITION_NAME",',
'"UNION_CODE_ID",separated_status_id,',
'position_id, ',
'wklocation_id,',
'V.appointment_end_date,',
'PKG_GLOBAL_FNTS.fn_calcage(date_employed,trunc(current_date)) yrs_srv,',
'CASE when "INCLUDE_PAYROLL"=''Y'' then ''Yes'' else ''No'' end "INCLUDE_PAYROLL"',
',(Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_position c on  m.id=c.orgdtl_id',
'where c.id =v.position_id) org_structure,',
'decode(nvl(dbms_lob.getlength(w.PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P1261_LOAD_PHOTO'',w.id)||''" height="75" width="75" />'') detail_img         ',
'              ,w.id Ind_link',
'from "HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'left outer join hr_hcf_orgstructuredtl od on od.id = v.orgdtl_id',
'where position_id =:P1301_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1301_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>'pkg_global_fnts.fn_selfReport_to(:APP_ORG_ID)=0'
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
 p_id=>wwv_flow_imp.id(4292103261939677362)
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
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:1281:P1281_ID,P1281_ID_IND:#ID#,#NEW_IND_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>2041729217431700754
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877581658333094798)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877582072304094799)
,p_db_column_name=>'INCLUDE_PAYROLL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'In Payroll'
,p_column_type=>'STRING'
,p_static_id=>'INCLUDE_PAYROLL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877582534205094799)
,p_db_column_name=>'PERMANENT_STAFF'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Permanent Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERMANENT_STAFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877582870019094800)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877583338311094800)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877583655674094800)
,p_db_column_name=>'IND_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Name                     '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'IND_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326538464576798347)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877584072999094801)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877584495854094801)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_EMPLOYED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877584935122094802)
,p_db_column_name=>'SHIRT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Shirt'
,p_column_type=>'STRING'
,p_static_id=>'SHIRT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877585327198094802)
,p_db_column_name=>'SHOE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Shoe'
,p_column_type=>'STRING'
,p_static_id=>'SHOE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877585728124094803)
,p_db_column_name=>'TROUSERS'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Trousers'
,p_column_type=>'STRING'
,p_static_id=>'TROUSERS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877586085132094803)
,p_db_column_name=>'CAP_SIZE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Cap Size'
,p_column_type=>'STRING'
,p_static_id=>'CAP_SIZE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877586475170094804)
,p_db_column_name=>'WAIST'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Waist'
,p_column_type=>'STRING'
,p_static_id=>'WAIST'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877586909749094804)
,p_db_column_name=>'DATE_INTERVIEWED'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Date Interviewed'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_INTERVIEWED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877587277541094805)
,p_db_column_name=>'INTERVIEWED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Interviewed By'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'INTERVIEWED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877587679416094805)
,p_db_column_name=>'REPORT_TO_FUNCTIONAL'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Report To Functional'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'REPORT_TO_FUNCTIONAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877588053205094806)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPOINTMENT_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877588488895094806)
,p_db_column_name=>'CONTRACT_STAFF'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Contract Staff'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'CONTRACT_STAFF'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877588859041094807)
,p_db_column_name=>'DATE_SEPARATED'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Date Separated'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_SEPARATED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877589334679094807)
,p_db_column_name=>'REHIRED'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Rehired'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'REHIRED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877589720556094808)
,p_db_column_name=>'PRIMARY_TAX_JOB'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Primary Tax Job'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PRIMARY_TAX_JOB'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877590056385094808)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877590496939094809)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877590863143094809)
,p_db_column_name=>'APPLICATION_DATE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Application Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'APPLICATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877591311491094810)
,p_db_column_name=>'JOB_APPLIED_FOR'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Job Applied For'
,p_column_type=>'STRING'
,p_static_id=>'JOB_APPLIED_FOR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877591685906094810)
,p_db_column_name=>'UNION_CODE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Union Code'
,p_column_type=>'STRING'
,p_static_id=>'UNION_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877592075042094811)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_static_id=>'SEPARATED_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877592533403094811)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'PAYROLL_EFFECTIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877592857353094811)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877593298243094812)
,p_db_column_name=>'REPORT_TO'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Report To'
,p_column_type=>'NUMBER'
,p_static_id=>'REPORT_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877593723853094812)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877594139713094813)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877594487828094813)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877594859075094814)
,p_db_column_name=>'UNION_CODE_ID'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Union Code Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'UNION_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877595295437094815)
,p_db_column_name=>'YRS_SRV'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Yrs Srv'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'YRS_SRV'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877595665547094815)
,p_db_column_name=>'CONFIRMED'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Confirmed'
,p_column_type=>'NUMBER'
,p_static_id=>'CONFIRMED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877596105540094815)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Transaction type id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877581307123094798)
,p_db_column_name=>'SEPARATED_STATUS_ID'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'Separated Status Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877580891745094797)
,p_db_column_name=>'DETAIL_IMG'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'Photo'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_format_mask=>'PCT_GRAPH:::'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877580068317094796)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326449683329652825)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877580543135094797)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3310448299870709931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877596522210094816)
,p_db_column_name=>'BADGE'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'Badge'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877577336071094793)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3322702956381788890)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877577737423094793)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877578058801094794)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877578457082094794)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3202169449667688035)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877578930483094795)
,p_db_column_name=>'EMP_GRADE_ID'
,p_display_order=>540
,p_column_identifier=>'BC'
,p_column_label=>'Emp Grade'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326550784367798359)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877579331123094795)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>550
,p_column_identifier=>'BD'
,p_column_label=>'Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877579737177094796)
,p_db_column_name=>'IND_LINK'
,p_display_order=>560
,p_column_identifier=>'BE'
,p_column_label=>'Ind Link'
,p_column_link=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:RP,1261:P1261_ID:#IND_LINK#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877576907604094791)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>570
,p_column_identifier=>'BG'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2877596886691094816)
,p_db_column_name=>'APPOINTMENT_END_DATE'
,p_display_order=>580
,p_column_identifier=>'BH'
,p_column_label=>'Appointment End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2138811581599007)
,p_db_column_name=>'NEW_IND_ID'
,p_display_order=>590
,p_column_identifier=>'BI'
,p_column_label=>'New Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4265787026978180370)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Separated Employees'
,p_report_seq=>10
,p_report_alias=>'6272232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'IND_ID:DATE_EMPLOYED:DATE_SEPARATED:YRS_SRV:POSITION_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:DETAIL_IMG:IND_LINK'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2877597709367094818)
,p_report_id=>wwv_flow_imp.id(4265787026978180370)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS'
,p_operator=>'is not null'
,p_condition_sql=>'"SEPARATED_STATUS" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4278606202994482868)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Employee Chart'
,p_report_seq=>10
,p_report_type=>'CHART'
,p_report_alias=>'6272240'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'IND_ID:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV'
,p_break_on=>'ORG_STRUCTURE:0:0:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:0:0:0:0:0'
,p_chart_type=>'bar'
,p_chart_label_column=>'POSITION_LOCATION_ID'
,p_chart_value_column=>'ID'
,p_chart_aggregate=>'COUNT'
,p_chart_sorting=>'DEFAULT'
,p_chart_orientation=>'horizontal'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4284299263888156185)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6272244'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'DETAIL_IMG:ORG_STRUCTURE:POSITION_ID:EMP_COMPANY_NO:IND_ID:DATE_EMPLOYED:EMPLOYMENT_CLASS:PAYMENT_TYPE:YRS_SRV:WKLOCATION_ID:COMPUTE_GROSS:EMPLOYMENT_TYPE_ID:EMP_GRADE_ID:IND_LINK:APPOINTMENT_END_DATE:'
,p_break_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
,p_break_enabled_on=>'ORG_STRUCTURE:POSITION_ID:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2877598922519094819)
,p_report_id=>wwv_flow_imp.id(4284299263888156185)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'SEPARATED_STATUS'
,p_operator=>'is null'
,p_condition_sql=>'"SEPARATED_STATUS" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4325168017614128844)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>29
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4333735362676968157)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877575512774094788)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4245998223232410327)
,p_button_name=>'GENERATE_POSITION'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate'
,p_button_position=>'EDIT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877599982177094821)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P1301_RETURN_VALUE.:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877600441317094822)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_POSITION',
'WHERE ID=:P1301_ID',
'AND VERIFIED_BY IS NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877600835861094822)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1301_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877601243782094823)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'if (:P1301_ID is not null and LENGTH(:P1301_VERIFIED_BY)=0) OR  (PKG_GLOBAL_FNTS.chk_verifier(nvl(V(''APP_USER''),USER),:APP_PAGE_ID)>0 AND :P1301_ID is not null) THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877602382512094824)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1301_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877602768336094824)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1301:&SESSION.::&DEBUG.:1301::'
,p_button_condition=>'P1301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877603152531094824)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'CHART'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Chart'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1301_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2877603605205094825)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(4325168017614128844)
,p_button_name=>'DESCRIPTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Description'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_security_scheme=>wwv_flow_imp.id(3279326301052677335)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2877620163311094842)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1301:&SESSION.::&DEBUG.:1301:P1301_GRADE_ID,P1301_ORGDTL_ID,P1301_START_DATE:&P1301_GRADE_ID.,&P1301_ORGDTL_ID.,&P1301_START_DATE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2877602382512094824)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2877620568682094843)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1300:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2877600441317094822)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2877622190226094844)
,p_branch_name=>'Branch_Chart'
,p_branch_action=>'f?p=&APP_ID.:1460:&SESSION.::&DEBUG.::P1460_ORGANISATION_STRUCTURE,P1460_RETURN_PAGE:&P1301_ORG_STRUCTURE_ID.,1301'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2877603152531094824)
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2877621780515094844)
,p_branch_name=>'Go To Page 1301'
,p_branch_action=>'f?p=&APP_ID.:1301:&SESSION.::&DEBUG.:1301:P1301_ID:&P1301_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>4
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2060504397012195)
,p_name=>'P1301_RETURN_VALUE'
,p_item_sequence=>650
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877556807868094767)
,p_name=>'P1301_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877557169544094767)
,p_name=>'P1301_JOB_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Job Name'
,p_source=>'JOB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'JOB_NAME_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DESCRIPTION, id',
'from hr_hcf_job V',
'where  Trunc(Start_Date) <= Trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and verified_by is not null',
'and org_id=:APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>60
,p_grid_label_column_span=>2
,p_read_only_when=>'P1301_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2877557597801094768)
,p_name=>'P1301_POSITION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Position Long Name'
,p_source=>'POSITION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877558022191094768)
,p_name=>'P1301_POSITION_ABV'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Position Short Name'
,p_source=>'POSITION_ABV'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>20
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877558432006094769)
,p_name=>'P1301_ORGDTL_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Organisation Structure'
,p_source=>'ORGDTL_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P1301_ID is null then',
'return',
'''Select Unit_Name||'''' ''''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'Where Trunc(M.Start_Date) <= Trunc(current_date)',
'and (trunc(m.end_date) is null or m.end_date >= trunc(current_date))',
'and  W.id= :APP_ORG_ID',
'order by 1'';',
'',
'else',
'return',
'''Select Unit_Name||'''' ''''||value_description A, m.Id',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where V.org_id= :APP_ORG_ID',
'order by 1'';',
'',
'end if;',
'        '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_read_only_when=>'P1301_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2877558789562094769)
,p_name=>'P1301_DEF_WORK_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Default Work Location'
,p_source=>'DEF_WORK_LOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORK_LOCATION_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877559147068094770)
,p_name=>'P1301_GRADE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Grade'
,p_source=>'GRADE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GRADE DESCRIPTION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select grade_description||''(''||grade_code||'')''  a, id',
'from hr_hcf_positiongrade V',
'where  org_id = :APP_ORG_SHR_DED',
'order by grade_code'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877559625189094770)
,p_name=>'P1301_GRADE_POINT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Grade Point'
,p_source=>'GRADE_POINT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, point',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P1301_GRADE_ID',
'and start_date <= trunc(current_date)',
'and nvl(end_date,trunc(current_date)) >=  trunc(current_date)',
'order by point_amount',
'',
'',
'/*select ''Point ''||point||'': ''||trim(to_char(point_amount,''$999,999,999,999'')) a, id',
'from HR_HCF_POSITIONGRADEPOINT',
'where position_grade_id=:P1301_GRADE_ID',
'order by point_amount*/',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Point--'
,p_lov_cascade_parent_items=>'P1301_GRADE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877560013982094771)
,p_name=>'P1301_GRADE_POINT_ID'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_use_cache_before_default=>'NO'
,p_source=>'GRADE_POINT_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877560356676094771)
,p_name=>'P1301_LOWER_SCALE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Lower Scale'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'LOWER_SCALE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877560750489094771)
,p_name=>'P1301_UPPER_SCALE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Upper Scale'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_source=>'UPPER_SCALE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877561163444094772)
,p_name=>'P1301_NO_REQUIRED_MIN'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_default=>'0'
,p_prompt=>'No Required Min'
,p_source=>'NO_REQUIRED_MIN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This is the minimum number of employees that can hold this position'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877562055583094773)
,p_name=>'P1301_NO_REQUIRED_MAX'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_default=>'0'
,p_prompt=>'No. Required Max'
,p_source=>'NO_REQUIRED_MAX'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This is the maximum number of employees that can hold this position'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877563013417094774)
,p_name=>'P1301_NO_FILLED'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_default=>'0'
,p_prompt=>'No. In Position'
,p_source=>'NO_FILLED'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_css_classes=>'DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'Current number of employees that hold this position'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877563896691094775)
,p_name=>'P1301_REPORT_TO_TECH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Report To Tech'
,p_source=>'REPORT_TO_TECH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    position_name || '' ('' || pg.grade_code || '')''',
'    || ''(''',
'    || od.unit_name',
'    || '')'' a,',
'    p.id b',
'FROM',
'    hr_hcf_position       p',
'    join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'    join hr_hcf_positiongrade pg on pg.id = p.grade_id               ',
'order by position_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1301_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Will only show matching or higher levels to report to. Ensure the position has a location.'
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
 p_id=>wwv_flow_imp.id(2877564830673094776)
,p_name=>'P1301_REPORT_TO'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Report To Admin'
,p_source=>'REPORT_TO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    position_name || '' ('' || pg.grade_code || '')''',
'    || ''(''',
'    || od.unit_name',
'    || '')'' a,',
'    p.id b',
'FROM',
'    hr_hcf_position       p',
'    join hr_hcf_orgstructuredtl od on p.orgdtl_id = od.id',
'    join hr_hcf_positiongrade pg on pg.id = p.grade_id',
' WHERE   org_id= :APP_ORG_ID',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_lov_cascade_parent_items=>'P1301_ORGDTL_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Will only show matching or higher levels to report to. Ensure the position has a location. '
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
 p_id=>wwv_flow_imp.id(2877565689349094777)
,p_name=>'P1301_POINTS'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'POINTS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877566110704094777)
,p_name=>'P1301_START_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2877566508724094778)
,p_name=>'P1301_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2877566869000094778)
,p_name=>'P1301_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
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
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877567336430094779)
,p_name=>'P1301_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P1301_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P1301_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1301_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877567651270094779)
,p_name=>'P1301_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'Description(Skills and Ability)'
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>70
,p_cMaxlength=>2000
,p_cHeight=>2
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877568089809094780)
,p_name=>'P1301_DESCRIPTION_DTL_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>590
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_source_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_default=>'KEYED'
,p_prompt=>'Description Detail Status'
,p_source=>'DESC_DTL_STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Keyed;KEYED,In Progress;IN_PROGRESS,Approved;APPROVED,Verified;VERIFIED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877569706913094781)
,p_name=>'P1301_STD_DETAIL_KEY'
,p_item_sequence=>610
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_use_cache_before_default=>'NO'
,p_source=>'STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877570102115094782)
,p_name=>'P1301_ORG_STRUCTURE_ID'
,p_item_sequence=>620
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ORG_STRUCTURE_ID',
'From Hr_Hcf_Orgstructuredtl',
'where id = :P1301_ORGDTL_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877570532505094782)
,p_name=>'P1301_COMENT_SWITCH'
,p_item_sequence=>630
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
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
 p_id=>wwv_flow_imp.id(2877571327790094783)
,p_name=>'P1301_WORK_FLOW_COMMENT'
,p_item_sequence=>640
,p_item_plug_id=>wwv_flow_imp.id(4235042594628644028)
,p_prompt=>'<font color="purple" size="2"><b>  Work Flow Notes</b> </font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877574353120094787)
,p_name=>'P1301_VERIFIED_BY'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(4235031696803643704)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2877575932718094789)
,p_name=>'P1301_FROM_POSITION'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(4245998223232410327)
,p_prompt=>'Gen From Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||(select JOB_CODE from HR_HCF_JOB where ID=b.job_id)||'' (''||initcap(unit_name)||'')'' A, b.id',
'from HR_HCF_POSITION b ',
'join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'where exists(select 1',
'            from Hr_Hcf_Orgstructurehd c',
'            where d.ORG_STRUCTURE_ID = c.ID',
'            and org_id=:APP_ORG_ID)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(2877576258766094789)
,p_name=>'P1301_TO_POSITION'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(4245998223232410327)
,p_prompt=>'Gen To Position'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||(select JOB_CODE from HR_HCF_JOB where ID=b.job_id)||'' (''||initcap(unit_name)||'')'' a, b.id',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'where trunc(b.start_date) <= trunc(current_date)',
'and (trunc(b.end_date) is null or trunc(b.end_date) >= trunc(current_date))',
'and b.id != :P1301_FROM_POSITION',
'AND exists(select 1',
'            from Hr_Hcf_Orgstructurehd c',
'            where d.ORG_STRUCTURE_ID = c.ID',
'            and org_id=:APP_ORG_ID)',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1301_FROM_POSITION'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
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
 p_id=>wwv_flow_imp.id(2877599248210094820)
,p_name=>'P1301_ENTRY_SCREEN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4292103789581677368)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(sum(case when emP_hist_change=0 then 1281 else 109 end ),1281) output',
'from hr_hcf_org_rule',
'where org_id = :APP_ORG_ID',
'and start_date < trunc(current_date)',
'and (end_date > trunc(current_date) or end_date is null)'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2877605352115094828)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  V_COUNT PLS_INTEGER:=0;',
'',
'begin',
'',
'select COUNT(1) INTO V_COUNT',
'from  hr_hcf_org_rule a',
'where org_id= :APP_ORG_ID',
'AND workflow_required =1',
'and ((to_date(:P1301_START_DATE) between trunc(start_date) and trunc(end_date) and end_date is not null)',
'OR  (trunc(start_date) <= to_date(:P1301_START_DATE) AND trunc(end_date) IS NULL ));',
'',
' IF V_COUNT>=1 and :P1301_TRANSACTION_TYPE_ID is null then',
'  return false;',
' else',
'  return true;',
' end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow mode is enabled, please select a transaction and subsequent status.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2877605039128094827)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1301_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1301_ID, :P1301_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2877606171109094829)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1301_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2877605834731094828)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>31
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1301_END_DATE) < TO_DATE(:P1301_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877608867122094831)
,p_name=>'pop_grades_data'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1301_JOB_ID'
,p_condition_element=>'P1301_JOB_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877609403476094832)
,p_event_id=>wwv_flow_imp.id(2877608867122094831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_LOWER_SCALE,P1301_UPPER_SCALE,P1301_GRADE_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select GRADE_MINI,GRADE_MAX,job_grade_id',
'from HR_HCF_POSITIONGRADE  a join HR_HCF_JOB b on a.id=b.job_grade_id',
'where b.ID=:P1301_JOB_ID',
'and  a.org_id=:APP_ORG_SHR_DED'))
,p_attribute_07=>'P1301_JOB_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877609815605094833)
,p_name=>'pop_description_data'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1301_JOB_ID'
,p_condition_element=>'P1301_JOB_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877610318497094833)
,p_event_id=>wwv_flow_imp.id(2877609815605094833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_DESCRIPTION,P1301_POSITION_ABV,P1301_POSITION_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOB_DESCRIPTION, job_code, DESCRIPTION',
'from HR_HCF_JOB a',
'where id=:P1301_JOB_ID',
'and a.org_id = :APP_ORG_SHR_DED',
''))
,p_attribute_07=>'P1301_JOB_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877610659256094833)
,p_name=>'show_hide_button'
,p_event_sequence=>21
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1301_TO_POSITION'
,p_condition_element=>'P1301_TO_POSITION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877611194517094834)
,p_event_id=>wwv_flow_imp.id(2877610659256094833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2877575512774094788)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877611693319094834)
,p_event_id=>wwv_flow_imp.id(2877610659256094833)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2877575512774094788)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877612104044094835)
,p_name=>'POS_DESC'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2877603605205094825)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877612580086094835)
,p_event_id=>wwv_flow_imp.id(2877612104044094835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:ID=&P1301_ID.,PeoplePay/01_HR/Standard_Letters/JOB_DESC'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}*/',
'',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_New_Cloud/01_HR/JOB_DESC-ID=&P1301_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=yes,di'
||'rectories=no, status=yes'');',
'if (window.focus) {win.focus();}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877613000464094835)
,p_name=>'Refresh Resp - Create'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3651430752390691422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877613422642094836)
,p_name=>'Refresh Exp - Create'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3651430563210675693)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877613767859094836)
,p_name=>'Refresh Qual - Create'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3651430360655665435)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877614177231094837)
,p_name=>'Refresh Interview - Create'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3661655164103834724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877614621739094837)
,p_name=>'Refresh Vacancy - Create'
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3651430061217656117)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877615142837094837)
,p_event_id=>wwv_flow_imp.id(2877614621739094837)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4234878511689787722)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877615457864094838)
,p_name=>'Refresh Vacancy - Edit'
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4234878511689787722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877615960861094838)
,p_event_id=>wwv_flow_imp.id(2877615457864094838)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4234878511689787722)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877616401085094839)
,p_name=>'show_comments'
,p_event_sequence=>160
,p_condition_element=>'P1301_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877616874822094839)
,p_event_id=>wwv_flow_imp.id(2877616401085094839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877617392508094840)
,p_event_id=>wwv_flow_imp.id(2877616401085094839)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877617797075094840)
,p_name=>'show_comment'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1301_COMENT_SWITCH'
,p_condition_element=>'P1301_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877618247899094841)
,p_event_id=>wwv_flow_imp.id(2877617797075094840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877618814005094841)
,p_event_id=>wwv_flow_imp.id(2877617797075094840)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2877619179065094842)
,p_name=>'dy_set_grade_point_id'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1301_GRADE_POINT'
,p_condition_element=>'P1301_GRADE_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2877619645080094842)
,p_event_id=>wwv_flow_imp.id(2877619179065094842)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1301_GRADE_POINT_ID,P1301_LOWER_SCALE,P1301_UPPER_SCALE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select gp.id,pg.grade_mini, pg.grade_max',
'from hr_hcf_positiongradepoint gp',
'join hr_hcf_positiongrade pg ON pg.id = gp.position_grade_id',
'where gp.position_grade_id=:P1301_GRADE_ID',
'and pg.org_id = :APP_ORG_SHR_DED',
'and gp.point = :P1301_GRADE_POINT',
'and (gp.end_date is null or gp.end_date > current_date) '))
,p_attribute_07=>'P1301_GRADE_ID,P1301_GRADE_POINT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2060400661012194)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4235042594628644028)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'frmposition DML'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>32452419812004731
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2877607689387094830)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2877600441317094822)
,p_internal_uid=>2761823555530781125
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2877606447445094829)
,p_process_sequence=>30
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
'where TRANSACTION_TYPE_ID=:P1301_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P1301_STATUS;',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||:P1301_POSITION_NAME,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1301_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Positions'',',
'	:P1301_STATUS,:APP_PAGE_ID,:P1301_TRANSACTION_TYPE_ID,',
'        ''HR_HCF_POSITION'', :P1301_WORK_FLOW_COMMENT, :P1301_ID);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2877601243782094823)
,p_process_when=>'P1301_TRANSACTION_TYPE_ID'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_internal_uid=>2761822313588781124
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2877608505967094831)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_related_data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'pkg_generators.generate_jobexperience ( :P1301_FROM_POSITION,:P1301_TO_POSITION) ;  ',
'pkg_generators.generate_responsibility( :P1301_FROM_POSITION,:P1301_TO_POSITION);',
'pkg_generators.generate_training( :P1301_FROM_POSITION,:P1301_TO_POSITIONr);',
'--pkg_generators.generate_worklocation( :P1301_FROM_POSITION,:P1301_TO_POSITION);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2877575512774094788)
,p_internal_uid=>2761824372110781126
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1985282191326208)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4235042594628644028)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form frmposition'
,p_internal_uid=>32377301342318745
);
wwv_flow_imp.component_end;
end;
/
