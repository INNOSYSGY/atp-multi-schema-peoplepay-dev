prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_name=>'frmNotifier'
,p_step_title=>'Notifier Summary'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806439560326308805)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3713315097537171157)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3717548944599609565)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3713315193223171158)
,p_plug_name=>'NOTIFICATION'
,p_parent_plug_id=>wwv_flow_imp.id(3713315097537171157)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:t-Tabs--large:t-Tabs--simple:t-Tabs--iconsAbove:t-Tabs--fillLabels'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(3717536124534590495)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>3289653489478925766
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3780537354638188930)
,p_name=>'frmNotifier'
,p_template=>3371237801798025892
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animColorFill:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  NOTIFICATION_TYPE||''(''||CNT||'')'' CARD_TITLE,',
'  case when upper(NOTIFICATION_TYPE) like ''%ENTERPRISE%'' then',
'  (SELECT  initcap(LISTAGG(notification_name,'', ''))',
'        FROM hr_apu_notify_scheduler',
'        where trunc(end_date) is null and org_id=:APP_ORG_ID) ||'', Salary, Entitlements, Employee Deductions & Security''',
'        else null end CARD_TEXT,',
'  null CARD_SUBTEXT,',
'  apex_string.get_initials("CNT") CARD_INITIALS,',
'   apex_util.prepare_url(''f?p=''||:APP_ID||'':100:''||:APP_SESSION||'':::RIR:IR[NOTIFY]C_NOTIFICATION_TYPE:''||NOTIFICATION_TYPE||'',IREQ_TRANSACTION_TYPE:''||STATUS||''">'') CARD_LINK,',
'  null CARD_MODIFIERS,',
'  null CARD_COLOR,',
'  CARD_ICON||'' ''||icon_modifier CARD_ICON',
'from  "VW_NOTIFY_CARDS"',
'order by NOTIFICATION_TYPE'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2974982452297815501
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3717531730791590484)
,p_query_column_id=>1
,p_column_alias=>'CARD_TITLE'
,p_column_display_sequence=>1
,p_column_heading=>'CARD_TITLE'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(575268945984187426)
,p_query_column_id=>2
,p_column_alias=>'CARD_TEXT'
,p_column_display_sequence=>18
,p_column_heading=>'Card Text'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3717532522689590486)
,p_query_column_id=>3
,p_column_alias=>'CARD_SUBTEXT'
,p_column_display_sequence=>3
,p_column_heading=>'CARD_SUBTEXT'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3717532871247590486)
,p_query_column_id=>4
,p_column_alias=>'CARD_INITIALS'
,p_column_display_sequence=>4
,p_column_heading=>'CARD_INITIALS'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(575269072216187427)
,p_query_column_id=>5
,p_column_alias=>'CARD_LINK'
,p_column_display_sequence=>28
,p_column_heading=>'Card Link'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3717533731383590487)
,p_query_column_id=>6
,p_column_alias=>'CARD_MODIFIERS'
,p_column_display_sequence=>6
,p_column_heading=>'CARD_MODIFIERS'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3717534126375590487)
,p_query_column_id=>7
,p_column_alias=>'CARD_COLOR'
,p_column_display_sequence=>7
,p_column_heading=>'CARD_COLOR'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3717534497432590487)
,p_query_column_id=>8
,p_column_alias=>'CARD_ICON'
,p_column_display_sequence=>8
,p_column_heading=>'CARD_ICON'
,p_derived_column=>'N'
,p_include_in_export=>'N'
);
wwv_flow_imp.component_end;
end;
/
