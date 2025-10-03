prompt --application/pages/page_00404
begin
--   Manifest
--     PAGE: 00404
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
 p_id=>404
,p_name=>'rptReportsList'
,p_step_title=>'Available Reports '
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896301505629885)
,p_page_template_options=>'#DEFAULT#'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3546023533841879627)
,p_plug_name=>'List of Reports'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'  ID,',
'  REPORT_NAME,',
'  REPORT_TYPE,',
'  DESCRIPTION,',
'  REPORT_LOCATION,',
'  DATE_START,',
'  DATE_END,',
'      ''f?p=''||:APP_ID||'':''||PARAMETER_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||PARAMETER_PAGE_ID||''_REPORT_ID:''||ID  url,',
'(select initcap(MODULE_NAME)',
'from app_module',
'WHERE id=r.report_type) Category',
'from report r',
'where  EXISTS (SELECT 1',
'              FROM TBLRESPONSIBILITY B JOIN TBLUSERDETAIL C ON B.RESPONSIBILITY_ID=C.RESPONSIBILITY_ID',
'              JOIN TBLRESPONSIBILITYORGPAGE D ON B.RESPONSIBILITY_ID=D.RESPONSIBILITY_ID',
'              JOIN TBLUSER E ON E.USER_ID=C.USER_ID',
'              WHERE r.id=D.PAGE_ID             ',
'              AND USER_NAME = NVL(V(''APP_USER''),USER)',
'              AND CAN_VIEW = ''Y''',
'              and trunc(c.effective_from) <= trunc(current_date)',
'              and (c.effective_to is null or trunc(c.effective_to) >= trunc(current_date))',
'              and trunc(d.start_date) <= trunc(current_date)',
'              and (d.end_date is null or trunc(d.end_date) >= trunc(current_date))',
'             and trunc(b.start_date) <= trunc(current_date)',
'             and (b.end_date is null or trunc(b.end_date) >= trunc(current_date))',
'             )',
'and date_end is null',
'and internal = 0',
'and exists (',
'            select 1',
'            from fn_restrict_report(:APP_ORG_ID, :G_PARSING_SCHEMA) x',
'            where x.report_id = r.id',
'            ) ',
'order by REPORT_NAME',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3546023343501879624)
,p_name=>'List of Reports'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#menu/pencil16x16.gif" alt="" />'
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'REPORTS'
,p_internal_uid=>106815822645107945
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632917445153941050)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'No'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#ws/small_page.gif" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632916999176941048)
,p_db_column_name=>'REPORT_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632916754454941047)
,p_db_column_name=>'REPORT_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Report Type'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(3528690002438403561)
,p_rpt_show_filter_lov=>'2'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632916284333941047)
,p_db_column_name=>'DESCRIPTION'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Description'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'DESCRIPTION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632915906593941046)
,p_db_column_name=>'REPORT_LOCATION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Report Location'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_LOCATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632915553150941045)
,p_db_column_name=>'DATE_START'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Date Start'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_START'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632915082908941044)
,p_db_column_name=>'DATE_END'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Date End'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_END'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632917766408941050)
,p_db_column_name=>'CATEGORY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Category'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATEGORY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632918191157941050)
,p_db_column_name=>'URL'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'View'
,p_column_link=>'#URL#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'URL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3546022165966879617)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'199244'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>100000
,p_report_columns=>'URL:ID:REPORT_NAME:DESCRIPTION:CATEGORY:'
,p_break_on=>'CATEGORY:0:0:0:0:0'
,p_break_enabled_on=>'CATEGORY:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632914307818941042)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3546023533841879627)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp.component_end;
end;
/
