prompt --application/pages/page_00116
begin
--   Manifest
--     PAGE: 00116
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>116
,p_name=>'rptshiftroster'
,p_alias=>'RPTSHIFTROSTER'
,p_step_title=>'Shift Roster'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825437065409071696)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function f_check_date(){',
'  var lFrom = $("#P116_PERIOD_START_RSE").datepicker("getDate"),',
'      lTo = $("#P116_PERIOD_END_RSE").datepicker("getDate");',
'  var diff = 0;',
'  var days = 0;',
'',
'    $("#P116_PERIOD_START_RSE").datepicker("option","maxDate",lTo);',
'    $("#P116_PERIOD_END_RSE").datepicker("option","minDate",lFrom);',
'',
'    diff = Math.abs(lTo - lFrom);',
'    days = diff/(1000 * 3600 * 24)',
'',
'    if(days > 35 && lFrom !== null && lTo !== null){',
'        alert(''Sorry, the date range should not be more than 35!'');',
'    } ',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(921114216760584100)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(995515108535519804)
,p_plug_name=>'Tabs'
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(832191361767625176)
,p_plug_name=>'Shift Roster Generation'
,p_parent_plug_id=>wwv_flow_imp.id(995515108535519804)
,p_region_template_options=>'#DEFAULT#:t-Region--accent7:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>99
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1059882565026851350)
,p_plug_name=>'Shift Roster Calendar Report'
,p_parent_plug_id=>wwv_flow_imp.id(995515108535519804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(995514954824519803)
,p_plug_name=>'Shift Roster Report'
,p_parent_plug_id=>wwv_flow_imp.id(1059882565026851350)
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select od.unit_name department,ch.emp_id,ch.work_date, ch.assigned_shift,',
'to_char(ch.work_date,''YYYY-MMMM'') work_m,',
'to_char(ch.work_date,''DD-DY'') work_d,',
'to_char(ch.work_date,''YYYY-MMMON-DD-DY'' ) work_md',
'from hr_att_empcalendar_hd ch',
'join hr_rcm_employee e on ch.emp_id = e.id',
'left join hr_hcf_orgstructuredtl od on e.orgdtl_id = od.id',
' where ch.work_date between :P116_PERIOD_START_RSE_1 and :P116_PERIOD_END_RSE_1',
'-- and ch.orgdtl_id = :P116_DEPARTMENT_1',
'and exists ',
'            (SELECT 1',
'                   FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P116_SRESULTS_RSE_1,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(4000) path ''/'')',
'                   where  a_field =  case when :P116_SOPTION_RSE_1 =''EMPLOYEE'' then (select to_char(f.id) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                                 when :P116_SOPTION_RSE_1 =''GRADE_SCALE'' then (select to_char(f.emp_grade_id) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                                 when :P116_SOPTION_RSE_1 =''ORG_STRUCT_LEVEL'' then (select to_char(f.orgdtl_id) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                                 when :P116_SOPTION_RSE_1 =''POSITION'' then (select to_char(f.position_id) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                                 WHEN :P116_SOPTION_RSE_1 =''WORK_LOCATION'' THEN (select TO_CHAR(f.WKLOCATION_ID) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                                 when :P116_SOPTION_RSE_1 =''UNION'' then (select to_char(f.union_code_id) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                                 when :P116_SOPTION_RSE_1 =''EMPLOYMENT_TYPE'' then (select to_char(f.EMPLOYMENT_TYPE_ID) from hr_rcm_employee f where f.id = ch.emp_id )',
'                                        end',
'             )',
'and exists ',
'      (',
' 			select 1',
'			from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', null))',
'			where  t.id = ch.ORGDTL_ID',
'			and ch.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct((select user_name from tbluser  where employee_no = e.emp_company_no)), 0, ch.ORGDTL_ID, k.org_structure_id)',
'     )'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P116_SHIFT_ROTA_RSE_1,P116_SOPTION_RSE_1,P116_PERIOD_START_RSE_1,P116_PERIOD_END_RSE_1,P116_SRESULTS_RSE_1'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Shift Roster Report'
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
 p_id=>wwv_flow_imp.id(995514798189519801)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_aggregate=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'APPS'
