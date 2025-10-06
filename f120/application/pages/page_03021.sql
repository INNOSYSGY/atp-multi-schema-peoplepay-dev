prompt --application/pages/page_03021
begin
--   Manifest
--     PAGE: 03021
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>3021
,p_name=>'rptGRABulkIIT'
,p_step_title=>'GRA Bulk IIT Generation'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3597704336072147649)
,p_plug_name=>'GRA Bulk IIT Generation'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  z.tin,',
'  z.employee_number,',
'  z.first_name,',
'  z.last_name,',
'  z.other_name,',
'  z.address,',
'  z.PERIOD_EMPLOYED,',
'  z.TOTAL_SALARIES_WAGES_PT,',
'  z.TOTAL_SALARIES_WAGES_OTHER,',
'  z.STATUTORY_DEDUCTION,',
'  z.NIS_CONTRIBUTION,',
'  z.TOTAL_DEDUCTION,',
'  z.TAX_ON_CHARGEABLE_INCOME,',
'  z.TAX_DEDUCTED,',
'  z.DEPARTMENT,',
'  ''=IF(A''||(rownum+1)||''="","",(CONCATENATE(O''||(rownum+1)||'',"_",D''||(rownum+1)||'',"_",C''||(rownum+1)||'',"_",E''||(rownum+1)||'')))'' FILENAME,',
'  z.YR_OF_ASSESSMENT,',
'  z.DATE_OF_BIRTH,',
'  z.NATL_IDENTIFICATION_NO,',
'  z.OCCUPATION,',
'  z.EMPLOYEE_PHONE_NO,',
'  z.EMPLOYEE_EMAIL,',
'  z.EMPLOYER_TIN,',
'  z.EMPLOYER_NAME,',
'  z.EMPLOYER_ADDRESS,',
'  z.EMPLOYER_PHONE_NO',
'from (',
'select',
'          trim(a.tin) tin, --col1',
'          trim(nvl(EMPNO,'','')) EMPLOYEE_NUMBER,',
'            trim(nvl(a.FIRST_NAME,'','')) FIRST_NAME,',
'            trim(nvl(a.LAST_NAME,'','')) LAST_NAME,',
'            trim(nvl(a.middle_name,'','')) other_name,',
'            trim(nvl(a.ADDRESS,'','')) ADDRESS,',
'            trim(nvl(cast(a.MONTHS_EMPLOYED as varchar(3)),'','')) PERIOD_EMPLOYED,',
'            nvl(Value_7A_Salaries,0)+nvl(Value_7A_Wages,0) TOTAL_SALARIES_WAGES_PT,',
'            nvl(null,0) TOTAL_SALARIES_WAGES_OTHER,',
'            nvl(TAX_FREE,0) STATUTORY_DEDUCTION,',
'            nvl( NIS_EMPLOYEE,0) NIS_CONTRIBUTION,',
'            nvl(a.Total_Deduction ,0) TOTAL_DEDUCTION,',
'            nvl(Tax_Deducted,0) TAX_ON_CHARGEABLE_INCOME,',
'            nvl(Tax_Deducted,0) TAX_DEDUCTED,',
'            replace(os.unit_code,'' '','''') DEPARTMENT,',
'            substr(:P3021_YEAR_OF_INCOME+1,3) YR_OF_ASSESSMENT,',
'            nvl(to_char(a.DOB,''DD-MM-YYYY''),'''') DATE_OF_BIRTH,',
'            pkg_global_fnts.fn_getcurnistaxno(e.ind_id,''NATIONAL ID'',e.date_employed) NATL_IDENTIFICATION_NO,',
'            p.position_name OCCUPATION,',
'            replace(replace(replace(replace(i.telephone,'' '',''''),''-'',''''),''('',''''),'')'','''') EMPLOYEE_PHONE_NO,',
'            i.email EMPLOYEE_EMAIL,',
'            x.employer_tin EMPLOYER_TIN,',
'            x.employer_name EMPLOYER_NAME,',
'            x.address EMPLOYER_ADDRESS,',
'            replace(replace(replace(replace(o.telnum,'' '',''''),''-'',''''),''('',''''),'')'','''') EMPLOYER_PHONE_NO',
'from GRA_FORM2 a',
'join gra_form2_hd x on x.id=a.form2_hd',
'join hr_rcm_employee e on a.empno = e.id and x.org_id=e.org_id',
'join hr_hcf_organisation o on o.id=e.org_id',
'join hr_hcf_worklocation wlp on wlp.id=e.wklocation_id',
'join hr_hcf_position p on p.id=e.position_id',
'join hr_hcf_orgstructuredtl os on os.id=p.orgdtl_id',
'join hr_rcm_individual i on i.id=e.ind_id',
'where exists (select 1',
'			  from gra_form2_hd b',
'			  where b.ID=a.FORM2_HD',
'			  and Year_of_Income = :P3021_YEAR_OF_INCOME',
'			  and ORG_id = :P3021_EMPLOYER',
'              and nvl(EXTRACT(year FROM start_period)||EXTRACT(month FROM start_period),''1'')=case when :P3021_FORM_5_PERIODS is null then ''1'' ELSE :P3021_FORM_5_PERIODS END',
'			  )',
'and :APP_ORG_ID=(select x.org_id from gra_form2_hd x where x.id=a.form2_hd)',
'--and tax_deducted >0',
'order by last_name) z',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3597704171417147649)
,p_name=>'rptGRABulkIIT'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'SKOTHAPALLY.DEV'
,p_internal_uid=>55134994729839920
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597703780777147647)
,p_db_column_name=>'TIN'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Tin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597703436936147646)
,p_db_column_name=>'EMPLOYEE_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597703057377147646)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597702616613147646)
,p_db_column_name=>'LAST_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Last Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597702170649147646)
,p_db_column_name=>'OTHER_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Other Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597701783596147646)
,p_db_column_name=>'ADDRESS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597701386682147645)
,p_db_column_name=>'PERIOD_EMPLOYED'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Period Employed'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597701055042147645)
,p_db_column_name=>'TOTAL_SALARIES_WAGES_PT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Total Salaries Wages Pt'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597700255676147645)
,p_db_column_name=>'STATUTORY_DEDUCTION'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Statutory Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597699825935147645)
,p_db_column_name=>'NIS_CONTRIBUTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'NIB/SS Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597699440276147645)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597699044231147644)
,p_db_column_name=>'TAX_ON_CHARGEABLE_INCOME'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Tax On Chargeable Income'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597698640468147644)
,p_db_column_name=>'TAX_DEDUCTED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Tax Deducted'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597698246282147644)
,p_db_column_name=>'DEPARTMENT'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Department'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597697845752147644)
,p_db_column_name=>'FILENAME'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Filename'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597697448193147644)
,p_db_column_name=>'YR_OF_ASSESSMENT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Yr Of Assessment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597696609112147643)
,p_db_column_name=>'NATL_IDENTIFICATION_NO'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Natl Identification No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597696194767147643)
,p_db_column_name=>'OCCUPATION'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Occupation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597695809286147643)
,p_db_column_name=>'EMPLOYEE_PHONE_NO'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Employee Phone No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597695391551147643)
,p_db_column_name=>'EMPLOYEE_EMAIL'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Employee Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597695063155147642)
,p_db_column_name=>'EMPLOYER_TIN'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Employer Tin'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597694589555147642)
,p_db_column_name=>'EMPLOYER_NAME'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Employer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597694233233147642)
,p_db_column_name=>'EMPLOYER_ADDRESS'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Employer Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597693838008147642)
,p_db_column_name=>'EMPLOYER_PHONE_NO'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Employer Phone No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3598253214515262732)
,p_db_column_name=>'TOTAL_SALARIES_WAGES_OTHER'
,p_display_order=>36
,p_column_identifier=>'AA'
,p_column_label=>'Total salaries wages other'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3597152129649456268)
,p_db_column_name=>'DATE_OF_BIRTH'
,p_display_order=>46
,p_column_identifier=>'AB'
,p_column_label=>'Date of birth'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3597693056187137227)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'551462'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TIN:EMPLOYEE_NUMBER:FIRST_NAME:LAST_NAME:OTHER_NAME:ADDRESS:PERIOD_EMPLOYED:TOTAL_SALARIES_WAGES_PT:TOTAL_SALARIES_WAGES_OTHER:STATUTORY_DEDUCTION:NIS_CONTRIBUTION:TOTAL_DEDUCTION:TAX_ON_CHARGEABLE_INCOME:TAX_DEDUCTED:DEPARTMENT:FILENAME:YR_OF_ASSESS'
||'MENT:DATE_OF_BIRTH:NATL_IDENTIFICATION_NO:OCCUPATION:EMPLOYEE_PHONE_NO:EMPLOYEE_EMAIL:EMPLOYER_TIN:EMPLOYER_NAME:EMPLOYER_ADDRESS:EMPLOYER_PHONE_NO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3616912162772876921)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3597704336072147649)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3598255145835262751)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3597704336072147649)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:3011:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3598255174938262752)
,p_name=>'P3021_FORM_5_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3597704336072147649)
,p_prompt=>'Form 5 Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(START_DATE,''MONTH'')||'' ''||EXTRACT(YEAR FROM START_DATE) A',
'      , EXTRACT(year FROM START_DATE)||EXTRACT(month FROM START_DATE) b',
'      ,  EXTRACT(year FROM START_DATE) C, EXTRACT(month FROM START_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD    ',
'      WHERE ORG_ID =:P3021_EMPLOYER',
'      and  EXTRACT(year FROM START_DATE)=:P3021_YEAR_OF_INCOME',
'     and exists (select 1',
'            from pa_pmg_payrolldtl b',
'            where PA_PCF_EARNINGPERIOD.id=b.earnings_period_id',
'            and org_id =:P3021_EMPLOYER)',
'      )      ',
'ORDER BY C DESC, D DESC    ',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--FORM2--'
,p_lov_cascade_parent_items=>'P3021_EMPLOYER,P3021_YEAR_OF_INCOME'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(3598255300005262753)
,p_name=>'P3021_YEAR_OF_INCOME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3597704336072147649)
,p_prompt=>'Year of Income'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct COMPANY_YEAR a, COMPANY_YEAR b',
'FROM HR_HCF_COMPANYYEAR',
'where ORG_ID=:P3021_EMPLOYER',
'ORDER BY 1 DESC'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P3021_EMPLOYER'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'SUBMIT')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3598255463676262754)
,p_name=>'P3021_EMPLOYER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3597704336072147649)
,p_prompt=>'Employer'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select organisation_name,id',
'from hr_hcf_organisation X',
'where organisation_type=''SOFTWARE USER''',
'and id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
