prompt --application/pages/page_00246
begin
--   Manifest
--     PAGE: 00246
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>246
,p_name=>'rptsalary'
,p_alias=>'RPTSALARY'
,p_step_title=>'Listing of Employees'' Salaries'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(43745288751930753)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3411762805030206960)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3411776758184219571)
,p_plug_name=>'Salaries'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4681504598375640539)
,p_plug_name=>'Salaries'
,p_parent_plug_id=>wwv_flow_imp.id(3411776758184219571)
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    sal.id disbursements,',
'    emp.name_only employee,',
'    sal.ID as ID, daily_rate,annual_salary,',
'    sal.EMP_ID as EMP_ID,',
'    sal.PERSONAL_RATE as PERSONAL_RATE,',
'    sal.HOURLY_RATE as HOURLY_RATE,',
'    sal.STD_DETAIL_KEY as STD_DETAIL_KEY,',
'    sal.SALARY_CURRENCY as SALARY_CURRENCY,',
'    sal.LEAVE_PASSAGE_AMOUNT as LEAVE_PASSAGE_AMOUNT,',
'    sal.LEAVE_PASSAGE_DATE as LEAVE_PASSAGE_DATE,',
'    sal.MACHINE_INSERT as MACHINE_INSERT,',
'    sal.MACHINE_UPDATE as MACHINE_UPDATE,',
'    sal.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    sal.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    sal.ENTERED_BY as ENTERED_BY,',
'    sal.ENTRY_DATE as ENTRY_DATE,',
'    sal.START_DATE as START_DATE,',
'    sal.END_DATE as END_DATE,',
'    sal.EMP_MOV_ID as EMP_MOV_ID,',
'    sal.PAYMENT_MODE as PAYMENT_MODE, grade_point_amount, sal.sal_grade_id,SALARY_TAXABLE, sal.SALARY_NIS_DEDUCTIBLE,',
'(select  trim(to_char(GRADE_MINI,''$999,999,999'')) || '' -- ''|| trim(to_char(GRADE_MAX,''$999,999,999'')) ',
'from HR_HCF_POSITIONGRADE',
'WHERE ID=sal.SAL_GRADE_ID) Salary_Scale',
' from vw_availemployee emp join HR_RCM_SALARY sal on emp.id = sal.emp_id ',
'where emp.org_id = :APP_ORG_ID',
'and  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A',
'              where emp.org_id=a.org_id',
'              and emp.employment_class_id=a.employment_class_id',
'              and upper(emp.payment_type)=a.payment_type',
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
'AND TRUNC(sal.start_date) BETWEEN :P246_START_PERIOD AND  :P246_END_PERIOD',
'    and sal.emp_id=nvl(:P246_EMPLOYEE,sal.emp_id)',
'order by end_date desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P246_EMPLOYEE,P246_START_PERIOD,P246_END_PERIOD'
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
 p_id=>wwv_flow_imp.id(4868265355304826981)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:RP,13000:P13000_ID,P13000_EMP_GRADE_ID:#ID#,#SAL_GRADE_ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'RONALDO'
