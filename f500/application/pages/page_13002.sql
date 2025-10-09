prompt --application/pages/page_13002
begin
--   Manifest
--     PAGE: 13002
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
 p_id=>13002
,p_name=>'frmEmpLeaveEntitle_new'
,p_alias=>'FRMEMPLEAVEENTITLE-NEW'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Employee Leave Entitlement'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(571155704675225316)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806736716975971898)
,p_dialog_width=>'900'
,p_dialog_max_width=>'900'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(5314470000895567623)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_RCM_EMPLEAVEENTITLE',
'where  id = :P13002_ID'))
,p_display_when_condition=>'P13002_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P13002_ID'
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
 p_id=>wwv_flow_imp.id(686457772092303002)
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
 p_id=>wwv_flow_imp.id(686457937130303003)
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
 p_id=>wwv_flow_imp.id(686458026959303004)
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
 p_id=>wwv_flow_imp.id(686458124096303005)
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
 p_id=>wwv_flow_imp.id(686458178646303006)
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
 p_id=>wwv_flow_imp.id(686458344640303007)
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
 p_id=>wwv_flow_imp.id(5314474007428567636)
,p_plug_name=>'Create/Edit Leave Entitlement'
,p_region_template_options=>'#DEFAULT#:t-Form--slimPadding:t-Form--stretchInputs'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5325150616858909187)
,p_plug_name=>'Search Employee Leave Entitlements'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  HR_RCM_EMPLEAVEENTITLE.ID as ID,',
'     EMP_ID as EMP_ID,',
'     LEAVE_TYPE_ID as LEAVE_TYPE_ID,',
'     QUANTITY as QUANTITY,',
'    CASE WHEN  WORKING_DAYS=1 THEN ''Yes'' else ''No'' end as WORKING_DAYS,',
'     MAX_ACCUMULATION as MAX_ACCUMULATION,',
'   case when  ACCUMULATIVE=1 then ''Yes'' else ''No'' end as ACCUMULATIVE,',
'  case when  REDUCE_SAL_OVERSPENT=1 then ''Yes'' else ''No'' end as REDUCE_SAL_OVERSPENT,',
'     START_DATE as START_DATE,',
'     END_DATE as END_DATE,',
'     HR_RCM_EMPLEAVEENTITLE.ENTRY_DATE as ENTRY_DATE,',
'     HR_RCM_EMPLEAVEENTITLE.ENTERED_BY as ENTERED_BY,',
'     HR_RCM_EMPLEAVEENTITLE.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'     HR_RCM_EMPLEAVEENTITLE.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'     HR_RCM_EMPLEAVEENTITLE.MACHINE_INSERT as MACHINE_INSERT,',
'     HR_RCM_EMPLEAVEENTITLE.MACHINE_UPDATE as MACHINE_UPDATE,',
'     employee_status,',
'        compute_gross,',
'        org_structure,',
'        position_name,',
'        separated_status,',
'        employment_status,',
'        employment_class,',
'        payment_type,',
'        wklocation_id',
' from HR_RCM_EMPLEAVEENTITLE  join HR_RCM_EMPLOYEE V on  HR_RCM_EMPLEAVEENTITLE.emp_id=v.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type             ',
'              and v.org_id =a.org_id',
'              )',
'and (:P13002_INIT_SEARCH = 1 OR HR_RCM_EMPLEAVEENTITLE.EMP_ID = :P13002_EMP_ID)           ',
'ORDER BY  START_DATE DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P13002_EMP_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(5325150414573909186)
,p_name=>'Search Employee Rules'
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
,p_owner=>'PPLERP'
,p_internal_uid=>2547365954142638015
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381555950451177488)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.::P13002_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381555476890177488)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853988260722144141)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381555097963177487)
,p_db_column_name=>'START_DATE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381554758140177487)
,p_db_column_name=>'END_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381554305438177486)
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
 p_id=>wwv_flow_imp.id(3381553887594177486)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381553493128177485)
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
 p_id=>wwv_flow_imp.id(3381553105921177485)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'Y'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381552674155177485)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381552359478177484)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381551914048177484)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_TYPE_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3853934195792092883)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381551523820177483)
