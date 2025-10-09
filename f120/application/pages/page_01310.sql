prompt --application/pages/page_01310
begin
--   Manifest
--     PAGE: 01310
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
 p_id=>1310
,p_name=>'rptOrganisation'
,p_step_title=>'Listing of Organisations'
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
 p_id=>wwv_flow_imp.id(3737897388028858878)
,p_plug_name=>'Listing of Organisations'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HR_HCF_ORGANISATION.ID as ID, user_org_id,',
'    HR_HCF_ORGANISATION.PARENT_ORG_ID as PARENT_ORG_ID,bank_initials  , bank_routing_no, transits,COUNTRY,',
'    HR_HCF_ORGANISATION.ORGANISATION_NAME as ORGANISATION_NAME,',
'    HR_HCF_ORGANISATION.ORGANISATION_TAG as ORGANISATION_TAG,',
'    HR_HCF_ORGANISATION.ORGANISATION_TYPE as ORGANISATION_TYPE,VENDOR_ID, PAYSITE_CODE,',
'    HR_HCF_ORGANISATION.SHORT_NAME as SHORT_NAME,',
'    HR_HCF_ORGANISATION.ADDRESS as ADDRESS,',
'    HR_HCF_ORGANISATION.TELNUM as TELNUM,',
'    HR_HCF_ORGANISATION.FAXNUM as FAXNUM,',
'    HR_HCF_ORGANISATION.CATCH_LINE as CATCH_LINE,',
'    HR_HCF_ORGANISATION.NIS_REG_NO as NIS_REG_NO,',
'    HR_HCF_ORGANISATION.TAX_REG_NO as TAX_REG_NO,',
'    HR_HCF_ORGANISATION.LETTER_HEAD_LOGO as LETTER_HEAD_LOGO,',
'    HR_HCF_ORGANISATION.START_DATE as START_DATE,',
'    HR_HCF_ORGANISATION.END_DATE as END_DATE,',
'    HR_HCF_ORGANISATION.VERIFIED_DATE as VERIFIED_DATE,',
'    HR_HCF_ORGANISATION.VERIFIED_BY as VERIFIED_BY,',
'    HR_HCF_ORGANISATION.LAST_CHANGED_BY as LAST_CHANGED_BY,',
'    HR_HCF_ORGANISATION.LAST_CHANGED_DATE as LAST_CHANGED_DATE,',
'    HR_HCF_ORGANISATION.ENTERED_BY as ENTERED_BY,',
'    MIGRATE_PK',
' from HR_HCF_ORGANISATION HR_HCF_ORGANISATION',
' WHERE HR_HCF_ORGANISATION.ORGANISATION_TYPE= DECODE(:P1310_ORGANISATION,''1'',HR_HCF_ORGANISATION.ORGANISATION_TYPE,:P1310_ORGANISATION)',
' and HR_HCF_ORGANISATION.user_org_id = case when :P1310_ORGANISATION=''SOFTWARE USER'' AND :APP_USER=''RLANGFORD@INNOSYSGY.COM'' THEN  TO_NUMBER( HR_HCF_ORGANISATION.user_org_id)',
'                                            when :P1310_ORGANISATION=''SOFTWARE USER'' AND :APP_USER !=''RLANGFORD@INNOSYSGY.COM'' THEN  TO_NUMBER( :APP_ORG_ID)',
'                                         else TO_NUMBER( :APP_ORG_SHR_DED) end '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1310_ORGANISATION'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3737897156455858877)
,p_name=>'Report 1'
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
,p_download_formats=>'CSV:HTML:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:1311:P1311_ID,GLOBAL_ORG:#ID#,#ID#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_detail_link_auth_scheme=>wwv_flow_imp.id(3807159759962545770)
,p_owner=>'PUR_INV'
,p_internal_uid=>106973977436270628
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825866090782638405)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825865649787638405)
,p_db_column_name=>'PARENT_ORG_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Parent Organisation'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_static_id=>'PARENT_ORG_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3850420287759371881)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825865246861638404)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Organisation Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORGANISATION_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825864849856638403)
,p_db_column_name=>'ORGANISATION_TAG'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Organisation Tag'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORGANISATION_TAG'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825864434135638403)
,p_db_column_name=>'ORGANISATION_TYPE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Organisation Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ORGANISATION_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825864132973638402)
,p_db_column_name=>'SHORT_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Short Name'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'SHORT_NAME'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825863665546638402)
,p_db_column_name=>'ADDRESS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Address'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_static_id=>'ADDRESS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825863270925638401)
,p_db_column_name=>'TELNUM'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Telnum'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TELNUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825862929213638401)
,p_db_column_name=>'FAXNUM'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Faxnum'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'FAXNUM'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825862434634638400)
,p_db_column_name=>'CATCH_LINE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Catch Line'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'CATCH_LINE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825862051491638400)
,p_db_column_name=>'NIS_REG_NO'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'NIB/SS Reg No'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_static_id=>'NIS_REG_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825861698571638399)
,p_db_column_name=>'TAX_REG_NO'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Tax Reg No'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'TAX_REG_NO'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825860899898638398)
,p_db_column_name=>'START_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825860464717638398)
,p_db_column_name=>'END_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825860067001638397)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825859724370638397)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VERIFIED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825859281783638396)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825858918393638396)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3825858475399638395)
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
 p_id=>wwv_flow_imp.id(3825866533715638407)
