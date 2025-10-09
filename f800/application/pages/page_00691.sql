prompt --application/pages/page_00691
begin
--   Manifest
--     PAGE: 00691
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
 p_id=>691
,p_name=>'rptDepreciation'
,p_step_title=>'Listing of Depreciation Rules'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825437118359073482)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3853484919211040529)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3717238018329602580)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988316897241556436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3757662307245280217)
,p_plug_name=>'Listing of Depreciation Rules'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "DEPRECIATION_ID", ',
'"CATEGORY_ID",',
'"DEPRE_PERIOD",',
'"DEPRE_RATE",',
'"EFFECTIVE_FROM",',
'"EFFECTIVE_TO",',
'"CREATED_BY",',
'"CREATION_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"SALVAGE_VALUE",',
'"DEPRECIATION_TYPE",',
'ACC_DEPRECIATION_CODE,',
'CASE WHEN GOVERNMENT=''N'' then ''No'' else ''Yes'' end Govt',
'from "#OWNER#"."TBLDEPRECIATION" ',
'WHERE ORG_ID = :APP_ORG_ID',
'  ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3757661840331280217)
,p_name=>'Report 1'
,p_max_row_count=>'1000000'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
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
,p_owner=>'GTT'
,p_internal_uid=>353137875554762757
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688449485916130656)
,p_db_column_name=>'DEPRECIATION_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:692:&SESSION.::&DEBUG.:RP,692:P692_DEPRECIATION_ID:#DEPRECIATION_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688449126752130654)
,p_db_column_name=>'CATEGORY_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Category'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3689383211095687279)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688448689228130654)
,p_db_column_name=>'DEPRE_PERIOD'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Depreciation Period'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688448319537130653)
,p_db_column_name=>'DEPRE_RATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Depreciation Rate (%)'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688447904277130653)
,p_db_column_name=>'EFFECTIVE_FROM'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Effective From'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688447526257130653)
,p_db_column_name=>'EFFECTIVE_TO'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Effective To'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688447135013130653)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688446715715130652)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688446278371130652)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688445907104130652)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688445548263130652)
,p_db_column_name=>'SALVAGE_VALUE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Salvage Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'FML999G999G999G999G990D00'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688445082775130651)
,p_db_column_name=>'DEPRECIATION_TYPE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Depreciation Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688444667483130651)
,p_db_column_name=>'ACC_DEPRECIATION_CODE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Acc Depreciation Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3688444361361130651)
,p_db_column_name=>'GOVT'
,p_display_order=>23
,p_column_identifier=>'O'
,p_column_label=>'Govt'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3757656046016279532)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'777021'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DEPRECIATION_ID:CATEGORY_ID:ACC_DEPRECIATION_CODE:DEPRE_PERIOD:DEPRE_RATE:SALVAGE_VALUE:DEPRECIATION_TYPE:GOVT:EFFECTIVE_FROM:EFFECTIVE_TO:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3688450663417130658)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3717238018329602580)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1002:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3688450236681130657)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3717238018329602580)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:692:&SESSION.::&DEBUG.:692'
,p_icon_css_classes=>'fa-plus-square'
);
wwv_flow_imp.component_end;
end;
/
