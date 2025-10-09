prompt --application/pages/page_00108
begin
--   Manifest
--     PAGE: 00108
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
 p_id=>108
,p_name=>'rptNewEmployeeMovement'
,p_alias=>'RPTNEWEMPLOYEEMOVEMENT'
,p_step_title=>'Listing of New Employments'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825295698284997420)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3798148984717922882)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3779613889030751762)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3838050247668373969)
,p_plug_name=>'Listing of New Employments'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EM.ID as ID, ind_id, id PK_ID, compute_gross,',
'    EM.EMP_ID as EMP_ID,',
'    EM.CHANGE_TYPE as CHANGE_TYPE,',
'     EM.FROM_DATE as FROM_DATE,',
'    EM.TO_DATE as TO_DATE,',
'    EM.EFFECTIVE_DATE as EFFECTIVE_DATE,Personal_Rate,',
'    case when EM.EXECUTED=1 then ''Yes'' else ''No'' end as EXECUTED, EM.org_structure,',
'    EM.EMPLOYMENT_CLASS_ID as EMPLOYMENT_CLASS,job_id, job_class,',
'    EM.from_date as DATE_EMPLOYED,',
'    EM.APPROVED_BY as APPROVED_BY,',
'    EM.APPROVED_DATE as APPROVED_DATE,',
'    EM.WKLOCATION_ID as WKLOCATION_ID,',
' EM.LAST_CHANGED_BY,',
' EM.LAST_CHANGED_DATE,',
' EM.POSITION_ID,',
' EM.ORG_ID,',
' EM.ENTERED_BY,',
' EM.ENTRY_DATE,',
' EM.VERIFIED_BY,',
' EM.VERIFIED_DATE,',
' EM.ACTING_FOR,PAYMENT_TYPE, old_PAYMENT_TYPE,',
' case  EM.transfer when 0 then ''NO'' when 1 then ''YES'' else null end TRANSFER,',
' report_to_admin, REPORT_TO_FUNC, status, change_type_sub,',
'  OLD_ORGANISATION, OLD_ORG_STRUCTURE, OLD_FROM_DATE, OLD_TO_DATE, OLD_POSITION_NAME, OLD_WKLOCATION, OLD_JOB_NAME, OLD_JOB_CLASS, OLD_EMPLOYMENT_CLASS, OLD_GRADE, OLD_GRADE_POINT, OLD_PERSONAL_RATE, OLD_HOURLY_RATE, OLD_REPORT_TO_ADMIN, OLD_REPORT_T'
||'O_FUNC, OLD_PAYROLL_EFFECTIVE, OLD_TRANSACTION_TYPE_ID, OLD_STATUS, OLD_APPROVED_BY, OLD_APPROVED_DATE',
' FROM HR_MOV_EMPMOVEMENT_NEW EM  ',
' join',
'         (',
'         select UPPER(tblmv.VALUE_DESCRIPTION) M_DESCRIPTION, tblmv.ID M_ID',
'            from ',
'               hr_hcf_lookup tblmv',
'               join (select * from hr_hcf_lookup ',
'                      where TABLE_NAME = UPPER(''TBLMOVEMENTCLASS'') ',
'                      and table_value = ''NEWSTINT''',
'                     ) tblmvclass on tblmv.lookup_id = tblmvclass.id',
'                where  tblmv.TABLE_NAME = UPPER(''TBLMOVEMENT'') ',
'         ) tblmvclasslink on EM.change_type_id = tblmvclasslink.m_id',
'where FROM_DATE BETWEEN :P108_START_DATE AND :P108_END_DATE',
'AND exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where EM.org_id=a.org_id',
'              and EM.employment_class_id=a.employment_class_id',
'              AND UPPER(EM.PAYMENT_TYPE)=A.PAYMENT_TYPE             ',
'            )',
'and exists(select 1        ',
'             from vw_useraccess_finegrain k',
'             where NVL(k.grade_id, nvl(EM.emp_grade_id,1)) = nvl(EM.emp_grade_id,1)',
'             and user_name=:APP_USER)',
'and EM.ORG_ID = :APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P108_START_DATE,P108_END_DATE'
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
 p_id=>wwv_flow_imp.id(3838050152641373968)
