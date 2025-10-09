prompt --application/pages/page_01458
begin
--   Manifest
--     PAGE: 01458
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1458
,p_name=>'rptOrgBrowseDepartments'
,p_step_title=>'Browse by Departments'
,p_allow_duplicate_submissions=>'N'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825578100665156434)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* Scroll Results Only in Side Column */',
'.t-Body-side {',
'    display: flex;',
'    flex-direction: column;',
'    overflow: hidden;',
'}',
'.search-results {',
'    flex: 1;',
'    overflow: auto;',
'}',
'/* Format Search Region */',
'.search-region {',
'    border-bottom: 1px solid rgba(0,0,0,.1);',
'    flex-shrink: 0;',
'}',
'',
''))
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3795153287438225351)
,p_plug_name=>'Listing Of Active Employees'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1458_POSITION_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3823084204639343235)
,p_plug_name=>'Employee Details'
,p_parent_plug_id=>wwv_flow_imp.id(3795153287438225351)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  e.id,',
'        p.position_name,',
'        e.full_name,',
'        lk.value_description employment_class,',
'        case e.employment_type_id when ''1'' then ''Temporary'' when ''2'' then ''Permanent'' when ''3'' then ''Other'' else null end employment_type,',
'        e.payment_type,',
'        e.compute_gross,',
'        e.date_employed,',
'        e.appointment_date',
'    from hr_rcm_employee e ',
'    left join hr_hcf_position p on e.position_id = p.id',
'    left join hr_hcf_lookup lk on e.employment_class_id = lk.id',
'    where e.position_id=:P1458_POSITION_ID',
'    and p.orgdtl_id=:P1458_ID ',
'    and e.org_id = :APP_ORG_ID',
'',
'',
'/*select  e.id,',
'        p.position_name',
'        e.full_name,',
'        e.employment_class,',
'        e.payment_type,',
'        e.compute_gross,',
'        e.date_employment,',
'        e.appointment_date',
'    from hr_rcm_employee e ',
'    full outer join hr_hcf_position p',
'    on e.position_id=p.id',
'    where e.position_id=:P1458_POSITION_ID',
'    and p.orgdtl_id=:P1458_ID ',
'    */'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1458_POSITION_ID,P1458_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1458_ID'
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
 p_id=>wwv_flow_imp.id(3822883604600338749)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
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
,p_owner=>'N.RODNEY'
,p_internal_uid=>99051765770580586
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725577390487654108)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP:P1281_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725578147843654115)
,p_db_column_name=>'FULL_NAME'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Full Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725578586821654116)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>30
,p_column_identifier=>'B'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725578939985654117)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>40
,p_column_identifier=>'C'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725579412037654118)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3725579744261654119)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703832512339515634)
,p_db_column_name=>'EMPLOYMENT_TYPE'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Employment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703832606884515635)
,p_db_column_name=>'DATE_EMPLOYED'
,p_display_order=>80
,p_column_identifier=>'J'
,p_column_label=>'Date Employed'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3703832699240515636)
,p_db_column_name=>'APPOINTMENT_DATE'
,p_display_order=>90
,p_column_identifier=>'K'
,p_column_label=>'Appointment Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3823199344915649416)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'17483'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:POSITION_NAME:FULL_NAME:EMPLOYMENT_CLASS:PAYMENT_TYPE:COMPUTE_GROSS::EMPLOYMENT_TYPE:DATE_EMPLOYED:APPOINTMENT_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3822951997847343102)
,p_plug_name=>'Browse by Department Details'
,p_icon_css_classes=>'fa-server-search'
,p_region_template_options=>'#DEFAULT#:t-HeroRegion--iconsCircle'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3822953260293343103)
,p_plug_name=>'Search'
,p_region_css_classes=>'search-region padding-md'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_02'
,p_query_type=>'SQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3822954044301343104)
,p_name=>'Master Records'
,p_template=>3371237801798025892
,p_display_sequence=>20
,p_region_css_classes=>'search-results'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'t-MediaList--showDesc:t-MediaList--stack'
,p_display_point=>'REGION_POSITION_02'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select x.id,',
'    null link_class,',
'    apex_page.get_url(p_items => ''P1458_ID'', p_values => x.id) link,',
'    null icon_class,',
'    null link_attr,',
'    null icon_color_class,',
'    case when nvl(:P1458_ID,''0'') = x.id',
'      then ''is-active'' ',
'      else '' ''',
'    end list_class,',
'    substr("UNIT_NAME", 1, 50)||( case when length("UNIT_NAME") > 50 then ''...'' end ) list_title,',
'    substr("COA_CODE", 1, 50)||( case when length("COA_CODE") > 50 then ''...'' end ) list_text,',
'    null list_badge',
'from "HR_HCF_ORGSTRUCTUREDTL" x',
'    JOIN hr_hcf_orgstructurehd Y on Y.id = x.org_structure_id ',
'where (:P1458_SEARCH is null',
'        or upper(x."UNIT_NAME") like ''%''||upper(:P1458_SEARCH)||''%''',
'        or upper(x."COA_CODE") like ''%''||upper(:P1458_SEARCH)||''%''',
'    )',
'and trunc(X.start_date) <= trunc(current_date) and trunc(nvl(X.end_date,trunc(current_date))) >= trunc(current_date)',
'and Y.org_id= :APP_ORG_ID',
'',
'order by "UNIT_NAME"'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1458_SEARCH'
,p_lazy_loading=>false
,p_query_row_template=>2093604263195414824
,p_query_num_rows=>1000
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'<div class="u-tC">No Records Found</div>'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725582701339654147)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725583136066654148)
,p_query_column_id=>2
,p_column_alias=>'LINK_CLASS'
,p_column_display_sequence=>2
,p_column_heading=>'Link Class'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725583529631654149)
,p_query_column_id=>3
,p_column_alias=>'LINK'
,p_column_display_sequence=>3
,p_column_heading=>'Link'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725583853511654150)
,p_query_column_id=>4
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725584273986654150)
,p_query_column_id=>5
,p_column_alias=>'LINK_ATTR'
,p_column_display_sequence=>5
,p_column_heading=>'Link Attr'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725584705603654151)
,p_query_column_id=>6
,p_column_alias=>'ICON_COLOR_CLASS'
,p_column_display_sequence=>6
,p_column_heading=>'Icon Color Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725585134405654152)
,p_query_column_id=>7
,p_column_alias=>'LIST_CLASS'
,p_column_display_sequence=>7
,p_column_heading=>'List Class'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725585461328654152)
,p_query_column_id=>8
,p_column_alias=>'LIST_TITLE'
,p_column_display_sequence=>8
,p_column_heading=>'List Title'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725585842638654153)
,p_query_column_id=>9
,p_column_alias=>'LIST_TEXT'
,p_column_display_sequence=>9
,p_column_heading=>'List Text'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725586271325654154)
,p_query_column_id=>10
,p_column_alias=>'LIST_BADGE'
,p_column_display_sequence=>10
,p_column_heading=>'List Badge'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3822961739583343120)
,p_name=>'Department Detail'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_css_classes=>'js-master-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent12:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'',
'       lk.value_description as CLASSIFICATION,',
'       o.UNIT_CODE,',
'       o.UNIT_NAME,',
'       o.COA_CODE',
'from HR_HCF_ORGSTRUCTUREDTL o  left join hr_hcf_lookup lk on o.classification = lk.id',
'join hr_hcf_orgstructurehd h on h.id = o.org_structure_id',
'where h.org_id = :APP_ORG_ID',
'and o.id = :P1458_ID'))
,p_display_when_condition=>'P1458_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1458_ID'
,p_lazy_loading=>false
,p_query_row_template=>2100515439059797523
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No Record Selected'
,p_query_row_count_max=>500
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725586981172654156)
,p_query_column_id=>1
,p_column_alias=>'CLASSIFICATION'
,p_column_display_sequence=>1
,p_column_heading=>'Classification'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "HR_HCF_ORGSTRUCTUREDTL"',
'where "CLASSIFICATION" is not null',
'and "ID" = :P1458_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725587412038654157)
,p_query_column_id=>2
,p_column_alias=>'UNIT_CODE'
,p_column_display_sequence=>2
,p_column_heading=>'Unit Code'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "HR_HCF_ORGSTRUCTUREDTL"',
'where "UNIT_CODE" is not null',
'and "ID" = :P1458_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725587777309654157)
,p_query_column_id=>3
,p_column_alias=>'UNIT_NAME'
,p_column_display_sequence=>3
,p_column_heading=>'Unit Name'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "HR_HCF_ORGSTRUCTUREDTL"',
'where "UNIT_NAME" is not null',
'and "ID" = :P1458_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725588189705654158)
,p_query_column_id=>4
,p_column_alias=>'COA_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'C.O.A. Code'
,p_heading_alignment=>'LEFT'
,p_display_when_cond_type=>'EXISTS'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1 from "HR_HCF_ORGSTRUCTUREDTL"',
'where "COA_CODE" is not null',
'and "ID" = :P1458_ID'))
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3822988113170343142)
,p_plug_name=>'Region Display Selector'
,p_region_css_classes=>'js-detail-rds'
,p_region_template_options=>'#DEFAULT#:margin-bottom-md'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P1458_NEW_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3823032210531343196)
,p_name=>'Listing Of Active Positions '
,p_template=>4072358936313175081
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_css_classes=>'js-detail-region'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent11:t-Region--scrollBody'
,p_component_template_options=>'t-Report--stretch:#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight:t-Report--inline'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'p.position_name',
',p.orgdtl_id',
',rc.value_description as employment_class',
',g.grade_code',
',p.grade_point',
',p.no_filled as FilledAmount',
',p.no_required_max as MaxAuthAmount',
',p.no_required_min as MinAmount',
',l.location_description',
',p.id',
'from ( select * from hr_hcf_position where trunc(start_date) <= trunc(current_date)  and trunc(nvl(end_date,current_date)) >= trunc(current_date) ) p',
'--from hr_hcf_position p',
'join hr_hcf_job j on  p.job_id = j.id ',
'join hr_hcf_worklocation l on  p.def_work_location_id = l.id',
'join hr_hcf_positiongrade g on p.grade_id = g.id ',
'join (select *',
'      from hr_hcf_lookup h',
'      where table_name = ''TBLEMPLOYMENTCLASS''',
'      ) rc on rc.id = j.employment_class_job',
' where "ORGDTL_ID" = :P1458_ID',
' and j.org_id = :APP_ORG_SHR_DED',
'',
'--nickels old code',
'/*',
'select',
'p.position_name',
',p.orgdtl_id',
',rc.value_description as employment_class',
',g.grade_code',
',g.grade_description',
',ep.wklocation_id',
',ep.position_id',
'--,gp.point',
'--,gp.point_amount',
',l.location_description',
',p.no_required_max as MaxAuthAmount',
',p.no_required_min as MinAmount',
',p.no_filled as FilledAmount',
'--,ep.empcount as FilledAmount',
'',
'--from ( select * from hr_hcf_position where trunc(start_date) <= trunc(current_date)  and trunc(nvl(end_date,trunc(current_date))) >= trunc(current_date)) p',
'from hr_hcf_position p',
'join hr_hcf_job j on  j.id = p.job_id',
'join hr_hcf_worklocation l on l.id = p.def_work_location_id',
'join hr_hcf_positiongrade g on g.id = p.grade_id',
'--join (select * from hr_hcf_positiongradepoint where end_date is null) gp on gp.id = p.grade_point_id',
'join (select *',
'      from hr_hcf_lookup h',
'      where table_name = ''TBLEMPLOYMENTCLASS''',
'      ) rc on rc.id = j.employment_class_job',
'left join',
'    (',
'    select wklocation_id, position_id,count(1) as empcount ',
'    from hr_rcm_employee',
'    group by wklocation_id, position_id',
'    ) ep on (ep.wklocation_id = l.id and ep.position_id = p.id )',
' where "ORGDTL_ID" = :P1458_ID',
'*/'))
,p_display_when_condition=>'P1458_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>100
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'No data found.'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>5000
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725573193605654079)
,p_query_column_id=>1
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Position Name'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3701709508363707853)
,p_query_column_id=>2
,p_column_alias=>'ORGDTL_ID'
,p_column_display_sequence=>1
,p_column_heading=>'View Emps'
,p_column_link=>'f?p=&APP_ID.:1458:&SESSION.::&DEBUG.:RP:P1458_NEW_ID,P1458_POSITION_ID:#ORGDTL_ID#,#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-page.png" class="apex-edit-page" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725573991401654084)
,p_query_column_id=>3
,p_column_alias=>'EMPLOYMENT_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Employment Class'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725574434245654084)
,p_query_column_id=>4
,p_column_alias=>'GRADE_CODE'
,p_column_display_sequence=>4
,p_column_heading=>'Grade Code'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3703832296037515632)
,p_query_column_id=>5
,p_column_alias=>'GRADE_POINT'
,p_column_display_sequence=>5
,p_column_heading=>'Grade Point'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3703832387564515633)
,p_query_column_id=>6
,p_column_alias=>'FILLEDAMOUNT'
,p_column_display_sequence=>6
,p_column_heading=>'Filled '
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725575980173654088)
,p_query_column_id=>7
,p_column_alias=>'MAXAUTHAMOUNT'
,p_column_display_sequence=>8
,p_column_heading=>'Max AuthAmt'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725576360619654088)
,p_query_column_id=>8
,p_column_alias=>'MINAMOUNT'
,p_column_display_sequence=>7
,p_column_heading=>'Min AuthAmt'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3725575576633654087)
,p_query_column_id=>9
,p_column_alias=>'LOCATION_DESCRIPTION'
,p_column_display_sequence=>9
,p_column_heading=>'Default Location'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3703832197280515631)
,p_query_column_id=>10
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725562630385621267)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3822951997847343102)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1456:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3725580863276654136)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3822951997847343102)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1458:&SESSION.:RESET:&DEBUG.:RP,1458::'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3725581327317654137)
,p_name=>'P1458_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3822951997847343102)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3725581955418654143)
,p_name=>'P1458_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3822953260293343103)
,p_prompt=>'Search'
,p_placeholder=>'Search...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:t-Form-fieldContainer--postTextBlock'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3725588562405654159)
,p_name=>'P1458_POSITION_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3822961739583343120)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3725588952434654159)
,p_name=>'P1458_NEW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3822961739583343120)
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725589648683654161)
,p_name=>'Edit Master Record'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3822961739583343120)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725590147414654162)
,p_event_id=>wwv_flow_imp.id(3725589648683654161)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3822961739583343120)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725590696248654163)
,p_event_id=>wwv_flow_imp.id(3725589648683654161)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Hr\u0020Hcf\u0020Orgstructuredtl\u0020updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725591087493654164)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3823032210531343196)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725591557450654164)
,p_event_id=>wwv_flow_imp.id(3725591087493654164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3823032210531343196)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725592075298654165)
,p_event_id=>wwv_flow_imp.id(3725591087493654164)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Hr Hcf Position updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725592467526654165)
,p_name=>'Refresh on Dialog Close'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3823084204639343235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725593027740654166)
,p_event_id=>wwv_flow_imp.id(3725592467526654165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3823084204639343235)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725593491170654166)
,p_event_id=>wwv_flow_imp.id(3725592467526654165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.message.showPageSuccess(''Hr Hcf Position updated'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3725593872532654167)
,p_name=>'Perform Search'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1458_SEARCH'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'this.browserEvent.which === apex.jQuery.ui.keyCode.ENTER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keypress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725594364239654167)
,p_event_id=>wwv_flow_imp.id(3725593872532654167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3822954044301343104)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3725594847001654168)
,p_event_id=>wwv_flow_imp.id(3725593872532654167)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CANCEL_EVENT'
);
wwv_flow_imp.component_end;
end;
/