,p_db_column_name=>'QUANTITY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'QUANTITY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381551138964177483)
,p_db_column_name=>'WORKING_DAYS'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Working Days'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'WORKING_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381550666510177482)
,p_db_column_name=>'MAX_ACCUMULATION'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Max Accumulation'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'MAX_ACCUMULATION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381550277241177482)
,p_db_column_name=>'ACCUMULATIVE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Accumulative'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ACCUMULATIVE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381549878936177482)
,p_db_column_name=>'REDUCE_SAL_OVERSPENT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Reduce Sal Overspent'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REDUCE_SAL_OVERSPENT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381549465424177481)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>26
,p_column_identifier=>'Q'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381549089793177480)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>36
,p_column_identifier=>'R'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381548722850177480)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>46
,p_column_identifier=>'S'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381548352264177479)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>56
,p_column_identifier=>'T'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381547926396177479)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>66
,p_column_identifier=>'U'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381547473992177478)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>76
,p_column_identifier=>'V'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381547082936177478)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>86
,p_column_identifier=>'W'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381546689598177478)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>96
,p_column_identifier=>'X'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3381546314746177477)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>106
,p_column_identifier=>'Y'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3837858715794004494)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(5325149110560909185)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6037718'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'EMP_ID:ID:LEAVE_TYPE_ID:QUANTITY:WORKING_DAYS:MAX_ACCUMULATION:ACCUMULATIVE:REDUCE_SAL_OVERSPENT:START_DATE:END_DATE:'
,p_break_on=>'EMP_ID:0:0:0:0:0'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5401490658835382423)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988176195002489210)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381533236736177460)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13002_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381532035187177459)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P13002_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381531244462177458)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>'P13002_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3806737940974971898)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381556667077177489)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5325150616858909187)
,p_button_name=>'INITIALISE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381531628064177459)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>':P13002_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3806737626354971898)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381532428375177459)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'GET_PREVIOUS_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'&lt; Previous'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_PREVIOUS_ID'')'
,p_button_condition=>'P13002_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381532787791177460)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'GET_NEXT_ID'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Next &gt;'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:htmldb_goSubmit(''GET_NEXT_ID'')'
,p_button_condition=>'P13002_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381533561606177461)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.:13002:P13002_EMP_ID:&P13002_EMP_ID.'
,p_button_condition=>':P13002_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3806738072662971899)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3381530812783177458)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5401490658835382423)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3381576598582177511)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.:13002:P13002_EMP_ID:&P13002_EMP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3381533236736177460)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3381577016398177511)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3381531244462177458)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3381578223176177512)
,p_branch_action=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3381577385766177511)
,p_branch_action=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.::P13002_ID:&P13002_ID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3381532428375177459)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3381577779702177512)
,p_branch_action=>'f?p=&APP_ID.:13002:&SESSION.::&DEBUG.::P13002_ID:&P13002_ID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3381532787791177460)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(663473213942048910)
,p_name=>'P13002_POLICY_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_source=>'POLICY_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'leave qouta (yearly/monthly)'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381528066631177454)
,p_name=>'P13002_VERIFIED_BY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5314470000895567623)
,p_use_cache_before_default=>'NO'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'VERIFIED_BY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381529718296177457)
,p_name=>'P13002_MACHINE_INSERT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5314470000895567623)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381530106405177457)
,p_name=>'P13002_MACHINE_UPDATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5314470000895567623)
,p_use_cache_before_default=>'NO'
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381534048013177461)
,p_name=>'P13002_ADD_RELATED_RECORDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_prompt=>'<font color="green" size="2"><b> Browse Related Records </b></font>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT B.PAGE_TITLE ,',
'APEX_UTIL.PREPARE_URL(p_url =>''f?p=''||:APP_ID||'':''||WEBPAGE_ID||'':''||:APP_SESSION||''::NO::P''||WEBPAGE_ID||''_ID:''',
'||fn_getprimarykey(:P1281_ID, WEBPAGE_ID), p_checksum_type => ''SESSION'') WEBPAGE_ID',
'FROM TBLPAGELIST a JOIN APEX_APPLICATION_PAGES B ON A.WEBPAGE_ID=B.PAGE_ID',
'WHERE PARENT_PAGE= 1281---the specific parent screen',
'and webpage_id !=:app_page_id',
'and add_child_only=1',
'and application_id=:APP_ID'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>'P1281_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'REDIRECT_URL')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381534381986177462)
,p_name=>'P13002_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_source=>'ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381534831488177462)
,p_name=>'P13002_EMP_ID'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&P1281_ID.'
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EMPLOYEE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EMPLOYEE||''(No.:''||EMP_COMPANY_NO||'')'' a,ID b',
'FROM VW_AVAILEMPLOYEE x',
'where  exists(select 1        ',
'     from vw_useraccess_finegrain k',
'     where NVL(k.grade_id, nvl(x.emp_grade_id,1)) = nvl(x.emp_grade_id,1)',
'     and user_name=:APP_USER)  ',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>':P13002_ID is not null'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381535205609177462)
,p_name=>'P13002_EMPLOYEE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_prompt=>'Employee'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||'' (''||y.organisation_name||'':-''||initcap(employment_class||'' ''||payment_type)||'' No.:''||EMP_COMPANY_NO||'')'' a',
'from VW_EMPLOYEE X join HR_RCM_INDIVIDUAL Z on Z.id=X.IND_ID',
'join HR_HCF_ORGANISATION Y on Y.id=X.ORG_ID',
'WHERE X.ID=nvl(:P13002_EMP_ID,:P1281_ID)'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>2
,p_display_when_type=>'NEVER'
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
 p_id=>wwv_flow_imp.id(3381535617355177463)
