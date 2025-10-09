prompt --application/pages/page_01293
begin
--   Manifest
--     PAGE: 01293
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>1293
,p_name=>'rptOrganisationHD'
,p_step_title=>'Listing of Organisation Structures'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825718090717574415)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3825855980872638361)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(670460177309027243)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988598328610063082)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3743820851656938072)
,p_plug_name=>'Listing of Organisation Structures'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "ID", ',
'"ORG_STRUCTURE_NAME",',
'"REMARKS",',
'"DATE_STARTED",',
'"DATE_ENDED",',
'"ENTERED_BY",',
'"ENTRY_DATE",',
'"LAST_CHANGED_BY",',
'"LAST_CHANGED_DATE",',
'"VERIFIED_DATE",',
'"VERIFIED_BY",',
'"MACHINE_INSERT",',
'"MACHINE_UPDATE",',
'"VERSION_ID",',
'"ORG_ID",',
'"TRANSACTION_TYPE_ID",',
'"STATUS"',
'from "#OWNER#"."HR_HCF_ORGSTRUCTUREHD" v',
'where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id                     ',
'              )',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3743820657635938072)
,p_name=>'Listing of Organisation Structures'
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
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'CSV:HTML'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.::P1294_ID:#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3786173683335186899)
,p_allow_exclude_null_values=>'N'
,p_allow_hide_extra_columns=>'N'
,p_icon_view_columns_per_row=>1
,p_owner=>'PUR_INV'
,p_internal_uid=>130843198700235063
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831191493016357416)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831191115161357415)
,p_db_column_name=>'DATE_STARTED'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Date Started'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_STARTED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831190683160357415)
,p_db_column_name=>'DATE_ENDED'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Date Ended'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'DATE_ENDED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831190331531357414)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831189920011357414)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831189466864357414)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831189129179357413)
,p_db_column_name=>'ORG_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_static_id=>'ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3854216785539438460)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831188731353357413)
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
 p_id=>wwv_flow_imp.id(3831188284572357412)
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
 p_id=>wwv_flow_imp.id(3831187873091357412)
,p_db_column_name=>'ORG_STRUCTURE_NAME'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Organisation Structure Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORG_STRUCTURE_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831187525789357411)
,p_db_column_name=>'REMARKS'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831187124586357411)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831186745851357404)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831186310046357403)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831185941408357403)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831185510167357402)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3831185066727357402)
,p_db_column_name=>'VERSION_ID'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Version ID'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERSION_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3743818552715937549)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'434791'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'ORG_ID:ORG_STRUCTURE_NAME:VERSION_ID:DATE_STARTED:REMARKS:'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3831183953385357399)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(670460177309027243)
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
 p_id=>wwv_flow_imp.id(3831184312603357401)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(670460177309027243)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1294:&SESSION.::&DEBUG.:1294::'
,p_security_scheme=>wwv_flow_imp.id(3807160206270545771)
);
wwv_flow_imp.component_end;
end;
/
