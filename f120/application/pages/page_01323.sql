prompt --application/pages/page_01323
begin
--   Manifest
--     PAGE: 01323
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
 p_id=>1323
,p_name=>'rptRespOrgPage1'
,p_step_title=>'Listing of Responsibility'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3584896379937630896)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3585334160394360204)
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3544191886721672953)
,p_plug_name=>'Listing of Responsibilities'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select	 a."RESPONSIBILITY_ID" as "RESPONSIBILITY_ID",',
'RESPONSIBILITY_ID ID,',
'        a."RESPONSIBILITY_ID" as "Edit",',
'	a."REMARKS" as "REMARKS",',
'	a."RESPONSIBILITY_NAME" as "RESPONSIBILITY_NAME",',
'	a."CREATED_BY" as "CREATED_BY",',
'	a."CREATION_DATE" as "CREATION_DATE",',
'	a."LAST_UPDATED_BY" as "LAST_UPDATED_BY",',
'	a."LAST_UPDATE_DATE" as "LAST_UPDATE_DATE" ',
' From	 "TBLRESPONSIBILITY" a',
' /*',
' Where Exists(Select 1          ',
'        From Apex_Application_Pages K Join Tblpagelist M On K.Page_Id=M.WebPage_Id',
'        left outer Join Tblresponsibilityorgpage B On nvl(B.PAGE_ID,M.PAGE_ID)=M.PAGE_ID',
'       Where  Workspace=Apex_Util.Find_Workspace((Select Apex_Application.Get_Security_Group_Id From Dual))',
'        And Application_Id=:APP_ID',
'        AND A.Responsibility_Id=nvl(B.Responsibility_Id,A.Responsibility_Id)',
'        and organization_id=226',
'        )',
'*/        ',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3544191701174672948)
,p_name=>'Listing of Responsibilities'
,p_max_row_count=>'10000'
,p_max_row_count_message=>'This query returns more then 10,000 rows, please filter your data to ensure complete results.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_allow_report_categories=>'N'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_LEFT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_show_calendar=>'N'
,p_download_formats=>'HTML:CSV'
,p_enable_mail_download=>'N'
,p_owner=>'RICHARD'
,p_internal_uid=>108647464972314621
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632693177066718136)
,p_db_column_name=>'Edit'
,p_display_order=>1
,p_column_identifier=>'H'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.::P1324_RESPONSIBILITY_ID:#RESPONSIBILITY_ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'Edit'
,p_use_as_row_header=>'N'
,p_security_scheme=>wwv_flow_imp.id(3585335069773360204)
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632696049166718141)
,p_db_column_name=>'RESPONSIBILITY_ID'
,p_display_order=>2
,p_column_identifier=>'A'
,p_column_label=>'Responsibility Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_column_alignment=>'RIGHT'
,p_static_id=>'RESPONSIBILITY_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632695600734718139)
,p_db_column_name=>'REMARKS'
,p_display_order=>3
,p_column_identifier=>'B'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'REMARKS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632695171115718139)
,p_db_column_name=>'RESPONSIBILITY_NAME'
,p_display_order=>4
,p_column_identifier=>'C'
,p_column_label=>'Responsibility Name'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'RESPONSIBILITY_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632694848891718138)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>5
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'CREATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632694444443718137)
,p_db_column_name=>'CREATION_DATE'
,p_display_order=>6
,p_column_identifier=>'E'
,p_column_label=>'Creation Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'CREATION_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632694055721718137)
,p_db_column_name=>'LAST_UPDATED_BY'
,p_display_order=>7
,p_column_identifier=>'F'
,p_column_label=>'Last Updated By'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'LAST_UPDATED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3632693571160718136)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>8
,p_column_identifier=>'G'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_UPDATE_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3587003936833632063)
,p_db_column_name=>'ID'
,p_display_order=>18
,p_column_identifier=>'I'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3544190808009672944)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'201463'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>20
,p_report_columns=>'Edit:RESPONSIBILITY_NAME:REMARKS:CREATED_BY:CREATION_DATE:LAST_UPDATED_BY:LAST_UPDATE_DATE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3632822937317113438)
,p_plug_name=>'breadcrumbs'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3574947313252192630)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632691981030718132)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3632822937317113438)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:199:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3632692368535718135)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3632822937317113438)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_security_scheme=>wwv_flow_imp.id(3585335516081360205)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3632691175625718126)
,p_branch_action=>'f?p=&APP_ID.:1324:&SESSION.::&DEBUG.:1324::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3632692368535718135)
,p_branch_sequence=>10
);
wwv_flow_imp.component_end;
end;
/
