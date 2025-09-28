prompt --application/pages/page_00248
begin
--   Manifest
--     PAGE: 00248
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
 p_id=>248
,p_name=>'rptleaveentitlements'
,p_alias=>'RPTLEAVEENTITLEMENTS'
,p_step_title=>'Listing of Employees'' Leave Entitlements'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(349753148093613622)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3633510275822605849)
,p_plug_name=>'Leave Ent'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4987840026414706093)
,p_plug_name=>'Leave Entitlements'
,p_parent_plug_id=>wwv_flow_imp.id(3633510275822605849)
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv_ent.ID as ID, lv_ent.ID as pkID,LEAVE_RATE,',
'    lv_ent.EMP_ID as EMP_ID, leave_earn,',
'    lv_ent.LEAVE_TYPE_ID as LEAVE_TYPE_ID,',
'    lv_ent.QUANTITY as QUANTITY,',
'  case when lv_ent.REDUCE_SAL_OVERSPENT=1 then ''Yes'' else ''No'' end as REDUCE_SAL_OVERSPENT,',
'    lv_ent.START_DATE as START_DATE,',
'    lv_ent.END_DATE as END_DATE,',
'    lv_ent.ENTRY_DATE as ENTRY_DATE,',
'    lv_ent.ENTERED_BY as ENTERED_BY,',
'    lv_ent.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    lv_ent.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    lv_ent.MACHINE_INSERT as MACHINE_INSERT,',
'    lv_ent.MACHINE_UPDATE as MACHINE_UPDATE, ',
'    emp.name_only employee,',
'    emp.EMPLOYMENT_CLASS_ID,',
'    (select PKG_GLOBAL_FNTS.fn_calcage(hremp.date_employed,nvl(hremp.date_separated, current_date)) age from dual) Yrs_of_service,',
'    POLICY_ID,',
'    lv_policy.LV_POLICY_CODE',
' from HR_RCM_EMPLEAVEENTITLE lv_ent join vw_availemployee emp on emp.id = lv_ent.emp_id ',
' join hr_rcm_employee hremp on hremp.id = lv_ent.EMP_ID',
' left join HR_LV_LEAVEPOLICY lv_policy on lv_ent.policy_id= lv_policy.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where emp.org_id=a.org_id',
'              and emp.employment_class_id=a.employment_class_id',
'              and upper(emp.payment_type)=a.payment_type           ',
'              )   ',
'and exists(select 1        ',
'             from vw_useraccess_finegrain z',
'             where NVL(z.grade_id, nvl(emp.emp_grade_id,1)) = nvl(emp.emp_grade_id,1)',
'             and user_name=:APP_USER)',
'-- and exists(select 1',
'--           from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k',
'--            on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'', :APP_USER)  and k.WEBpage_id =:APP_PAGE_ID  )',
'--           where  nvl(t.id,1)= nvl(emp.ORGDTL_ID,1)',
'--           and nvl(emp.ORGDTL_ID,1)=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER, :APP_PAGE_ID), 0, nvl(emp.ORGDTL_ID,1), k.org_structure_id)        ',
'--           ) ',
'AND TRUNC(lv_ent.start_date) BETWEEN :P248_START_PERIOD AND  :P248_END_PERIOD',
'    and lv_ent.emp_id=nvl(:P248_EMPLOYEE,lv_ent.emp_id)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P248_EMPLOYEE,P248_START_PERIOD,P248_END_PERIOD'
,p_prn_output_show_link=>'Y'
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
 p_id=>wwv_flow_imp.id(5174624469839094246)
