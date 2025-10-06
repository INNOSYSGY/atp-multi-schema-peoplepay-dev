prompt --application/pages/page_07002
begin
--   Manifest
--     PAGE: 07002
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
 p_id=>7002
,p_name=>'Data Validation'
,p_step_title=>'Data Validation'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* apply u-Report--dataLoad CSS class to Data Load Report and hide empty columns */',
'apex.jQuery("table.standardLook").addClass("u-Report u-Report--standardLook");',
'apex.jQuery("table.u-Report--standardLook tr:nth-child(1) td:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").css("display", "none");',
'apex.jQuery("table.u-Report--standardLook tr th:empty").each( function (idx, elem) { apex.jQuery("table.u-Report--standardLook tr td[headers=\""+apex.jQuery(elem).attr(''id'')+"\"]").css("display", "none");});'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(3296493026271377950)
,p_name=>'Data Validation'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_css_classes=>'data-upload-validation'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_region_attributes=>'style="width:100%;max-width:none;"'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select n001 as row_num,',
'       c049 as action,',
'       c001, c002, c003,',
'       c004, c005, c006,',
'       c007, c008, c009,',
'       c010, c011, c012,',
'       c013, c014, c015,',
'       c016, c017, c018,',
'       c019, c020, c021,',
'       c022, c023, c024,',
'       c025, c026, c027,',
'       c028, c029, c030,',
'       c031, c032, c033,',
'       c034, c035, c036,',
'       c037, c038, c040,',
'       c041, c042, c043,',
'       c044, c045',
'  from apex_collections',
' where collection_name = ''LOAD_CONTENT''',
'   and c049 in (''INSERT'',''UPDATE'', ''FAILED'')',
' order by seq_id'))
,p_lazy_loading=>false
,p_query_headings=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'    l_string varchar(32767);',
'begin',
'    l_string := wwv_flow_lang.system_message(''DATA_LOAD.SEQUENCE_ACTION'');',
'    for l_heading in ( select c005 as label',
'                         from apex_collections',
'                        where collection_name = ''LOAD_COL_HEAD''',
'                        order by seq_id )',
'    loop',
'        l_string := l_string || '':'' || l_heading.label;',
'    end loop;',
'    return l_string;',
'end;'))
,p_query_headings_type=>'FUNCTION_BODY_RETURNING_COLON_DELIMITED_LIST'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_IN_SELECT_LIST'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296492355947377945)
,p_query_column_id=>1
,p_column_alias=>'ROW_NUM'
,p_column_display_sequence=>1
,p_column_heading=>'ROW_NUM'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296491988102377943)
,p_query_column_id=>2
,p_column_alias=>'ACTION'
,p_column_display_sequence=>2
,p_column_heading=>'ACTION'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296491583895377943)
,p_query_column_id=>3
,p_column_alias=>'C001'
,p_column_display_sequence=>3
,p_column_heading=>'C001'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296491185593377942)
,p_query_column_id=>4
,p_column_alias=>'C002'
,p_column_display_sequence=>4
,p_column_heading=>'C002'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296490793161377942)
,p_query_column_id=>5
,p_column_alias=>'C003'
,p_column_display_sequence=>5
,p_column_heading=>'C003'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296490326373377942)
,p_query_column_id=>6
,p_column_alias=>'C004'
,p_column_display_sequence=>6
,p_column_heading=>'C004'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296489954031377940)
,p_query_column_id=>7
,p_column_alias=>'C005'
,p_column_display_sequence=>7
,p_column_heading=>'C005'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296489547734377940)
,p_query_column_id=>8
,p_column_alias=>'C006'
,p_column_display_sequence=>8
,p_column_heading=>'C006'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296489110436377939)
,p_query_column_id=>9
,p_column_alias=>'C007'
,p_column_display_sequence=>9
,p_column_heading=>'C007'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296488744724377939)
,p_query_column_id=>10
,p_column_alias=>'C008'
,p_column_display_sequence=>10
,p_column_heading=>'C008'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296488319734377938)
,p_query_column_id=>11
,p_column_alias=>'C009'
,p_column_display_sequence=>11
,p_column_heading=>'C009'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296487966860377938)
,p_query_column_id=>12
,p_column_alias=>'C010'
,p_column_display_sequence=>12
,p_column_heading=>'C010'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296487596165377938)
,p_query_column_id=>13
,p_column_alias=>'C011'
,p_column_display_sequence=>13
,p_column_heading=>'C011'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296487202080377937)
,p_query_column_id=>14
,p_column_alias=>'C012'
,p_column_display_sequence=>14
,p_column_heading=>'C012'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296486754023377936)
,p_query_column_id=>15
,p_column_alias=>'C013'
,p_column_display_sequence=>15
,p_column_heading=>'C013'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296486318424377936)
,p_query_column_id=>16
,p_column_alias=>'C014'
,p_column_display_sequence=>16
,p_column_heading=>'C014'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296485917678377935)
,p_query_column_id=>17
,p_column_alias=>'C015'
,p_column_display_sequence=>17
,p_column_heading=>'C015'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296485560253377935)
,p_query_column_id=>18
,p_column_alias=>'C016'
,p_column_display_sequence=>18
,p_column_heading=>'C016'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296485115171377935)
,p_query_column_id=>19
,p_column_alias=>'C017'
,p_column_display_sequence=>19
,p_column_heading=>'C017'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296484802895377935)
,p_query_column_id=>20
,p_column_alias=>'C018'
,p_column_display_sequence=>20
,p_column_heading=>'C018'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296484369216377933)
,p_query_column_id=>21
,p_column_alias=>'C019'
,p_column_display_sequence=>21
,p_column_heading=>'C019'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296483994312377933)
,p_query_column_id=>22
,p_column_alias=>'C020'
,p_column_display_sequence=>22
,p_column_heading=>'C020'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296483571722377932)
,p_query_column_id=>23
,p_column_alias=>'C021'
,p_column_display_sequence=>23
,p_column_heading=>'C021'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296483133885377932)
,p_query_column_id=>24
,p_column_alias=>'C022'
,p_column_display_sequence=>24
,p_column_heading=>'C022'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296482734214377931)
,p_query_column_id=>25
,p_column_alias=>'C023'
,p_column_display_sequence=>25
,p_column_heading=>'C023'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296482354163377931)
,p_query_column_id=>26
,p_column_alias=>'C024'
,p_column_display_sequence=>26
,p_column_heading=>'C024'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296481972807377930)
,p_query_column_id=>27
,p_column_alias=>'C025'
,p_column_display_sequence=>27
,p_column_heading=>'C025'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296481538570377930)
,p_query_column_id=>28
,p_column_alias=>'C026'
,p_column_display_sequence=>28
,p_column_heading=>'C026'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296481191705377929)
,p_query_column_id=>29
,p_column_alias=>'C027'
,p_column_display_sequence=>29
,p_column_heading=>'C027'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296480794667377929)
,p_query_column_id=>30
,p_column_alias=>'C028'
,p_column_display_sequence=>30
,p_column_heading=>'C028'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296480379141377928)
,p_query_column_id=>31
,p_column_alias=>'C029'
,p_column_display_sequence=>31
,p_column_heading=>'C029'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296479935255377928)
,p_query_column_id=>32
,p_column_alias=>'C030'
,p_column_display_sequence=>32
,p_column_heading=>'C030'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296479559598377927)
,p_query_column_id=>33
,p_column_alias=>'C031'
,p_column_display_sequence=>33
,p_column_heading=>'C031'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296479178977377927)
,p_query_column_id=>34
,p_column_alias=>'C032'
,p_column_display_sequence=>34
,p_column_heading=>'C032'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296478741267377927)
,p_query_column_id=>35
,p_column_alias=>'C033'
,p_column_display_sequence=>35
,p_column_heading=>'C033'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296478339062377927)
,p_query_column_id=>36
,p_column_alias=>'C034'
,p_column_display_sequence=>36
,p_column_heading=>'C034'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296477954775377926)
,p_query_column_id=>37
,p_column_alias=>'C035'
,p_column_display_sequence=>37
,p_column_heading=>'C035'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296477595685377923)
,p_query_column_id=>38
,p_column_alias=>'C036'
,p_column_display_sequence=>38
,p_column_heading=>'C036'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296477161075377922)
,p_query_column_id=>39
,p_column_alias=>'C037'
,p_column_display_sequence=>39
,p_column_heading=>'C037'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296476709933377922)
,p_query_column_id=>40
,p_column_alias=>'C038'
,p_column_display_sequence=>40
,p_column_heading=>'C038'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296476384111377921)
,p_query_column_id=>41
,p_column_alias=>'C040'
,p_column_display_sequence=>41
,p_column_heading=>'C040'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296476002440377921)
,p_query_column_id=>42
,p_column_alias=>'C041'
,p_column_display_sequence=>42
,p_column_heading=>'C041'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296475518475377921)
,p_query_column_id=>43
,p_column_alias=>'C042'
,p_column_display_sequence=>43
,p_column_heading=>'C042'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296475151064377920)
,p_query_column_id=>44
,p_column_alias=>'C043'
,p_column_display_sequence=>44
,p_column_heading=>'C043'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296474795105377916)
,p_query_column_id=>45
,p_column_alias=>'C044'
,p_column_display_sequence=>45
,p_column_heading=>'C044'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(3296474354488377916)
,p_query_column_id=>46
,p_column_alias=>'C045'
,p_column_display_sequence=>46
,p_column_heading=>'C045'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3296493371410377951)
,p_plug_name=>'Data Load Wizard Progress'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-WizardSteps--displayLabels'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_list_id=>wwv_flow_imp.id(3296519129093378010)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2010149141494510257
,p_translate_title=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3296473201577377914)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3296493026271377950)
,p_button_name=>'NEXT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Load Data'
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3296473454283377915)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3296493026271377950)
,p_button_name=>'PREVIOUS'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:7001:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3296473907694377915)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3296493026271377950)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3296472297326377913)
,p_branch_action=>'f?p=&APP_ID.:7003:&SESSION.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3296473201577377914)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3296472650762377914)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_LOAD_UPLOADED_DATA'
,p_process_name=>'Prepare Uploaded Data'
,p_attribute_01=>wwv_flow_imp.id(3296519361142378016)
,p_attribute_02=>'P7003_INSERT_COUNT'
,p_attribute_03=>'P7003_UPDATE_COUNT'
,p_attribute_04=>'P7003_ERROR_COUNT'
,p_attribute_05=>'P7003_REVIEW_COUNT'
,p_process_error_message=>'Data Loading Failed'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3296473201577377914)
,p_internal_uid=>3180688516906064209
);
wwv_flow_imp.component_end;
end;
/