,p_db_column_name=>'MIGRATE_PK'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Migrate pk'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3708948874419573369)
,p_db_column_name=>'VENDOR_ID'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Vendor Id'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3708948783903573368)
,p_db_column_name=>'PAYSITE_CODE'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'Paysite Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3583627899434685447)
,p_db_column_name=>'BANK_INITIALS'
,p_display_order=>60
,p_column_identifier=>'X'
,p_column_label=>'Bank Initials'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3583628071868685449)
,p_db_column_name=>'TRANSITS'
,p_display_order=>80
,p_column_identifier=>'Z'
,p_column_label=>'Transits'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3535636726770209532)
,p_db_column_name=>'BANK_ROUTING_NO'
,p_display_order=>90
,p_column_identifier=>'AA'
,p_column_label=>'Bank Routing No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163189256311583765)
,p_db_column_name=>'LETTER_HEAD_LOGO'
,p_display_order=>100
,p_column_identifier=>'AC'
,p_column_label=>'Letter Head Logo'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3163190145433583774)
,p_db_column_name=>'COUNTRY'
,p_display_order=>110
,p_column_identifier=>'AD'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2778550806144536726)
,p_db_column_name=>'USER_ORG_ID'
,p_display_order=>120
,p_column_identifier=>'AE'
,p_column_label=>'User Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3737895062280858869)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'190130'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'ORGANISATION_TYPE:PARENT_ORG_ID:ORGANISATION_NAME:SHORT_NAME:ADDRESS:BANK_INITIALS:TRANSITS:TELNUM:FAXNUM:TAX_REG_NO:NIS_REG_NO:VERIFIED_BY:VERIFIED_DATE:COUNTRY:USER_ORG_ID'
,p_break_on=>'ORGANISATION_TYPE:PARENT_ORG_ID:0:0:0:0'
,p_break_enabled_on=>'ORGANISATION_TYPE:PARENT_ORG_ID:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3832282328481536134)
,p_plug_name=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3796847114049348873)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825857242434638382)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3737897388028858878)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3825857721406638385)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3737897388028858878)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:1311:&SESSION.::&DEBUG.:1311::'
,p_security_scheme=>wwv_flow_imp.id(3825855514519638347)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3825856887707638380)
,p_name=>'P1310_ORGANISATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3737897388028858878)
,p_prompt=>'Search by Organisation Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORGANISATION_TYPE a, oRGANISATION_TYPE b',
'from HR_HCF_ORGANISATION',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3710562988071767507)
,p_name=>'search'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1310_ORGANISATION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3710562862807767506)
,p_event_id=>wwv_flow_imp.id(3710562988071767507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3737897388028858878)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