,p_max_row_count=>'1000000'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.:RP,:P13002_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'RONALDO'
,p_internal_uid=>2618242565989434769
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159869188372426519)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159868765377426518)
,p_db_column_name=>'PKID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Pkid'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159868377026426518)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159867909567426517)
,p_db_column_name=>'LEAVE_EARN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Leave Earned'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159867539421426517)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3632531639210481189)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159867105760426516)
,p_db_column_name=>'QUANTITY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159865557098426514)
,p_db_column_name=>'REDUCE_SAL_OVERSPENT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Reduce Sal Overspent'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159865110689426513)
,p_db_column_name=>'START_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159864750989426512)
,p_db_column_name=>'END_DATE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159864306940426512)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159863988236426510)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159863528499426509)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159863159370426508)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159862776143426507)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159862333902426507)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159861954915426506)
,p_db_column_name=>'LEAVE_RATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Leave Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3159869526503426519)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344469722309959076)
,p_db_column_name=>'EMPLOYMENT_CLASS_ID'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Employment Class Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3632584840201532446)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344469774720959077)
,p_db_column_name=>'YRS_OF_SERVICE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Yrs Of Service'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344469897999959078)
,p_db_column_name=>'POLICY_ID'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Policy Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(344469990684959079)
,p_db_column_name=>'LV_POLICY_CODE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Lv Policy Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5174605812674004228)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Old Leave Entitlements'
,p_report_seq=>10
,p_report_alias=>'6034888'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE:LEAVE_TYPE_ID:QUANTITY:START_DATE:END_DATE:LEAVE_EARN'
,p_break_on=>'EMPLOYEE:0:0:0:0:0'
,p_break_enabled_on=>'EMPLOYEE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3159871140915426522)
,p_report_id=>wwv_flow_imp.id(5174605812674004228)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is not null'
,p_condition_sql=>'"END_DATE" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5174608325335044425)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6034880'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE:LEAVE_TYPE_ID:QUANTITY:START_DATE:END_DATE:LEAVE_EARN:LEAVE_RATE'
,p_break_on=>'EMPLOYEE:0:0:0:0:0'
,p_break_enabled_on=>'EMPLOYEE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(3159870396972426521)
,p_report_id=>wwv_flow_imp.id(5174608325335044425)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is null'
,p_condition_sql=>'"END_DATE" is null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3718096405225276175)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10766773638420877516)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3159871534543426523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3718096405225276175)
,p_button_name=>'CREATE_LVENT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.:13002::'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3159871994102426524)
,p_name=>'P248_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4987840026414706093)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a, x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1',
'             from hr_rcm_empleaveentitle w',
'             where x.id=w.emp_id',
'             and org_id=:APP_ORG_ID',
'             )',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type)=a.payment_type             ',
'              )                   ',
'and exists(',
'          select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id = x.ORGDTL_ID',
'          and X.ORGDTL_ID = decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, X.ORGDTL_ID, w.org_structure_id)         ',
'          )     ',
'and x.date_separated is null AND x.verified_by is not null',
'',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(3159872303926426525)
,p_name=>'P248_START_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4987840026414706093)
,p_item_default=>'trunc(current_date) - (to_number(to_char(current_date,''DD'')) - 1) '
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_grid_label_column_span=>1
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
 p_id=>wwv_flow_imp.id(3159872760607426525)
,p_name=>'P248_END_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4987840026414706093)
,p_item_default=>'add_months(trunc(current_date) - (to_number(to_char(current_date,''DD'')) - 1), 1) -1 '
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159873802999426526)
,p_name=>'set_date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P248_EMPLOYEE'
,p_condition_element=>'P248_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159874285701426527)
,p_event_id=>wwv_flow_imp.id(3159873802999426526)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P248_START_PERIOD,P248_END_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  min(start_date) a, TRUNC(current_date) b',
'from HR_RCM_EMPLEAVEENTITLE ',
'where emp_id = nvl(:P248_EMPLOYEE, emp_id)'))
,p_attribute_07=>'P248_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159874656798426528)
,p_name=>'Refresh_data'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P248_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159875114491426528)
,p_event_id=>wwv_flow_imp.id(3159874656798426528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4987840026414706093)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159875565935426528)
,p_name=>'refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P248_START_PERIOD'
,p_condition_element=>'P248_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159876020952426529)
,p_event_id=>wwv_flow_imp.id(3159875565935426528)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4987840026414706093)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3159876448179426529)
,p_name=>'refresh1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P248_END_PERIOD'
,p_condition_element=>'P248_END_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3159876927103426530)
,p_event_id=>wwv_flow_imp.id(3159876448179426529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4987840026414706093)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
