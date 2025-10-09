prompt --application/pages/page_12815
begin
--   Manifest
--     PAGE: 12815
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
 p_id=>12815
,p_name=>'rptshiftrota'
,p_alias=>'RPTSHIFTROTA'
,p_step_title=>'Listing of Shift Rotation'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825295957110000543)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3825793533615969189)
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
 p_id=>wwv_flow_imp.id(3827407369995009386)
,p_plug_name=>'Listing of Shift Rotations'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID DISBURSEMENTS,',
'       ID,',
'       HOURS_WORKED WORKING_HOURS,',
'       NUM_WORKING_DAYS WORKING_DAYS,',
'       SHIFT_TYPE_ID,',
'       SHIFT_CYCLE_NAME,',
'       START_DATE,',
'       END_DATE,',
'       PAYMENT_TYPE,',
'       ROTATION_DAYS,',
'        overtime_before,',
'        overtime_after,',
'        overtime_overdraft,',
'        use_holiday,',
'        allow_manual_edit,',
'        lateness_code,   ',
'        absence_code,',
'        early_exit_code,      ',
'        ENTERED_BY,',
'       ENTRY_DATE,',
'       LAST_CHANGED_BY,',
'       LAST_CHANGED_DATE,',
'       MIGRATE_PK,  ',
'       ORG_ID',
'  from HR_ATT_SHIFT_ROTA',
' where org_id=:APP_ORG_SHR_DED'))
,p_plug_source_type=>'NATIVE_IR'
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
 p_id=>wwv_flow_imp.id(3827407539989009387)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:12816:&SESSION.::&DEBUG.:RP,12816:P12816_ID:#ID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'BASU'
,p_internal_uid=>360445916817854634
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577723420351780845)
,p_db_column_name=>'SHIFT_TYPE_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Shift Type '
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(3726630682684273696)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577722945485780845)
,p_db_column_name=>'SHIFT_CYCLE_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Shift Cycle Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577722610772780844)
,p_db_column_name=>'START_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577722149369780844)
,p_db_column_name=>'END_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577721803985780844)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577721410956780843)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577721000055780843)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577720533075780843)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577720187714780842)
,p_db_column_name=>'ORG_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577719355872780841)
,p_db_column_name=>'ROTATION_DAYS'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Rotation Days'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577718980743780841)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Migrate Pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577718574215780841)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3577718186064780840)
,p_db_column_name=>'ID'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264200476828481)
,p_db_column_name=>'WORKING_HOURS'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Working Hours'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264276514828482)
,p_db_column_name=>'WORKING_DAYS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Working Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264366403828483)
,p_db_column_name=>'OVERTIME_AFTER'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Overtime After'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264500288828484)
,p_db_column_name=>'OVERTIME_BEFORE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Overtime Before'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264613865828485)
,p_db_column_name=>'USE_HOLIDAY'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Use Holiday'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264721953828486)
,p_db_column_name=>'OVERTIME_OVERDRAFT'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Overtime Overdraft'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264821294828487)
,p_db_column_name=>'ALLOW_MANUAL_EDIT'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Allow Manual Edit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264950212828488)
,p_db_column_name=>'LATENESS_CODE'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Lateness Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464264970996828489)
,p_db_column_name=>'ABSENCE_CODE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Absence Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3464265128942828490)
,p_db_column_name=>'EARLY_EXIT_CODE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Early Exit Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(675491840158057691)
,p_db_column_name=>'DISBURSEMENTS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Disbursements'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3828360130234981256)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1107625'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PAYMENT_TYPE:SHIFT_CYCLE_NAME:START_DATE:END_DATE:WORKING_HOURS:WORKING_DAYS:OVERTIME_BEFORE:OVERTIME_AFTER:OVERTIME_OVERDRAFT:USE_HOLIDAY:LATENESS_CODE:ABSENCE_CODE:EARLY_EXIT_CODE:ALLOW_MANUAL_EDIT'
,p_sort_column_1=>'SHIFT_CYCLE_NAME'
,p_sort_direction_1=>'ASC'
,p_break_on=>'PAYMENT_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'PAYMENT_TYPE:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3577724877773780850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3825793533615969189)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3577725234524780851)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3825793533615969189)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:12816:&SESSION.::&DEBUG.:12816'
,p_icon_css_classes=>'fa-plus-square'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3577725623543780851)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3825793533615969189)
,p_button_name=>'GO_TO_SHIFT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Shift'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1335:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-arrow-left-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3577726115392780852)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3825793533615969189)
,p_button_name=>'SHIFT_ROSTER'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--simple:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Shift Roster'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:116:&SESSION.::&DEBUG.:RP::'
,p_icon_css_classes=>'fa-arrow-circle-right'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
);
wwv_flow_imp.component_end;
end;
/
