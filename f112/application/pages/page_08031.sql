prompt --application/pages/page_08031
begin
--   Manifest
--     PAGE: 08031
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
 p_id=>8031
,p_name=>'rptRepublicBankUpgrade'
,p_step_title=>'Republic Bank Accounts'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3279326301052677335)
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307584391087593525)
,p_plug_name=>'Republic Bank Accounts'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select b.FIRST_NAME || '' '' ||b.SURNAME,a.EMP_COMPANY_NO, b.BANK_ACCOUNT_NO, c.ORGANISATION_NAME ,'''' "New Bank Account No" --,d.id,b.BANK_BRANCH_ID, a.id   ',
'from HR_RCM_EMPLOYEE a ',
'join HR_RCM_INDIVIDUAL b on a.IND_ID=b.id',
'join HR_HCF_ORGANISATION c on c.id=b.BANK_BRANCH_ID',
'join HR_RCM_SALARY d on d.EMP_ID = a.id',
'where c.id in (select id from HR_HCF_ORGANISATION where ORGANISATION_TYPE=''BANK'' ',
'               and ORGANISATION_NAME like ''REPUBLIC%'')',
'      and d.END_DATE is null',
'      and a.ORG_ID=:P8031_ORG_ID',
'      and not exists (select 1 from HR_RCM_DISBURSEMENT f ',
'                      where f.SALARY_ID = d.id ',
'                      and f.BANK_BRANCH_ID_DIST= b.BANK_BRANCH_ID',
'                      and f.BANK_ACCOUNT_NO_DIST= b.BANK_ACCOUNT_NO',
'                    )',
'union all ',
'select b1.FIRST_NAME || '' '' ||b1.SURNAME,a1.EMP_COMPANY_NO, f1.BANK_ACCOUNT_NO_DIST, c1.ORGANISATION_NAME ,'''' "New Bank Account No"  ',
'from HR_RCM_EMPLOYEE a1 ',
'join HR_RCM_INDIVIDUAL b1 on a1.IND_ID=b1.id',
'join HR_RCM_SALARY d1 on d1.EMP_ID = a1.id',
'join HR_RCM_DISBURSEMENT f1 on f1.SALARY_ID = d1.id',
'join HR_HCF_ORGANISATION c1 on c1.id=f1.BANK_BRANCH_ID_DIST',
'where c1.id in (select id from HR_HCF_ORGANISATION where ORGANISATION_TYPE=''BANK'' ',
'               and ORGANISATION_NAME like ''REPUBLIC%'')',
'          and a1.ORG_ID=:P8031_ORG_ID   ',
'          and d1.END_DATE is null'))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3307584284253593525)
,p_name=>'rptMedicalDeduction'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_display_row_count=>'Y'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_rows_per_page=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHERRERA'
,p_internal_uid=>51935238870698756
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3326462589533783626)
,p_db_column_name=>'B.FIRST_NAME||''''||B.SURNAME'
,p_display_order=>10
,p_column_identifier=>'S'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3326462757490783627)
,p_db_column_name=>'EMP_COMPANY_NO'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Emp Company No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3326462863149783628)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>30
,p_column_identifier=>'U'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3326462897805783629)
,p_db_column_name=>'ORGANISATION_NAME'
,p_display_order=>40
,p_column_identifier=>'V'
,p_column_label=>'Branch'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3326463057965783630)
,p_db_column_name=>'New Bank Account No'
,p_display_order=>50
,p_column_identifier=>'W'
,p_column_label=>'New Bank Account No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3307580482415580129)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'226237'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>1000
,p_report_columns=>':B.FIRST_NAME||''''||B.SURNAME:EMP_COMPANY_NO:BANK_ACCOUNT_NO:ORGANISATION_NAME:New Bank Account No'
,p_sum_columns_on_break=>'Medical Employee:Medical Employer:Total Medical:Basic Pay:Overtime 1/2Hr:Overtime 2Hr:Overtime'
,p_avg_columns_on_break=>'% Basic Pay:% Basic Pay to Date'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3326463078469783631)
,p_plug_name=>'Republic Bank Account'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10460765779079194647)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326481839543949335)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3326463078469783631)
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.:RP,::'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326454450874771878)
,p_button_sequence=>10
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326461493661771921)
,p_button_sequence=>10
,p_button_name=>'Return'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_image_alt=>'Return'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-hand-o-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326454792083771879)
,p_button_sequence=>20
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326461960650771921)
,p_button_sequence=>20
,p_button_name=>'Search'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Search'
,p_button_position=>'LEGACY_ORPHAN_COMPONENTS'
,p_button_alignment=>'RIGHT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326480143472882526)
,p_name=>'P8031_ORG_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3307584391087593525)
,p_item_default=>':APP_ORG_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Organisation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORGANISATION_NAME A, ID b',
'FROM HR_HCF_ORGANISATION a',
'WHERE EXISTS (SELECT 1',
'              FROM PA_PCF_EARNINGPERIOD B JOIN PA_PMG_PAYROLLHD C ON B.ID=C.EARNINGS_PERIOD_ID',
'              where a.id=org_id)',
'and exists (select 1',
'            from VW_USERACCESS x',
'            where x.org_id=a.id)',
'ORDER BY 1',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--ALL--'
,p_lov_null_value=>'1'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3326463242402783632)
,p_name=>'Refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8031_ORG_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326463299573783633)
,p_event_id=>wwv_flow_imp.id(3326463242402783632)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3307584391087593525)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/
