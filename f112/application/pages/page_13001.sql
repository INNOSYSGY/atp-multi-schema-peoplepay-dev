prompt --application/pages/page_13001
begin
--   Manifest
--     PAGE: 13001
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
 p_id=>13001
,p_name=>'frmEmpEntitlement_new'
,p_alias=>'FRMEMPENTITLEMENT-NEW'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Employee Remuneration'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(43745288751930753)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_dialog_width=>'1000'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3428911657978565554)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4680316196437558652)
,p_plug_name=>'Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--danger'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<font color="red" size="3"><b>',
' This entitlement Tax/NIB/SS options are the opposite to that define by the Income Code Configuration!</b></font>'))
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_employment_type_id number(10); v_taxable number(10):=0;   v_NIS number(10):=0; ',
'    ',
'begin',
'    select employment_type_id into v_employment_type_id',
'    from hr_rcm_employee',
'    where id = :P13001_EMP_ID;',
'    ',
'    select taxable, NIS_DEDUCTION into v_taxable, v_NIS',
'    from pa_pcf_incomecode',
'    where id = :P13001_INCOME_CODE_ID;',
'',
'    if v_taxable =1 and :P13001_TAXABLE = 0 and v_employment_type_id=2 then',
'        return TRUE;',
'    elsif v_NIS =1 and :P13001_NIS_DEDUCTION = 0 and v_employment_type_id=2 then',
'        return TRUE;',
'    else',
'        return FALSE;',
'    end if;',
'exception',
'    when others then null;',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(4834332735259748923)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_RCM_EMPENTITLE',
'where  id = :P13001_ID'))
,p_display_when_condition=>':P13001_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13001_ID'
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
 p_id=>wwv_flow_imp.id(159046578317008431)
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
 p_id=>wwv_flow_imp.id(159046706490008432)
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
 p_id=>wwv_flow_imp.id(159046746896008433)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159046889067008434)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159046937393008435)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(159047122649008436)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4831732126683169125)
