prompt --application/pages/page_01470
begin
--   Manifest
--     PAGE: 01470
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
 p_id=>1470
,p_name=>'rptSalaryIncrease'
,p_alias=>'RPTSALARYINCREASE'
,p_step_title=>'Listing of Remuneration Changes'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169430110411457755)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4240013852614443509)
,p_plug_name=>'Listing of Remuneration Changes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DATE_EFFECTIVE,DATE_IMPLEMENTED,INCREASE_NAME,',
'(select initcap(TRANSACTION_DESCRIPTION) A_VALUE',
'from TBLTRANSACTIONTYPE a where  A.TRANSACTION_TYPE_ID =X.TRANSACTION_TYPE_ID) "TRANSACTION_TYPE_ID" , ',
' (Select Wfl_Status_Description',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id where Wfl_Status_Id =X.STATUS) "STATUS", ',
'   X."ID" ,   X."ID" Pkey, ',
'   X."INCREASE_TYPE",  ',
'   X."VERIFIED_BY" , ',
'   X."VERIFIED_DATE" ,',
'   X."ENTERED_BY" , ',
'   X."ENTRY_DATE" , ',
'    ( SELECT  LISTAGG(INITCAP(STAGGER_STRUCTURE),'','')',
'    within group (order by increase_id) classes',
'    From (select distinct STAGGER_STRUCTURE,increase_id from HR_APU_STANDARDINCREASEDETAIL',
'    where increase_id = x.id)',
'    group by increase_id) STAGGER_STRUCTURE, ',
'   decode(X."EXECUTE_STATUS",0,''No'',''Yes'') "EXECUTE_STATUS", ',
'   X."ORG_ID" "BRANCH_LOCATION_ID", ',
'   X."EXTERNAL_EARN_PERIOD", ',
'   X."LAST_CHANGED_BY", ',
'   X."LAST_CHANGED_DATE" , ',
'   X."MACHINE_INSERT", ',
'   X."MACHINE_UPDATE" ,',
'   SALARY_CURRENCY,',
'    ( SELECT LISTAGG(INITCAP(NVL(pkg_global_fnts.get_lookup_col(stagger_value, ''VALUE_DESCRIPTION''),'''')),'','')',
'    within group (order by increase_id) classes',
'    From HR_APU_STANDARDINCREASEDETAIL',
'    where increase_id = x.id',
'    group by increase_id) Conditions_Selected',
'FROM "HR_APU_STANDARDINCREASE" X',
'where X.org_id=:APP_ORG_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(4240013740702443509)
,p_name=>'Listing of Salary Increases given'
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
,p_internal_uid=>1989639696194466901
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866440239304346885)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'C'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1471:&SESSION.::&DEBUG.:RP:P1471_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3650837151970668294)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866439807373346885)
,p_db_column_name=>'INCREASE_TYPE'
,p_display_order=>3
,p_column_identifier=>'E'
,p_column_label=>'Increase Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'INCREASE_TYPE'
,p_rpt_named_lov=>wwv_flow_imp.id(3326542269777798350)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866439406098346884)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>7
,p_column_identifier=>'I'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866438973174346883)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>8
,p_column_identifier=>'J'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866438579826346883)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>9
,p_column_identifier=>'K'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866438161154346882)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866437773920346882)
,p_db_column_name=>'STAGGER_STRUCTURE'
,p_display_order=>11
,p_column_identifier=>'M'
,p_column_label=>'Employee Filters'
,p_column_type=>'STRING'
,p_static_id=>'STAGGER_STRUCTURE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866437430194346882)
,p_db_column_name=>'BRANCH_LOCATION_ID'
,p_display_order=>13
,p_column_identifier=>'O'
,p_column_label=>'Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'BRANCH_LOCATION_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3326384236008570025)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866436986884346881)
,p_db_column_name=>'EXTERNAL_EARN_PERIOD'
,p_display_order=>14
,p_column_identifier=>'P'
,p_column_label=>'Ext Ern Prd'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'EXTERNAL_EARN_PERIOD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866436601589346881)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>16
,p_column_identifier=>'R'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866436182379346880)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>17
,p_column_identifier=>'S'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866435818368346880)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>18
,p_column_identifier=>'T'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866435383249346880)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>19
,p_column_identifier=>'U'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866440635786346886)
,p_db_column_name=>'STATUS'
,p_display_order=>21
,p_column_identifier=>'B'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_tz_dependent=>'N'
,p_static_id=>'STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866434953415346879)
,p_db_column_name=>'EXECUTE_STATUS'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Executed'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'EXECUTE_STATUS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866434638089346879)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Transaction Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TRANSACTION_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866440969274346886)
,p_db_column_name=>'PKEY'
,p_display_order=>33
,p_column_identifier=>'X'
,p_column_label=>'Pkey'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866441356412346887)
,p_db_column_name=>'DATE_EFFECTIVE'
,p_display_order=>43
,p_column_identifier=>'Y'
,p_column_label=>'Date Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866441816025346887)
,p_db_column_name=>'DATE_IMPLEMENTED'
,p_display_order=>53
,p_column_identifier=>'Z'
,p_column_label=>'Date Implemented'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866442215185346888)
,p_db_column_name=>'SALARY_CURRENCY'
,p_display_order=>63
,p_column_identifier=>'AA'
,p_column_label=>'Salary Currency'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866434216439346878)
,p_db_column_name=>'CONDITIONS_SELECTED'
,p_display_order=>83
,p_column_identifier=>'AC'
,p_column_label=>'Conditions Selected'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2866433796778346878)
,p_db_column_name=>'INCREASE_NAME'
,p_display_order=>93
,p_column_identifier=>'AD'
,p_column_label=>'Increase Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(4240011351921443334)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'6160685'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'BRANCH_LOCATION_ID:TRANSACTION_TYPE_ID:STATUS:ID:INCREASE_NAME:STAGGER_STRUCTURE:EXTERNAL_EARN_PERIOD:EXECUTE_STATUS:DATE_EFFECTIVE:DATE_IMPLEMENTED:SALARY_CURRENCY'
,p_break_on=>'BRANCH_LOCATION_ID:TRANSACTION_TYPE_ID:STATUS:0:0:0'
,p_break_enabled_on=>'BRANCH_LOCATION_ID:TRANSACTION_TYPE_ID:STATUS:0:0:0'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2866443031888346889)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4240013852614443509)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2866443299571346889)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4240013852614443509)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1471:&SESSION.::&DEBUG.:1471::'
,p_security_scheme=>wwv_flow_imp.id(3279327656739677336)
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2866443787851346890)
,p_computation_sequence=>1
,p_computation_item=>'P1471_ID'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_compute_when=>'CREATE'
,p_compute_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_imp.component_end;
end;
/