,p_internal_uid=>2617891310796850373
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853812335190707208)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853811900466707207)
,p_db_column_name=>'EMP_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853811463739707207)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Basic Pay'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853811089072707206)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853810687795707205)
,p_db_column_name=>'STD_DETAIL_KEY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Std Detail Key'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853810299881707204)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Currency'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326633744040913822)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853809931298707203)
,p_db_column_name=>'LEAVE_PASSAGE_AMOUNT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Leave Passage Amount'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853809538016707203)
,p_db_column_name=>'LEAVE_PASSAGE_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Leave Passage Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853809105590707202)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853808716995707201)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853808290580707200)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853807889953707200)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853807543200707199)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853807084434707198)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853806654800707197)
,p_db_column_name=>'START_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853806282172707196)
,p_db_column_name=>'END_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853805881959707195)
,p_db_column_name=>'EMP_MOV_ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Emp Mov Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853805522667707193)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3326454853024652850)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853805136176707193)
,p_db_column_name=>'GRADE_POINT_AMOUNT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Grade Point Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853804711374707192)
,p_db_column_name=>'SALARY_SCALE'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Salary Scale'
,p_column_type=>'STRING'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853804293733707191)
,p_db_column_name=>'DAILY_RATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Daily Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853812694495707209)
,p_db_column_name=>'DISBURSEMENTS'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Disbursements'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853803997331707188)
,p_db_column_name=>'EMPLOYEE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Employee'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2853813094566707210)
,p_db_column_name=>'SAL_GRADE_ID'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Sal Grade Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(144306050898025109)
,p_db_column_name=>'ANNUAL_SALARY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Annual Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990D000'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37275186009398168)
,p_db_column_name=>'SALARY_TAXABLE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Taxable'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(37275357611398169)
,p_db_column_name=>'SALARY_NIS_DEDUCTIBLE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Nis Deductible'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3326348486442557998)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4868196146666671732)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Old Salaries'
,p_report_seq=>10
,p_report_alias=>'6034394'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE:PAYMENT_MODE:SALARY_CURRENCY:PERSONAL_RATE:HOURLY_RATE:START_DATE:END_DATE:SALARY_SCALE:GRADE_POINT_AMOUNT:'
,p_break_on=>'EMPLOYEE:0:0:0:0:0'
,p_break_enabled_on=>'EMPLOYEE:0:0:0:0:0'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(2853813916228707216)
,p_report_id=>wwv_flow_imp.id(4868196146666671732)
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_column_name=>'END_DATE'
,p_operator=>'is not null'
,p_condition_sql=>'"END_DATE" is not null'
,p_condition_display=>'#APXWS_COL_NAME# #APXWS_OP_NAME#'
,p_enabled=>'Y'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4868228310828780926)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6034402'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMPLOYEE:PAYMENT_MODE:SALARY_CURRENCY:PERSONAL_RATE:ANNUAL_SALARY:DAILY_RATE:HOURLY_RATE:START_DATE:END_DATE:SALARY_SCALE:GRADE_POINT_AMOUNT:DISBURSEMENTS:SALARY_NIS_DEDUCTIBLE:SALARY_TAXABLE:'
,p_sort_column_1=>'START_DATE'
,p_sort_direction_1=>'DESC'
,p_break_on=>'EMPLOYEE:0:0:0:0:0'
,p_break_enabled_on=>'EMPLOYEE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2853814724457707220)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3411762805030206960)
,p_button_name=>'CREATE_SALARY'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13000:&SESSION.::&DEBUG.:13000::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2853815087725707221)
,p_name=>'P246_EMPLOYEE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4681504598375640539)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||''(No.:''||EMP_COMPANY_NO||'')(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(employment_class_id, ''TABLE_VALUE'' )||case when x.verified_by is null then '' Unverified)'' else ',
'case when DATE_SEPARATED is null then '' Active'' else '' Separated'' end|| '')'' end a, x.ID b',
'from vw_employee x join hr_rcm_individual z on z.id=x.ind_id',
'where exists(select 1',
'             from hr_rcm_salary w',
'             where x.id=w.emp_id',
'             and org_id=:APP_ORG_ID',
'             )',
'and exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where x.org_id=a.org_id',
'              and x.employment_class_id=a.employment_class_id',
'              and upper(x.payment_type)=a.payment_type            ',
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
 p_id=>wwv_flow_imp.id(2853815523525707223)
,p_name=>'P246_START_PERIOD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4681504598375640539)
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
 p_id=>wwv_flow_imp.id(2853815882180707225)
,p_name=>'P246_END_PERIOD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4681504598375640539)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2853817815155707230)
,p_name=>'set_date'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P246_EMPLOYEE'
,p_condition_element=>'P246_EMPLOYEE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2853818292618707230)
,p_event_id=>wwv_flow_imp.id(2853817815155707230)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P246_START_PERIOD,P246_END_PERIOD'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  min(start_date) a, TRUNC(current_date) b',
'from hr_rcm_salary',
'where emp_id= nvl(:P246_EMPLOYEE,emp_id)'))
,p_attribute_07=>'P246_EMPLOYEE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2853818686963707231)
,p_name=>'Refresh_data'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P246_EMPLOYEE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2853819199127707231)
,p_event_id=>wwv_flow_imp.id(2853818686963707231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4681504598375640539)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2853819547047707231)
,p_name=>'refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P246_START_PERIOD'
,p_condition_element=>'P246_END_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2853820071408707232)
,p_event_id=>wwv_flow_imp.id(2853819547047707231)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4681504598375640539)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2853816928482707228)
,p_name=>'refresh1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P246_END_PERIOD'
,p_condition_element=>'P246_START_PERIOD'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2853817375150707229)
,p_event_id=>wwv_flow_imp.id(2853816928482707228)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4681504598375640539)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