,p_plug_name=>'Audit Trail'
,p_parent_plug_id=>wwv_flow_imp.id(4834332735259748923)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE_aud.ID as ID,',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,entry_date_aud, entry_by_aud,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,prorate, proration_days,',
'    AMOUNT as AMOUNT,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE_aud.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    START_DATE as START_DATE,',
'    END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE_aud.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPENTITLE_aud.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE_aud.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE_aud.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE_aud.MACHINE_INSERT as MACHINE_INSERT,',
'    HR_RCM_EMPENTITLE_aud.VERIFIED_BY, ',
'    HR_RCM_EMPENTITLE_aud.VERIFIED_DATE,',
'    HR_RCM_EMPENTITLE_aud.APPROVED_BY,',
'    HR_RCM_EMPENTITLE_aud.APPROVED_DATE,',
'    employee_status,',
'        compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        employment_status,',
'        employment_class,',
'        payment_type,',
'        wklocation_id',
' from HR_RCM_EMPENTITLE_aud join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE_aud.emp_id=v.id',
'where HR_RCM_EMPENTITLE_aud.id = :P13001_ID',
'ORDER BY START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13001_EMP_ID'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4831731835571169122)
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
,p_owner=>'GPL'
,p_internal_uid=>2581357791063192514
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854040708254863175)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854040342726863175)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854039923674863174)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854039491542863174)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3310448299870709931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854039092475863174)
,p_db_column_name=>'PRORATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Prorate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854038729637863173)
,p_db_column_name=>'PRORATION_DAYS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Proration Days'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854038263114863173)
,p_db_column_name=>'EMP_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326577844798849578)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854037855191863172)
,p_db_column_name=>'START_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854037467689863172)
,p_db_column_name=>'END_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854037079043863172)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854036666387863171)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854036277557863171)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854035944133863170)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854035480326863170)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854035125388863169)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854034683212863169)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326548349276798356)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854034293351863169)
,p_db_column_name=>'TAXABLE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854033907901863168)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854033445682863167)
,p_db_column_name=>'AMOUNT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854033057747863167)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854032691569863166)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854032341518863166)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854031907449863166)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854031529435863165)
,p_db_column_name=>'REMARKS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854031077424863165)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854030726360863164)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854030295813863164)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854029916645863163)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854029455651863163)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854029130909863162)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854028668140863162)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854028250663863162)
,p_db_column_name=>'ENTRY_DATE_AUD'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Entry Date Aud'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854027851128863161)
,p_db_column_name=>'ENTRY_BY_AUD'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Entry By Aud'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854041114182863176)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854041489377863176)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854041936879863177)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854042322268863177)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY HH24:MI:SS'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4828750329215566245)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6036686'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:WKLOCATION_ID:ENTRY_DATE_AUD:ENTRY_BY_AUD:INCOME_CODE_ID:PRORATE:START_DATE:END_DATE:TAXABLE:NIS_DEDUCTION:AMOUNT:EXPENSE_CODE_ID:STD_DETAIL_KEY:ADMIN_STATUS:PERCENTAGE:REMARKS:QUICK_ENTRY::VERIFIED_BY:VERIFIED_DA'
||'TE:APPROVED_BY:APPROVED_DATE'
,p_break_on=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:WKLOCATION_ID:0:0'
,p_break_enabled_on=>'EMP_ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:WKLOCATION_ID:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4834342737997748941)
,p_plug_name=>'Create/Edit Other Remuneration'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4834334408152748924)
,p_plug_name=>'Generate Rules'
,p_parent_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>31
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4834355876863749037)
,p_plug_name=>'Search Employee Fringe Benefits'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_EMPENTITLE.ID as ID, HR_RCM_EMPENTITLE.ID as PK_ID,',
'    EMP_ID as EMP_ID,',
'    INCOME_TYPE as INCOME_TYPE,',
'    INCOME_CODE_ID as INCOME_CODE_ID,',
'    case when TAXABLE=1 then ''Yes'' else ''No'' end as TAXABLE,',
'    case when NIS_DEDUCTION=1 then ''Yes'' else ''No'' end as NIS_DEDUCTION,prorate, proration_days,',
'    AMOUNT as AMOUNT,',
'    EXPENSE_CODE_ID as EXPENSE_CODE_ID,',
'    STD_DETAIL_KEY as STD_DETAIL_KEY,',
'    ADMIN_STATUS as ADMIN_STATUS,',
'    PERCENTAGE as PERCENTAGE,',
'    HR_RCM_EMPENTITLE.REMARKS as REMARKS,',
'    case when QUICK_ENTRY=1 then ''Yes'' else ''No'' end as QUICK_ENTRY,',
'    START_DATE as START_DATE,',
'    END_DATE as END_DATE,',
'    HR_RCM_EMPENTITLE.ENTERED_BY as ENTERED_BY,',
'    HR_RCM_EMPENTITLE.ENTRY_DATE as ENTRY_DATE,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_RCM_EMPENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_RCM_EMPENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'    employee_status,',
'        compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        employment_status,',
'        employment_class,',
'        payment_type,',
'        wklocation_id',
' from HR_RCM_EMPENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPENTITLE.emp_id=v.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type                ',
'              )          ',
'AND (:P13001_INIT_SEARCH =1 OR HR_RCM_EMPENTITLE.EMP_ID =:P13001_EMP_ID)',
'ORDER BY START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13001_EMP_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4834355502144749029)
,p_name=>'Search Employee Rules'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'TOP_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_owner=>'PPLERP'
,p_internal_uid=>2583981457636772421
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854063367475863207)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:13001:&SESSION.::&DEBUG.:13001:P13001_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854063803842863207)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326577844798849578)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854064197074863208)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854064556084863208)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854064953309863209)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854065443431863209)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854065774420863210)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854066218978863210)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854066598088863210)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854066960994863211)
,p_db_column_name=>'INCOME_TYPE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Income Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INCOME_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854067430026863211)
,p_db_column_name=>'INCOME_CODE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Income Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCOME_CODE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326548349276798356)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854067821296863211)
,p_db_column_name=>'TAXABLE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Taxable'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TAXABLE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854068205371863212)
,p_db_column_name=>'NIS_DEDUCTION'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'NIB/SS Deduction'
,p_column_type=>'STRING'
,p_static_id=>'NIS_DEDUCTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854068562149863212)
,p_db_column_name=>'AMOUNT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_tz_dependent=>'N'
,p_static_id=>'AMOUNT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854068953815863213)
,p_db_column_name=>'EXPENSE_CODE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Expense Code'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'EXPENSE_CODE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854069344529863213)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'STD_DETAIL_KEY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854069781818863213)
,p_db_column_name=>'ADMIN_STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Admin Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADMIN_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854070171991863214)
,p_db_column_name=>'PERCENTAGE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854070583884863214)
,p_db_column_name=>'REMARKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854071011874863215)
,p_db_column_name=>'QUICK_ENTRY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Quick Entry'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'QUICK_ENTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854061830147863205)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854061360371863205)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854060995745863204)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854060634293863204)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854060152161863203)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854059754542863203)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854059396155863202)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854058962328863202)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>100
,p_column_identifier=>'AB'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854058640932863201)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3310448299870709931)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854062587843863206)
,p_db_column_name=>'PRORATE'
,p_display_order=>120
,p_column_identifier=>'AD'
,p_column_label=>'Prorate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854062174356863206)
,p_db_column_name=>'PRORATION_DAYS'
,p_display_order=>130
,p_column_identifier=>'AE'
,p_column_label=>'Proration Days'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2854063026780863207)
,p_db_column_name=>'PK_ID'
,p_display_order=>140
,p_column_identifier=>'AF'
,p_column_label=>'Pk Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4834346891321749011)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6036973'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:INCOME_TYPE:ID:INCOME_CODE_ID:TAXABLE:NIS_DEDUCTION:AMOUNT:ADMIN_STATUS:PERCENTAGE:START_DATE:END_DATE:QUICK_ENTRY::PRORATE:PRORATION_DAYS:PK_ID'
,p_break_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:INCOME_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854020102079863151)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:&P13001_RETURN_VALUE.:&SESSION.::&DEBUG.:247::'
,p_button_condition=>'P13001_RETURN_VALUE'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854057122594863199)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4834334408152748924)
,p_button_name=>'P13001_GEN_RULE'
,p_button_static_id=>'P13001_GEN_RULE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate Rules'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3279326921157677335)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854071766123863215)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4834355876863749037)
,p_button_name=>'INITIALISE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854020472577863152)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P13001_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854020881792863152)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P13001_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854021284051863153)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13001_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854022863658863154)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13001:&SESSION.::&DEBUG.:13001:P13001_EMP_ID:&P13001_EMP_ID.'
,p_button_condition=>':P13001_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854021742336863153)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13001_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854022075254863154)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM pa_pmg_payrollincome a',
'WHERE empent_id=:P13001_ID',
'union',
'select 1',
'from pa_pcf_adhocpayment',
'where empent_id=:P13001_ID'))
,p_button_condition_type=>'NOT_EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2854022491647863154)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(3428911657978565554)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P13001_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2854091428450863238)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:13001:&SESSION.::&DEBUG.:13001:P13001_EMP_ID:&P13001_EMP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2854021284051863153)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2854091766297863239)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2854022075254863154)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2854092201512863239)
,p_branch_action=>'f?p=&APP_ID.:13001:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2854092631916863239)
,p_branch_name=>'Go To Page 13001'
,p_branch_action=>'f?p=&APP_ID.:13001:&SESSION.::&DEBUG.::P13001_ID:&P13001_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2854022491647863154)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2854092987079863239)
,p_branch_action=>'f?p=&APP_ID.:13001:&SESSION.::&DEBUG.::P13001_ID:&P13001_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2854020472577863152)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(24860019537813190)
,p_name=>'P13001_INCOME_PAYROLL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RG'
,p_source=>'INCOME_PAYROLL'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159047194507008437)
,p_name=>'P13001_MACHINE_INSERT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(4834332735259748923)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(159047308955008438)
,p_name=>'P13001_MACHINE_UPDATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(4834332735259748923)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854025198579863157)
,p_name=>'P13001_VERIFIED_BY'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4834332735259748923)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854043094583863179)
,p_name=>'P13001_INIT_SEARCH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4831732126683169125)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854043810516863180)
,p_name=>'P13001_SOURCE_LOAD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854044230460863181)
,p_name=>'P13001_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854044629881863181)
,p_name=>'P13001_EMP_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE x',
'where  exists(select 1        ',
'     from vw_useraccess_finegrain k',
'     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'     and user_name=:APP_USER)  ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>':P13001_ID is not null'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2854045016896863182)
,p_name=>'P13001_EMPLOYEE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_prompt=>'Employee'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||'' (''||y.organisation_name||'':-''||initcap(employment_class||'' ''||payment_type)||'' No.:''||EMP_COMPANY_NO||'')'' a',
'from VW_EMPLOYEE X join HR_RCM_INDIVIDUAL Z on Z.id=X.IND_ID',
'join HR_HCF_ORGANISATION Y on Y.id=X.ORG_ID',
'WHERE X.ID=nvl(:P13001_EMP_ID,:P1281_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854045433964863182)
,p_name=>'P13001_ADD_RELATED_RECORDS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,',
'APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1281_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1281---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1',
'and application_id=:APP_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P1281_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854045841859863183)
,p_name=>'P13001_INCOME_CODE_ID'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Income Code '
,p_source=>'INCOME_CODE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_named_lov=>'INCOME_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description, id',
'from pa_pcf_incomecode v',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and v.org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_cSize=>30
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from pa_pmg_payrollincome',
'where empent_id=:P13001_ID'))
,p_read_only_when_type=>'EXISTS'
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
 p_id=>wwv_flow_imp.id(2854046148519863183)
