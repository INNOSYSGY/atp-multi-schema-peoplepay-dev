prompt --application/pages/page_01317
begin
--   Manifest
--     PAGE: 01317
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
 p_id=>1317
,p_name=>'frmPosition'
,p_step_title=>'Create/Edit Position'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297885541186705980)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3213445101887458536)
,p_plug_name=>'Create/Edit Position'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>20
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3213435597203371641)
,p_name=>'Audit'
,p_parent_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_template=>2664334895415463485
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' ',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' ',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' ',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' ',
'  machine_insert,',
' ',
'  machine_update,',
' ',
'  apex_util.get_since(last_changed_date) updated',
' ',
'from',
' ',
'  HR_HCF_POSITION',
' ',
'where',
' ',
'id=:p1317_id'))
,p_display_when_condition=>':P1317_ID is not null'
,p_display_when_cond2=>'PLSQL'
,p_display_condition_type=>'EXPRESSION'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1317_ID'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(404348049528669)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(404447399528670)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(404496724528671)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(404616014528672)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(404725581528673)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(404849063528674)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3225133811841393591)
,p_plug_name=>'Search Position'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID as ID,',
'    DEF_WORK_LOCATION_ID as WKLOCATION_ID,',
'    (select POSITION_NAME||'' (''||(select DESCRIPTION from HR_HCF_JOB where ID=b.job_id)||'')''',
'    from HR_HCF_POSITION b) POSITION_NAME,',
'    (select POSITION_NAME||'' (''||(select JOB_CODE from HR_HCF_JOB where ID=A.job_id)',
'    ||'') At ''||LOCATION_code a',
'    from HR_HCF_POSITION A ',
'    JOIN HR_HCF_WORKLOCATION b on b.id=a.DEF_WORK_LOCATION_ID',
'    where a.id= a.REPORT_TO) as REPORT_TO,',
'    POS.NO_REQUIRED_MAX as NO_REQUIRED,',
'    POS.NO_FILLED as NO_IN_POSITION,',
'    POS.START_DATE as START_DATE,',
'    POS.END_DATE as END_DATE,',
'    POS.ENTRY_DATE as ENTRY_DATE,',
'    POS.ENTERED_BY as ENTERED_BY,',
'    POS.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    POS.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    POS.MACHINE_INSERT as MACHINE_INSERT,',
'    POS.MACHINE_UPDATE as MACHINE_UPDATE ',
' from HR_HCF_POSITION POS',
' where exists(select 1',
'              from HR_HCF_POSITION b',
'              join HR_HCF_WORKLOCATION c on c.id = b.DEF_WORK_LOCATION_ID',
'              and c.org_id = :APP_ORG_ID)',
'              ',
'    '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3225133613417393590)
,p_name=>'Search Position Responsibilities/Duties'
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
,p_owner=>'PPLERP'
,p_internal_uid=>121697693387911110
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301714127549098048)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.::P1317_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301713739836098044)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'POSITION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301713319792098044)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301712965743098043)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301712522210098043)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301712139020098042)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301711801204098041)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301711371118098039)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301710979874098039)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'WKLOCATION_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3304474040474083971)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301710541255098039)
,p_db_column_name=>'NO_REQUIRED'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'No Required'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NO_REQUIRED'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301710184124098038)
,p_db_column_name=>'NO_IN_POSITION'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'No In Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'NO_IN_POSITION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301709715272098038)
,p_db_column_name=>'START_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301709421628098037)
,p_db_column_name=>'END_DATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3301709026280098034)
,p_db_column_name=>'REPORT_TO'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Report To'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REPORT_TO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3225132404593393588)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'451226'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ID:WKLOCATION_ID:POSITION_NAME:REPORT_TO:NO_REQUIRED:NO_IN_POSITION:START_DATE:END_DATE:LAST_CHANGED_BY:LAST_CHANGED_DATE'
,p_break_on=>'POSITION_NAME:0:0:0:0:0'
,p_break_enabled_on=>'POSITION_NAME:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3300814457571041682)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3269075674499946593)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301707976667098031)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301707604597098030)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_HCF_POSITION a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_HCF_POSITION B',
'           WHERE b.id=:P1317_ID )',
'           ',
'/*SELECT 1',
'FROM HR_HCF_POSITION a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_HCF_WORKLOCATIONPOSITION B',
'           WHERE A.ID=B.POSITION_ID',
'           and b.id=:P1317_ID )*/'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301707131938098029)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1317_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301706760305098029)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1317_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301706394490098029)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P1317_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301705934216098028)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P1317_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301705510808098028)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1317_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3301705120238098027)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.:1317:P1317_POSITION_ID,P1317_ID:&P1317_POSITION_ID.,&P1317_ID.'
,p_button_condition=>'P1317_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301689328765098000)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.:1317:P1317_ID,P1317_POSITION:&P1317_ID.,&P1317_POSITION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301705510808098028)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301689717418098000)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1301:&SESSION.::&DEBUG.:::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301707604597098030)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301690925679098003)
,p_branch_action=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301690161101098001)
,p_branch_action=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.::P1317_ID:&P1317_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301706394490098029)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3301690522171098001)
,p_branch_action=>'f?p=&APP_ID.:1317:&SESSION.::&DEBUG.::P1317_ID:&P1317_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3301705934216098028)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(404880437528675)
,p_name=>'P1317_VERIFIED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3213435597203371641)
,p_use_cache_before_default=>'NO'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301699669782098018)
,p_name=>'P1317_ID_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301700039428098018)
,p_name=>'P1317_ID_PREV'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301700464238098021)
,p_name=>'P1317_ID_NEXT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301700828539098021)
,p_name=>'P1317_END_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
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
 p_id=>wwv_flow_imp.id(3301701278886098021)
