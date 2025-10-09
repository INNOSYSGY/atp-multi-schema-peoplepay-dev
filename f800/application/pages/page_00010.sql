prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'frmAddress'
,p_alias=>'FRMADDRESS1'
,p_page_mode=>'MODAL'
,p_step_title=>'frmAddress'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825435721205058391)
,p_step_template=>2100407606326202693
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(3806877419215039124)
,p_dialog_width=>'800'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2216121439504938032)
,p_plug_name=>'Buttons_Region'
,p_region_template_options=>'#DEFAULT#:t-Form--noPadding'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_03'
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(6068855795105461482)
,p_name=>'Audit'
,p_template=>2664334895415463485
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--hiddenOverflow:t-Form--slimPadding:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  hr_rcm_address',
'where  id = :P10_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P10_ID'
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
 p_id=>wwv_flow_imp.id(575570437732907719)
,p_query_column_id=>1
,p_column_alias=>'ENTERED'
,p_column_display_sequence=>10
,p_column_heading=>'Entered'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(575570847915907718)
,p_query_column_id=>2
,p_column_alias=>'LAST_CHANGED'
,p_column_display_sequence=>20
,p_column_heading=>'Last Changed'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(575571275422907717)
,p_query_column_id=>3
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>30
,p_column_heading=>'Machine Insert'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(575571707264907716)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Update'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(575572022260907715)
,p_query_column_id=>5
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>50
,p_column_heading=>'Updated'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6079534715556720970)
,p_plug_name=>'Search Address'
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--accent2:t-Region--scrollBody:margin-bottom-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    B.ID,',
'    INITCAP(A.SURNAME',
'     || '',''',
'     || NVL(A.FIRST_NAME,'''') )',
'     || '' ''',
'     || NVL(A.MIDDLE_NAME,'''')',
'     || '' DOB:''',
'     || TO_CHAR(DOB,''DD-MON-YY'')',
'     || '' (''',
'     || SEX_CODE',
'     || ''):-''',
'     || PKG_GLOBAL_FNTS.IND_STATUS(A.ID) AS INDIVIDUAL, PKG_GLOBAL_FNTS.Ind_status(A.id) Status,',
'    B.ADDRESS_TYPE AS ADDRESS_TYPE,',
'    B.IND_ID AS IND_ID,',
'    B.LOT AS LOT,',
'    B.STREET AS STREET,',
'    B.VILLAGE_WARD AS VILLAGE_WARD,',
'    B.TOWN AS TOWN,',
'    B.REGION AS REGION,',
'    B.COUNTY AS COUNTY,',
'    B.COUNTRY AS COUNTRY,',
'    B.LAST_CHANGED_BY AS LAST_CHANGED_BY,',
'    B.LAST_CHANGED_DATE AS LAST_CHANGED_DATE,',
'    B.ENTERED_BY AS ENTERED_BY,',
'    B.ENTRY_DATE AS ENTRY_DATE,',
'    B.MACHINE_INSERT AS MACHINE_INSERT,',
'    B.MACHINE_UPDATE AS MACHINE_UPDATE,',
'    B.START_DATE AS START_DATE,',
'    B.END_DATE AS END_DATE,',
'    cell_phone, bank_account_no, bank_branch_id, telephone, sex_code, marital_code,dob, dod, nationality',
'     ,employee_status,compute_gross,org_structure,position_name,separated_status,employment_status,employment_class,payment_type,wklocation_id',
'FROM',
'    HR_RCM_INDIVIDUAL A',
'    JOIN HR_RCM_ADDRESS B ON B.IND_ID = A.ID',
'    left outer join hr_rcm_employee c on c.ind_id=a.id',
'WHERE ( :P10_SEARCH_COMP =1 or b.ind_id = :P10_IND_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P10_SEARCH_COMP'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(6079534591035720970)
,p_name=>'Search Address'
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
,p_internal_uid=>5551983472873359181
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216295824195173519)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Edit'
,p_column_link=>'f?p=&APP_ID.:1270:&SESSION.::&DEBUG.::P1270_ID:#ID#'
,p_column_linktext=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil-alt.png" class="apex-edit-pencil-alt" alt="">'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216295475196173519)
,p_db_column_name=>'INDIVIDUAL'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Individual'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'INDIVIDUAL'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216295026174173518)
,p_db_column_name=>'ADDRESS_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Address Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ADDRESS_TYPE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216294620265173518)
,p_db_column_name=>'IND_ID'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'IND_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216294277521173517)
,p_db_column_name=>'LOT'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Lot'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LOT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216293809803173517)
,p_db_column_name=>'STREET'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'STREET'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216293419532173517)
,p_db_column_name=>'VILLAGE_WARD'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Village Ward'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'VILLAGE_WARD'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216293064267173516)
,p_db_column_name=>'TOWN'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Town'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'TOWN'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216292634919173516)
,p_db_column_name=>'REGION'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'REGION'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216292194787173515)
,p_db_column_name=>'COUNTY'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'County'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216291864308173515)
,p_db_column_name=>'COUNTRY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'COUNTRY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216291391813173514)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216291037332173514)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216290651609173513)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216290261441173513)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216289820013173513)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216289453479173512)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216289075589173512)
,p_db_column_name=>'START_DATE'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'START_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216288597849173511)
,p_db_column_name=>'END_DATE'
,p_display_order=>19
,p_column_identifier=>'S'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'END_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216296282249173520)
,p_db_column_name=>'STATUS'
,p_display_order=>29
,p_column_identifier=>'T'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216288217731173511)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>39
,p_column_identifier=>'U'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216287855068173510)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>49
,p_column_identifier=>'V'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216287445294173510)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>59
,p_column_identifier=>'W'
,p_column_label=>'Bank Branch'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854209812068306319)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216287079054173510)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>69
,p_column_identifier=>'X'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216286610807173509)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>79
,p_column_identifier=>'Y'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216286225249173509)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>89
,p_column_identifier=>'Z'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_imp.id(3854069045427160094)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216285846574173508)
,p_db_column_name=>'DOB'
,p_display_order=>99
,p_column_identifier=>'AA'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216285464299173508)
,p_db_column_name=>'DOD'
,p_display_order=>109
,p_column_identifier=>'AB'
,p_column_label=>'Dod'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216285080888173507)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>119
,p_column_identifier=>'AC'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216284640659173507)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>129
,p_column_identifier=>'AD'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216284185515173507)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>139
,p_column_identifier=>'AE'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216283832190173506)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>149
,p_column_identifier=>'AF'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216283464552173506)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>159
,p_column_identifier=>'AG'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216282986464173505)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>169
,p_column_identifier=>'AH'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216282639591173505)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>179
,p_column_identifier=>'AI'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216282244462173504)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>189
,p_column_identifier=>'AJ'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216281839948173504)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>199
,p_column_identifier=>'AK'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2216281420734173503)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>209
,p_column_identifier=>'AL'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3837999418033071720)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(6079532514864720756)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'15078653'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_report_columns=>'INDIVIDUAL:ADDRESS_TYPE:ID:LOT:STREET:VILLAGE_WARD:COUNTRY:START_DATE:END_DATE:CELL_PHONE:SEX_CODE:NATIONALITY:MARITAL_CODE::EMPLOYEE_STATUS:COMPUTE_GROSS:ORG_STRUCTURE:POSITION_NAME:SEPARATED_STATUS:EMPLOYMENT_STATUS:EMPLOYMENT_CLASS:PAYMENT_TYPE:WK'
||'LOCATION_ID'
,p_break_on=>'INDIVIDUAL:ADDRESS_TYPE:0:0:0:0'
,p_break_enabled_on=>'INDIVIDUAL:ADDRESS_TYPE:0:0:0:0'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6112102634579462515)
,p_plug_name=>'Quick Entry Reference (for Village, town, region, County)'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    B.ID,work_phone, alternative_email,',
'    INITCAP(A.SURNAME',
'     || '',''',
'     || NVL(A.FIRST_NAME,'''') )',
'     || '' ''',
'     || NVL(A.MIDDLE_NAME,'''')',
'     || '' DOB:''',
'     || TO_CHAR(DOB,''DD-MON-YY'')',
'     || '' (''',
'     || SEX_CODE',
'     || ''):-''',
'     || PKG_GLOBAL_FNTS.IND_STATUS(A.ID) AS INDIVIDUAL, PKG_GLOBAL_FNTS.Ind_status(A.id) Status,',
'    B.ADDRESS_TYPE AS ADDRESS_TYPE,',
'    B.IND_ID AS IND_ID,',
'    B.LOT AS LOT,',
'    B.STREET AS STREET,',
'    B.VILLAGE_WARD AS VILLAGE_WARD,',
'    B.TOWN AS TOWN,',
'    B.REGION AS REGION,',
'    B.COUNTY AS COUNTY,',
'    B.COUNTRY AS COUNTRY,',
'    B.LAST_CHANGED_BY AS LAST_CHANGED_BY,',
'    B.LAST_CHANGED_DATE AS LAST_CHANGED_DATE,',
'    B.ENTERED_BY AS ENTERED_BY,',
'    B.ENTRY_DATE AS ENTRY_DATE,',
'    B.MACHINE_INSERT AS MACHINE_INSERT,',
'    B.MACHINE_UPDATE AS MACHINE_UPDATE,',
'    B.START_DATE AS START_DATE,',
'    B.END_DATE AS END_DATE,',
'    cell_phone, bank_account_no, bank_branch_id, telephone, sex_code, marital_code,dob, dod, nationality',
'     ,employee_status,compute_gross,org_structure,position_name,separated_status,employment_status,employment_class,payment_type,wklocation_id',
'FROM',
'    HR_RCM_INDIVIDUAL A',
'    JOIN HR_RCM_ADDRESS B ON B.IND_ID = A.ID',
'    left outer join hr_rcm_employee c on c.ind_id=a.id',
'WHERE IND_ORG_ID=:APP_ORG_SHR_DED   ',
'   AND ( :P10_SEARCH_COMP =1 or b.ind_id = :P10_IND_ID)'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Quick Entry Reference (for Village, town, region, County)'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2240388089675278628)
,p_max_row_count=>'1000000'
,p_allow_save_rpt_public=>'Y'
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
,p_owner=>'SHIRAMAN@INNOSYSGY.COM'
,p_internal_uid=>1712836971512916839
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240388282767278629)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240388846877278635)
,p_db_column_name=>'COUNTRY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Country'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240555456319778591)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Entry Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240555571759778592)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Entered By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240555619240778593)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Last Changed By'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(2240555734095778594)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'Y'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817104584534405)
,p_db_column_name=>'WORK_PHONE'
,p_display_order=>170
,p_column_identifier=>'S'
,p_column_label=>'Work Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817145681534406)
,p_db_column_name=>'ALTERNATIVE_EMAIL'
,p_display_order=>180
,p_column_identifier=>'T'
,p_column_label=>'Alternative Email'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817304424534407)
,p_db_column_name=>'INDIVIDUAL'
,p_display_order=>190
,p_column_identifier=>'U'
,p_column_label=>'Individual'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817352161534408)
,p_db_column_name=>'STATUS'
,p_display_order=>200
,p_column_identifier=>'V'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817489160534409)
,p_db_column_name=>'ADDRESS_TYPE'
,p_display_order=>210
,p_column_identifier=>'W'
,p_column_label=>'Address Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817562980534410)
,p_db_column_name=>'IND_ID'
,p_display_order=>220
,p_column_identifier=>'X'
,p_column_label=>'Ind Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817654770534411)
,p_db_column_name=>'LOT'
,p_display_order=>230
,p_column_identifier=>'Y'
,p_column_label=>'Lot'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817776720534412)
,p_db_column_name=>'STREET'
,p_display_order=>240
,p_column_identifier=>'Z'
,p_column_label=>'Street'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618817883605534413)
,p_db_column_name=>'VILLAGE_WARD'
,p_display_order=>250
,p_column_identifier=>'AA'
,p_column_label=>'Village Ward'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818015761534414)
,p_db_column_name=>'TOWN'
,p_display_order=>260
,p_column_identifier=>'AB'
,p_column_label=>'Town'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818078748534415)
,p_db_column_name=>'REGION'
,p_display_order=>270
,p_column_identifier=>'AC'
,p_column_label=>'Region'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818174741534416)
,p_db_column_name=>'COUNTY'
,p_display_order=>280
,p_column_identifier=>'AD'
,p_column_label=>'County'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818336460534417)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>290
,p_column_identifier=>'AE'
,p_column_label=>'Machine Insert'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818424495534418)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>300
,p_column_identifier=>'AF'
,p_column_label=>'Machine Update'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818453301534419)
,p_db_column_name=>'START_DATE'
,p_display_order=>310
,p_column_identifier=>'AG'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818598164534420)
,p_db_column_name=>'END_DATE'
,p_display_order=>320
,p_column_identifier=>'AH'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818685475534421)
,p_db_column_name=>'CELL_PHONE'
,p_display_order=>330
,p_column_identifier=>'AI'
,p_column_label=>'Cell Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818794724534422)
,p_db_column_name=>'BANK_ACCOUNT_NO'
,p_display_order=>340
,p_column_identifier=>'AJ'
,p_column_label=>'Bank Account No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(618818846057534423)
,p_db_column_name=>'BANK_BRANCH_ID'
,p_display_order=>350
,p_column_identifier=>'AK'
,p_column_label=>'Bank Branch Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927075296664574)
,p_db_column_name=>'TELEPHONE'
,p_display_order=>360
,p_column_identifier=>'AL'
,p_column_label=>'Telephone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927176379664575)
,p_db_column_name=>'SEX_CODE'
,p_display_order=>370
,p_column_identifier=>'AM'
,p_column_label=>'Sex Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927246359664576)
,p_db_column_name=>'MARITAL_CODE'
,p_display_order=>380
,p_column_identifier=>'AN'
,p_column_label=>'Marital Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927406479664577)
,p_db_column_name=>'DOB'
,p_display_order=>390
,p_column_identifier=>'AO'
,p_column_label=>'Dob'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927494835664578)
,p_db_column_name=>'DOD'
,p_display_order=>400
,p_column_identifier=>'AP'
,p_column_label=>'Dod'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927605855664579)
,p_db_column_name=>'NATIONALITY'
,p_display_order=>410
,p_column_identifier=>'AQ'
,p_column_label=>'Nationality'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927735123664580)
,p_db_column_name=>'EMPLOYEE_STATUS'
,p_display_order=>420
,p_column_identifier=>'AR'
,p_column_label=>'Employee Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927791887664581)
,p_db_column_name=>'COMPUTE_GROSS'
,p_display_order=>430
,p_column_identifier=>'AS'
,p_column_label=>'Compute Gross'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622927842352664582)
,p_db_column_name=>'ORG_STRUCTURE'
,p_display_order=>440
,p_column_identifier=>'AT'
,p_column_label=>'Org Structure'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622928033025664583)
,p_db_column_name=>'POSITION_NAME'
,p_display_order=>450
,p_column_identifier=>'AU'
,p_column_label=>'Position Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622928082087664584)
,p_db_column_name=>'SEPARATED_STATUS'
,p_display_order=>460
,p_column_identifier=>'AV'
,p_column_label=>'Separated Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622928167195664585)
,p_db_column_name=>'EMPLOYMENT_STATUS'
,p_display_order=>470
,p_column_identifier=>'AW'
,p_column_label=>'Employment Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622928252666664586)
,p_db_column_name=>'EMPLOYMENT_CLASS'
,p_display_order=>480
,p_column_identifier=>'AX'
,p_column_label=>'Employment Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622928390124664587)
,p_db_column_name=>'PAYMENT_TYPE'
,p_display_order=>490
,p_column_identifier=>'AY'
,p_column_label=>'Payment Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(622928478691664588)
,p_db_column_name=>'WKLOCATION_ID'
,p_display_order=>500
,p_column_identifier=>'AZ'
,p_column_label=>'Wklocation Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2240568475176780225)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'15321372'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:COUNTRY:ENTRY_DATE:ENTERED_BY:LAST_CHANGED_BY:LAST_CHANGED_DATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575585132347907673)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(6079534715556720970)
,p_button_name=>'SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--stretch'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Initialise Search'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575598671771907633)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_test_verified_parent number(1);',
'',
'begin',
'',
'    SELECT count(1) into v_test_verified_parent',
'    FROM HR_RCM_INDIVIDUAL',
'    WHERE VERIFIED_BY IS NULL',
'    AND id = :P10_IND_ID;',
'               ',
'    if pkg_global_fnts.chk_verifier(:APP_USER,1261) =1 AND :P10_ID IS NOT NULL then ',
'        return TRUE;',
'    elsif pkg_global_fnts.chk_verifier(:APP_USER,1261) =0 and v_test_verified_parent>0 AND :P10_ID IS NOT NULL then ',
'        return TRUE;',
'    else',
'        return FALSE;',
'    end if;',
'    ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_security_scheme=>wwv_flow_imp.id(3806878328594039124)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575599028717907631)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575599494272907630)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>':P10_ID IS nULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575599849716907629)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'CREATE'
,p_button_condition=>':P10_ID IS NULL'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575600270557907628)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_IND_ID:&P10_IND_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_test_verified_parent number(1);',
'',
'begin',
'',
'    SELECT count(1) into v_test_verified_parent',
'    FROM HR_RCM_INDIVIDUAL',
'    WHERE VERIFIED_BY IS NULL',
'    AND id = :P10_IND_ID;',
'               ',
'    if pkg_global_fnts.chk_verifier(:APP_USER,1261) =1 AND :P10_ID IS not NULL then ',
'        return TRUE;',
'    elsif pkg_global_fnts.chk_verifier(:APP_USER,1261) =0 and v_test_verified_parent>0 AND :P10_ID IS not NULL then ',
'        return TRUE; ',
'    else',
'        return FALSE;',
'    end if;',
'    ',
'end;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575600701619907627)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'ADD_QUICKENTRY'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Quick Entry'
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575601112613907626)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2216121439504938032)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM HR_RCM_INDIVIDUAL a',
'WHERE VERIFIED_BY IS NULL',
'AND EXISTS(SELECT 1',
'           FROM HR_RCM_ADDRESS B',
'           WHERE A.id=B.ind_id',
'           and b.id=:P10_ID)',
'AND :P10_ID IS NOT NULL'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3806878643214039124)
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575568428220907727)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(6112102634579462515)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>2082829544945815391
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'EDIT'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(575606899711907606)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_IND_ID:&P10_IND_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(575599849716907629)
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(575607267118907605)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1261:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(575601112613907626)
,p_branch_sequence=>2
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(575607645829907604)
,p_branch_name=>'Go To Page 1270'
,p_branch_action=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_ID:&P10_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>72
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2216310470288173362)
,p_name=>'P10_TABLE_DESCRIPTION'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(6112102634579462515)
,p_prompt=>'Table Description'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DIStinct INITCAP(table_description) A, table_description B',
'from hr_hcf_lookup',
'where org_id=:APP_ORG_ID',
'and upper(table_name) in (''TBLVILLAGE'',''TBLTOWN'',''TBLREGION'',''TBLDISTRICT'')',
'order by 2'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2216310909418173363)
,p_name=>'P10_START_PERIOD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(6112102634579462515)
,p_prompt=>'Start Period'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_cMaxlength=>30
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
 p_id=>wwv_flow_imp.id(2216311286635173363)
