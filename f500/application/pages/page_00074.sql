prompt --application/pages/page_00074
begin
--   Manifest
--     PAGE: 00074
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
 p_id=>74
,p_name=>'rptUnverifiedIndividuals'
,p_step_title=>'Listing of Unverified Individuals'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3806298858087241579)
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3858839836429359135)
,p_plug_name=>'Listing of Unverified Individuals last modified by User'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    id,',
'    surname,',
'    first_name,',
'    middle_name,',
'    alias,',
'    dob,',
'    dod,',
'    place_of_birth,',
'    sex_code,',
'    marital_code,',
'    maiden_name,',
'    no_of_children,',
'    height,',
'    weight,',
'    eye_colour,',
'    hair_colour,',
'    built,',
'    distinguished_marks,',
'    race_id,',
'    nationality,',
'    telephone,',
'    bank_branch_id,',
'    bank_account_no,',
'    entered_by,',
'    entry_date,',
'    verified_by,',
'    verified_date,',
'    religion,',
'    cell_phone,',
'    email,',
'    date_of_marriage,',
'    place_of_marriage,',
'    joint_account,',
'    machine_insert,',
'    machine_update,',
'    last_changed_by,',
'    last_changed_date,   ',
'    transaction_type_id,',
'    status,',
'    salutation    ',
'FROM  hr_rcm_individual',
'WHERE (verified_by is null ',
'or verified_date is null)',
'AND last_changed_by=:P74_USER      ',
'and ind_org_id=:APP_ORG_ID',
'AND TRUNC(last_changed_date) BETWEEN :P74_START_DATE AND  :P74_END_DATE',
''))
,p_plug_source_type=>'NATIVE_IR'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(3858839953138359135)
,p_name=>'rptUnverifiedIndividuals'
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
,p_owner=>'CLOUD_PROD_DEV'
,p_internal_uid=>14905156086836266
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858840343030359136)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858840735484359136)
,p_db_column_name=>'SURNAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Surname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858841146516359136)
,p_db_column_name=>'FIRST_NAME'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'First Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858841551983359136)
,p_db_column_name=>'MIDDLE_NAME'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Middle Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858841937452359136)
,p_db_column_name=>'ALIAS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Alias'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858842340663359136)
,p_db_column_name=>'DOB'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858842713442359137)
,p_db_column_name=>'DOD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dod'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858843149222359137)
,p_db_column_name=>'PLACE_OF_BIRTH'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Place Of Birth'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858843506038359137)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858843980914359137)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858844299785359137)
,p_db_column_name=>'MAIDEN_NAME'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Maiden Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858844705313359137)
,p_db_column_name=>'NO_OF_CHILDREN'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'No Of Children'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858845120036359137)
,p_db_column_name=>'HEIGHT'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Height'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858845539716359138)
,p_db_column_name=>'WEIGHT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Weight'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858845950383359138)
,p_db_column_name=>'EYE_COLOUR'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Eye Colour'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858846348433359139)
,p_db_column_name=>'HAIR_COLOUR'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Hair Colour'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858846697790359139)
,p_db_column_name=>'BUILT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Built'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858847139616359139)
,p_db_column_name=>'DISTINGUISHED_MARKS'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Distinguished Marks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858847565129359140)
,p_db_column_name=>'RACE_ID'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'Race Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858847925067359140)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>20
,p_column_identifier=>'T'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858848298649359140)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>21
,p_column_identifier=>'U'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858848794378359140)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'Bank Branch Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858849114352359140)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858849592191359140)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858849940938359140)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858850343004359141)
,p_db_column_name=>'VERIFIED_BY'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'Verified By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858850761417359141)
,p_db_column_name=>'VERIFIED_DATE'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'Verified Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858851097579359141)
,p_db_column_name=>'RELIGION'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'Religion'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858851553409359141)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858851920594359141)
,p_db_column_name=>'EMAIL'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858852349932359141)
,p_db_column_name=>'DATE_OF_MARRIAGE'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'Date Of Marriage'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858852787004359142)
,p_db_column_name=>'PLACE_OF_MARRIAGE'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'Place Of Marriage'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858853167632359142)
,p_db_column_name=>'JOINT_ACCOUNT'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'Joint Account'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858853565933359142)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858853913606359142)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858854319590359143)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>36
,p_column_identifier=>'AJ'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858854746246359143)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858855123195359143)
,p_db_column_name=>'TRANSACTION_TYPE_ID'
,p_display_order=>38
,p_column_identifier=>'AL'
,p_column_label=>'Transaction Type Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858855559574359143)
,p_db_column_name=>'STATUS'
,p_display_order=>39
,p_column_identifier=>'AM'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(3858855994830359143)
,p_db_column_name=>'SALUTATION'
,p_display_order=>40
,p_column_identifier=>'AN'
,p_column_label=>'Salutation'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(3858857901110379793)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'149232'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:SURNAME:FIRST_NAME:MIDDLE_NAME:ALIAS:DOB:DOD:PLACE_OF_BIRTH:SEX_CODE:MARITAL_CODE:MAIDEN_NAME:NO_OF_CHILDREN:HEIGHT:WEIGHT:EYE_COLOUR:HAIR_COLOUR:BUILT:DISTINGUISHED_MARKS:RACE_ID:NATIONALITY:TELEPHONE:BANK_BRANCH_ID:BANK_ACCOUNT_NO:ENTERED_BY:ENT'
||'RY_DATE:VERIFIED_BY:VERIFIED_DATE:RELIGION:CELL_PHONE:EMAIL:DATE_OF_MARRIAGE:PLACE_OF_MARRIAGE:JOINT_ACCOUNT:MACHINE_INSERT:MACHINE_UPDATE:LAST_CHANGED_BY:LAST_CHANGED_DATE:TRANSACTION_TYPE_ID:STATUS:SALUTATION'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3823359672903397741)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3858839836429359135)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1370:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3823359723052397742)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3858839836429359135)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3858857121785372259)
,p_name=>'P74_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3858839836429359135)
,p_prompt=>'User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  USER_NAME a, USER_NAME b',
'FROM TBLUSER A',
'WHERE exists(select 1',
'             from TBLUSERDETAIL b',
'             where a.user_id=b.user_id',
'             and org_id=:APP_ORG_ID)',
'order by 1             '))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_grid_label_column_span=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3858857405067374355)
,p_name=>'P74_START_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3858839836429359135)
,p_prompt=>'Start Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3858857724355376592)
,p_name=>'P74_END_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3858839836429359135)
,p_prompt=>'End Search'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/