,p_internal_uid=>352179546170844307
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(918477132335923481)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3718004859297579194)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(918476767890923480)
,p_db_column_name=>'ASSIGNED_SHIFT'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Assigned Shift'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'CENTER'
,p_rpt_named_lov=>wwv_flow_imp.id(3727898623622056842)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(918477938062923482)
,p_db_column_name=>'WORK_DATE'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Work Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(918477559941923481)
,p_db_column_name=>'WORK_D'
,p_display_order=>50
,p_column_identifier=>'H'
,p_column_label=>'Work D'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(918478354162923482)
,p_db_column_name=>'WORK_M'
,p_display_order=>60
,p_column_identifier=>'I'
,p_column_label=>'Work M'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1806856610573329055)
,p_db_column_name=>'WORK_MD'
,p_display_order=>70
,p_column_identifier=>'J'
,p_column_label=>'Work Md'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1806856339771329052)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>80
,p_column_identifier=>'L'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(995504430514505864)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'1960111'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_ID:ASSIGNED_SHIFT:WORK_D:WORK_M:WORK_MD:DEPARTMENT'
);
wwv_flow_imp_page.create_worksheet_pivot(
 p_id=>wwv_flow_imp.id(1079103935741009338)
,p_report_id=>wwv_flow_imp.id(995504430514505864)
,p_pivot_columns=>'WORK_D'
,p_row_columns=>'EMP_ID'
);
wwv_flow_imp_page.create_worksheet_pivot_agg(
 p_id=>wwv_flow_imp.id(673703249860912965)
,p_pivot_id=>wwv_flow_imp.id(1079103935741009338)
,p_display_seq=>1
,p_function_name=>'MAX'
,p_column_name=>'ASSIGNED_SHIFT'
,p_db_column_name=>'PFC1'
,p_column_label=>'Shift'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_sum=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1777685923212928856)
,p_plug_name=>'Filter'
,p_parent_plug_id=>wwv_flow_imp.id(1059882565026851350)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1082841483650231530)
,p_plug_name=>'Shift Roster Calendar Entries'
,p_parent_plug_id=>wwv_flow_imp.id(995515108535519804)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(711109664497862070)
,p_plug_name=>'Shift Roster Calendar Entries'
,p_parent_plug_id=>wwv_flow_imp.id(1082841483650231530)
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    A.id,',
'     A.emp_id,',
'     ASSIGN_SHIFT_HOURS,',
'    upper(to_char(a.work_date,''dy'')) day_week, ',
'     a.less_lunch_hour, ',
'     a.lunch_hour,',
'     A.work_date,',
'     A.assigned_shift,',
'     a.holiday_code,',
'     A.remarks,',
'     A.entered_by,',
'     A.entry_date,',
'     A.last_changed_by,',
'     A.last_changed_date,',
'     A.machine_insert,',
'     A.machine_update,',
'     min_time_in, max_time_out',
'FROM hr_att_empcalendar_hd a ',
'where to_date(work_date) between to_date(:P116_PERIOD_START_RSE) and nvl(to_date(:P116_PERIOD_END_RSE), to_date(to_char(ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1,''DD-MON-YYYY''),''DD-MON-YYYY''))',
'and exists (select 1 ',
'            from hr_rcm_employee emp ',
'            where emp.id= a.emp_id ',
'            AND emp.shift_id = :P116_SHIFT_ROTA_RSE',
'            and emp.org_id = :APP_ORG_ID   ',
'            and  exists ( ',
'                        select 1',
'                        FROM VW_USERACCESS ua ',
'                        where emp.org_id=ua.org_id',
'                        and emp.employment_class_id=ua.employment_class_id',
'                        and upper(emp.payment_type)=ua.payment_type                       ',
'                        )   ',
'            and exists(select 1        ',
'                        from vw_useraccess_finegrain z',
'                        where NVL(z.grade_id, nvl(emp.emp_grade_id,1)) = nvl(emp.emp_grade_id,1)',
'                        and user_name=:APP_USER) ',
'            )',
'            and exists (SELECT 1',
'                   FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P116_SRESULTS_RSE,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(2000) path ''/'')',
'                   where  a_field =  case when :P116_SOPTION_RSE =''EMPLOYEE'' then (select to_char(f.id) from hr_rcm_employee f where f.id = a.emp_id )',
'                                                 when :P116_SOPTION_RSE =''GRADE_SCALE'' then (select to_char(f.emp_grade_id) from hr_rcm_employee f where f.id = a.emp_id )',
'                                                 when :P116_SOPTION_RSE =''ORG_STRUCT_LEVEL'' then (select to_char(f.orgdtl_id) from hr_rcm_employee f where f.id = a.emp_id )',
'                                                 when :P116_SOPTION_RSE =''POSITION'' then (select to_char(f.position_id) from hr_rcm_employee f where f.id = a.emp_id )',
'                                                 WHEN :P116_SOPTION_RSE =''WORK_LOCATION'' THEN (select TO_CHAR(f.WKLOCATION_ID) from hr_rcm_employee f where f.id = a.emp_id )',
'                                                 when :P116_SOPTION_RSE =''UNION'' then (select to_char(f.union_code_id) from hr_rcm_employee f where f.id = a.emp_id )',
'                                                 when :P116_SOPTION_RSE =''EMPLOYMENT_TYPE'' then (select to_char(f.EMPLOYMENT_TYPE_ID) from hr_rcm_employee f where f.id = a.emp_id )',
'                                        end',
'                    )',
'            '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P116_PERIOD_START_RSE,P116_PERIOD_END_RSE,P116_SHIFT_ROTA_RSE,P116_SRESULTS_RSE,P116_SOPTION_RSE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Shift Roster Calendar Entries'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711109874459862072)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711109974630862073)
,p_name=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Employee'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3718004859297579194)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110035744862074)
,p_name=>'ASSIGN_SHIFT_HOURS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGN_SHIFT_HOURS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Shift Hours'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110116780862075)
,p_name=>'LESS_LUNCH_HOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LESS_LUNCH_HOUR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Less Lunch Hour'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3853899604604919787)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110291241862076)
,p_name=>'LUNCH_HOUR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LUNCH_HOUR'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Lunch Hour'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110311428862077)
,p_name=>'WORK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Work Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
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
,p_format_mask=>'DD-MON-YYYY'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110468691862078)
,p_name=>'ASSIGNED_SHIFT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNED_SHIFT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Assigned Shift'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_code SHIFT,id',
'                from HR_ATT_SHIFT a',
'                where org_id= :APP_ORG_ID',
'                ORDER BY 1',
''))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110506227862079)
,p_name=>'HOLIDAY_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'HOLIDAY_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Holiday Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110615133862080)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110787925862081)
,p_name=>'ENTERED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTERED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110816383862082)
,p_name=>'ENTRY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711110927363862083)
,p_name=>'LAST_CHANGED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711111069862862084)
,p_name=>'LAST_CHANGED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_CHANGED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711111148398862085)
,p_name=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_INSERT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711111282698862086)
,p_name=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MACHINE_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711111393637862087)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711111492421862088)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(711111718802862091)
,p_name=>'DAY_WEEK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAY_WEEK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Day '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>12
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(839531293530745203)
,p_name=>'MIN_TIME_IN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MIN_TIME_IN'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Min Time In'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(853221165082725954)
,p_name=>'MAX_TIME_OUT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAX_TIME_OUT'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Max Time Out'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'is-readonly'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(711109778326862071)
,p_internal_uid=>67774526308186577
,p_is_editable=>true
,p_edit_operations=>'u'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(711230361796064754)
,p_interactive_grid_id=>wwv_flow_imp.id(711109778326862071)
,p_static_id=>'1231323'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(711230554233064754)
,p_report_id=>wwv_flow_imp.id(711230361796064754)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711231069622064757)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(711109874459862072)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711231947201064760)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(711109974630862073)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>187
,p_break_order=>1
,p_break_is_enabled=>true
,p_break_sort_direction=>'ASC'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711232856505064764)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(711110035744862074)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105.93799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711233707892064767)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(711110116780862075)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118.93799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711234668434064771)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(711110291241862076)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90.938
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711235554566064774)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(711110311428862077)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.93799999999999
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711236408080064778)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(711110468691862078)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>146.037
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711237350358064781)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(711110506227862079)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.93799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711238236392064784)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(711110615133862080)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711239148251064788)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(711110787925862081)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711240094515064791)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(711110816383862082)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711240906845064794)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(711110927363862083)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711241842660064798)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(711111069862862084)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711242782022064801)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(711111148398862085)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711243699249064804)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(711111282698862086)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(711277772680089517)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(711111393637862087)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(780770090276447589)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(711111718802862091)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>52.93799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(853228146753727720)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(839531293530745203)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151.675
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(853230086071727726)
,p_view_id=>wwv_flow_imp.id(711230554233064754)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(853221165082725954)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154.188
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1082841341834231528)
,p_plug_name=>'Filter'
,p_parent_plug_id=>wwv_flow_imp.id(1082841483650231530)
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(673678682119912906)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(921114216760584100)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--padRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12815:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(673692128346912942)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_button_name=>'ASSIGN_SHIFT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Shift Roster Automatic Update'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-location-arrow'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(673692529786912943)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_button_name=>'GENERATE_CALENDAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Generate Missing Calendar Entries'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-location-arrow'
,p_security_scheme=>wwv_flow_imp.id(3806878039320039124)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918475257819923507)
,p_name=>'P116_ALLOWMANUALEDIT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918476088190923508)
,p_name=>'P116_ROSTER_OVERRIDE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_item_default=>'0'
,p_prompt=>'Overwrite'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>ONLY KEYED RECORDS ARE ROSTERED</h4>',
'<ol>',
'    <li>',
'        <strong>Yes</strong> - Overwrite all shifts within the period for the relevant parameters with new sequence',
'    </li>',
'    <li>',
'        <strong>No</strong> - Update calendar days without shifts with the relevant shift within the period for the relevant parameters with relevant new          sequence',
'    </li>',
'</ol>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918476555975923509)
,p_name=>'P116_DAY_COUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_prompt=>'Days'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918476942258923509)
,p_name=>'P116_PERIOD_END'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trunc(current_date)+31',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(918477321565923509)
,p_name=>'P116_PERIOD_START'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trunc(current_date)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(918477701364923510)
,p_name=>'P116_SEARCH_RESULTS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_prompt=>'Search Option Details'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P116_SEARCH_OPTION =''EMPLOYEE'' then',
'return',
'   ''select e.display, e.emp_id from vw_search_emp e where e.org_id =:APP_ORG_ID and e.shift_id = :P116_SHIFT_ROTA_RULES and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_'
||'name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= e.ORGDTL_ID and e.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, e.ORGDTL_ID, w.org_structure_id)) order by 1'';',
'',
'ELSif :P116_SEARCH_OPTION =''GRADE_SCALE'' then',
'return',
'       ''select display, empgrade_id from vw_search_empgrade V where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.emp_grade_id = v.empgrade_id and shift_id = :P116_SHIFT_ROTA_RULES and exists(select 1 from HR_HCF_ORGSTRUCTUR'
||'EDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, '
||'x.ORGDTL_ID, w.org_structure_id))) order by 1'';',
'',
'elsif  :P116_SEARCH_OPTION =''ORG_STRUCT_LEVEL'' then',
'return',
'       ''Select display, m.orgdtl_Id return From vw_search_orgstruct m where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.orgdtl_id = m.orgdtl_Id and shift_id = :P116_SHIFT_ROTA_RULES and exists(select 1 from HR_HCF_ORGSTRUC'
||'TUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), '
||'0, x.ORGDTL_ID, w.org_structure_id))) order by 1'';',
'',
'elsif  :P116_SEARCH_OPTION =''POSITION'' then',
'return',
'       ''select distinct a.position_name display, a.id return from hr_hcf_position a join hr_rcm_employee b on a.id=b.position_id where b.org_id = :APP_ORG_ID and b.shift_id = :P116_SHIFT_ROTA_RULES and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T le'
||'ft outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= b.ORGDTL_ID and b.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, b.ORGDTL_'
||'ID, w.org_structure_id)) order by 1'';',
'',
'elsif  :P116_SEARCH_OPTION =''WORK_LOCATION'' then',
'return',
'       ''select display, WKLOCATION_ID from Vw_Search_Location c where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.wklocation_id = c.wklocation_id and shift_id = :P116_SHIFT_ROTA_RULES and exists(select 1 from HR_HCF_ORGSTR'
||'UCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER)'
||', 0, x.ORGDTL_ID, w.org_structure_id)))  order by 1'';  ',
'',
'elsif  :P116_SEARCH_OPTION =''EMPLOYMENT_TYPE'' then',
'return',
'''SELECT vw_search_emptype.display, vw_search_emptype.employment_type_id FROM (SELECT DISTINCT ( SELECT value_description FROM hr_hcf_lookup WHERE table_name = ''''TBLEMPLOYMENTTYPE'''' AND table_value = g.employment_type_id AND org_id = g.org_id ) displa'
||'y, employment_type_id, org_id FROM vw_empearn g WHERE employment_type_id IS NOT NULL and employment_type_id not in (3) ORDER BY employment_type_id ASC ) vw_search_emptype WHERE vw_search_emptype.org_id = :app_org_id AND EXISTS ( SELECT 1 FROM hr_rcm_'
||'employee x WHERE x.employment_type_id = vw_search_emptype.employment_type_id AND shift_id = :p116_shift_rota_rules and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,'
||'''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, x.ORGDTL_ID, w.org_structure_id))))'';',
'else',
'return ''select ''''Null'''' display, Null return from dual'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P116_SHIFT_ROTA_RULES,P116_SEARCH_OPTION'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918478120137923510)
,p_name=>'P116_COUNTER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918478508443923511)
,p_name=>'P116_SHIFT_SEQUENCE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_prompt=>'Start Shift Sequence'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Seq.'' ||day || ''  ''||  to_char(start_time,''HH:MI PM'')||''--''||to_char(end_time,''HH:MI PM'') || '' '' SHIFT, a.day',
'from hr_att_shift_rota_detail a join HR_ATT_SHIFT b on b.id = a.SHIFT_ID',
'where shift_rota_id = :P116_SHIFT_ROTA_RULES',
'order by day'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Shift Sequence--'
,p_lov_cascade_parent_items=>'P116_SHIFT_ROTA_RULES'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918478955352923511)
,p_name=>'P116_SEARCH_OPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918479325472923512)
,p_name=>'P116_SHIFT_ROTA_RULES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(832191361767625176)
,p_prompt=>'Shift Rotation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIFT_CYCLE_NAME||'' ''||B.value_description||''(Rotating Every ''||rotation_days||'' Days)'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a join hr_hcf_lookup b on b.id = a.shift_TYPE_ID',
'where B.table_name = ''TBLSHIFTTYPE''',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_ID',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(918497635325923540)
,p_name=>'P116_PERIOD_END_1'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(1059882565026851350)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918498038305923540)
,p_name=>'P116_PERIOD_START_1'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(1059882565026851350)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918498419563923541)
,p_name=>'P116_DEPARTMENT_1'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(1059882565026851350)
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
'--and wu.org_structure_id = nvl(:P116_ORG_STRUCTURE,wu.org_structure_id)',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = wu.id',
'          and wu.id = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, wu.id, w.org_structure_id)         ',
'          ) ',
'start with UNIT_PARENT is null',
'connect by prior wu.ID = UNIT_PARENT',
'order siblings by UNIT_NAME'))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918498783196923541)
,p_name=>'P116_EARNINGS_PERIOD_1'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(1059882565026851350)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT to_date(''01''||TO_CHAR(current_date,''MON'')||''-''||extract(year from current_date)) b',
'FROM DUAL'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , to_date(''01-''||TO_CHAR(END_DATE,''MON'')||''-''||company_year) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'      where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    )',
'      )',
'ORDER BY C DESC, D DESC'))
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(918499188886923542)
,p_name=>'P116_COUNTER_1'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(1059882565026851350)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1082842775637231543)
,p_name=>'P116_PERIOD_END_RSE'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(1082841341834231528)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trunc(current_date)+31',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(1082842900916231544)
,p_name=>'P116_PERIOD_START_RSE'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1082841341834231528)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trunc(current_date)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(1082843029739231545)
,p_name=>'P116_SRESULTS_RSE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1082841341834231528)
,p_prompt=>'Search Option Details'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P116_SOPTION_RSE =''EMPLOYEE'' then',
'return',
'   ''select e.display, e.emp_id from vw_search_emp e where e.org_id =:APP_ORG_ID and e.shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_na'
||'me,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= e.ORGDTL_ID and e.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, e.ORGDTL_ID, w.org_structure_id)) order by 1'';',
'',
'ELSif :P116_SOPTION_RSE =''GRADE_SCALE'' then',
'return',
'       ''select display, empgrade_id from vw_search_empgrade V where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.emp_grade_id = v.empgrade_id and shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTURED'
||'TL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, x.'
||'ORGDTL_ID, w.org_structure_id))) order by 1'';',
'',
'elsif  :P116_SOPTION_RSE =''ORG_STRUCT_LEVEL'' then',
'return',
'       ''Select display, m.orgdtl_Id return From vw_search_orgstruct m where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.orgdtl_id = m.orgdtl_Id and shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTU'
||'REDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,'
||' x.ORGDTL_ID, w.org_structure_id))) order by 1'';',
'',
'elsif  :P116_SOPTION_RSE =''POSITION'' then',
'return',
'       ''select distinct a.position_name display, a.id return from hr_hcf_position a join hr_rcm_employee b on a.id=b.position_id where b.org_id = :APP_ORG_ID and b.shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left'
||' outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= b.ORGDTL_ID and b.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, b.ORGDTL_ID'
||', w.org_structure_id)) order by 1'';',
'',
'elsif  :P116_SOPTION_RSE =''WORK_LOCATION'' then',
'return',
'       ''select display, WKLOCATION_ID from Vw_Search_Location c where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.wklocation_id = c.wklocation_id and shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUC'
||'TUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), '
||'0, x.ORGDTL_ID, w.org_structure_id)))  order by 1'';  ',
'',
'elsif  :P116_SOPTION_RSE =''EMPLOYMENT_TYPE'' then',
'return',
'''SELECT vw_search_emptype.display, vw_search_emptype.employment_type_id FROM (SELECT DISTINCT ( SELECT value_description FROM hr_hcf_lookup WHERE table_name = ''''TBLEMPLOYMENTTYPE'''' AND table_value = g.employment_type_id AND org_id = g.org_id ) displa'
||'y, employment_type_id, org_id FROM vw_empearn g WHERE employment_type_id IS NOT NULL and employment_type_id not in (3) ORDER BY employment_type_id ASC ) vw_search_emptype WHERE vw_search_emptype.org_id = :app_org_id AND EXISTS ( SELECT 1 FROM hr_rcm_'
||'employee x WHERE x.employment_type_id = vw_search_emptype.employment_type_id AND shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,'''''
||'1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, x.ORGDTL_ID, w.org_structure_id))))'';',
'else',
'return ''select ''''Null'''' display, Null return from dual'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P116_SHIFT_ROTA_RSE,P116_SOPTION_RSE'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1082843246934231548)
,p_name=>'P116_SOPTION_RSE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1082841341834231528)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1082843422366231549)
,p_name=>'P116_SHIFT_ROTA_RSE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1082841341834231528)
,p_prompt=>'Shift Rotation'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIFT_CYCLE_NAME||'' ''||B.value_description||''(Rotating Every ''||rotation_days||'' Days)'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a join hr_hcf_lookup b on b.id = a.shift_TYPE_ID',
'where B.table_name = ''TBLSHIFTTYPE''',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_ID',
'ORDER BY 1',
''))
,p_cSize=>200
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0',
  'use_cache', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1777705843946928909)