,p_name=>'P10_TABLE_VALUE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(6112102634579462515)
,p_prompt=>'Table Value'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2216311643710173364)
,p_name=>'P10_VALUE_DESCRIPTION'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(6112102634579462515)
,p_prompt=>'Value Description'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>120
,p_cMaxlength=>250
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2216377036331173230)
,p_name=>'P10_SEARCH_COMP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(6079534715556720970)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2216377417343173231)
,p_name=>'P10_VILLAGE_WARD_SEARCH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(6079534715556720970)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575603642765907613)
,p_validation_name=>'chk_multi_active_rec'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_address',
'where ind_id=:P10_IND_ID',
'and address_type=:P10_ADDRESS_TYPE',
'and (end_date is null or end_date > sysdate);',
'',
'IF  v_cnt >=1 AND :P10_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'An active address of this type exist, close it first before entering new address.'
,p_always_execute=>'Y'
,p_validation_condition=>'CREATE,CREATE_AGAIN'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575602897766907614)
,p_validation_name=>'chk_multi_active_rec1'
,p_validation_sequence=>11
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_address',
'where ind_id=:P10_IND_ID',
'and address_type=:P10_ADDRESS_TYPE',
'and (end_date is null or end_date > sysdate)',
'and id !=:P10_ID;',
'',
'IF  v_cnt >=1 AND :P10_END_DATE IS NULL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'System already has an active record for this address type, only one is allowed!'
,p_when_button_pressed=>wwv_flow_imp.id(575598671771907633)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575603270832907613)
,p_validation_name=>'chk_dates'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF TO_DATE(:P10_END_DATE) < TO_DATE(:P10_START_DATE) THEN',
'RETURN FALSE;',
'ELSE',
'return TRUE;',
'end if;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The end date cannot be less than the start date!'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575602442505907615)
,p_validation_name=>'chk_spaning_date'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_cnt pls_integer:=0;',
'begin',
'',
'select count(1) into v_cnt ',
'from hr_rcm_address',
'where ind_id=:P10_IND_ID',
'and address_type=:P10_ADDRESS_TYPE',
'and to_date(:P10_START_DATE) between start_date and end_date',
'and id !=:P10_ID;',
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
,p_error_message=>'Spanning data values not allowed please change the start date for the record entered.'
,p_always_execute=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(575602054137907616)
,p_validation_name=>'chk_all_quick_ref'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
' if :P10_TABLE_DESCRIPTION is null or :P10_TABLE_VALUE is null or :P10_VALUE_DESCRIPTION is null or :P10_START_PERIOD is null then     ',
'     return FALSE;',
' else',
'     return TRUE; ',
' end if;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Kindly ensure you enter data into all fields under Quick Entry Reference Region.'
,p_when_button_pressed=>wwv_flow_imp.id(575568428220907727)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575605944614907608)
,p_name=>'view_quickentry'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575600701619907627)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575606370279907607)
,p_event_id=>wwv_flow_imp.id(575605944614907608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(6112102634579462515)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575605525998907609)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SEARCH_COMP'
,p_process_sql_clob=>':P10_SEARCH_COMP:=1;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(575585132347907673)
,p_internal_uid=>48054407836545820
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575604375031907611)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'pop_references'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   v_table_name varchar2(100);',
'   ',
'begin',
'    SELECT distinct TABLE_NAME into v_table_name ',
'    from hr_hcf_lookup',
'    where org_id=:APP_ORG_SHR_DED',
'    and upper(table_description) = upper(:P10_TABLE_DESCRIPTION);',
'',
' INSERT INTO hr_hcf_lookup (COUNTRY, ORG_ID,MODULE_MAIN, MODULE_MAIN_ID, TABLE_NAME,TABLE_DESCRIPTION,TABLE_VALUE,VALUE_DESCRIPTION,START_PERIOD,transaction_type_id, STATUS,verified_date, verified_by)',
'values (:APP_COUNTRY, :APP_ORG_ID, ''HUMAN RESOURCES AND PAYROLL'', 21,  v_table_name, :P10_TABLE_DESCRIPTION, :P10_TABLE_VALUE, :P10_VALUE_DESCRIPTION,:P10_START_PERIOD, 110,272, SYSDATE, :APP_USER);',
'    ',
'    :P10_TABLE_DESCRIPTION:=null;',
'    :P10_TABLE_VALUE:=null;',
'    :P10_VALUE_DESCRIPTION:=null;',
'    :P10_START_PERIOD:=null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(575568428220907727)
,p_process_success_message=>'Reference successfully added.'
,p_internal_uid=>48053256869545822
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575603931766907612)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set_overseas'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update hr_rcm_employee',
'set LIVE_OVERSEAS = 1',
'where ind_id = :P10_IND_ID',
'and (date_separated is null or date_separated > trunc(sysdate))',
'and separated_status is null',
'and UPPER(:P10_COUNTRY) != ''GUYANA'';',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE, CREATE_AGAIN, SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>48052813604545823
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575604721861907610)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(575601112613907626)
,p_internal_uid=>48053603699545821
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575605134115907609)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(575599028717907631)
,p_internal_uid=>48054015953545820
);
wwv_flow_imp.component_end;
end;
/