,p_name=>'P13002_LEAVE_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Leave Type'
,p_source=>'LEAVE_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LEAVE_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,id b',
'from table(pkg_global_fnts.get_lookup_value(''TBLLEAVETYPE'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_read_only_when=>':P13002_ID is not null'
,p_read_only_when2=>'PLSQL'
,p_read_only_when_type=>'EXPRESSION'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381536006786177463)
,p_name=>'P13002_QUANTITY'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Quantity'
,p_source=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381536912297177464)
,p_name=>'P13002_WORKING_DAYS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'WORKING_DAYS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381537790207177465)
,p_name=>'P13002_ACCUMULATIVE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_source=>'ACCUMULATIVE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381538613994177466)
,p_name=>'P13002_LEAVE_RATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Monthly Rate'
,p_source=>'LEAVE_RATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381539545559177469)
,p_name=>'P13002_LEAVE_EARN'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_prompt=>'Leave Earn'
,p_source=>'LEAVE_EARN'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381540426362177470)
,p_name=>'P13002_ALLOW_LEAVE_OVERDRAFT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'ALLOW_LEAVE_OVERDRAFT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381540765713177470)
,p_name=>'P13002_START_DATE'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Start Date'
,p_source=>'START_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>24
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
 p_id=>wwv_flow_imp.id(3381541210698177470)
,p_name=>'P13002_END_DATE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_prompt=>'End Date'
,p_source=>'END_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
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
 p_id=>wwv_flow_imp.id(3381541608590177471)
,p_name=>'P13002_REDUCE_SAL_OVERSPENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_item_default=>'0'
,p_source=>'REDUCE_SAL_OVERSPENT'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_help_text=>'Used to indicate whether a deduction should be made if an employee over spent their leave.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381542516849177472)
,p_name=>'P13002_ID_COUNT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
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
 p_id=>wwv_flow_imp.id(3381542928624177472)
