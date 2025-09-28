prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Report_POC'
,p_alias=>'REPORT-POC'
,p_step_title=>'Report_POC'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(370836757029486472)
,p_plug_name=>'Report_POC'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'pa.org_id,',
'pa.pay_batch_id,ep.emp_company_no emp_id,',
'pa.id pay_slip,',
'nvl(pa.surname_hist,r.surname)||'', ''||nvl(pa.first_name_hist,r.first_name)||'' ''||nvl(r.middle_name,'''') employee_name,',
'nvl(pa.orgdtl_id,fn_getWorkLocation(pa.org_id, pa.wklocation_id)) WORK_LOCATION_ID,',
'nvl(v.unit_name,fn_getDepartment(pa.org_id, pa.position_id, pa.wklocation_id)) WORK_LOCATION,',
'nvl(pa.department_name_hist,''Unknown'')department_name_hist,pa.surname_hist,pa.first_name_hist,',
'pa.total_deduction,pa.gross_taxable+pa.gross_nontaxable  AS gross,',
'--case when pa.org_id=18658 and payment_type_hist=''WEEKLY'' then hourly_rate*200 else basic_personal_rate end basic_personal_rate,',
'--case when pa.PAYMENT_TYPE_HIST=''MONTHLY'' and pa.compute_gross_hist = ''BASIC_PAY'' then ',
'--pa.basic_personal_rate',
'--else ',
'--nvl((select sum(c.INCOME_AMOUNT) from PA_PMG_PAYROLLINCOME c where c.PAY_SLIPNO=pa.id and  c.INCOME_CODE=''NR''),0)',
'--end basic_personal_rate,   ',
'pa.basic_personal_rate,',
'pa.hourly_rate,',
'pa.time_tax_earnings,pa.nis_employee,pa.tax_amount,pa.net_pay,',
'pa.organisation_name,',
'ho.address,ho.faxnum,ho.telnum,nis_reg_no,tax_reg_no,',
'pa.period_start,pa.period_end,',
'pa.payroll_effective,employment_class_hist,payment_type_hist,',
'initcap(employment_class_hist|| '' ''||payment_type_hist||'' ''||pa.period_start||'' -- ''||pa.period_end) as payroll_description,',
'upper(pa.payment_mode_hist) payment_mode_hist',
'from pa_pmg_payrolldtl pa',
'JOIN PA_PMG_PAYROLLHD PH ON PA.PAY_BATCH_ID=PH.ID',
'join hr_rcm_employee ep on pa.emp_id=ep.id',
'join HR_RCM_INDIVIDUAL r on ep.ind_id=r.id',
'join hr_hcf_organisation ho on pa.org_id=ho.id',
'--left outer join vw_organisation_structure v on po.orgdtl_id=v.id',
'left outer join HR_HCF_ORGSTRUCTUREDTL v on pa.orgdtl_id=v.id',
'WHERE ',
'((upper(pa.PAYMENT_TYPE_HIST) = case   when 82=-25 then to_char(upper(pa.PAYMENT_TYPE_HIST))	                               ',
'                                    when 82=-15  then ''MONTHLY''',
'                                    when 82=-5    then ''WEEKLY''',
'                                    end',
'/*and ',
'extract(year from pa.period_end)||extract(month from pa.period_end)= P_PERIOD_MONTH_YEAR*/',
'and pa.org_id=699',
')',
'or',
'pa.EARNINGS_PERIOD_ID= 82',
') ',
'/*and ',
'( allEmployees = 1 or ',
'exists (select 1',
'                        from RPT_PARAMETER w1',
'                        WHERE ',
'                        W1.SESSION_ID= P_SESSION_ID',
'                         and',
'                         option_value=case when option_name = SEARCH_OPTION  and option_name =''EMPLOYEE'' then to_char(ep.id)                                               ',
'                                                when option_name = SEARCH_OPTION  and option_name =''POSITION'' then to_char(ep.position_id)',
'                                                when option_name = SEARCH_OPTION  and option_name =''WORK_LOCATION'' then to_char(ep.wklocation_id)',
'                                                when option_name = SEARCH_OPTION  and option_name =''UNION'' then to_char(ep.union_code_id)',
'                                                when option_name = SEARCH_OPTION  and option_name =''EMPLOYMENT_TYPE'' then to_char(ep.EMPLOYMENT_TYPE_ID)',
'                                                when option_name = SEARCH_OPTION  and option_name =''ORG_STRUCT_LEVEL'' then to_char(v.id)',
'                                                end',
'                        )',
'))*/',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report_POC'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(370836821930486472)
,p_name=>'Report_POC'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHEADLEY@INNOSYSGY.COM'
,p_internal_uid=>109753403739783559
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370837538860486483)
,p_db_column_name=>'ORG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370837979617486486)
,p_db_column_name=>'PAY_BATCH_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Pay Batch Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370838359305486487)
,p_db_column_name=>'EMP_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Emp Id'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370838724818486489)
,p_db_column_name=>'PAY_SLIP'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Pay Slip'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370839190341486490)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370839612958486491)
,p_db_column_name=>'WORK_LOCATION_ID'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Work Location Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370839949267486493)
,p_db_column_name=>'WORK_LOCATION'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Work Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370840334663486494)
,p_db_column_name=>'DEPARTMENT_NAME_HIST'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Department Name Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370840768249486495)
,p_db_column_name=>'SURNAME_HIST'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Surname Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370841184275486496)
,p_db_column_name=>'FIRST_NAME_HIST'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'First Name Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370841544800486498)
,p_db_column_name=>'TOTAL_DEDUCTION'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Total Deduction'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370841954421486499)
,p_db_column_name=>'GROSS'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Gross'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370842408630486500)
,p_db_column_name=>'BASIC_PERSONAL_RATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Basic Personal Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370842779097486501)
,p_db_column_name=>'HOURLY_RATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Hourly Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370843119431486503)
,p_db_column_name=>'TIME_TAX_EARNINGS'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Time Tax Earnings'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370843523656486504)
,p_db_column_name=>'NIS_EMPLOYEE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Nis Employee'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370843987477486505)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370844324621486506)
,p_db_column_name=>'NET_PAY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Net Pay'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370844796910486508)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370845191893486509)
,p_db_column_name=>'ADDRESS'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370845582103486510)
,p_db_column_name=>'FAXNUM'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Faxnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370845990012486512)
,p_db_column_name=>'TELNUM'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Telnum'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370846415750486513)
,p_db_column_name=>'NIS_REG_NO'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Nis Reg No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370846779365486514)
,p_db_column_name=>'TAX_REG_NO'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Tax Reg No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370847119495486515)
,p_db_column_name=>'PERIOD_START'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Period Start'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370847529440486517)
,p_db_column_name=>'PERIOD_END'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Period End'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370847922519486518)
,p_db_column_name=>'PAYROLL_EFFECTIVE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Payroll Effective'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370848412660486519)
,p_db_column_name=>'EMPLOYMENT_CLASS_HIST'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Employment Class Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370848776755486521)
,p_db_column_name=>'PAYMENT_TYPE_HIST'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Payment Type Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370849145851486522)
,p_db_column_name=>'PAYROLL_DESCRIPTION'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Payroll Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(370849570824486523)
,p_db_column_name=>'PAYMENT_MODE_HIST'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Payment Mode Hist'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp.component_end;
end;
/