,p_name=>'P116_PERIOD_END_RSE_1'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1777685923212928856)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trunc(current_date)+31',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period End'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(1777705984976928910)
,p_name=>'P116_PERIOD_START_RSE_1'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(1777685923212928856)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select trunc(current_date)',
'from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Period Start'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(1777706055717928911)
,p_name=>'P116_SRESULTS_RSE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1777685923212928856)
,p_prompt=>'Search Option Details'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P116_SOPTION_RSE_1 =''EMPLOYEE'' then',
'return',
'   ''select e.display, e.emp_id from vw_search_emp e where e.org_id =:APP_ORG_ID and e.shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_na'
||'me,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= e.ORGDTL_ID and e.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, e.ORGDTL_ID, w.org_structure_id)) order by 1'';',
'',
'ELSif :P116_SOPTION_RSE_1 =''GRADE_SCALE'' then',
'return',
'       ''select display, empgrade_id from vw_search_empgrade V where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.emp_grade_id = v.empgrade_id and shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTURED'
||'TL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, x.'
||'ORGDTL_ID, w.org_structure_id))) order by 1'';',
'',
'elsif  :P116_SOPTION_RSE_1 =''ORG_STRUCT_LEVEL'' then',
'return',
'       ''Select display, m.orgdtl_Id return From vw_search_orgstruct m where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.orgdtl_id = m.orgdtl_Id and shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTU'
||'REDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0,'
||' x.ORGDTL_ID, w.org_structure_id))) order by 1'';',
'',
'elsif  :P116_SOPTION_RSE_1 =''POSITION'' then',
'return',
'       ''select distinct a.position_name display, a.id return from hr_hcf_position a join hr_rcm_employee b on a.id=b.position_id where b.org_id = :APP_ORG_ID and b.shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left'
||' outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= b.ORGDTL_ID and b.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, b.ORGDTL_ID'
||', w.org_structure_id)) order by 1'';',
'',
'elsif  :P116_SOPTION_RSE_1 =''WORK_LOCATION'' then',
'return',
'       ''select display, WKLOCATION_ID from Vw_Search_Location c where org_id =:APP_ORG_ID  and exists(select 1 from hr_rcm_employee x where x.wklocation_id = c.wklocation_id and shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUC'
||'TUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), '
||'0, x.ORGDTL_ID, w.org_structure_id)))  order by 1'';  ',
'',
'elsif  :P116_SOPTION_RSE_1 =''EMPLOYMENT_TYPE'' then',
'return',
'''SELECT vw_search_emptype.display, vw_search_emptype.employment_type_id FROM (SELECT DISTINCT ( SELECT value_description FROM hr_hcf_lookup WHERE table_name = ''''TBLEMPLOYMENTTYPE'''' AND table_value = g.employment_type_id AND org_id = g.org_id ) displa'
||'y, employment_type_id, org_id FROM vw_empearn g WHERE employment_type_id IS NOT NULL and employment_type_id not in (3) ORDER BY employment_type_id ASC ) vw_search_emptype WHERE vw_search_emptype.org_id = :app_org_id AND EXISTS ( SELECT 1 FROM hr_rcm_'
||'employee x WHERE x.employment_type_id = vw_search_emptype.employment_type_id AND shift_id = :P116_SHIFT_ROTA_RSE and exists(select 1 from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,'''''
||'1'''') = decode(w.user_name, null, ''''1'''', :APP_USER)) where  t.id= x.ORGDTL_ID and x.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, x.ORGDTL_ID, w.org_structure_id))))'';',
'else',
'return ''select ''''Null'''' display, Null return from dual'';',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P116_SHIFT_ROTA_RSE_1,P116_SOPTION_RSE_1'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(1777706162029928912)
,p_name=>'P116_SOPTION_RSE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1777685923212928856)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
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
 p_id=>wwv_flow_imp.id(1777706234454928913)
,p_name=>'P116_SHIFT_ROTA_RSE_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1777685923212928856)
,p_prompt=>'Shift Rotation'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SHIFT_CYCLE_NAME||'' ''||B.value_description||''(Rotating Every ''||rotation_days||'' Days)'' value_desc, a.id',
'from HR_ATT_SHIFT_ROTA a join hr_hcf_lookup b on b.id = a.shift_TYPE_ID',
'where B.table_name = ''TBLSHIFTTYPE''',
'and a.start_date <= trunc(current_date)',
'and (a.end_date is null or a.end_date >=trunc(current_date))',
'and a.org_id=:APP_ORG_ID',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>3031561666792084173
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
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(673704495301912971)
,p_validation_name=>'not less than start date'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P116_DAY_COUNT < 0 then',
'        raise_application_error( -20000, ''The End Period cannot be less than the Start Period'' );',
'    end if;',
'end;'))
,p_validation_type=>'PLSQL_ERROR'
,p_error_message=>'The End Period cannot be less than the Start Period'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(673692128346912942)
,p_associated_item=>wwv_flow_imp.id(918476942258923509)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(673704856577912971)
,p_validation_name=>'New'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Declare ',
'    v_count number(10):= 0;',
'',
'begin',
'',
'select to_number(to_date(:P12817_WORK_END)-to_date(:P12817_WORK_START)) into v_count',
'from dual;',
'',
'if v_count > 35 then',
'',
'return False;',
'',
'else',
'',
'return True;',
'',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Sorry, the work start and end date span should not exceed 35 days.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673706035145912973)
,p_name=>'show_data'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_DEPARTMENT_1'
,p_condition_element=>'P116_DEPARTMENT_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673706514800912975)
,p_event_id=>wwv_flow_imp.id(673706035145912973)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(995514954824519803)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673707771786912976)
,p_name=>'DISPLAY_END_LONG'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_PERIOD_END'
,p_condition_element=>'P116_PERIOD_END'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673708278059912976)
,p_event_id=>wwv_flow_imp.id(673707771786912976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P116_PERIOD_END_DISPL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(TO_DATE(:P116_PERIOD_END),''fmDay, fmDD fmMonth, YYYY'') DISPL',
'FROM DUAL'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673708748412912976)
,p_name=>'REFRESHGRID'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_SHIFT_ROTA_RSE,P116_SRESULTS_RSE,P116_PERIOD_START_RSE,P116_PERIOD_END_RSE,P116_SOPTION_RSE'
,p_condition_element=>'P116_PERIOD_END_RSE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673709172557912976)
,p_event_id=>wwv_flow_imp.id(673708748412912976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(711109664497862070)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673709716098912977)
,p_event_id=>wwv_flow_imp.id(673708748412912976)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(995514954824519803)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673710117716912977)
,p_name=>'REFRESHGRID_1'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_PERIOD_START_1,P116_PERIOD_END_1'
,p_condition_element=>'P116_PERIOD_END_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673710594296912977)
,p_event_id=>wwv_flow_imp.id(673710117716912977)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(995514954824519803)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673711042201912977)
,p_name=>'set shift_hours'
,p_event_sequence=>60
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(711109664497862070)
,p_triggering_element=>'ASSIGNED_SHIFT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673711452981912978)
,p_event_id=>wwv_flow_imp.id(673711042201912977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'ASSIGN_SHIFT_HOURS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select shift_hours from hr_att_shift',
'where id = :ASSIGNED_SHIFT'))
,p_attribute_07=>'ASSIGNED_SHIFT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673711922896912978)
,p_name=>'set number of days'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_PERIOD_END,P116_PERIOD_START'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673712375510912978)
,p_event_id=>wwv_flow_imp.id(673711922896912978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P116_DAY_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select to_date(:P116_PERIOD_END) - to_date(:P116_PERIOD_START) +1',
'from dual'))
,p_attribute_07=>'P116_PERIOD_END,P116_PERIOD_START'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673712827512912979)
,p_name=>'refreshpivot'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_PERIOD_START,P116_PERIOD_END'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673713333862912979)
,p_event_id=>wwv_flow_imp.id(673712827512912979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(995514954824519803)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673713725031912979)
,p_name=>'hide/show update calendar'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_SHIFT_SEQUENCE'
,p_condition_element=>'P116_SHIFT_SEQUENCE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673714196861912979)
,p_event_id=>wwv_flow_imp.id(673713725031912979)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(673692128346912942)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673714672839912980)
,p_event_id=>wwv_flow_imp.id(673713725031912979)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(673692128346912942)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673715066733912980)
,p_name=>'set allow manual edit'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_SHIFT_ROTA_RULES'
,p_condition_element=>'P116_SHIFT_ROTA_RULES'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673715597942912980)
,p_event_id=>wwv_flow_imp.id(673715066733912980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P116_ALLOWMANUALEDIT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    SELECT',
'        allow_manual_edit',
'    FROM',
'        hr_att_shift_rota',
'    WHERE',
'        id = :P116_SHIFT_ROTA_RULES;'))
,p_attribute_07=>'P116_SHIFT_ROTA_RULES'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673716045693912980)
,p_name=>'set_start_time'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_EARNINGS_PERIOD_1'
,p_condition_element=>'P116_EARNINGS_PERIOD_1'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673716530991912981)
,p_event_id=>wwv_flow_imp.id(673716045693912980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P116_PERIOD_START_1,P116_PERIOD_END_1'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LAST_DAY(ADD_MONTHS(:P116_EARNINGS_PERIOD_1,-1))+1, LAST_DAY(:P116_EARNINGS_PERIOD_1)',
'FROM DUAL;'))
,p_attribute_07=>'P116_EARNINGS_PERIOD_1'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673716917391912981)
,p_name=>'dy_check_dates'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_PERIOD_START_RSE,P116_PERIOD_END_RSE'
,p_condition_element=>'P116_PERIOD_START_RSE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673717402237912981)
,p_event_id=>wwv_flow_imp.id(673716917391912981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//on load, set the datepicker range in case a date is already present',
'//when the date changes, call the datecheck function',
'//and set item to readonly',
'$("#P116_PERIOD_START_RSE")',
'.datepicker("option","maxDate",$("#P116_PERIOD_END_RSE").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);',
'$("#P116_PERIOD_END_RSE")',
'.datepicker("option","minDate",$("#P116_PERIOD_START_RSE").datepicker("getDate"))',
'.change(f_check_date)',
'.prop("readonly",true);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(673717798488912981)
,p_name=>'dy_refresh'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P116_SHIFT_ROTA_RSE_1,P116_SOPTION_RSE_1,P116_SRESULTS_RSE_1,P116_PERIOD_END_RSE_1,P116_PERIOD_START_RSE_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(673718267614912982)
,p_event_id=>wwv_flow_imp.id(673717798488912981)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(995514954824519803)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673690956144912941)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(711109664497862070)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Under Construction - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>30355704126237447
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673705191451912972)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'roster employee'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   -- l_selected apex_application_global.vc_arr2; ',
'   l_selected  apex_t_varchar2;',
'   l_last_day date;',
'begin',
'',
'-- SELECT ',
'--     to_date(to_char(ADD_MONTHS(TRUNC (current_date ,''YEAR''),12)-1,''DD-MM-YYYY''),''DD-MM-YYYY'') last_date ',
'-- into l_last_day ',
'-- FROM DUAL;',
'',
'',
'     l_selected := apex_string.split(p_str => :P116_SEARCH_RESULTS, p_sep => '':'');',
'',
'for i in 1..l_selected.count loop',
'        BEGIN',
'    begin',
'pkg_timeclock.gen_missing_earnprd_days (in_start_period => :P116_PERIOD_START,in_end_period => :P116_PERIOD_END ',
'                                              ,in_sresults => l_selected(i),in_soption => :P116_SEARCH_OPTION',
'                                              ,in_org_id => :APP_ORG_ID);',
'          ',
'     end;',
'            PKG_TIMECLOCK.prcd_shiftrosternew (  ',
'                                            IN_ROTA_ID => :P116_SHIFT_ROTA_RULES,',
'                                            in_sresults => l_selected(i),',
'                                            in_soption  => :P116_SEARCH_OPTION,',
'                                            IN_START_AT_SEQ => :P116_SHIFT_SEQUENCE,',
'                                            IN_PERIOD_START => :P116_PERIOD_START,',
'                                            IN_PERIOD_END => :P116_PERIOD_END,',
'                                            IN_OVERRIDE => :P116_ROSTER_OVERRIDE',
'                                            ,in_org_id => :APP_ORG_ID',
'            ) ;  ',
'        END;',
'        BEGIN',
'            pkg_timeclock.prcd_get_llh(',
'                              in_work_start => :P116_PERIOD_START,',
'                              in_work_end => :P116_PERIOD_END,',
'                              in_org_id => :APP_ORG_ID,',
'                              in_soption => :P116_SEARCH_OPTION,',
'                              in_sresults => l_selected(i)',
'            );',
'        END;',
'',
'    END LOOP;',
'commit;',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(673692128346912942)
,p_process_success_message=>'System updated calendar successfully.'
,p_internal_uid=>30369939433237478
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(673691357750912941)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(711109664497862070)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate_blank_calendar_records'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   -- l_selected apex_application_global.vc_arr2; ',
'   l_selected  apex_t_varchar2;',
'   l_last_day date;',
'begin',
'',
'',
'',
'     l_selected := apex_string.split(p_str => :P116_SEARCH_RESULTS, p_sep => '':'');',
'',
'for i in 1..l_selected.count loop',
'    begin',
'pkg_timeclock.gen_missing_earnprd_days (in_start_period => :P116_PERIOD_START,in_end_period => :P116_PERIOD_END ',
'                                              ,in_sresults => l_selected(i),in_soption => :P116_SEARCH_OPTION',
'                                              ,in_org_id => :APP_ORG_ID);',
'          ',
'     end;',
'          ',
'',
'    END LOOP;',
'commit;',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(673692529786912943)
,p_internal_uid=>30356105732237447
);
wwv_flow_imp.component_end;
end;
/
