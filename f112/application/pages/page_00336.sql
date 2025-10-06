prompt --application/pages/page_00336
begin
--   Manifest
--     PAGE: 00336
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
 p_id=>336
,p_name=>'rptApplications'
,p_alias=>'RPTAPPLICATIONS'
,p_step_title=>'Faceted Search for Applications'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_step_template=>2526643373347724467
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_page_component_map=>'22'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5327521898584660198)
,p_name=>'Search Results'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''||b.id)  PHOTO,',
'decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P540_PHOTO'',b.id)||''" height="75" width="75" />'') detail_img, a.id pkey, a.ID,  organisation_name, a.position_name,  position_applied_for,employment_type,has_applicant_detail,',
' PKG_GLOBAL_FNTS.fn_calcage(DOB,current_date) AGE, to_char(SEX_CODE) SEX_CODE, to_char(B.MARITAL_CODE) MARITAL_CODE,',
'trunc(date_applied) date_applied,  proposed_start,method_of_application,',
'to_char(applicant_no) applicant_no,to_char(surname)surname, to_char(first_name) first_name,  to_number(req_sal_start_range) req_sal_start_range',
', to_number(REQ_SAL_END_RANGE) REQ_SAL_END_RANGE,application_no,',
'UPPER(pkg_global_fnts.status_descript(a.status)) Status, A.ENTERED_BY, A.ENTRY_DATE, ''External'' applicant_type',
'from HR_APL_JOBREQUEST a  join hr_apl_individual b on b.id=a.applicant_id',
'join hr_hcf_position pos on a.position_id = pos.id',
'where a.org_id=:APP_ORG_ID',
'and not exists (select 1',
'                from hr_RCM_individual w',
'                where w.ext_applicant_id = b.id)',
'and date_applied between :P336_START_DATE and :P336_END_DATE',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'',:APP_USER))',
'          where  t.id = pos.Orgdtl_Id',
'          and pos.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, pos.ORGDTL_ID, k.org_structure_id)         ',
'          )',
'UNION',
'select   apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''||b.id)  PHOTO,',
'decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P540_PHOTO'',b.id)||''" height="75" width="75" />'') detail_img, a.id pkey,a.ID,  organisation_name, a.position_name,  position_applied_for,employment_type,has_applicant_detail,',
' PKG_GLOBAL_FNTS.fn_calcage(DOB,current_date) AGE, case when to_char(SEX_CODE)=''F'' then ''FEMALE'' ELSE ''MALE'' END SEX_CODE, to_char(B.MARITAL_CODE) MARITAL_CODE,',
'trunc(date_applied) date_applied,  proposed_start,method_of_application,',
'''Internal'' applicant_no, to_char(surname) surname, to_char(first_name) first_name, to_number(req_sal_start_range) req_sal_start_range',
', to_number(REQ_SAL_END_RANGE) REQ_SAL_END_RANGE,application_no,',
'UPPER(pkg_global_fnts.status_descript(a.status)) Status, A.ENTERED_BY, A.ENTRY_DATE, ''Internal'' applicant_type',
'from HR_APL_JOBREQUEST a join hr_RCM_individual b on b.id=a.applicant_id',
'join hr_hcf_position pos on a.position_id = pos.id',
'where a.org_id=:APP_ORG_ID',
'and (b.interview_id is  null or ext_applicant_id is  null)',
'and date_applied between :P336_START_DATE and :P336_END_DATE',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'',:APP_USER))',
'          where  t.id = pos.Orgdtl_Id',
'          and pos.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, pos.ORGDTL_ID, k.org_structure_id)         ',
'          )',
'UNION',
'select  apex_util.prepare_url(''f?p=''||:APP_ID||''.:IMAGE:''||:APP_SESSION||''::::GET_ID:''||b.id)  PHOTO,',
'decode(nvl(dbms_lob.getlength(PHOTO),0),0,null,',
'       ''<img alt="''||apex_escape.html_attribute(SURNAME)||''" title="''||apex_escape.html_attribute(SURNAME)',
'              ||''" style="border: 4px solid #CCC; -moz-border-radius: 50%; -webkit-border-radius: 50%;" ''',
'              ||''src="''||apex_util.get_blob_file_src(''P540_PHOTO'',b.id)||''" height="75" width="75" />'') detail_img, a.id pkey,a.ID,  organisation_name, a.position_name,  position_applied_for,employment_type,has_applicant_detail,',
' PKG_GLOBAL_FNTS.fn_calcage(DOB,current_date) AGE, case when to_char(SEX_CODE)=''F'' then ''FEMALE'' ELSE ''MALE'' END SEX_CODE, to_char(B.MARITAL_CODE) MARITAL_CODE,',
'trunc(date_applied) date_applied,  proposed_start,method_of_application,',
'''Internal'' applicant_no, to_char(surname) surname, to_char(first_name) first_name, to_number(req_sal_start_range) req_sal_start_range',
', to_number(REQ_SAL_END_RANGE) REQ_SAL_END_RANGE,application_no,',
'UPPER(pkg_global_fnts.status_descript(a.status)) Status, A.ENTERED_BY, A.ENTRY_DATE, ''Internal-->External'' applicant_type',
'from HR_APL_JOBREQUEST a join hr_RCM_individual b on b.ext_applicant_id=a.applicant_id',
'join hr_hcf_position pos on a.position_id = pos.id',
'where a.org_id=:APP_ORG_ID',
'and (b.interview_id is not null or ext_applicant_id is not null)',
'and date_applied between :P336_START_DATE and :P336_END_DATE',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT k on ( t.id = k.ORG_STRUCTURE_ID  and nvl(k.user_name,''1'') = decode(k.user_name, null, ''1'',:APP_USER))',
'          where  t.id = pos.Orgdtl_Id',
'          and pos.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, pos.ORGDTL_ID, k.org_structure_id)         ',
'          )',
''))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P336_START_DATE,P336_END_DATE'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>1000000
,p_pagination_display_position=>'TOP_RIGHT'
,p_csv_output=>'Y'
,p_csv_output_link_text=>'Download'
,p_prn_output=>'Y'
,p_prn_format=>'PDF'
,p_prn_output_link_text=>'Print'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width_units=>'PERCENTAGE'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Search Results'
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
,p_sort_null=>'L'
,p_plug_query_exp_filename=>'Applications'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139343862274162013)
,p_query_column_id=>1
,p_column_alias=>'PHOTO'
,p_column_display_sequence=>250
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(139344003590162014)
,p_query_column_id=>2
,p_column_alias=>'DETAIL_IMG'
,p_column_display_sequence=>30
,p_column_heading=>'Photo'
,p_column_format=>'PCT_GRAPH:::'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(149893538976206452)
,p_query_column_id=>3
,p_column_alias=>'PKEY'
,p_column_display_sequence=>20
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827317444674774343)
,p_query_column_id=>4
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_column_heading=>'View'
,p_column_link=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:549:P549_ID,P549_NAVIGATOR:#ID#,336'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827317927962774344)
,p_query_column_id=>5
,p_column_alias=>'ORGANISATION_NAME'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827318336832774344)
,p_query_column_id=>6
,p_column_alias=>'POSITION_NAME'
,p_column_display_sequence=>100
,p_column_heading=>'Position Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827318668435774345)
,p_query_column_id=>7
,p_column_alias=>'POSITION_APPLIED_FOR'
,p_column_display_sequence=>110
,p_column_heading=>'Position Applied For'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827319066038774345)
,p_query_column_id=>8
,p_column_alias=>'EMPLOYMENT_TYPE'
,p_column_display_sequence=>120
,p_column_heading=>'Employment Type'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_display_as=>'TEXT_FROM_LOV_ESC'
,p_named_lov=>wwv_flow_imp.id(3202169449667688035)
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2912651132128222139)
,p_query_column_id=>9
,p_column_alias=>'HAS_APPLICANT_DETAIL'
,p_column_display_sequence=>160
,p_column_heading=>'Applicant Details?'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827319471315774346)
,p_query_column_id=>10
,p_column_alias=>'AGE'
,p_column_display_sequence=>70
,p_column_heading=>'Age'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827319893041774347)
,p_query_column_id=>11
,p_column_alias=>'SEX_CODE'
,p_column_display_sequence=>170
,p_column_heading=>'Sex Code'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827320287883774348)
,p_query_column_id=>12
,p_column_alias=>'MARITAL_CODE'
,p_column_display_sequence=>180
,p_column_heading=>'Marital Code'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827320738719774349)
,p_query_column_id=>13
,p_column_alias=>'DATE_APPLIED'
,p_column_display_sequence=>90
,p_column_heading=>'Date Applied'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827321098520774349)
,p_query_column_id=>14
,p_column_alias=>'PROPOSED_START'
,p_column_display_sequence=>130
,p_column_heading=>'Proposed Start'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827321484804774350)
,p_query_column_id=>15
,p_column_alias=>'METHOD_OF_APPLICATION'
,p_column_display_sequence=>140
,p_column_heading=>'Method Of Application'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827321881163774350)
,p_query_column_id=>16
,p_column_alias=>'APPLICANT_NO'
,p_column_display_sequence=>150
,p_column_heading=>'Applicant No'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827322338903774351)
,p_query_column_id=>17
,p_column_alias=>'SURNAME'
,p_column_display_sequence=>50
,p_column_heading=>'Surname'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827322706764774352)
,p_query_column_id=>18
,p_column_alias=>'FIRST_NAME'
,p_column_display_sequence=>60
,p_column_heading=>'First Name'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827323048564774352)
,p_query_column_id=>19
,p_column_alias=>'REQ_SAL_START_RANGE'
,p_column_display_sequence=>220
,p_column_heading=>'Req Sal Start Range'
,p_column_format=>'FML999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827323482806774353)
,p_query_column_id=>20
,p_column_alias=>'REQ_SAL_END_RANGE'
,p_column_display_sequence=>230
,p_column_heading=>'Req Sal End Range'
,p_column_format=>'FML999G999G999G999G990'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(149889264632206409)
,p_query_column_id=>21
,p_column_alias=>'APPLICATION_NO'
,p_column_display_sequence=>40
,p_column_heading=>'Application No'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827323870290774354)
,p_query_column_id=>22
,p_column_alias=>'STATUS'
,p_column_display_sequence=>190
,p_column_heading=>'Status'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827324293892774355)
,p_query_column_id=>23
,p_column_alias=>'ENTERED_BY'
,p_column_display_sequence=>200
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827324686725774356)
,p_query_column_id=>24
,p_column_alias=>'ENTRY_DATE'
,p_column_display_sequence=>210
,p_column_heading=>'Entry Date'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2827325089851774357)
,p_query_column_id=>25
,p_column_alias=>'APPLICANT_TYPE'
,p_column_display_sequence=>240
,p_column_heading=>'Applicant Type'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5327521988318660198)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>4
,p_plug_display_point=>'REGION_POSITION_02'
,p_plug_source_type=>'NATIVE_FACETED_SEARCH'
,p_filtered_region_id=>wwv_flow_imp.id(5327521898584660198)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'batch_facet_search', 'N',
  'compact_numbers_threshold', '10000',
  'current_facets_selector', '#active_facets',
  'display_chart_for_top_n_values', '10',
  'show_charts', 'Y',
  'show_current_facets', 'E',
  'show_total_row_count', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5327525110847660206)
,p_plug_name=>'Button Bar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'<div id="active_facets"></div>'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26175982402495104143)
,p_plug_name=>'Applications Search Center'
,p_icon_css_classes=>'app-customer-tracker'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'  t varchar2(4000) := null;',
'begin',
'',
'  if t is null or t = ''&nbsp;'' or t = ''Preference does not exist'' then',
'     sys.htp.p(''<p>Find, Filter and Organise Applications. Remember to click Go button after changing the Start/End dates.</p>'');',
'  else',
'     sys.htp.p(''<p>''||apex_escape.html(t)||''</p>'');',
'  end if;',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'N',
  'attribute_02', 'HTML',
  'attribute_03', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(26175982766731104146)
,p_plug_name=>'Search_top'
,p_parent_plug_id=>wwv_flow_imp.id(26175982402495104143)
,p_region_css_classes=>'t-Form--search'
,p_region_template_options=>'#DEFAULT#:#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_num_rows=>15
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827332876644774366)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5327525110847660206)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:549:&SESSION.::&DEBUG.:549:P549_NAVIGATOR:336'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827333252363774367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5327525110847660206)
,p_button_name=>'GENERAL_INTERNAL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Generate Applications'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:238:&SESSION.::&DEBUG.:238::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827333693878774367)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5327525110847660206)
,p_button_name=>'SUBMIT_APPLICATIONS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit Applications'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2827334085577774368)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(5327525110847660206)
,p_button_name=>'RESET'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Reset'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:336:&SESSION.::&DEBUG.:RR,234::'
,p_icon_css_classes=>'fa-undo'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827325474244774358)
,p_name=>'P336_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5327521898584660198)
,p_item_default=>'trunc(current_date, ''mm'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search Start Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(2827325924533774358)
,p_name=>'P336_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5327521898584660198)
,p_item_default=>'last_day(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Search End Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2827326639438774360)
,p_name=>'P336_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'input_field', 'FACET',
  'search_type', 'ROW')).to_clob
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827327042339774360)
,p_name=>'P336_POSITION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Position Name'
,p_source=>'POSITION_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827327387137774360)
,p_name=>'P336_SURNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Surname'
,p_source=>'SURNAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827327804532774361)
,p_name=>'P336_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>true
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827328148936774361)
,p_name=>'P336_DATE_APPLIED'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Date Applied'
,p_source=>'DATE_APPLIED'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT TRUNC(DATE_APPLIED, ''iw'')||''-''||TRUNC(DATE_APPLIED+7, ''iw'') a,',
'to_char( TRUNC(DATE_APPLIED, ''iw''),''YYYYMMDDHH24MISS'')||''|''|| to_char( TRUNC(DATE_APPLIED, ''iw'')+7,''YYYYMMDDHH24MISS'') b',
'from HR_APL_JOBREQUEST',
'where org_id=:APP_ORG_ID',
'order by 1',
''))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'N')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827328599860774362)
,p_name=>'P336_APPLICANT_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Applicant Type'
,p_source=>'APPLICANT_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827329013239774362)
,p_name=>'P336_AGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Age'
,p_source=>'AGE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>'STATIC:16 - 21;16|21,22 - 30;22|30,31 - 40;31|40,41 - 50;41|50,61 - 60;51|60,More than 60;60|'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'N')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827329400866774362)
,p_name=>'P336_SEX'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Sex'
,p_source=>'SEX_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'hide_radio_buttons', 'N')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827329752697774363)
,p_name=>'P336_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827330180051774363)
,p_name=>'P336_MARITAL_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Marital Code'
,p_source=>'MARITAL_CODE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827330567405774364)
,p_name=>'P336_EMPLOYMENT_TYPE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Employment Type'
,p_source=>'EMPLOYMENT_TYPE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Temporary;1,Permanent;2,Pension;3,Contract;4,Training;5'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'hide_radio_buttons', 'N')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827330959725774364)
,p_name=>'P336_POSITION_APPLIED_FOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Position Applied For'
,p_source=>'POSITION_APPLIED_FOR'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827331374243774364)
,p_name=>'P336_METHOD_OF_APPLICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Method Of Application'
,p_source=>'METHOD_OF_APPLICATION'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827331778546774365)
,p_name=>'P336_ENTERED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Entered By'
,p_source=>'ENTERED_BY'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov_sort_direction=>'ASC'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>5
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2827332243746774365)
,p_name=>'P336_ENTRY_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5327521988318660198)
,p_prompt=>'Entry Date'
,p_source=>'ENTRY_DATE'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_RANGE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT TRUNC(entry_date, ''iw'')||''-''||TRUNC(entry_date+7, ''iw'') a,',
'to_char( TRUNC(entry_date, ''iw''),''YYYYMMDDHH24MISS'')||''|''|| to_char( TRUNC(entry_date, ''iw'')+7,''YYYYMMDDHH24MISS'') b',
'from HR_APL_JOBREQUEST',
'where org_id=:APP_ORG_ID',
'order by 1',
''))
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'manual_entry', 'N',
  'select_multiple', 'N')).to_clob
,p_fc_collapsible=>true
,p_fc_initial_collapsed=>false
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_show_more_count=>100
,p_fc_filter_values=>false
,p_fc_show_selected_first=>false
,p_fc_show_chart=>true
,p_fc_initial_chart=>false
,p_fc_actions_filter=>false
,p_fc_display_as=>'INLINE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827335475130774370)
,p_name=>'start_refresh_facet'
,p_event_sequence=>9
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P336_START_DATE'
,p_condition_element=>'P336_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827335984239774371)
,p_event_id=>wwv_flow_imp.id(2827335475130774370)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5327521988318660198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827337258167774372)
,p_name=>'start_refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P336_START_DATE'
,p_condition_element=>'P336_END_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827337842413774372)
,p_event_id=>wwv_flow_imp.id(2827337258167774372)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5327521898584660198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827336397287774371)
,p_name=>'end_refresh_facet'
,p_event_sequence=>29
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P336_END_DATE'
,p_condition_element=>'P336_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827336869571774371)
,p_event_id=>wwv_flow_imp.id(2827336397287774371)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5327521988318660198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2827338171765774373)
,p_name=>'end_refresh'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P336_END_DATE'
,p_condition_element=>'P336_START_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2827338722829774373)
,p_event_id=>wwv_flow_imp.id(2827338171765774373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(5327521898584660198)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2827335142427774370)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SUBMIT_APL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    begin',
'',
'    update HR_APL_JOBREQUEST',
'    set status=pkg_global_fnts.status_id(''SUBMITTED'', 549 , transaction_type_id)',
'    where pkg_global_fnts.status_descript(status)=''KEYED''',
'    and method_of_application =''HR_MANUAL'';',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2827333693878774367)
,p_process_success_message=>'All keyed applications have been submitted.'
,p_internal_uid=>2711551008571460665
);
wwv_flow_imp.component_end;
end;
/
