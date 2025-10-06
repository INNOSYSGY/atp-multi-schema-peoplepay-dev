prompt --application/pages/page_01430
begin
--   Manifest
--     PAGE: 01430
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
 p_id=>1430
,p_name=>'rptGeneralMemo'
,p_step_title=>'Listing of General Memos'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885827832708678)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3270732779639547251)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(142631216232158844)
,p_plug_name=>'bc'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>31
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3212033185013976415)
,p_plug_name=>'General Memos'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>21
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBJECT,',
'  MEMO_CONTENTS,',
'  MEMO_DATE,',
'  MEMO_ID,',
'  ENTERED_BY,',
'  ENTRY_DATE,',
'  VERIFIED_BY,',
'  VERIFIED_DATE,',
'  LAST_CHANGED_DATE,',
'  LAST_CHANGED_BY,',
'  REMARKS,',
'  TRANSACTION_TYPE_ID,',
'  STATUS,',
'  ORG_ID,',
'  MACHINE_INSERT,',
'  MACHINE_UPDATE',
'FROM HR_DOC_MEMORANDAGEN w',
'where exists (select 1',
'              from vw_useraccess x',
'               where w.org_id=x.org_id)'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3212032975576976415)
,p_name=>'Listing of General Memoranda'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.::P1431_MEMO_ID:#MEMO_ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3258341133804318464)
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>134798331228328285
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304016904888059935)
,p_db_column_name=>'MEMO_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Discipline Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'MEMO_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304016428376059933)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304016031164059933)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304015615625059932)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304015288701059932)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304014809782059931)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304014490145059930)
,p_db_column_name=>'STATUS'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304014014466059930)
,p_db_column_name=>'SUBJECT'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBJECT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304013621026059929)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304013286347059929)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304012815467059928)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304012407722059928)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304018501173059936)
,p_db_column_name=>'MEMO_CONTENTS'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Memo Contents'
,p_allow_sorting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'CLOB'
,p_tz_dependent=>'N'
,p_static_id=>'MEMO_CONTENTS'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304018072776059935)
,p_db_column_name=>'MEMO_DATE'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Memo Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'MEMO_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304017624478059935)
,p_db_column_name=>'REMARKS'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3304017259946059935)
,p_db_column_name=>'ORG_ID'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3316800405655838944)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3212029892639966948)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'428192'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'MEMO_DATE:SUBJECT:ORG_ID:VERIFIED_DATE:VERIFIED_BY:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3304011289555059926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(142631216232158844)
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
 p_id=>wwv_flow_imp.id(3304011689049059926)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(142631216232158844)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1431:&SESSION.::&DEBUG.:1431::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp.component_end;
end;
/