,p_name=>'P13002_ID_NEXT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381543270561177473)
,p_name=>'P13002_ID_PREV'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381543752528177473)
,p_name=>'P13002_TRANSACTION_TYPE_ID'
,p_is_required=>true
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Transaction Type'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381544110880177473)
,p_name=>'P13002_STATUS'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(5314474007428567636)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'and upper(Wfl_Status_Description) not like DECODE(:P13002_ID, NULL,''%VERI%'',''%test%'') ',
'And Webpage_Id=:App_Page_Id      ',
'and TRANSACTION_TYPE_ID=:P13002_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_lov_cascade_parent_items=>'P13002_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381557113027177490)
,p_name=>'P13002_INIT_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(5325150616858909187)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3381557482400177490)
,p_name=>'P13002_MAKE_EDITABLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(5325150616858909187)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381561685600177496)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>1
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empleaveentitle',
'where emp_id=:P13002_EMP_ID',
'and leave_type_id=:P13002_leave_type_id',
'and (end_date is null or end_date > current_date);',
'',
'IF  v_cnt >=1 AND :P13002_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'An active record for this leave type exist, close it first before entering new leave type.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381561329290177495)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>2
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empleaveentitle',
'where emp_id=:P13002_EMP_ID',
'and leave_type_id=:P13002_leave_type_id',
'and (end_date is null or end_date > current_date)',
'and id !=:P13002_ID;',
'',
'',
'IF  v_cnt >=1 AND :P13002_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'System already has an active record for this address type, only one is allowed!',
''))
,p_when_button_pressed=>wwv_flow_imp.id(3381531628064177459)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381562096110177496)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P13002_END_DATE) < TO_DATE(:P13002_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381560866949177495)
,p_validation_name=>'chk_spaning_date'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empleaveentitle',
'where emp_id=:P13002_EMP_ID',
'and to_date(:P13002_START_DATE) between start_date and nvl(end_date, trunc(current_date))',
'and leave_type_id=:P13002_leave_type_id',
'and id !=:P13002_ID;',
'',
'if v_cnt > 0 then',
'  return false;',
'else',
'  return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This Leave Entitlement has dates that overlap with another Leave Entitlement of the same type. Please review and change the start date for the record entered.',
''))
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3381531628064177459)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381563746044177498)
,p_validation_name=>'chk_spaning_date_1'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'',
'select count(1) into v_cnt ',
'from hr_rcm_empleaveentitle a',
'where a.emp_id=:P13002_EMP_ID',
'and (to_date(:P13002_START_DATE) between a.start_date and a.end_date',
'     or to_date(:P13002_START_DATE) < a.start_date and :P13002_END_DATE is null',
'     or to_date(:P13002_START_DATE) > a.start_date and a.end_date is null )',
'and leave_type_id=:P13002_LEAVE_TYPE_ID;',
'',
'if v_cnt > 0 then',
'  return FALSE;',
'else',
'  return TRUE;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Spanning date values not allowed please change the start date for the record entered.',
''))
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381562494574177496)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and upper(pkg_global_fnts.status_descript(:P13002_STATUS)) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, action disallowed.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381562914396177497)
,p_validation_name=>'reject_approval_unapproval'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_approver(:APP_USER)=0 and upper(pkg_global_fnts.status_descript(:P13002_STATUS)) like ''%APP%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not an approver, action disallowed.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381563269903177497)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_RCM_EMPLEAVEENTITLE''',
'        and table_name_key=:P13002_ID;',
'        ',
'    if v_test_approval = 0 and UPPER(pkg_global_fnts.status_descript(:P13002_STATUS)) like upper(''VER%'') then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_imp.id(3381531628064177459)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381564138768177498)
,p_validation_name=>'chk_workflow_mode'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.CHK_WORKFLOW_MODE(:P13002_START_DATE, :P13002_TRANSACTION_TYPE_ID)=TRUE then',
'  return true;',
'else',
'  return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Workflow mode is enabled, please select a transaction and subsequent status.',
''))
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3381564550115177498)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P13002_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P13002_ID, :P13002_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3381570046996177504)
,p_name=>'show_hide_button'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13002_SOURCE_EMP_START'
,p_condition_element=>'P13002_SOURCE_EMP_START'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3381572331577177506)
,p_name=>'dy_set_values'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13002_LEAVE_TYPE_ID'
,p_condition_element=>'P13002_LEAVE_TYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3381572847420177507)
,p_event_id=>wwv_flow_imp.id(3381572331577177506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_ALLOW_LEAVE_OVERDRAFT,P13002_START_DATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when CARRY_FORWARD = ''NO'' then 0 else 1 end overdraft, ',
'case when MANAGED_BY_DATE = ''CALENDAR_ANNIVERSARY'' then  ',
'(select date_employed from hr_rcm_employee where id = :P13002_EMP_ID)',
'else TO_DATE(''01-JAN-'' || extract(year from current_date),''DD-MON-YYYY'') end managed_by_date ',
'from hr_lv_leavetype a ',
'      join (select value_description,id from hr_hcf_lookup',
'                  where table_name = ''TBLLEAVETYPE'') lookup on (lookup.id = a.leave_type)',
'                  where lookup.id = :P13002_LEAVE_TYPE_ID',
'and A.org_id =:APP_ORG_ID;',
'                  ',
''))
,p_attribute_07=>'P13002_DATE_EMPLOYED,P13002_LEAVE_TYPE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3381573330198177508)
,p_event_id=>wwv_flow_imp.id(3381572331577177506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_QUANTITY,P13002_POLICY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select q,policy_id from (select v.*,min(priority_level) over (partition by v.leave_code, v.org_id) top_priority',
'',
'from (select a.*,c.carry_forward cry_fwd, c.lv_accrual_start , c.lv_policy_code , c.lv_policy_name , c.lv_policy_desc ',
'               , fn_exe_lv_fn(:P13002_EMP_ID,c.id,c.lv_policy_code,a.org_id,''HR_RCM_EMPLOYEE'') q,c.id policy_id,priority_level',
'                     from hr_lv_leavetype a',
'                     join hr_lv_leavetype_policy b on a.id = b.leavetype_id',
'                     join HR_LV_LEAVEPOLICY c on c.id  = b.policy_id',
'                     where a.id = :P13002_LEAVE_TYPE_ID',
'                  and a.org_id = :APP_ORG_ID',
'                --   and LV_ACCRUAL_START = case when in_date_employed is not null then ''DATE_EMPLOYED'' ',
'                --                               when in_confirm_date is not null then ''DATE_CONFIRMED''',
'                --                           end',
'                 /* and not exists (select 1 from HR_RCM_EMPLEAVEENTITLE where EMP_ID = :P13002_EMP_ID',
'                                  and leave_type_id = a.id',
'                                  and quantity <> fn_exe_lv_fn(:P13002_EMP_ID,c.id,c.lv_policy_code,a.org_id,''HR_RCM_EMPLOYEE'')) */ ',
'                  order by leave_code asc , priority_level asc) v',
'                  where q > 0 ',
'                  ) pol',
'                  where priority_level = top_priority;'))
,p_attribute_07=>'P13002_LEAVE_TYPE_ID,P13002_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3381573694717177508)
,p_name=>'dy_set_max'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13002_ACCUMULATIVE'
,p_condition_element=>'P13002_ACCUMULATIVE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3381574258859177508)
,p_event_id=>wwv_flow_imp.id(3381573694717177508)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_MAX_ACCUMULATION'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P13002_QUANTITY * 2'
,p_attribute_07=>'P13002_QUANTITY'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3381574679224177509)
,p_event_id=>wwv_flow_imp.id(3381573694717177508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_MAX_ACCUMULATION'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3381575073520177509)
,p_name=>'dy_leave_type'
,p_event_sequence=>50
,p_condition_element=>'P13002_MAKE_EDITABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3381575642094177509)
,p_event_id=>wwv_flow_imp.id(3381575073520177509)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_WORKING_DAYS,P13002_ACCUMULATIVE'
,p_attribute_01=>'.display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3381576084980177510)
,p_event_id=>wwv_flow_imp.id(3381575073520177509)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_WORKING_DAYS,P13002_ACCUMULATIVE'
,p_attribute_01=>'.display_only'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(623952146033435073)
,p_name=>'set_start_date'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P13002_EMP_ID'
,p_condition_element=>'P13002_EMP_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(623952307133435074)
,p_event_id=>wwv_flow_imp.id(623952146033435073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P13002_START_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number:=0; V_leave_ann_date date;',
'begin',
'    ',
'    begin',
'    select nvl(leave_ann_date, date_employed) into V_leave_ann_date',
'    from hr_rcm_employee',
'    where id =  :P13002_EMP_ID;',
'',
'    exception when no_data_found then ',
'        V_leave_ann_date := null;',
'    end;',
'',
'    if V_leave_ann_date is not null then',
'',
'        return SUBSTR(V_leave_ann_date, 1, 7)||EXTRACT(YEAR FROM current_date);',
'    else',
'        return  null;',
'    end if;',
'',
'end;',
''))
,p_attribute_07=>'P13002_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381567220049177501)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from HR_RCM_EMPLEAVEENTITLE'
,p_attribute_02=>'HR_RCM_EMPLEAVEENTITLE'
,p_attribute_03=>'P13002_ID'
,p_attribute_04=>'ID'
,p_internal_uid=>2738372670269569233
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381566014354177500)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'HR_RCM_EMPLEAVEENTITLE'
,p_attribute_03=>'P13002_ID'
,p_attribute_04=>'ID'
,p_attribute_07=>'LEAVE_TYPE_ID'
,p_attribute_09=>'P13002_ID_NEXT'
,p_attribute_10=>'P13002_ID_PREV'
,p_attribute_13=>'P13002_ID_COUNT'
,p_attribute_14=>'EMP_ID=:P1281_ID'
,p_internal_uid=>2738371464574569232
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381567979586177502)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :P13002_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
' :P13002_MACHINE_INSERT:=:P101_MACHINE_NAME;',
'end if;',
'',
'if :P13002_MACHINE_UPDATE is null and :P101_MACHINE_NAME is not null then',
' :P13002_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,CREATE_AGAIN'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>2738373429806569234
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381567575924177502)
,p_process_sequence=>21
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_machine_update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' :P13002_MACHINE_UPDATE:=:P101_MACHINE_NAME;',
'',
' if :P13002_MACHINE_INSERT is null and :P101_MACHINE_NAME is not null then',
'    :P13002_MACHINE_INSERT:=:P101_MACHINE_NAME;',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3381531628064177459)
,p_internal_uid=>2738373026144569234
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381569236413177503)
,p_process_sequence=>31
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_init'
,p_process_sql_clob=>':P13002_INIT_SEARCH := 1;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3381556667077177489)
,p_internal_uid=>2738374686633569235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381566844359177501)
,p_process_sequence=>41
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of HR_RCM_EMPLEAVEENTITLE'
,p_attribute_02=>'HR_RCM_EMPLEAVEENTITLE'
,p_attribute_03=>'P13002_ID'
,p_attribute_04=>'ID'
,p_attribute_09=>'P13002_ID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>2738372294579569233
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381566420118177501)
,p_process_sequence=>51
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'284'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3381531244462177458)
,p_internal_uid=>2738371870338569233
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381568825260177503)
,p_process_sequence=>71
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3381530812783177458)
,p_internal_uid=>2738374275480569235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3381569626998177504)
,p_process_sequence=>111
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_Individual varchar2(200); ',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'begin',
'',
'begin',
'select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'from TBLTRANSACTIONTYPE ',
'where TRANSACTION_TYPE_ID=:P13002_TRANSACTION_TYPE_ID;',
'',
'select WFL_STATUS_DESCRIPTION into v_description',
'from tblworkflowstatus',
'where WFL_STATUS_ID=:P13002_STATUS;',
'',
'select INDIVIDUAL into v_Individual ',
'from VW_INDIVIDUAL a join HR_RCM_EMPLOYEE B on a.id=B.IND_ID',
'where B.Id=:P13002_EMP_ID;',
'',
'exception',
'  when no_data_found then null;',
'end;',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||v_Individual,',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||:APP_SESSION||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P13002_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''leave entitlement change'',',
'	:P13002_STATUS,:APP_PAGE_ID,:P13002_TRANSACTION_TYPE_ID,',
'        ''HR_RCM_EMPLEAVEENTITLE'');',
'        ',
'if upper(pkg_global_fnts.status_descript(:P13002_STATUS)) like upper(''APPROVE%'') then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_RCM_EMPLEAVEENTITLE'',''ID'', :P13002_ID);',
'',
'  elsif upper(pkg_global_fnts.status_descript(:P13002_STATUS)) like upper(''UNAPPROV%'') or  upper(pkg_global_fnts.status_descript(:P13002_STATUS)) like upper(''CANCEL%'') then',
'',
'      pkg_global_fnts.disapprove_record(NVL(V(''APP_USER''),user), ''HR_RCM_EMPLEAVEENTITLE'', ''ID'', :P13002_ID);       ',
' end if;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
,p_internal_uid=>2738375077218569236
);
wwv_flow_imp.component_end;
end;
/