,p_max_row_count=>'1000000'
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'BASUDEV'
,p_internal_uid=>351852789482230158
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725878602648823610)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:RP,109:P109_ID,P109_RETURN_VALUE,P109_PHOTO_ID:#ID#,108,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3859020022139064711)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725879012222823610)
,p_db_column_name=>'EMP_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988260722144141)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725879418198823611)
,p_db_column_name=>'CHANGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Change Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3727780711240765840)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725879799855823611)
,p_db_column_name=>'FROM_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725880206995823612)
,p_db_column_name=>'TO_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725880623421823613)
,p_db_column_name=>'EFFECTIVE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Effective Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725880995330823613)
,p_db_column_name=>'EXECUTED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725881374794823614)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725881818373823615)
,p_db_column_name=>'APPROVED_BY'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725882221974823615)
,p_db_column_name=>'APPROVED_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725882553325823616)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725883008133823616)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725883400082823617)
,p_db_column_name=>'ORG_ID'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Org ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725883753940823617)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725884174517823618)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725884610676823619)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725885023108823619)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725885404434823620)
,p_db_column_name=>'ACTING_FOR'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Acting For'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725874201519823603)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3837858715794004494)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725874620679823604)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3709676157333471543)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725874989048823604)
,p_db_column_name=>'REPORT_TO_ADMIN'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725875349857823605)
,p_db_column_name=>'REPORT_TO_FUNC'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725875813116823605)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>620
,p_column_identifier=>'BJ'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3853893589149985114)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725876182685823606)
,p_db_column_name=>'JOB_ID'
,p_display_order=>630
,p_column_identifier=>'BK'
,p_column_label=>'Job ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725876596351823606)
,p_db_column_name=>'JOB_CLASS'
,p_display_order=>640
,p_column_identifier=>'BL'
,p_column_label=>'Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725876996679823607)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>650
,p_column_identifier=>'BM'
,p_column_label=>'Employment Class'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3853987396783144140)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725877366402823608)
,p_db_column_name=>'PERSONAL_RATE'
,p_display_order=>660
,p_column_identifier=>'BN'
,p_column_label=>'Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'FML999G999G999G999G990'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725877753563823609)
,p_db_column_name=>'IND_ID'
,p_display_order=>670
,p_column_identifier=>'BP'
,p_column_label=>'Individual'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3709699683682630849)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_column_comment=>'has a lov that was created to show only individual data'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725878162591823609)
,p_db_column_name=>'PK_ID'
,p_display_order=>690
,p_column_identifier=>'BR'
,p_column_label=>'Pk ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725873008732823602)
,p_db_column_name=>'TRANSFER'
,p_display_order=>710
,p_column_identifier=>'BU'
,p_column_label=>'Transfer'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725873407596823602)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>720
,p_column_identifier=>'BV'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725873797737823603)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>740
,p_column_identifier=>'BX'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725872628394823601)
,p_db_column_name=>'OLD_PAYMENT_TYPE'
,p_display_order=>750
,p_column_identifier=>'BY'
,p_column_label=>'Old Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725885780053823620)
,p_db_column_name=>'OLD_ORGANISATION'
,p_display_order=>760
,p_column_identifier=>'CD'
,p_column_label=>'Old Organisation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725886153343823621)
,p_db_column_name=>'OLD_ORG_STRUCTURE'
,p_display_order=>770
,p_column_identifier=>'CE'
,p_column_label=>'Old Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725886610468823622)
,p_db_column_name=>'OLD_FROM_DATE'
,p_display_order=>780
,p_column_identifier=>'CF'
,p_column_label=>'Old From Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725886945575823622)
,p_db_column_name=>'OLD_TO_DATE'
,p_display_order=>790
,p_column_identifier=>'CG'
,p_column_label=>'Old To Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725887419522823623)
,p_db_column_name=>'OLD_POSITION_NAME'
,p_display_order=>800
,p_column_identifier=>'CH'
,p_column_label=>'Old Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725887774796823624)
,p_db_column_name=>'OLD_WKLOCATION'
,p_display_order=>810
,p_column_identifier=>'CI'
,p_column_label=>'Old Wklocation'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725888175338823624)
,p_db_column_name=>'OLD_JOB_NAME'
,p_display_order=>820
,p_column_identifier=>'CJ'
,p_column_label=>'Old Job Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725888614454823625)
,p_db_column_name=>'OLD_JOB_CLASS'
,p_display_order=>830
,p_column_identifier=>'CK'
,p_column_label=>'Old Job Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725888969645823626)
,p_db_column_name=>'OLD_EMPLOYMENT_CLASS'
,p_display_order=>840
,p_column_identifier=>'CL'
,p_column_label=>'Old Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725889398483823626)
,p_db_column_name=>'OLD_GRADE'
,p_display_order=>850
,p_column_identifier=>'CM'
,p_column_label=>'Old Grade'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725889831802823627)
,p_db_column_name=>'OLD_GRADE_POINT'
,p_display_order=>860
,p_column_identifier=>'CN'
,p_column_label=>'Old Grade Point'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725890204948823628)
,p_db_column_name=>'OLD_PERSONAL_RATE'
,p_display_order=>870
,p_column_identifier=>'CO'
,p_column_label=>'Old Personal Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725890586536823628)
,p_db_column_name=>'OLD_HOURLY_RATE'
,p_display_order=>880
,p_column_identifier=>'CP'
,p_column_label=>'Old Hourly Rate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725890974216823628)
,p_db_column_name=>'OLD_REPORT_TO_ADMIN'
,p_display_order=>890
,p_column_identifier=>'CQ'
,p_column_label=>'Old Report To Admin'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725891395575823629)
,p_db_column_name=>'OLD_REPORT_TO_FUNC'
,p_display_order=>900
,p_column_identifier=>'CR'
,p_column_label=>'Old Report To Func'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725891801731823630)
,p_db_column_name=>'OLD_PAYROLL_EFFECTIVE'
,p_display_order=>910
,p_column_identifier=>'CS'
,p_column_label=>'Old Payroll Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725892155991823630)
,p_db_column_name=>'OLD_TRANSACTION_TYPE_ID'
,p_display_order=>920
,p_column_identifier=>'CT'
,p_column_label=>'Old Transaction Type Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725892605231823631)
,p_db_column_name=>'OLD_STATUS'
,p_display_order=>930
,p_column_identifier=>'CU'
,p_column_label=>'Old Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725893030638823632)
,p_db_column_name=>'OLD_APPROVED_BY'
,p_display_order=>940
,p_column_identifier=>'CV'
,p_column_label=>'Old Approved By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725893385556823632)
,p_db_column_name=>'OLD_APPROVED_DATE'
,p_display_order=>950
,p_column_identifier=>'CW'
,p_column_label=>'Old Approved Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783600796261161564)
,p_db_column_name=>'STATUS'
,p_display_order=>960
,p_column_identifier=>'CX'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854388337888245940)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3783599961583161556)
,p_db_column_name=>'CHANGE_TYPE_SUB'
,p_display_order=>970
,p_column_identifier=>'CZ'
,p_column_label=>'Change Type Sub'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3838007871401208754)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'391323'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_view_mode=>'REPORT'
,p_report_columns=>'APXWS_CC_001:CHANGE_TYPE:ID:CHANGE_TYPE_SUB:FROM_DATE:TO_DATE:IND_ID:POSITION_ID:ORG_STRUCTURE:EMPLOYMENT_CLASS:PAYMENT_TYPE:PERSONAL_RATE:ENTRY_DATE:APPROVED_BY:APPROVED_DATE:VERIFIED_DATE:EXECUTED:'
,p_sort_column_1=>'APXWS_CC_001'
,p_sort_direction_1=>'DESC'
,p_sort_column_2=>'FROM_DATE'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'APXWS_CC_001:CHANGE_TYPE:0:0:0:0'
,p_break_enabled_on=>'APXWS_CC_001:CHANGE_TYPE:0:0:0:0'
,p_count_columns_on_break=>'FROM_DATE'
);
wwv_flow_imp_page.create_worksheet_condition(
 p_id=>wwv_flow_imp.id(602239043113495115)
,p_report_id=>wwv_flow_imp.id(3838007871401208754)
,p_name=>'UNVERIFIED'
,p_condition_type=>'FILTER'
,p_allow_delete=>'Y'
,p_expr_type=>'ROW'
,p_expr=>'AG IS  NULL  AND  CX  != ''Withdrawn'''
,p_condition_sql=>'"VERIFIED_DATE" IS  NULL  AND  "STATUS"  != ''Withdrawn'''
,p_enabled=>'N'
);
wwv_flow_imp_page.create_worksheet_computation(
 p_id=>wwv_flow_imp.id(602239403007495118)
,p_report_id=>wwv_flow_imp.id(3838007871401208754)
,p_db_column_name=>'APXWS_CC_001'
,p_column_identifier=>'C01'
,p_computation_expr=>'TO_CHAR(E,''YYYY-MM'') '
,p_column_type=>'STRING'
,p_column_label=>'From Month'
,p_report_label=>'From Month'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725871511881823598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3779613889030751762)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725871928573823598)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3779613889030751762)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:109:&SESSION.::&DEBUG.:109:P51_RETURN_VALUE:109'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3725895026926823638)
,p_name=>'P108_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3838050247668373969)
,p_item_default=>'TRUNC(current_date,''YEAR'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Start Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(3725895362491823639)
,p_name=>'P108_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3838050247668373969)
,p_item_default=>'ADD_MONTHS(trunc(current_date,''YEAR''),12)-1'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'End Date'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3725896381159823639)
,p_name=>'SHOW_DATA_END'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_END_DATE'
,p_condition_element=>'P108_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725896875936823640)
,p_event_id=>wwv_flow_imp.id(3725896381159823639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3838050247668373969)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725897298139823640)
,p_name=>'SHOW_DATE_START'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P108_START_DATE'
,p_condition_element=>'P108_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725897790963823640)
,p_event_id=>wwv_flow_imp.id(3725897298139823640)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3838050247668373969)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