,p_name=>'P1317_START_DATE'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1301_START_DATE.'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
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
 p_id=>wwv_flow_imp.id(3301701612370098021)
,p_name=>'P1317_NO_FILLED'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'No In Position'
,p_source=>'NO_FILLED'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301702066083098023)
,p_name=>'P1317_NO_REQUIRED'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'No Required'
,p_source=>'NO_REQUIRED_MAX'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301702414473098023)
,p_name=>'P1317_DEF_WORK_LOCATION_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1301_ID.'
,p_source=>'DEF_WORK_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301702872194098023)
,p_name=>'P1317_REPORT_TO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Report To'
,p_source=>'REPORT_TO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'' (''||(select JOB_CODE from HR_HCF_JOB where ID=a.job_id)',
'||'') At ''||LOCATION_code a, a.id b',
'from HR_HCF_POSITION A ',
'JOIN HR_HCF_WORKLOCATION b on b.id=a.DEF_WORK_LOCATION_ID',
'where a.id!=:P1317_ID',
'And org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301703306676098024)
,p_name=>'P1317_WKLOCATION_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Work Location'
,p_source=>'DEF_WORK_LOCATION_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORK_LOCATION_CUR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  trunc(start_date) <= trunc(current_date)',
'and (trunc(end_date) is null or end_date >= trunc(current_date))',
'and org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301703681608098024)
,p_name=>'P1317_ADD_CHILD_RECORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ',
',APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1301_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1301 ---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301704060415098025)
,p_name=>'P1317_POSITION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_prompt=>'Position Name'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME',
'from HR_HCF_POSITION',
'where id=nvl(:P1317_POSITION_ID, :P1301_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3301704479302098026)
,p_name=>'P1317_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3213445101887458536)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301693473800098006)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_HCF_POSITION'
,p_attribute_02=>'HR_HCF_POSITION'
,p_attribute_03=>'P1317_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>3185909339943784301
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301692286333098004)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_HCF_POSITION'
,p_attribute_03=>'P1317_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'DEF_WORK_LOCATION_ID'
,p_attribute_09=>'P1317_ID_NEXT'
,p_attribute_10=>'P1317_ID_PREV'
,p_attribute_13=>'P1317_ID_COUNT'
,p_attribute_14=>'ID=:P1301_ID'
,p_internal_uid=>3185908152476784299
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301691892612098004)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P1317_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P1317_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P1317_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P1317_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>3185907758755784299
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301691487174098003)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P1317_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P1317_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P1317_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301707131938098029)
,p_internal_uid=>3185907353317784298
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301693018131098005)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_HCF_POSITION'
,p_attribute_02=>'HR_HCF_POSITION'
,p_attribute_03=>'P1317_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P1317_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>3185908884274784300
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301692636563098005)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301707604597098030)
,p_internal_uid=>3185908502706784300
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3301693877509098008)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3301707976667098031)
,p_internal_uid=>3185909743652784303
);
wwv_flow_imp.component_end;
end;
/
