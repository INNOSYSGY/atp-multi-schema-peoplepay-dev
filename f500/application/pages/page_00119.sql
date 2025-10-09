prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
,p_name=>'frmassignemployeerotation'
,p_alias=>'FRMASSIGNEMPLOYEEROTATION'
,p_step_title=>'Assign Employee Rotation'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825295018965991165)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3621735363852080464)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4000967794247423282)
,p_plug_name=>'Listing of Employees with Assigned Shift Rotation'
,p_region_template_options=>'#DEFAULT#:js-showMaximizeButton:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct v.id, COMPUTE_GROSS, employment_type_id,',
'"EMP_COMPANY_NO", shift_id,',
'"IND_ID",',
'initcap("EMPLOYMENT_STATUS") EMPLOYMENT_STATUS,',
'initcap("EMPLOYMENT_CLASS") EMPLOYMENT_CLASS,',
'"PAYMENT_TYPE",',
'"DATE_EMPLOYED",',
'"POSITION_NAME",',
'(Select ''Level: ''||Unit_Level||'' ''|| Unit_Name||'' ''||value_description A',
'from hr_hcf_orgstructuredtl m join hr_hcf_lookup n on m.classification=n.id',
'join hr_hcf_position c on  m.id=c.orgdtl_id',
'where c.id =v.position_id) org_structure',
'from "#OWNER#"."HR_RCM_EMPLOYEE" V join hr_rcm_individual w on w.id=v.ind_id',
'join hr_hcf_orgstructuredtl od on od.id = v.orgdtl_id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type             ',
'              )   ',
'and upper(v.payment_type) = upper(:P119_PAYMENT_TYPE)',
'and shift_id != :P119_SHIFT_ROTATION',
'--and trunc(v.last_changed_date) = trunc(current_date)',
'and exists (SELECT 1',
'                   FROM xmltable(''/root/e/text()'' passing xmltype(''<root><e>''',
'                     || REPLACE(:P119_SEARCH_RESULTS_1,'':'',''</e><e>'')',
'                     || ''</e></root>'') columns a_field VARCHAR2(2000) path ''/'')',
'                   where  a_field =  case when :P119_SEARCH_OPTION =''EMPLOYEE'' then to_char(v.id) ',
'                                                 when :P119_SEARCH_OPTION =''GRADE_SCALE'' then to_char(v.emp_grade_id)',
'                                                 when :P119_SEARCH_OPTION =''ORG_STRUCT_LEVEL'' then to_char(v.orgdtl_id)',
'                                                 when :P119_SEARCH_OPTION =''POSITION'' then to_char(v.position_id)',
'                                                 WHEN :P119_SEARCH_OPTION =''WORK_LOCATION'' THEN TO_CHAR(v.WKLOCATION_ID)',
'                                                 when :P119_SEARCH_OPTION =''UNION'' then to_char(v.union_code_id)',
'                                                 when :P119_SEARCH_OPTION =''EMPLOYMENT_TYPE'' then to_char(v.EMPLOYMENT_TYPE_ID)',
'                                        end',
'                    )',
'                    '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P119_PAYMENT_TYPE, P119_SHIFT_ROTATION,P119_SEARCH_RESULTS_1,P119_SEARCH_OPTION'
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
 p_id=>wwv_flow_imp.id(4000967266605423276)
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
,p_detail_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.::P1281_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>534005643434268523
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621715303549065040)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Emp Status'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621714863525065040)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_static_id=>'EMPLOYMENT_CLASS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621714439128065039)
,p_db_column_name=>'IND_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Name                     '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'IND_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853948880500092910)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621714060904065038)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_static_id=>'PAYMENT_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621713664850065037)
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
 p_id=>wwv_flow_imp.id(3621716842815065043)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3850113372305083453)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621716443410065042)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621716091495065041)
