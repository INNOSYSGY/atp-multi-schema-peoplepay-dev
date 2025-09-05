prompt --application/pages/page_01289
begin
--   Manifest
--     PAGE: 01289
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
 p_id=>1289
,p_name=>'frmTraining'
,p_alias=>'FRMTRAINING'
,p_page_mode=>'MODAL'
,p_step_title=>'Create/Edit Employee Training'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3297884603042696602)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_step_template=>2121795032473542284
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_dialog_width=>'900'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(68746693429785086)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(3268997950744931182)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3488463004300374152)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' ',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
' ',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
' ',
'  --to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
' ',
'  machine_insert,',
' ',
'  machine_update,',
' ',
'  apex_util.get_since(last_changed_date) updated',
' ',
'from HR_RCM_TRAINING',
' ',
'where id=:P1289_id'))
,p_display_when_condition=>'P1289_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P1289_ID'
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
 p_id=>wwv_flow_imp.id(68876549437063813)
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
 p_id=>wwv_flow_imp.id(68876909380063814)
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
 p_id=>wwv_flow_imp.id(68877298145063815)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>30
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(68877733298063816)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(68878083370063817)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3488467592610374163)
,p_plug_name=>'Create/Edit Employee Training'
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>4501440665235496320
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'HR_RCM_TRAINING'
,p_include_rowid_column=>false
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3499189323047962424)
,p_plug_name=>'Search Employee Training'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_RCM_TRAINING.id,',
'  TUTOR,',
'  TRAIN_END_DATE,',
'  EMP_ID,',
'  SUBJECT_COURSE,',
'  TRAINING_AGENCY,',
'  SPONSORING_AGENCY,',
' CASE WHEN IN_HOUSE_TRAINING=1 THEN ''Yes'' else ''No'' end IN_HOUSE_TRAINING,',
'case when REQUIRED_TRAINING=1 then ''Yes'' else ''No'' end REQUIRED_TRAINING,',
'  HR_RCM_TRAINING.LAST_CHANGED_BY,',
'  HR_RCM_TRAINING.LAST_CHANGED_DATE,',
'  COUNTRY_CODE,',
'  Q_LEVEL,',
'  TRAIN_START_DATE,',
'  HR_RCM_TRAINING.ENTERED_BY,',
'  HR_RCM_TRAINING.ENTRY_DATE,',
'  HR_RCM_TRAINING.MACHINE_INSERT,',
'  HR_RCM_TRAINING.MACHINE_UPDATE,',
'  HR_RCM_TRAINING.POSITION_ID,',
'  HR_RCM_TRAINING.WKLOCATION_ID,employee_status,',
'compute_gross,',
'org_structure,',
'position_name,',
'separated_status,',
'employment_status,',
'employment_class,',
'payment_type',
'from HR_RCM_TRAINING  join HR_RCM_EMPLOYEE V on  HR_RCM_TRAINING.emp_id=v.id',
'where exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id',
'              and v.employment_class_id=a.employment_class_id',
'              and upper(v.payment_type)=a.payment_type            ',
'              )',
'AND (:P1289_PRIME_SEARCH=1 OR HR_RCM_TRAINING.EMP_ID = :P1289_EMP_ID)',
'order by TRAIN_START_DATE desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1289_EMP_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3499189108526962424)
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
,p_internal_uid=>3568341743624201184
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575732745458978019)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.::P1289_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575732428570978018)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326577844798849578)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575731942066978016)
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
 p_id=>wwv_flow_imp.id(3575731590403978016)
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
 p_id=>wwv_flow_imp.id(3575731221229978014)
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
 p_id=>wwv_flow_imp.id(3575730785430978014)
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
 p_id=>wwv_flow_imp.id(3575730372844978014)
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
 p_id=>wwv_flow_imp.id(3575730027626978014)
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
 p_id=>wwv_flow_imp.id(3575729634287978012)
