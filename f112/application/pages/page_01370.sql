prompt --application/pages/page_01370
begin
--   Manifest
--     PAGE: 01370
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1370
,p_name=>'frmAnalytics'
,p_step_title=>'Analytics'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3185297319420974461)
,p_plug_name=>'Feedback'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:::t-Region--accent5::t-Region--scrollBody:::::::::'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_plug_query_num_rows=>15
,p_required_patch=>wwv_flow_imp.id(3185269509846974399)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3185297693326974462)
,p_name=>'Report'
,p_parent_plug_id=>wwv_flow_imp.id(3185297319420974461)
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-AVPList--rightAligned'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select l.display_value feedback_status, ',
'(select count(*) from apex_team_feedback f where f.application_id = :APP_ID and f.feedback_status = l.return_value) feedback_count ',
'from apex_application_lov_entries l',
'where l.application_id = :APP_ID',
'and l.list_of_values_name = ''FEEDBACK_STATUS''',
'order by 2 desc, 1'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2100515124465797522
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>'-'
,p_query_no_data_found=>'no data found'
,p_query_row_count_max=>500
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3185298355619974470)
,p_query_column_id=>1
,p_column_alias=>'FEEDBACK_STATUS'
,p_column_display_sequence=>1
,p_column_heading=>'Feedback Status'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3185298778035974470)
,p_query_column_id=>2
,p_column_alias=>'FEEDBACK_COUNT'
,p_column_display_sequence=>2
,p_column_heading=>'Feedback Count'
,p_column_format=>'999G999G999G999G999G999G990'
,p_heading_alignment=>'LEFT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3185300714156974476)
,p_plug_name=>'Feedback'
,p_parent_plug_id=>wwv_flow_imp.id(3185297319420974461)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3185296597475974460)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2067994871570597190
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3237356018517271168)
,p_plug_name=>'Analytics'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent5:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--4cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3319108362112448491)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3295949548030103181)
,p_plug_name=>'Data Migration Productivity'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3331426773835998965)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3304298542779255767)
,p_plug_name=>'Payment Modes'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    sum(value)||'' employee(s)'' value,',
'    label,',
'    round(100* sum(value)/(',
'                            select sum(value)',
'                            from (',
'                                    select',
'                                        count(a.emp_id) value,',
'                                        a.payment_mode label',
'                                    from hr_rcm_salary a join hr_rcm_employee b on b.id=a.emp_id',
'                                    where a.payment_mode is not null and a.end_date is null and b.separated_status is null and b.org_id=:APP_ORG_ID',
'                                    group by payment_mode',
'                                    union',
'                                    select',
'                                        count(b.emp_id) value,',
'                                        a.payment_mode_dist label',
'                                    from hr_rcm_disbursement a',
'                                    join hr_rcm_salary b on b.id=a.salary_id',
'                                    join hr_rcm_employee c on c.id=b.emp_id',
'                                    where a.payment_mode_dist is not null and a.end_date is null and b.end_date is null and c.separated_status is null and c.org_id=:APP_ORG_ID',
'                                    group by payment_mode_dist',
'                          )',
'             ),2)||''%'' percent',
'from',
'(',
'/*select',
'    count(a.emp_id) value,',
'    a.payment_mode label',
'    from hr_rcm_salary a join hr_rcm_employee b on b.id=a.emp_id',
'    where a.payment_mode is not null and a.end_date is null and b.separated_status is null and b.org_id=:APP_ORG_ID',
'    group by payment_mode',
'union*/',
'select',
'    count(b.emp_id) value,',
'    a.payment_mode_dist label',
'    from hr_rcm_disbursement a',
'    join hr_rcm_salary b on b.id=a.salary_id',
'    join hr_rcm_employee c on c.id=b.emp_id',
'    where a.payment_mode_dist is not null and a.end_date is null and b.end_date is null and c.separated_status is null and c.org_id=:APP_ORG_ID',
'    group by payment_mode_dist',
')',
'--where lower(label) != ''multi''',
'group by label',
'order by label'))
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.BADGE_LIST'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'VALUE',
  'attribute_02', 'PERCENT',
  'attribute_05', '0',
  'attribute_07', 'BOX',
  'attribute_08', 'Y',
  'attribute_09', 'LABEL')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3309160230926764220)
,p_plug_name=>'Activity Report'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3326931264987289632)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
);
wwv_flow_imp.component_end;
end;
/
