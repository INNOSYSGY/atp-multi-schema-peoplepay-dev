prompt --application/pages/page_12445
begin
--   Manifest
--     PAGE: 12445
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>12445
,p_name=>'rptUploadedData'
,p_alias=>'RPTUPLOADEDDATA'
,p_step_title=>'Upload Data'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3825576809620141424)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1057163590011011945)
,p_plug_name=>'Uploaded Data'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COLLECTION_NAME,',
'       SEQ_ID,',
'       C001,',
'       C002,',
'       C003,',
'       C004,',
'       C005,',
'       C006,',
'       C007,',
'       C008,',
'       C009,',
'       C010,',
'       C011,',
'       C012,',
'       C013,',
'       C014,',
'       C015,',
'       C016,',
'       C017,',
'       C018,',
'       C019,',
'       C020,',
'       C021,',
'       C022,',
'       C023,',
'       C024,',
'       C025,',
'       C026,',
'       C027,',
'       C028,',
'       C029,',
'       C030,',
'       C031,',
'       C032,',
'       C033,',
'       C034,',
'       C035,',
'       C036,',
'       C037,',
'       C038,',
'       C039,',
'       C040,',
'       C041,',
'       C042,',
'       C043,',
'       C044,',
'       C045,',
'       C046,',
'       C047,',
'       C048,',
'       C049,',
'       C050',
'from V_APEX_COLLECTIONS',
'where COLLECTION_NAME = ''IMPORTED_DATA'''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(1057163654361011946)
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
,p_owner=>'JAY.KHAN@INNOSYSGY.COM'
,p_internal_uid=>646584457568629381
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057163775825011947)
,p_db_column_name=>'COLLECTION_NAME'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Collection Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057163897635011948)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057163941192011949)
,p_db_column_name=>'C001'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C001'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164110307011950)
,p_db_column_name=>'C002'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164212796011951)
,p_db_column_name=>'C003'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164273373011952)
,p_db_column_name=>'C004'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'C004'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164373888011953)
,p_db_column_name=>'C005'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C005'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164528897011954)
,p_db_column_name=>'C006'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C006'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164594396011955)
,p_db_column_name=>'C007'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C007'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164645984011956)
,p_db_column_name=>'C008'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C008'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164754964011957)
,p_db_column_name=>'C009'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C009'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057164840026011958)
,p_db_column_name=>'C010'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C010'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165021394011959)
,p_db_column_name=>'C011'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C011'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165123584011960)
,p_db_column_name=>'C012'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C012'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165203738011961)
,p_db_column_name=>'C013'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C013'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165321871011962)
,p_db_column_name=>'C014'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C014'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165376840011963)
,p_db_column_name=>'C015'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C015'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165454456011964)
,p_db_column_name=>'C016'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'C016'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165632351011965)
,p_db_column_name=>'C017'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'C017'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165650979011966)
,p_db_column_name=>'C018'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'C018'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165773366011967)
,p_db_column_name=>'C019'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'C019'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165895058011968)
,p_db_column_name=>'C020'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C020'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057165943160011969)
,p_db_column_name=>'C021'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C021'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166091072011970)
,p_db_column_name=>'C022'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C022'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166233546011971)
,p_db_column_name=>'C023'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'C023'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166267008011972)
,p_db_column_name=>'C024'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'C024'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166357248011973)
,p_db_column_name=>'C025'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'C025'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166476441011974)
,p_db_column_name=>'C026'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'C026'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166587635011975)
,p_db_column_name=>'C027'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'C027'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166731303011976)
,p_db_column_name=>'C028'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'C028'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166766967011977)
,p_db_column_name=>'C029'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'C029'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166868973011978)
,p_db_column_name=>'C030'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'C030'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057166952107011979)
,p_db_column_name=>'C031'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'C031'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167076704011980)
,p_db_column_name=>'C032'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'C032'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167183531011981)
,p_db_column_name=>'C033'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'C033'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167309971011982)
,p_db_column_name=>'C034'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'C034'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167353548011983)
,p_db_column_name=>'C035'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'C035'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167453731011984)
,p_db_column_name=>'C036'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'C036'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167628890011985)
,p_db_column_name=>'C037'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'C037'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167722289011986)
,p_db_column_name=>'C038'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'C038'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167753882011987)
,p_db_column_name=>'C039'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'C039'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1057167845055011988)
,p_db_column_name=>'C040'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'C040'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086916708345528539)
,p_db_column_name=>'C041'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'C041'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086916758508528540)
,p_db_column_name=>'C042'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'C042'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086916883295528541)
,p_db_column_name=>'C043'
,p_display_order=>450
,p_column_identifier=>'AS'
,p_column_label=>'C043'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086916967189528542)
,p_db_column_name=>'C044'
,p_display_order=>460
,p_column_identifier=>'AT'
,p_column_label=>'C044'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086917077385528543)
,p_db_column_name=>'C045'
,p_display_order=>470
,p_column_identifier=>'AU'
,p_column_label=>'C045'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086917157121528544)
,p_db_column_name=>'C046'
,p_display_order=>480
,p_column_identifier=>'AV'
,p_column_label=>'C046'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086917258953528545)
,p_db_column_name=>'C047'
,p_display_order=>490
,p_column_identifier=>'AW'
,p_column_label=>'C047'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086917428570528546)
,p_db_column_name=>'C048'
,p_display_order=>500
,p_column_identifier=>'AX'
,p_column_label=>'C048'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086917458802528547)
,p_db_column_name=>'C049'
,p_display_order=>510
,p_column_identifier=>'AY'
,p_column_label=>'C049'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086917607882528548)
,p_db_column_name=>'C050'
,p_display_order=>520
,p_column_identifier=>'AZ'
,p_column_label=>'C050'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(1086941495058549400)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2207703'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'COLLECTION_NAME:SEQ_ID:C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015:C016:C017:C018:C019:C020:C021:C022:C023:C024:C025:C026:C027:C028:C029:C030:C031:C032:C033:C034:C035:C036:C037:C038:C039:C040:C041:C042:C043:C044:C045:C0'
||'46:C047:C048:C049:C050'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1086967547306819249)
,p_plug_name=>'New'
,p_parent_plug_id=>wwv_flow_imp.id(1057163590011011945)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select column_position, column_name, data_type, format_mask',
'  from apex_collections c, ',
'       table( apex_data_parser.get_columns( p_profile => c.clob001 ) )',
' where c.collection_name = ''FILE_PARSER_COLLECTION'' ',
'   and c.seq_id = 1'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
 p_id=>wwv_flow_imp.id(1086967799974819251)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'JAY.KHAN@INNOSYSGY.COM'
