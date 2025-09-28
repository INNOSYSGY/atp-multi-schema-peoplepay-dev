prompt --application/pages/page_01482
begin
--   Manifest
--     PAGE: 01482
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1482
,p_name=>'rptApprovalHistory'
,p_step_title=>'Listing Approval History'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(475973871901706795)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3536926859992507835)
,p_plug_name=>'Listing of Transaction Approvals'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select employee,initcap(position) position,action,date_of_action,created_by user_name,',
'case table_name when ''HR_MED_MEDICALHISTORYDTL'' then ''Medical History''',
'                when ''HR_LV_LEAVEHISTORY'' then ''Leave History''',
'                when ''HR_ATT_ACTIVITY''  then ''Attendance Activity''',
'                when ''HR_GRI_DISCIPLINE''  then ''Discipline Management''',
'                when ''HR_MOV_EMPMOVEMENT'' then ''Movement Management''',
'                when ''HR_DOC_MEMORANDA'' then ''Document Management''',
'                when ''PA_PMG_PAYROLLHD'' then ''Payroll Management''',
'                when ''HR_MOV_SEPARATIONBENEFIT'' then ''Separation Management''',
'                when ''HR_LV_MAKEUPPAYMENT''  then ''Payment for Lost of Income''         ',
'                when ''HR_APU_STANDARDINCREASE'' then ''Salary Increase/Decrease''                      ',
'end source',
'/*',
',case when table_name=''TBLINVENTORYITEM'' then (select trim(generic_name)||''(''|| trim(brand_name)||'')''||'': ''||segment1||'': ''||tblinventoryitem.drug_strength from tblinventoryitem where inventory_item_id=table_name_key)',
'      when table_name=''TBLPURCHASEREQ'' then (select decode(pre_no_req_no,null,to_char(purchase_req_id),pre_no_req_no) from tblpurchasereq  where purchase_req_id=table_name_key)',
'      when table_name=''TBLMISCTRANS'' then  (select decode(misc_trans_code,null,to_char(misc_trans_id),misc_trans_code)  from tblmisctrans  where misc_trans_id=table_name_key)',
'      when table_name=''TBLPIHEADER'' then   (select decode(pi_code,null,to_char(pi_header_id),pi_code)  from tblpiheader  where pi_header_id=table_name_key)',
'      when table_name=''TBLPOHEADER'' then   (select to_char(po_header_id) from tblpoheader  where po_header_id=table_name_key)',
'      when table_name=''TBLQUOTATION'' then   (select quotation_no from tblquotation  where quotation_id=table_name_key)',
'      when table_name=''TBLREQUESTQUOTATION'' then  (select to_char(RFQ_ID) from TBLREQUESTQUOTATION  where RFQ_ID=table_name_key)',
'      when table_name=''TBLSTORESREQ'' then   (select decode(pre_no_req_no,null,to_char(stores_req_no),pre_no_req_no)  from tblstoresreq  where stores_req_no=table_name_key)',
'       end source_value',
' */      ',
',case table_name when ''HR_MED_MEDICALHISTORYDTL'' then ''Medical History''',
'                when ''HR_LV_LEAVEHISTORY'' then ''Leave History''',
'                when ''HR_ATT_ACTIVITY''  then ''Attendance Activity''',
'                when ''HR_GRI_DISCIPLINE''  then ''Discipline Management''',
'                when ''HR_MOV_EMPMOVEMENT'' then ''Movement Management''',
'                when ''HR_DOC_MEMORANDA'' then ''Document Management''',
'                when ''PA_PMG_PAYROLLHD'' then ''Payroll Management''',
'                when ''HR_MOV_SEPARATIONBENEFIT'' then ''Separation Management''',
'                when ''HR_LV_MAKEUPPAYMENT''  then ''Payment for Lost of Income''         ',
'                when ''HR_APU_STANDARDINCREASE'' then ''Salary Increase/Decrease''                      ',
'end source_value        ',
'from tblapprovalhistory',
'where table_name not like ''TBL%''',
'and org_id=:APP_ORG_ID',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3536926641406507834)
,p_name=>'Listing of Transaction Approvals'
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
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>115912524740479735
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611344368923882568)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EMPLOYEE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611344003129882552)
,p_db_column_name=>'POSITION'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Position'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'POSITION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611343661920882550)
,p_db_column_name=>'ACTION'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Action'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611343218903882549)
,p_db_column_name=>'DATE_OF_ACTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date Of Action'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_OF_ACTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611342847116882549)
,p_db_column_name=>'USER_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'USER_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611342423990882547)
,p_db_column_name=>'SOURCE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Source'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SOURCE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3611341986561882547)
,p_db_column_name=>'SOURCE_VALUE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Source Value'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SOURCE_VALUE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3536925840895507832)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'414975'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMPLOYEE:POSITION:ACTION:SOURCE:SOURCE_VALUE:USER_NAME:DATE_OF_ACTION'
,p_break_on=>'SOURCE:0:0:0:0:0'
,p_break_enabled_on=>'SOURCE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3611341261544882541)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3536926859992507835)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