,p_db_column_name=>'TUTOR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Tutor'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TUTOR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575729182053978010)
,p_db_column_name=>'TRAIN_END_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Train End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'TRAIN_END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575728738529978010)
,p_db_column_name=>'SUBJECT_COURSE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Subject Course'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SUBJECT_COURSE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575728378964978010)
,p_db_column_name=>'TRAINING_AGENCY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Training Agency'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'TRAINING_AGENCY'
,p_rpt_named_lov=>wwv_flow_imp.id(3316800405655838944)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575727982836978008)
,p_db_column_name=>'SPONSORING_AGENCY'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Sponsoring Agency'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'SPONSORING_AGENCY'
,p_rpt_named_lov=>wwv_flow_imp.id(3316800405655838944)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575727603573978008)
,p_db_column_name=>'IN_HOUSE_TRAINING'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'In House'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'IN_HOUSE_TRAINING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575727200393978008)
,p_db_column_name=>'REQUIRED_TRAINING'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Required'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REQUIRED_TRAINING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575726783220978007)
,p_db_column_name=>'COUNTRY_CODE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Country Code'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTRY_CODE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575726342100978007)
,p_db_column_name=>'Q_LEVEL'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Q Level'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'Q_LEVEL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3575726016394978007)
,p_db_column_name=>'TRAIN_START_DATE'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Train Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'TRAIN_START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3553941687897394532)
,p_db_column_name=>'POSITION_ID'
,p_display_order=>30
,p_column_identifier=>'V'
,p_column_label=>'Position'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3553941786471394533)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>40
,p_column_identifier=>'W'
,p_column_label=>'Work Location'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457889291556446056)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>50
,p_column_identifier=>'X'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457889247316446055)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>60
,p_column_identifier=>'Y'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457889109482446054)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>70
,p_column_identifier=>'Z'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457889009571446053)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>80
,p_column_identifier=>'AA'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457888928546446052)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>90
,p_column_identifier=>'AB'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457888794732446051)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>100
,p_column_identifier=>'AC'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457888724062446050)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>110
,p_column_identifier=>'AD'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3457888683420446049)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>120
,p_column_identifier=>'AE'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3499187823881962422)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'471079'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>15
,p_report_columns=>'EMP_ID:SUBJECT_COURSE:TRAIN_START_DATE:ID:TUTOR:TRAINING_AGENCY:SPONSORING_AGENCY:IN_HOUSE_TRAINING:REQUIRED_TRAINING:COUNTRY_CODE:Q_LEVEL:TRAIN_END_DATE:POSITION_ID:WKLOCATION_ID:'
,p_break_on=>'EMP_ID:SUBJECT_COURSE:TRAIN_START_DATE:0:0:0'
,p_break_enabled_on=>'EMP_ID:SUBJECT_COURSE:TRAIN_START_DATE:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68887948246063850)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3499189323047962424)
,p_button_name=>'INITIALISE_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68889002388063856)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(68746693429785086)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68889448535063857)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(68746693429785086)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_EMPLOYEE a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_TRAINING B',
'           WHERE A.ID=B.EMP_ID',
'           and b.id=:P1289_ID)',
'and NVL(DATE_SEPARATED,current_date+1) > current_date'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3279327525051677335)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68889829613063858)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(68746693429785086)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_condition=>':P1289_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3279327210431677335)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68890185351063859)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(68746693429785086)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_condition=>'P1289_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68890604900063860)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(68746693429785086)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_condition=>'P1289_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(68891022452063861)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(68746693429785086)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.:1289:P1289_EMP_ID:&P1289_EMP_ID.'
,p_button_condition=>':P1289_ID is not null and NVL(:P1281_DATE_SEPARATED,current_date+1) > current_date'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(68910286210063916)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.:1289:P1289_EMP_ID:&P1289_EMP_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(68890604900063860)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(68910668966063917)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(68889448535063857)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(68911086015063918)
,p_branch_name=>'Go To Page 21'
,p_branch_action=>'f?p=&APP_ID.:1289:&SESSION.::&DEBUG.:1289:P1289_ID:&P1289_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3543061485744589107)
,p_name=>'P1289_JOB_TRAINING_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Use Job Description'
,p_source=>'JOB_TRAINING_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUBJECT_COURSE||'' ''||classification||'' Renewal ''||RENEWAL_DURATION val, b.id',
'FROM HR_HCF_JOBTRAINING b',
'where exists (select 1',
'              from hr_hcf_position a ',
'              JOIN HR_RCM_EMPLOYEE EMP ON EMP.POSITION_ID = A.ID',
'              join hr_hcf_worklocation c on C.id= EMP.WKlocation_id',
'              where a.id =b.JOB_id',
'              and emp.id=:P1289_EMP_ID)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1289_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'Data here is used from the training details for the position.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3543061561908589108)
,p_name=>'P1289_EMP_QUALIFICATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Linked Certification'
,p_source=>'EMP_QUALIFICATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUBJECT_COURSE||''(''||Q_YEAR||'') from ''||EXAM_BODY VAL, id',
'from HR_RCM_QUALIFICATION',
'where ind_id=(select ind_id from hr_rcm_employee where id=:P1289_EMP_ID)',
'AND Q_LEVEL NOT IN (''CXC'',''GCEA'',''CAPE'',''GCEO'')'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1289_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3553973388819394643)
,p_name=>'P1289_LOCATION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Location'
,p_source=>'WKLOCATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'WORK_LOCATION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(LOCATION_DESCRIPTION) a,id',
'from HR_HCF_WORKLOCATION a',
'where  org_id= :APP_ORG_ID',
'order by 1'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_display_when=>'P1289_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3574460865598611480)
,p_name=>'P1289_PRIME_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3499189323047962424)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575746985031978089)
,p_name=>'P1289_POSITION_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Position'
,p_source=>'POSITION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'POSITION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select POSITION_NAME||'':-''||initcap(unit_name)||''; Grade ''||e.grade_code||',
'(select ''(''||point||'')'' a',
'from HR_HCF_POSITIONGRADEPOINT',
'where id=b.GRADE_POINT_ID) a, b.id b',
'from HR_HCF_POSITION b join HR_HCF_ORGSTRUCTUREDTL d on d.id=B.ORGDTL_ID',
'join hr_hcf_positiongrade e on e.id=GRADE_ID',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_display_when=>'P1289_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575747389469978089)
,p_name=>'P1289_TRAIN_END_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Train End Date'
,p_source=>'TRAIN_END_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3575747798982978090)
,p_name=>'P1289_TRAIN_START_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_default=>':P1281_DATE_EMPLOYED'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Train Start Date'
,p_source=>'TRAIN_START_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3575748225914978090)
,p_name=>'P1289_COUNTRY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Country'
,p_source=>'COUNTRY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'COUNTRY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,UPPER(value_description) b',
'from hr_hcf_lookup A',
'where TABLE_NAME= ''TBLCOUNTRY''',
'and exists(select 1',
'           from hr_hcf_organisation b',
'           where b.id = a.org_id',
'           and use_for_seeded_data = 1',
'           and organisation_type=''SOFTWARE USER'')',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575748571245978091)
,p_name=>'P1289_Q_LEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Qualification Level'
,p_source=>'Q_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'QUALIFICATION_LEVEL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLQUALIFICATIONLEVEL'')) a',
'where org_id = :APP_ORG_SHR_DED',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cHeight=>1
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575748997884978091)
,p_name=>'P1289_REQUIRED_TRAINING'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Required Training'
,p_source=>'REQUIRED_TRAINING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575749376097978092)
,p_name=>'P1289_IN_HOUSE_TRAINING'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'In House Training'
,p_source=>'IN_HOUSE_TRAINING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575749787952978094)
,p_name=>'P1289_SUBJECT_COURSE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Subject Course'
,p_source=>'SUBJECT_COURSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>500
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575750132600978094)
,p_name=>'P1289_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575750622446978094)
,p_name=>'P1289_TUTOR'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Tutor'
,p_source=>'TUTOR'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>200
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3575750969713978094)
,p_name=>'P1289_SPONSORING_AGENCY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Sponsoring Agency'
,p_source=>'SPONSORING_AGENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and user_org_id=:APP_ORG_SHR_DED',
'ORDER BY organisation_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3575751379860978096)
,p_name=>'P1289_TRAINING_AGENCY'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Training Agency'
,p_source=>'TRAINING_AGENCY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ORGANISATION_ALL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(organisation_name) organisation_name,id',
'from HR_HCF_ORGANISATION k',
'where verified_by is not null',
'and user_org_id=:APP_ORG_SHR_DED',
'ORDER BY organisation_name'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--null--'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(3575751745015978098)
,p_name=>'P1289_ADD_RELATED_RECORDS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
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
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(3575752193720978098)
,p_name=>'P1289_EMPLOYEE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Employee'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  initcap(Surname || '', '' || nvl(First_Name, '''')) ||'' ''||nvl(Middle_Name,'''') ||'' (''||y.organisation_name||'':-''||initcap(employment_class||'' ''||payment_type)||'' No.:''||EMP_COMPANY_NO||'')'' a',
'from VW_EMPLOYEE X join HR_RCM_INDIVIDUAL Z on Z.id=X.IND_ID',
'join HR_HCF_ORGANISATION Y on Y.id=X.ORG_ID',
'WHERE X.ID=nvl(:P1289_EMP_ID,:P1281_ID)'))
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
 p_id=>wwv_flow_imp.id(3575752600773978098)