,p_db_column_name=>'EMPLOYMENT_TYPE_ID'
,p_display_order=>530
,p_column_identifier=>'BA'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3729579865590982598)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621715679912065041)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>550
,p_column_identifier=>'BD'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621717287763065043)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>570
,p_column_identifier=>'BG'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621717643588065044)
,p_db_column_name=>'SHIFT_ID'
,p_display_order=>580
,p_column_identifier=>'BH'
,p_column_label=>'Shift Rotation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3706706574607442993)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3621713233656065036)
,p_db_column_name=>'ID'
,p_display_order=>590
,p_column_identifier=>'BI'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988260722144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3993163268553902099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1547564'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_STRUCTURE:ID:EMPLOYMENT_CLASS:PAYMENT_TYPE:COMPUTE_GROSS:SHIFT_ID:'
,p_break_on=>'0:0:0:ORG_STRUCTURE'
,p_break_enabled_on=>'0:0:0:ORG_STRUCTURE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4130859048670109637)
,p_plug_name=>'Assign to Employee'
,p_region_template_options=>'#DEFAULT#:t-Region--accent4:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3621719119308065046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4130859048670109637)
,p_button_name=>'EXECUTE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Assign Rotation'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_icon_css_classes=>'fa-box-arrow-in-ne'
,p_security_scheme=>wwv_flow_imp.id(3806737337080971898)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3621719437151065046)
,p_name=>'P119_PAYMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4130859048670109637)
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>' PAYMENT_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select upper(value_description) a,value_description b',
'from hr_hcf_lookup a',
'where table_name=''TBLPAYMENTTYPE''',
'and exists(select 1',
'                   from hr_hcf_organisation b',
'                   where A.org_id = b.id',
'                   AND USE_FOR_SEEDED_DATA=1',
'                   and organisation_type=''SOFTWARE USER''',
'                   )',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Payment Type--'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3621719838285065047)
,p_name=>'P119_SHIFT_ROTATION'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4130859048670109637)
,p_prompt=>'Shift Rotation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SHIFT_CYCLE_NAME||'' ''||B.VALUE_DESCRIPTION||''--''||A.PAYMENT_TYPE VALUE_DESC, A.ID',
'FROM HR_ATT_SHIFT_ROTA A JOIN HR_HCF_LOOKUP B ON B.ID = A.SHIFT_TYPE_ID',
'WHERE B.TABLE_NAME = ''TBLSHIFTTYPE''',
'AND A.START_DATE <= TRUNC(current_date)',
'AND (A.END_DATE IS NULL OR A.END_DATE >=TRUNC(current_date))',
'AND UPPER(A.PAYMENT_TYPE) = UPPER(:P119_PAYMENT_TYPE)',
'AND A.ORG_ID=:APP_ORG_SHR_DED',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Shift Rotation--'
,p_lov_cascade_parent_items=>'P119_PAYMENT_TYPE'
,p_ajax_items_to_submit=>'P119_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3621720297746065047)
,p_name=>'P119_ASSIGNMENT_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4130859048670109637)
,p_prompt=>'Assignment Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(3621720694573065048)
,p_name=>'P119_SEARCH_OPTION'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4130859048670109637)
,p_prompt=>'Search Option'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Employee;EMPLOYEE,Grade Scale;GRADE_SCALE,Organisation Structure Level;ORG_STRUCT_LEVEL,Position;POSITION,Work Location;WORK_LOCATION,Employment Type;EMPLOYMENT_TYPE'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Search Option--'
,p_cHeight=>1
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3621721082427065048)
,p_name=>'P119_SEARCH_RESULTS_1'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4130859048670109637)
,p_prompt=>'Search Results'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P119_SEARCH_OPTION=''EMPLOYEE'' then',
'',
'return',
' ''select initcap(upper(surname||'''', ''''||nvl(first_name,'''''''')||'''':- ''''||emp_company_no)) display, b.id return',
'from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'where  (b.date_separated is null or b.date_separated > trunc(current_date))   ',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id = B.ORGDTL_ID',
'          and B.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, B.ORGDTL_ID, w.org_structure_id)         ',
'          )',
'and b.org_id =:APP_ORG_ID',
'and b.shift_id != :P119_SHIFT_ROTATION      ',
'order by 1'';',
'',
'ELSif :P119_SEARCH_OPTION=''GRADE_SCALE'' then',
'return',
'        ''select grade_description||''''(''''||grade_code||'''') as at ''''||EFFECTIVE_FROMDATE display, id return',
'        from hr_hcf_positiongrade V',
'        where  org_id =:APP_ORG_SHR_DED',
'        AND effective_fromdate <= trunc(current_date)',
'        and (effective_todate is null or effective_todate >=  trunc(current_date))',
'        order by grade_code'';',
'',
'elsif  :P119_SEARCH_OPTION=''ORG_STRUCT_LEVEL'' then',
'',
'return',
'''Select ''''Level: ''''||Unit_Level||'''' ''''||short_name||'''':-''''|| Unit_Name||'''' ''''||value_description display, m.Id return',
'From Hr_Hcf_Orgstructuredtl M Join Hr_Hcf_Lookup N On M.Classification=N.Id',
'join HR_HCF_ORGSTRUCTUREHD v on v.id=m.ORG_STRUCTURE_ID',
'join hr_hcf_organisation w on w.id=v.org_id',
'where  v.org_id =:APP_ORG_ID',
'AND m.start_date <= trunc(current_date)',
'and (w.end_date is null or w.end_date >=  trunc(current_date))',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id = M.ID',
'          and M.ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, M.ID, w.org_structure_id)         ',
'          ) ',
'order by 1'';',
'',
'elsif  :P119_SEARCH_OPTION=''POSITION'' then',
'',
'return',
'''select POSITION_NAME||'''':-''''||Unit_Name||'''''''' display, b.id return',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'WHERE b.start_date <= trunc(current_date)',
'and (b.end_date is null or b.end_date >=  trunc(current_date))',
'and exists (select 1',
'              from hr_hcf_orgstructurehd g',
'              where g.id = d.org_structure_id',
'              and g.org_id =:APP_ORG_ID',
'              )',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''''1'''') = decode(w.user_name, null, ''''1'''', :APP_USER))',
'          where  t.id = B.ORGDTL_ID',
'          and B.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, B.ORGDTL_ID, w.org_structure_id)         ',
'          ) ',
'order by 1'';',
'',
'elsif  :P119_SEARCH_OPTION=''WORK_LOCATION'' then',
'',
'return',
'''select distinct LOCATION_DESCRIPTION ||''''(''''||LOCATION_code||'''')'''' display, id return',
'from HR_HCF_WORKLOCATION C ',
'WHERE org_id =:APP_ORG_ID',
'AND start_date <= trunc(current_date)',
'and (end_date is null or end_date >=  trunc(current_date))',
'order by 1'';',
'',
'elsif  :P119_SEARCH_OPTION=''INCOME'' then',
'',
'return',
'''select distinct display, d.INCOME_CODE return',
'from PA_PCF_INCOMECODE d ',
'WHERE org_id =:APP_ORG_SHR_DED',
'AND start_date <= trunc(current_date)',
'and (end_date is null or end_date >=  trunc(current_date))',
'order by  DESCRIPTION'';              ',
'',
'elsif  :P119_SEARCH_OPTION=''EMPLOYMENT_TYPE'' then',
'return',
'        ''select display, employment_type_id',
'        from VW_SEARCH_EMPTYPE g',
'        where org_id =:APP_ORG_ID',
'        and exists(select 1',
'        from hr_rcm_employee x',
'        where x.employment_type_id = g.employment_type_id)'';',
'         ',
'else',
'',
'return',
'    ''select ''''Null'''' display, Null return',
'    from dual'';',
'',
'end if;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P119_SEARCH_OPTION'
,p_ajax_items_to_submit=>'P119_SEARCH_OPTION'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3621722538887065052)
,p_name=>'search_employee'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P119_PAYMENT_TYPE'
,p_condition_element=>'P119_PAYMENT_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3621723099604065052)
,p_event_id=>wwv_flow_imp.id(3621722538887065052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4000967794247423282)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3621723427293065052)
,p_name=>'search'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P119_SHIFT_ROTATION'
,p_condition_element=>'P119_SHIFT_ROTATION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3621724006607065053)
,p_event_id=>wwv_flow_imp.id(3621723427293065052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4000967794247423282)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3621724407408065053)
,p_name=>'search_emp'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P119_SEARCH_OPTION,P119_SEARCH_RESULTS_1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3621724904124065054)
,p_event_id=>wwv_flow_imp.id(3621724407408065053)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4000967794247423282)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3621725299400065054)
,p_name=>'search_employees'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P119_SEARCH_RESULTS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3621725731506065054)
,p_event_id=>wwv_flow_imp.id(3621725299400065054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4000967794247423282)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3621726154068065055)
,p_name=>'dy_hide/show_execute'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P119_ASSIGNMENT_DATE'
,p_condition_element=>'P119_ASSIGNMENT_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3621726670109065055)
,p_event_id=>wwv_flow_imp.id(3621726154068065055)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3621719119308065046)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3621727217509065056)
,p_event_id=>wwv_flow_imp.id(3621726154068065055)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3621719119308065046)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3621722148088065051)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ASSIGN_ROTATION_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected apex_application_global.vc_arr2; ',
'  ',
'begin',
'     l_selected := apex_util.string_to_table(:P119_SEARCH_RESULTS_1);',
' ',
' for j in 1..l_selected.count loop',
'',
'        for K in (select id ',
'                  from HR_RCM_EMPLOYEE a',
'                  WHERE l_selected(j) =case   when :P119_SEARCH_OPTION =''EMPLOYEE'' then to_char(a.id) ',
'                                                    when :P119_SEARCH_OPTION =''GRADE_SCALE'' then to_char(a.emp_grade_id)',
'                                                    when :P119_SEARCH_OPTION =''ORG_STRUCT_LEVEL'' then to_char(a.orgdtl_id)',
'                                                    when :P119_SEARCH_OPTION =''POSITION'' then to_char(a.position_id)',
'                                                    WHEN :P119_SEARCH_OPTION =''WORK_LOCATION'' THEN TO_CHAR(a.WKLOCATION_ID)',
'                                                    when :P119_SEARCH_OPTION =''UNION'' then to_char(a.union_code_id)',
'                                                    when :P119_SEARCH_OPTION =''EMPLOYMENT_TYPE'' then to_char(a.EMPLOYMENT_TYPE_ID)',
'                                            end ) loop',
'                        PKG_TIMECLOCK.prcd_assignshiftrotation(IN_EMP_ID => k.id,IN_ORG_ID => :APP_ORG_ID,IN_SHIFT_ROTATION => :P119_SHIFT_ROTATION, IN_ASSIGNMENT_DATE => :P119_ASSIGNMENT_DATE);',
'',
'        end loop;',
'',
'',
' ',
'        update HR_RCM_EMPLOYEE A ',
'        set shift_id = :P119_SHIFT_ROTATION',
'        WHERE l_selected(j) =case   when :P119_SEARCH_OPTION =''EMPLOYEE'' then to_char(a.id) ',
'                                    when :P119_SEARCH_OPTION =''GRADE_SCALE'' then to_char(a.emp_grade_id)',
'                                    when :P119_SEARCH_OPTION =''ORG_STRUCT_LEVEL'' then to_char(a.orgdtl_id)',
'                                    when :P119_SEARCH_OPTION =''POSITION'' then to_char(a.position_id)',
'                                    WHEN :P119_SEARCH_OPTION =''WORK_LOCATION'' THEN TO_CHAR(a.WKLOCATION_ID)',
'                                    when :P119_SEARCH_OPTION =''UNION'' then to_char(a.union_code_id)',
'                                    when :P119_SEARCH_OPTION =''EMPLOYMENT_TYPE'' then to_char(a.EMPLOYMENT_TYPE_ID)',
'                            end;',
'                            ',
'',
'        ',
'       ',
'    END loop;',
'    ',
'   commit;',
'   ',
'   --:P119_SEARCH_RESULTS_1  :=null;',
'end;',
'',
'                        -- pkg_hr.sp_linkshift_std_day_hours(',
'                        --           p_shift_rota_id => :P119_SHIFT_ROTATION,',
'                        --           p_emp_id => k.id,',
'                        --           p_org_id => :APP_ORG_ID);',
'                  ',
'                --   pkg_hr.sp_linkshift_std_day_hours(:P119_SHIFT_ROTATION, k.id);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3621719119308065046)
,p_process_success_message=>'Employee Rotation and Employee Rules have been Updated'
,p_internal_uid=>2978527598308456783
);
wwv_flow_imp.component_end;
end;
/