,p_name=>'P13001_PERCENT_OPTION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Computation Factor'
,p_source=>'PERCENT_OPTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COMPUTATION_FACTOR'
,p_lov=>'.'||wwv_flow_imp.id(3091535987007561119)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>'Please note for entitlements that are based on hourly rate e.g overtime and double time. The Option Selected from this field plus basic pay divided by standard hours are used to compute the rate or amount value.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854047142599863184)
,p_name=>'P13001_INCOME_TYPE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Income Type'
,p_source=>'INCOME_TYPE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854047459708863185)
,p_name=>'P13001_ENTITLEMENT_CURRENCY'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_item_default=>'GYD'
,p_prompt=>'Currency'
,p_source=>'ENTITLEMENT_CURRENCY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CURRENCY_CONVERSION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct  TO_CHAR(value_description) b, TO_CHAR(EMP_CURRENCY) A',
'from  PA_PCF_EARNINGCURRENCY a join hr_hcf_lookup b on table_value=EMP_CURRENCY',
'where a.org_id =:APP_ORG_SHR_DED',
'UNION',
'SELECT distinct value_description A , TO_CHAR(BASE_CURRENCY) B',
'FROM HR_HCF_ORGANISATION a join hr_hcf_lookup b on upper(b.table_value)=upper(a.BASE_CURRENCY)',
'WHERE a.user_org_id=b.org_id',
'and table_name=''TBLCURRENCY''',
'and a.ID =:APP_ORG_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854047846573863185)
,p_name=>'P13001_PERCENTAGE'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Percentage'
,p_source=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM PA_PMG_PAYROLLINCOME',
'WHERE EMPENT_ID=:P13001_ID'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Enter the actual percent e.g 20 for 20%. This value is used in conjunction with the computation factor for entitlements that DO NOT use hourly rates in its computation'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854048841430863187)
,p_name=>'P13001_NIS_DEDUCTION'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'NIB/SS Deduction'
,p_source=>'NIS_DEDUCTION'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_read_only_when=>'P13001_INCOME_CODE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(2854049230917863187)
,p_name=>'P13001_QUICK_ENTRY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_item_default=>'1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Quick Entry'
,p_source=>'QUICK_ENTRY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(2854049604993863188)
,p_name=>'P13001_TAXABLE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Taxable'
,p_source=>'TAXABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when=>'P13001_INCOME_CODE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(2854050036554863189)
,p_name=>'P13001_AMOUNT'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Amount'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_source=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_read_only_when=>'P13001_VERIFIED_BY'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_item_comment=>'Please note if the entitlement is based on the hourly rate, then this rate represents the unit rate or alternative hourly rate.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854050333517863189)
,p_name=>'P13001_ADMIN_STATUS'
,p_is_required=>true
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Admin Status'
,p_source=>'ADMIN_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:MAN;MAN,SYS;SYS,BOTH;BOTH'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_read_only_when=>'P13001_INCOME_CODE_ID'
,p_read_only_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854050726820863190)
,p_name=>'P13001_PENSIONABLE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Pensionable'
,p_source=>'PENSIONABLE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>'Use to indicate if this entitlement is to be added to basic pay for the computation of Pension Deduction amount.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854051573712863191)
,p_name=>'P13001_INCOME_STATUS'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_item_default=>'IP'
,p_prompt=>'Income Status'
,p_source=>'INCOME_STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEDUCTION_STATUS'
,p_lov=>'.'||wwv_flow_imp.id(3326617015677913802)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854051986483863192)
,p_name=>'P13001_PRORATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Prorate'
,p_source=>'PRORATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2854052376656863193)
,p_name=>'P13001_PRORATION_DAYS'
,p_is_required=>true
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Proration Days'
,p_source=>'PRORATION_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Calendar Days;CALENDAR_DAYS,Standard Days;STANDARD_DAYS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854052791962863193)
,p_name=>'P13001_START_DATE'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_read_only_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select 1',
' from PA_PMG_PAYROLLINCOME',
' where EMPENT_ID=:P13001_ID;'))
,p_read_only_when_type=>'EXISTS'
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(2854053174355863194)
,p_name=>'P13001_END_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(2854053562354863194)
,p_name=>'P13001_STD_DETAIL_KEY'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Inc Key'
,p_source=>'STD_DETAIL_KEY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854053950851863195)
,p_name=>'P13001_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
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
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854054403232863195)
,p_name=>'P13001_STATUS'
,p_is_required=>true
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
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
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P13001_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P13001_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P13001_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854054836661863196)
,p_name=>'P13001_REMARKS'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>90
,p_cMaxlength=>2000
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854055157901863196)
,p_name=>'P13001_ID_COUNT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
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
 p_id=>wwv_flow_imp.id(2854055636745863197)