,p_name=>'P1289_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3595964130041714644)
,p_name=>'P1289_TRAINING_CLASSIFICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Training Class'
,p_source=>'TRAINING_CLASSIFICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Recurring;RECURRING,One Off;ONE_OFF'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3595964221883714645)
,p_name=>'P1289_LINKED_CERTIFICATION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Linked Certification'
,p_source=>'LINKED_CERTIFICATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select value_description a,value_description b',
'from table(pkg_global_fnts.get_lookup_value(''TBLDOCUMENT'')) a',
'where a.org_id=:APP_ORG_ID',
'and exists(select 1',
'           from hr_rcm_empdocument b',
'           where b.lookup_id=a.id',
'           and emp_id =:P1289_EMP_ID         ',
'          )',
'order by 1'))
,p_lov_display_null=>'YES'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_help_text=>'select one or more certificates'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_08', 'CIC',
  'attribute_10', '300')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3595964367608714646)
,p_name=>'P1289_TRAINING_EXPIRY'
,p_source_data_type=>'DATE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_item_source_plug_id=>wwv_flow_imp.id(3488467592610374163)
,p_prompt=>'Training Expiry'
,p_source=>'TRAINING_EXPIRY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(68905547168063906)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P1289_END_DATE) < TO_DATE(:P1289_START_DATE) THEN',
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68907020779063909)
,p_name=>'set_value_subject'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1289_JOB_TRAINING_ID'
,p_condition_element=>'P1289_JOB_TRAINING_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68907517801063910)
,p_event_id=>wwv_flow_imp.id(68907020779063909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1289_Q_LEVEL,P1289_SUBJECT_COURSE,P1289_IN_HOUSE_TRAINING'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    training_level,',
'    subject_course,',
'    in_house',
'FROM hr_hcf_jobtraining',
'where id=:P1289_JOB_TRAINING_ID'))
,p_attribute_07=>'P1289_JOB_TRAINING_ID,P1289_SUBJECT_COURSE,P1289_IN_HOUSE_TRAINING'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68909357741063914)
,p_name=>'set_sub_qual'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1289_EMP_QUALIFICATION_ID'
,p_condition_element=>'P1289_EMP_QUALIFICATION_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P1289_SUBJECT_COURSE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68909812787063915)
,p_event_id=>wwv_flow_imp.id(68909357741063914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1289_Q_LEVEL,P1289_SUBJECT_COURSE,P1289_TRAINING_AGENCY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    q_level,',
'    subject_course,',
'    EXAM_BODY_id',
'FROM HR_RCM_QUALIFICATION',
'where id=:P1289_EMP_QUALIFICATION_ID'))
,p_attribute_07=>'P1289_EMP_QUALIFICATION_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(68907942989063911)
,p_name=>'enable_expiration'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1289_TRAINING_CLASSIFICATION'
,p_condition_element=>'P1289_TRAINING_CLASSIFICATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'RECURRING'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68908376505063912)
,p_event_id=>wwv_flow_imp.id(68907942989063911)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1289_TRAINING_EXPIRY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(68908907027063913)
,p_event_id=>wwv_flow_imp.id(68907942989063911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1289_TRAINING_EXPIRY'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68904945584063904)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3488467592610374163)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process row of dummyfrmTraining'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>138057580681302664
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68906232802063907)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_FOR_PAGES'
,p_attribute_04=>'289'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68889448535063857)
,p_internal_uid=>138058867899302667
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68906663145063908)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68889002388063856)
,p_internal_uid=>138059298242302668
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68905835053063907)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_PRIME_SEARCH'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P1289_PRIME_SEARCH:=1;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(68887948246063850)
,p_internal_uid=>138058470150302667
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(68904535776063903)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3488467592610374163)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form dummyfrmTraining'
,p_internal_uid=>138057170873302663
);
wwv_flow_imp.component_end;
end;
/