,p_internal_uid=>676388603182436686
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086968981338819263)
,p_db_column_name=>'COLUMN_POSITION'
,p_display_order=>10
,p_column_identifier=>'L'
,p_column_label=>'Column Position'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086969078825819264)
,p_db_column_name=>'COLUMN_NAME'
,p_display_order=>20
,p_column_identifier=>'M'
,p_column_label=>'Column Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086969228415819265)
,p_db_column_name=>'DATA_TYPE'
,p_display_order=>30
,p_column_identifier=>'N'
,p_column_label=>'Data Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(1086969305827819266)
,p_db_column_name=>'FORMAT_MASK'
,p_display_order=>40
,p_column_identifier=>'O'
,p_column_label=>'Format Mask'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(908502818433541027)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'423316'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575603376110504977)
,p_button_sequence=>30
,p_button_name=>'UPLOAD_DATA'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Upload Data'
,p_button_redirect_url=>'f?p=&APP_ID.:12449:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575604165148504974)
,p_button_sequence=>50
,p_button_name=>'FINISH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Finish'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575603739943504976)
,p_button_sequence=>40
,p_button_name=>'CLEAR_COLLECTION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Clear Collection'
,p_button_position=>'NEXT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(575609664558504946)
,p_branch_name=>'Go to Page 1465'
,p_branch_action=>'f?p=&APP_ID.:1465:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(575604165148504974)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1086951237122528396)
,p_name=>'P12445_ROWS_LOADED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1057163590011011945)
,p_prompt=>'Rows Loaded'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'.display_only'
,p_begin_on_new_line=>'N'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1086951327684528397)
,p_name=>'P12445_COLUMN_HEADERS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1057163590011011945)
,p_prompt=>'Column Header'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'.display_only'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575606341655504958)
,p_name=>'CLEAR_COLLECTION - Clicked'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575603739943504976)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575606813164504956)
,p_event_id=>wwv_flow_imp.id(575606341655504958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''IMPORTED_DATA'');',
':P12445_COLUMN_HEADERS := NULL;',
':P12445_ROWS_LOADED := NULL;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575607273280504954)
,p_event_id=>wwv_flow_imp.id(575606341655504958)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1057163590011011945)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575607655062504953)
,p_name=>'UPLOAD_DATA - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575603376110504977)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575608191525504951)
,p_event_id=>wwv_flow_imp.id(575607655062504953)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12445_ROWS_LOADED'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P12449_ROWS_LOADED'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575608652762504949)
,p_event_id=>wwv_flow_imp.id(575607655062504953)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12445_ROWS_LOADED'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P12449_ROWS_LOADED'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575609122653504948)
,p_event_id=>wwv_flow_imp.id(575607655062504953)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1057163590011011945)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(575605982481504959)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin ',
'',
'for i in (',
'',
'select COLLECTION_NAME,',
'       SEQ_ID,',
'       C001 payroll_id,',
'       C002 employeename,',
'       C003 INCOME_CODE,',
'       C004 hours,',
'       C005 dollars,',
'       C006 start_date,',
'       C007 end_date,',
'       C008 sheet_no      ',
'from V_APEX_COLLECTIONS',
'where COLLECTION_NAME = ''IMPORTED_DATA''',
'',
') loop',
'',
'',
'                insert into pa_pcf_posting_load (',
'                    payroll_id,',
'                    employeename,',
'                    income_code,',
'                    hours,',
'                    dollars,',
'                    payroll_start_date,',
'                    payroll_end_date,',
'                    sheet_no',
'',
'                ) values (',
'                    i.payroll_id,',
'                    i.employeename,',
'                    i.income_code,',
'                    i.hours,',
'                    i.dollars,',
'                    i.start_date,',
'                    i.end_date,',
'                    i.sheet_no',
'',
'                );',
'',
'                end loop;',
'',
'APEX_COLLECTION.CREATE_OR_TRUNCATE_COLLECTION( p_collection_name => ''IMPORTED_DATA'');',
':P245_COLUMN_HEADERS := NULL;',
':P245_ROWS_LOADED := NULL;',
'                end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(575604165148504974)
,p_internal_uid=>165026785689122394
);
wwv_flow_imp.component_end;
end;
/