,p_name=>'P13001_RETURN_VALUE'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854055955088863197)
,p_name=>'P13001_ID_NEXT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854056365466863198)
,p_name=>'P13001_ID_PREV'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(4834342737997748941)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854057452412863199)
,p_name=>'P13001_SOURCE_EMPLOYEE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4834334408152748924)
,p_prompt=>'Source Employee'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')'' a,x.ID b',
'From Vw_Employee X Join Hr_Rcm_Individual Z On Z.Id=X.Ind_Id',
'Where upper(Payment_Type) = (select UPPER(PAYMENT_TYPE) from hr_rcm_employee where id = :P13001_EMP_ID)',
'And Employment_Class_Id   = (select UPPER(EMPLOYMENT_CLASS_ID) from hr_rcm_employee where id = :P13001_EMP_ID)',
'and org_id                = (select UPPER(org_id ) from hr_rcm_employee where id = :P13001_EMP_ID)',
'and SEPARATED_STATUS is null',
'and x.id !=:P13001_EMP_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854057913705863200)
,p_name=>'P13001_SOURCE_EMP_START'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4834334408152748924)
,p_prompt=>'Source Emp Start'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  select DISTINCT START_DATE a, START_DATE b',
'  from HR_RCM_EMPRULE',
' where emp_id=:P13001_SOURCE_EMPLOYEE',
'  order by 1 desc '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P13001_SOURCE_EMPLOYEE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2854072180777863216)
,p_name=>'P13001_INIT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4834355876863749037)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854074841496863221)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empentitle a',
'    join pa_pcf_incomecode b on a.income_code_id = b.id',
'where a.emp_id=:P13001_EMP_ID',
'and a.income_code_id=:P13001_INCOME_CODE_ID',
'and b.allow_entitle_overlap = 0',
'and (a.end_date is null or a.end_date > current_date);',
'',
'IF  v_cnt >=1 AND :P13001_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'An active Income code for this employee exist, close it first before entering new entitlement.',
''))
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854075164508863222)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>2
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empentitle a',
'    join pa_pcf_incomecode b on a.income_code_id = b.id',
'where a.emp_id=:P13001_EMP_ID',
'and a.income_code_id=:P13001_income_code_id',
'and b.allow_entitle_overlap = 0',
'and (a.end_date is null or a.end_date > current_date)',
'and a.id !=:P13001_ID;',
'',
'',
'IF  v_cnt >=1 AND :P13001_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'System already has an active record for this income code for this employee, only one is allowed!',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854074367494863221)
,p_validation_name=>'chk_spaning_date'
,p_validation_sequence=>3
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empentitle a',
'    join pa_pcf_incomecode b on a.income_code_id = b.id',
'where a.emp_id=:P13001_EMP_ID',
'and (to_date(:P13001_START_DATE) between a.start_date and a.end_date',
'     or to_date(:P13001_START_DATE) < a.start_date and :P13001_END_DATE is null',
'     or to_date(:P13001_START_DATE) > a.start_date and a.end_date is null )',
'and income_code_id=:P13001_income_code_id',
'and b.allow_entitle_overlap = 0',
'and a.id != :P13001_ID;',
'',
'',
'if v_cnt > 0 then',
'  return FALSE;',
'else',
'  return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Spanning date values not allowed please change the start date for the record entered.',
''))
,p_when_button_pressed=>wwv_flow_imp.id(2854020881792863152)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854077173780863223)
,p_validation_name=>'chk_spaning_date_1'
,p_validation_sequence=>13
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empentitle a',
'    join pa_pcf_incomecode b on a.income_code_id = b.id',
'where a.emp_id=:P13001_EMP_ID',
'and (to_date(:P13001_START_DATE) between a.start_date and a.end_date',
'     or to_date(:P13001_START_DATE) < a.start_date and :P13001_END_DATE is null',
'     or to_date(:P13001_START_DATE) > a.start_date and a.end_date is null )',
'and income_code_id=:P13001_income_code_id',
'and b.allow_entitle_overlap = 0;',
'',
'',
'if v_cnt > 0 then',
'  return FALSE;',
'else',
'  return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Spanning date values not allowed please change the start date for the record entered.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854075588912863222)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>23
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P13001_END_DATE) < TO_DATE(:P13001_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_always_execute=>'Y'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854075985451863222)
,p_validation_name=>'chk_empdate_with_sal_date'
,p_validation_sequence=>33
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_dt_emp number(4);',
'',
'begin',
'select extract(year from DATE_EMPLOYED) into v_dt_emp',
'from hr_rcm_employee',
'where id=:P13001_EMP_ID;',
'',
'if v_dt_emp > extract(year from to_date(:P13001_START_DATE)) then',
'return FALSE;',
'else',
'return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Additional remuneration date not compatible with the employment date.'
,p_always_execute=>'Y'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854074016403863221)
,p_validation_name=>'enf_allow_tax'
,p_validation_sequence=>43
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_employment_type_id number(10); v_taxable number(10):=0;   v_NIS number(10):=0; ',
'    ',
'begin',
'    select employment_type_id into v_employment_type_id',
'    from hr_rcm_employee',
'    where id = :P13001_EMP_ID;',
'    ',
'    select taxable, NIS_DEDUCTION into v_taxable, v_NIS',
'    from pa_pcf_incomecode',
'    where id = :P13001_INCOME_CODE_ID;',
'',
'    if v_taxable =1 and :P13001_TAXABLE = 0 and v_employment_type_id=2 then',
'        return FALSE;',
'    elsif v_NIS =1 and :P13001_NIS_DEDUCTION = 0 and v_employment_type_id=2 then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You cannot make this allowance non taxable/NIS for permanent employees, its set as a taxable allowance employee needs to be Temporary.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854073555520863220)
,p_validation_name=>'enf_complete_close'
,p_validation_sequence=>53
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (:P13001_INCOME_STATUS =''CL'' and :P13001_END_DATE is null)',
'     or (:P13001_INCOME_STATUS !=''CL'' and  :P13001_END_DATE is not null)',
'       -- or (:P13001_INCOME_STATUS !=''CL'' and :P13001_END_DATE is not null)',
'       --or (:P13001_INCOME_STATUS =''CL'' and  :P13001_END_DATE is null)',
'       -- or (:P13001_INCOME_STATUS =''CL'' and  :P13001_END_DATE is not null)  ',
'       then',
'    return FALSE;',
'else',
'    return TRUE;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'For a Entitlement to be closed, the Income Status must be Closed, along with a Closed Date and Close By. Before a record is completely closed.'
,p_always_execute=>'Y'
,p_validation_condition=>'CREATE_AGAIN,CREATE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854076375971863223)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>63
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and upper(pkg_global_fnts.status_descript(:P13001_STATUS)) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854076823164863223)
,p_validation_name=>'reject_approval_unapproval'
,p_validation_sequence=>73
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_approver(:APP_USER)=0 and upper(pkg_global_fnts.status_descript(:P13001_STATUS)) like ''%APP%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not an approver, action disallowed.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854077984038863224)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>83
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P13001_START_DATE, :P13001_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow mode is enabled, please select a transaction and subsequent status.',
''))
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854078440571863225)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>93
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P13001_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P13001_ID, :P13001_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854077629355863224)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>103
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_RCM_EMPENTITLE''',
'        and table_name_key=:P13001_ID;',
'        ',
'    if v_test_approval = 0 and UPPER(pkg_global_fnts.status_descript(:P13001_STATUS)) like upper(''VER%'') then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(2854020881792863152)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2854078818186863225)
,p_validation_name=>'chk_overlap'
,p_validation_sequence=>113
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'    v_overlap number:=0;',
'begin',
'',
'    select ',
'        allow_entitle_overlap into v_overlap',
'    from pa_pcf_incomecode',
'    where id = :P13001_INCOME_CODE_ID;',
'',
'    if v_overlap = 0 then',
'    return false;',
'    else',
'    return true;',
'    end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This entitlement is set to not allow overlap. Therefore multiple active instances of this entitlement cannot exist for an employee.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2854083915529863230)
,p_name=>'set_nis_tax'
,p_event_sequence=>9
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_INCOME_CODE_ID'
,p_condition_element=>'P13001_INCOME_CODE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854084429520863230)
,p_event_id=>wwv_flow_imp.id(2854083915529863230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_TAXABLE,P13001_NIS_DEDUCTION,P13001_ADMIN_STATUS,P13001_PERCENT_OPTION,P13001_INCOME_TYPE,P13001_PRORATION_DAYS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAXABLE,NIS_DEDUCTION,ADMIN_STATUS,inc_percent_option, INCOME_TYPE,PRORATION_DAYS',
'from PA_PCF_INCOMECODE',
'where id=:P13001_INCOME_CODE_ID'))
,p_attribute_07=>'P13001_INCOME_CODE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2854084759167863230)
,p_name=>'show_hide_button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_SOURCE_EMP_START'
,p_condition_element=>'P13001_SOURCE_EMP_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854085311685863232)
,p_event_id=>wwv_flow_imp.id(2854084759167863230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2854057122594863199)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854085792213863233)
,p_event_id=>wwv_flow_imp.id(2854084759167863230)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2854057122594863199)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2854086165768863233)
,p_name=>'compute_percent_basic'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_PERCENT_OPTION'
,p_condition_element=>'P13001_PERCENT_OPTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854086695250863234)
,p_event_id=>wwv_flow_imp.id(2854086165768863233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_global_fnts.fn_ComputeEntPercentof(:P13001_INCOME_CODE_ID, replace(nvl(:P13001_AMOUNT,0),''$'',''''), nvl(:P13001_START_DATE, current_date), :P13001_PERCENT_OPTION, :P13001_EMP_ID, :P13001_PERCENTAGE, :P13001_TAXABLE) out_value',
'from pa_pcf_incomecode',
'where id = :P13001_INCOME_CODE_ID'))
,p_attribute_07=>'P13001_INCOME_CODE_ID,P13001_AMOUNT,P13001_START_DATE,P13001_PERCENT_OPTION,P13001_EMP_ID,P13001_PERCENTAGE,P13001_TAXABLE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2854087049702863234)
,p_name=>'hide_show_emp_id'
,p_event_sequence=>30
,p_condition_element=>'P13001_SOURCE_LOAD'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854087573889863234)
,p_event_id=>wwv_flow_imp.id(2854087049702863234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_EMP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854088079592863235)
,p_event_id=>wwv_flow_imp.id(2854087049702863234)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854088555815863235)
,p_event_id=>wwv_flow_imp.id(2854087049702863234)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_EMP_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854089094525863236)
,p_event_id=>wwv_flow_imp.id(2854087049702863234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_EMPLOYEE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2854089450314863236)
,p_name=>'set_reg_status_for_future'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_START_DATE,P13001_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854090026478863237)
,p_event_id=>wwv_flow_imp.id(2854089450314863236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_INCOME_STATUS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when :P13001_START_DATE > trunc(current_date) then ''RG''',
'            when :P13001_END_DATE < trunc(current_date) then ''CL''',
'            ELSE ''IP'' end set_value',
'from dual'))
,p_attribute_07=>'P13001_START_DATE,P13001_END_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2854090440784863237)
,p_name=>'Set Amount Based On Income Code Fix Amount'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_INCOME_CODE_ID'
,p_condition_element=>'P13001_INCOME_CODE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2854090922404863238)
,p_event_id=>wwv_flow_imp.id(2854090440784863237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(rate_amount,0)',
'from pa_pcf_incomecode',
'where id = :P13001_INCOME_CODE_ID',
'and org_id = :APP_ORG_ID'))
,p_attribute_07=>'P13001_INCOME_CODE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(101022217685720835)
,p_name=>'Assign def date'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_INCOME_CODE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(101022658783720840)
,p_event_id=>wwv_flow_imp.id(101022217685720835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_START_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0; v_DATE_EMPLOYED date;',
'begin',
'',
'    select DATE_EMPLOYED into v_DATE_EMPLOYED',
'    from HR_RCM_EMPLOYEE b',
'    where ID =:P13001_EMP_ID;',
'',
'    SELECT COUNT(1) into v_count',
'    from HR_RCM_EMPENTITLE',
'    where EMP_ID =:P13001_EMP_ID',
'    and income_code_id = :P13001_INCOME_CODE_ID;',
'',
'  if v_count =0 then',
'     return v_DATE_EMPLOYED;',
'  else',
'    return trunc((current_date),''month'');',
'  end if;',
'',
'end;',
''))
,p_attribute_07=>'P13001_EMP_ID,P13001_INCOME_CODE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(96541595250140508)
,p_name=>'set_date_start'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13001_EMP_ID'
,p_condition_element=>'P13001_EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(96541659140140509)
,p_event_id=>wwv_flow_imp.id(96541595250140508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13001_START_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0; v_DATE_EMPLOYED date;',
'begin',
'',
'    select DATE_EMPLOYED into v_DATE_EMPLOYED',
'    from HR_RCM_EMPLOYEE b',
'    where ID =:P13001_EMP_ID;',
'',
'    SELECT COUNT(1) into v_count',
'    from HR_RCM_EMPENTITLE',
'    where EMP_ID =:P13001_EMP_ID;',
'',
'  if v_count =0 then',
'     return v_DATE_EMPLOYED;',
'  else',
'    return trunc((current_date),''month'');',
'  end if;',
'',
'end;',
''))
,p_attribute_07=>'P13001_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854079868301863226)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'fetch rows for HR_RCM_EMPENTITLE'
,p_attribute_02=>'HR_RCM_EMPENTITLE'
,p_attribute_03=>'P13001_ID'
,p_attribute_04=>'ID'
,p_attribute_15=>'D'
,p_internal_uid=>2738295734445549521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854080298742863226)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_RCM_EMPENTITLE'
,p_attribute_03=>'P13001_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'INCOME_TYPE'
,p_attribute_09=>'P13001_ID_NEXT'
,p_attribute_10=>'P13001_ID_PREV'
,p_attribute_13=>'P13001_ID_COUNT'
,p_attribute_14=>'EMP_ID=:P1281_ID'
,p_internal_uid=>2738296164886549521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854081480138863228)
,p_process_sequence=>51
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_RCM_EMPENTITLE'
,p_attribute_02=>'HR_RCM_EMPENTITLE'
,p_attribute_03=>'P13001_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P13001_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2738297346282549523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854083074162863229)
,p_process_sequence=>61
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'POP_SEARCH'
,p_process_sql_clob=>':P13001_INIT_SEARCH :=1;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2854071766123863215)
,p_internal_uid=>2738298940306549524
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854079075979863225)
,p_process_sequence=>71
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'recompute_comp_factor'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    get_earnings_rate pa_pcf_incomecode.earning_rate%type;',
'',
'begin',
'    SELECT EARNING_RATE into get_earnings_rate',
'    from pa_pcf_incomecode',
'    where id= :P13001_INCOME_CODE_ID;',
'',
'    if :P13001_PERCENT_OPTION is not null and :P13001_PERCENTAGE = 0 and :P13001_END_DATE is not null and :P13001_AMOUNT > 0 AND get_earnings_rate !=''FIXED_RATE'' THEN',
'      :P13001_AMOUNT:=  pkg_global_fnts.fn_ComputeEntPercentof(:P13001_INCOME_CODE_ID, replace(replace(nvl(:P13001_AMOUNT,0),''$'',''''), '','',''''), nvl(:P13001_START_DATE, current_date), :P13001_PERCENT_OPTION, :P13001_EMP_ID, :P13001_PERCENTAGE, :P13001_'
||'TAXABLE);',
'    end if;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2854020881792863152)
,p_process_success_message=>'System recomputed amount for hourly rate based calculation that is not Normal hours, if the current allowance is closed.'
,p_internal_uid=>2738294942123549520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854079531794863226)
,p_process_sequence=>81
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLOSE_PREVIOUS_RECORD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'        update hr_rcm_empentitle',
'        set end_date = TO_DATE(:P13001_START_DATE) -1',
'        where start_date =',
'                           (select max(start_date)',
'                            from hr_rcm_empentitle',
'                            where emp_id = :P13001_EMP_ID',
'                            and INCOME_CODE_ID = :P13001_INCOME_CODE_ID',
'                             AND ID != :P13001_ID',
'                            )',
'        and INCOME_CODE_ID = :P13001_INCOME_CODE_ID',
'        AND ID != :P13001_ID',
'        and emp_id = :P13001_EMP_ID;',
'        commit;',
'--exception',
' --   when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'System will auto close the previous allowance.'
,p_internal_uid=>2738295397938549521
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854082254031863228)
,p_process_sequence=>91
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_emp_ent'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  pkg_generators.pop_emp_Entitle(:P13001_EMP_ID,:P13001_SOURCE_EMP,to_date(:P13001_SOURCE_EMP_START));',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2854057122594863199)
,p_process_when=>'P13001_SOURCE_EMP'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
,p_process_success_message=>'System generated rules for current employee.'
,p_internal_uid=>2738298120175549523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854083473754863229)
,p_process_sequence=>101
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'begin',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P13001_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P13001_STATUS;',
'',
'select INDIVIDUAL into v_Individual ',
'from VW_INDIVIDUAL a join HR_RCM_EMPLOYEE B on a.id=B.IND_ID',
'where B.Id=:P13001_EMP_ID;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P13001_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''renumeration change'',',
'	:P13001_STATUS,:APP_PAGE_ID,:P13001_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_EMPENTITLE'');',
'        ',
'if upper(pkg_global_fnts.status_descript(:P13001_STATUS)) like upper(''APPROVE%'') then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_RCM_EMPENTITLE'',''ID'', :P13001_ID);',
'',
'  elsif upper(pkg_global_fnts.status_descript(:P13001_STATUS)) like upper(''UNAPPROV%'') or  upper(pkg_global_fnts.status_descript(:P13001_STATUS)) like upper(''CANCEL%'') then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_RCM_EMPENTITLE'', ''ID'', :P13001_ID);       ',
' end if;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2854020881792863152)
,p_internal_uid=>2738299339898549524
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854081861535863228)
,p_process_sequence=>111
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'285'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2854022075254863154)
,p_internal_uid=>2738297727679549523
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2854082707515863228)
,p_process_sequence=>121
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2854020102079863151)
,p_internal_uid=>2738298573659549523
);
wwv_flow_imp.component_end;
end;
/
