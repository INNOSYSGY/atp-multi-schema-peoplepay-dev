prompt --application/pages/page_00217
begin
--   Manifest
--     PAGE: 00217
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>217
,p_name=>'frmachoutputtextfile'
,p_alias=>'FRMACHOUTPUTTEXTFILE'
,p_step_title=>'ACH Output File'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3603892880938383493)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'    var textFile = null,',
'    makeTextFile = function (text) {',
'    var data = new Blob([text], {type: ''text/plain''});',
'    if (textFile !== null) {',
'    window.URL.revokeObjectURL(textFile);}',
'    textFile = window.URL.createObjectURL(data);',
'    return textFile;};',
'    var create = document.getElementById(''create''),',
'    textbox = document.getElementById(''TEST_ID''); ',
'',
'    var link = document.getElementById(''downloadlink'');',
'    link.href =          makeTextFile(textbox.innerHTML.replace(/&amp;/g,"&").trim());',
'    link.style.display = ''block'';',
'',
'})();',
'',
'',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(383304928492864859)
,p_plug_name=>'TABS'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>3223171818405608528
,p_plug_display_sequence=>110
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(370566677505532214)
,p_plug_name=>'Download Ach Output'
,p_title=>'Download File'
,p_parent_plug_id=>wwv_flow_imp.id(383304928492864859)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    f.ID,',
'    f.FILE_NAME,',
'    f.MIMETYPE,',
'    f.LAST_FILE_CHANGE,',
'    f.ACH_CONFIG_ID,',
'    f.EARNINGS_PERIOD_ID,',
'    f.ORG_ID,',
'    f.DATE_EFFECTIVE,',
'    f.CREATED,',
'    f.CREATED_BY,',
'',
'    -- Actual count ',
'    (SELECT COUNT(*)',
'     FROM pa_ach_dembank_output d',
'     WHERE d.org_id = :APP_ORG_ID',
'       AND d.earnings_period_id = :P217_EARNING_PERIOD',
'       AND TRUNC(d.date_effective) = TO_DATE(:P217_EFFECTIVE_DATE, ''dd-mon-yyyy'') ',
'    ) AS ACTUAL_COUNT,',
'',
'    -- Expected count ',
'    (SELECT COUNT(*)',
'     FROM pa_pmg_pay_disbursement p join hr_rcm_employee empl on empl.id=p.emp_id',
'       WHERE p.earnings_period_id = :P217_EARNING_PERIOD',
'       AND p.payment_mode = ''BANK''',
'       and empl.org_id = :APP_ORG_ID',
'    ) AS EXPECTED_COUNT,',
'    ''f?p=&APP_ID.:217:&SESSION.:DOWNLOAD_ACH:::P217_ID:'' || f.ID AS DOWNLOAD_LINK,',
'    null download',
'FROM',
'    PA_ACH_FILEOUTPUT f',
'WHERE',
'    f.ach_config_id = :P217_ACH_CONFIG_OPTION',
'    AND f.earnings_period_id = :P217_EARNING_PERIOD',
'    AND trunc(f.date_effective) = nvl(:P217_EFFECTIVE_DATE, trunc(f.date_effective))',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P217_ACH_CONFIG_OPTION,P217_EFFECTIVE_DATE,P217_EARNING_PERIOD'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Download File'
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
,p_plug_footer=>'<b style="color:blue">Note: </b>The Expected count is everyone found in the chosen earning period.'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(307409934644016856)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHEADLEY@INNOSYSGY.COM'
,p_internal_uid=>26121638244890230
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409838748016855)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409681412016854)
,p_db_column_name=>'FILE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409546915016852)
,p_db_column_name=>'MIMETYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Mimetype'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409397716016851)
,p_db_column_name=>'LAST_FILE_CHANGE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Last File Change'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409293557016850)
,p_db_column_name=>'ACH_CONFIG_ID'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ach Config Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409249217016849)
,p_db_column_name=>'EARNINGS_PERIOD_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Earnings Period Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409109145016848)
,p_db_column_name=>'ORG_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Org Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307409003148016847)
,p_db_column_name=>'DATE_EFFECTIVE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Date Effective'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307408916743016846)
,p_db_column_name=>'CREATED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Created'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(307408839437016845)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(387968186589287961)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>120
,p_column_identifier=>'R'
,p_column_label=>'Download'
,p_column_link=>'javascript:void(null);'
,p_column_linktext=>'  <span class="t-Icon fa fa-download downloadAch" data-id=#ID#  aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305034434864860)
,p_db_column_name=>'ACTUAL_COUNT'
,p_display_order=>130
,p_column_identifier=>'S'
,p_column_label=>'Actual Count in File'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305091764864861)
,p_db_column_name=>'EXPECTED_COUNT'
,p_display_order=>140
,p_column_identifier=>'T'
,p_column_label=>'Expected Count'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305187424864862)
,p_db_column_name=>'DOWNLOAD_LINK'
,p_display_order=>150
,p_column_identifier=>'U'
,p_column_label=>'Download Link'
,p_column_link=>'#DOWNLOAD_LINK#'
,p_column_linktext=>'  <span class="t-Icon fa fa-download downloadAch" data-id=#ID#  aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(306553920659764347)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'280698'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOWNLOAD:EXPECTED_COUNT:ACTUAL_COUNT:FILE_NAME:LAST_FILE_CHANGE:DATE_EFFECTIVE:'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(383305343246864863)
,p_plug_name=>'ACH ANOMOLIES'
,p_title=>'Anomalies'
,p_parent_plug_id=>wwv_flow_imp.id(383304928492864859)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'    SELECT',
'        p.emp_id,',
'        e.full_name AS employee_name,',
'',
'        -- Bank code',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (to_bank IS NULL OR TRIM(to_bank) = ''0'') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (to_bank IS NULL OR TRIM(to_bank) = ''0'') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_bank_code,',
'',
'        -- Branch code',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (to_branch IS NULL OR TRIM(to_branch) = ''0'') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (to_branch IS NULL OR TRIM(to_branch) = ''0'') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_branch_code,',
'',
'        -- Account type',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_account_type,',
'',
'        -- Account number',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (to_acntno IS NULL OR TRIM(to_acntno) = '''') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (to_acntno IS NULL OR TRIM(to_acntno) = '''') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_account_number,',
'',
'        -- Amount',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (amount IS NULL OR amount <= 0) THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (amount IS NULL OR amount <= 0) THEN ''Yes''',
'            ELSE ''No''',
'        END AS invalid_amount,',
'',
'        -- Description',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (description IS NULL OR TRIM(description) = '''') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (description IS NULL OR TRIM(description) = '''') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_description,',
'',
'        -- DR/CR',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (dr_cr IS NULL OR TRIM(dr_cr) = '''') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (dr_cr IS NULL OR TRIM(dr_cr) = '''') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_drcr,',
'',
'        -- Bene Name',
'        CASE ',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (TOBENENAME IS NULL OR TRIM(TOBENENAME) = '''') THEN ''Yes''',
'            WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (TOBENENAME IS NULL OR TRIM(TOBENENAME) = '''') THEN ''Yes''',
'            ELSE ''No''',
'        END AS missing_name,',
'',
'        -- DEMBANK-only fields',
'        CASE WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (TOBENEADDR IS NULL OR TRIM(TOBENEADDR) = ''NO_ADDRESS'') THEN ''Yes'' ELSE ''No'' END AS missing_address,',
'        CASE WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (TOBENECONTACT IS NULL OR TRIM(TOBENECONTACT) = ''NO_CONTACT'') THEN ''Yes'' ELSE ''No'' END AS missing_contact,',
'        CASE WHEN :P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (category IS NULL OR TRIM(category) = '''') THEN ''Yes'' ELSE ''No'' END AS missing_category',
'',
'    FROM pa_ach_dembank_output p',
'    JOIN hr_rcm_employee e ON e.id = p.emp_id',
'    WHERE p.org_id = :APP_ORG_ID',
'      AND p.earnings_period_id = :P217_EARNING_PERIOD',
'      AND TRUNC(p.date_effective) = TO_DATE(:P217_EFFECTIVE_DATE,''dd-mon-yyyy'')',
'      AND (',
'            (:P217_ACH_CONFIG_NAME LIKE ''%RBGL%'' AND (',
'                to_bank IS NULL OR TRIM(to_bank) = ''0'' OR',
'                to_branch IS NULL OR TRIM(to_branch) = ''0'' OR',
'                to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'' OR',
'                to_acntno IS NULL OR TRIM(to_acntno) = '''' OR',
'                amount IS NULL OR amount <= 0 OR',
'                description IS NULL OR TRIM(description) = '''' OR',
'                dr_cr IS NULL OR TRIM(dr_cr) = '''' OR',
'                TOBENENAME IS NULL OR TRIM(TOBENENAME) = ''''',
'            ))',
'            OR',
'            (:P217_ACH_CONFIG_NAME LIKE ''%DEMBANK%'' AND (',
'                to_bank IS NULL OR TRIM(to_bank) = ''0'' OR',
'                to_branch IS NULL OR TRIM(to_branch) = ''0'' OR',
'                to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'' OR',
'                to_acntno IS NULL OR TRIM(to_acntno) = '''' OR',
'                amount IS NULL OR amount <= 0 OR',
'                description IS NULL OR TRIM(description) = '''' OR',
'                dr_cr IS NULL OR TRIM(dr_cr) = '''' OR',
'                TOBENENAME IS NULL OR TRIM(TOBENENAME) = '''' OR',
'                TOBENEADDR IS NULL OR TRIM(TOBENEADDR) = '''' OR',
'                TOBENECONTACT IS NULL OR TRIM(TOBENECONTACT) = ''NO_CONTACT'' OR',
'                category IS NULL OR TRIM(category) = '''' ',
'            ))',
'      )',
')',
'ORDER BY employee_name',
'',
'',
'/*  ',
'    SELECT *',
'    FROM (',
'        SELECT',
'            p.emp_id,',
'            e.full_name AS employee_name,',
'            CASE WHEN to_bank IS NULL OR TRIM(to_bank) = '''' THEN ''Yes'' ELSE ''No'' END AS missing_bank_code,',
'            CASE WHEN to_branch IS NULL OR TRIM(to_branch) = '''' THEN ''Yes'' ELSE ''No'' END AS missing_branch_code,',
'            CASE ',
'                WHEN to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'' ',
'                THEN ''Yes'' ELSE ''No'' ',
'            END AS missing_account_type,',
'            CASE WHEN to_acntno IS NULL OR TRIM(to_acntno) = '''' THEN ''Yes'' ELSE ''No'' END AS missing_account_number,',
'            CASE WHEN amount IS NULL OR amount <= 0 THEN ''Yes'' ELSE ''No'' END AS invalid_amount,',
'            CASE WHEN TOBENENAME IS NULL OR TRIM(TOBENENAME) = '''' THEN ''Yes'' ELSE ''No'' END AS missing_name',
'        FROM',
'            pa_ach_dembank_output p',
'        JOIN ',
'            hr_rcm_employee e ON e.id = p.emp_id',
'        WHERE',
'            p.org_id = :APP_ORG_ID',
'            AND p.earnings_period_id = :P217_EARNING_PERIOD',
'            AND TRUNC(p.date_effective) = TO_DATE(:P217_EFFECTIVE_DATE, ''dd-mon-yyyy'')',
'            AND (',
'                to_bank IS NULL OR TRIM(to_bank) = '''' OR',
'                to_branch IS NULL OR TRIM(to_branch) = '''' OR',
'                to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'' OR',
'                to_acntno IS NULL OR TRIM(to_acntno) = '''' OR',
'                amount IS NULL OR amount <= 0 OR',
'                TOBENENAME IS NULL OR TRIM(TOBENENAME) = ''''',
'            )',
'        ',
'        UNION ALL',
'        ',
'        SELECT',
'            NULL AS emp_id,',
'            ''All Employees in ACH are good'' AS employee_name,',
'            ''No'' AS missing_bank_code,',
'            ''No'' AS missing_branch_code,',
'            ''No'' AS missing_account_type,',
'            ''No'' AS missing_account_number,',
'            ''No'' AS invalid_amount,',
'            ''No'' AS missing_name',
'        FROM dual',
'        WHERE NOT EXISTS (',
'            SELECT 1',
'            FROM pa_ach_dembank_output p',
'            WHERE p.org_id = :APP_ORG_ID',
'            AND p.earnings_period_id = :P217_EARNING_PERIOD',
'            AND TRUNC(p.date_effective) = TO_DATE(:P217_EFFECTIVE_DATE, ''dd-mon-yyyy'')',
'            AND (',
'                to_bank IS NULL OR TRIM(to_bank) = '''' OR',
'                to_branch IS NULL OR TRIM(to_branch) = '''' OR',
'                to_type IS NULL OR TRIM(to_type) = '''' OR to_type = ''MISSING_ACCTYPE'' OR',
'                to_acntno IS NULL OR TRIM(to_acntno) = '''' OR',
'                amount IS NULL OR amount <= 0 OR',
'                TOBENENAME IS NULL OR TRIM(TOBENENAME) = ''''',
'            )',
'        )',
'    )',
'    ORDER BY employee_name;*/',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P217_EARNING_PERIOD,P217_EFFECTIVE_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Anomalies'
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
,p_plug_footer=>'<b style="color:blue">Note:</b>This report shows if any employees have issues in the File Output. If there''s no issues, the report will be blank'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(383305373226864864)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AHEADLEY@INNOSYSGY.COM'
,p_internal_uid=>194410105116240230
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305506071864865)
,p_db_column_name=>'EMP_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Emp Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305608143864866)
,p_db_column_name=>'EMPLOYEE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Employee Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305735862864867)
,p_db_column_name=>'MISSING_BANK_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Missing Bank Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305861203864868)
,p_db_column_name=>'MISSING_BRANCH_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Missing Branch Code'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305961115864869)
,p_db_column_name=>'MISSING_ACCOUNT_TYPE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Missing Account Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383305974480864870)
,p_db_column_name=>'MISSING_ACCOUNT_NUMBER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Missing Account Number'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383306130229864871)
,p_db_column_name=>'INVALID_AMOUNT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Invalid Amount'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(383306224296864872)
,p_db_column_name=>'MISSING_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Missing Name'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130458348737198128)
,p_db_column_name=>'MISSING_DESCRIPTION'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Missing Description'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130458430402198129)
,p_db_column_name=>'MISSING_DRCR'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Missing Drcr'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130458534371198130)
,p_db_column_name=>'MISSING_ADDRESS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Missing Address'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130458637019198131)
,p_db_column_name=>'MISSING_CONTACT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Missing Contact'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(130458790681198132)
,p_db_column_name=>'MISSING_CATEGORY'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Missing Category'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3352384996346586981)
,p_plug_name=>'ACH Text File'
,p_region_template_options=>'#DEFAULT#:t-Region--accent10:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*',
'Date',
'',
'*/',
'--HTP.p (''<a download="ach_test.txt" id="downloadlink"  ><b>Download as txt</b></a> <br> <br> <br>''); ',
'HTP.p (''<a download="ACH_''||:P217_ACH_FILENAME||''.ach" id="downloadlink"  class="t-Button t-Button--success"><b>Download  as ACH</b></a> <br> <br> <br>''); ',
'',
'',
'DECLARE',
'  ',
'   v_text     CLOB;',
'   v_count  number :=0;',
'   v_id number :=0;',
'   v_batch_id number :=0;',
'   v_block_count number:=0;',
'BEGIN',
'',
'-- SELECT  ',
'--         count(id) into v_count',
'-- from PA_ACH_FILE_HEADER;',
'',
'HTP.p (''<span id="TEST_ID">'');      ',
' -- file header starts here',
' ',
'      FOR i',
'         IN (',
'SELECT',
'id,',
'    record_type_code',
'    ||',
'    priority_code',
'    ||',
'    immediate_destination',
'    ||',
'    immediate_origin',
'    ||',
'    file_creation_date',
'    ||',
'    file_creation_time',
'    ||',
'    file_id_modifier',
'    ||record_size||blocking_factor',
'    ||format_code||immediate_destination_name||immediate_origin_name||reference_code line1,',
'    ',
'    ''File_header'' as Record_name',
'    ',
'FROM',
'    pa_ach_file_header',
'where org_id = :APP_ORG_ID',
'',
'  )',
'      LOOP',
'        v_text := i.line1;',
'',
'     ',
'     HTP.p (''</n>''||''''|| replace (replace (UPPER(v_text), chr (94), ''''), chr (94), '' '')|| '''');',
'   v_count:=v_count+1;',
'    v_id:=i.id;',
'',
'',
'-- batch header record starts here',
'for i in (',
'',
'SELECT',
'    id,',
'    record_type_code||',
'    service_class_code||',
'    company_name||',
'    company_discas_data||',
'    company_id||',
'    standard_entry_class_code||',
'    company_entry_desc||',
'    company_descriptive_date||',
'    effective_entry_date||',
'    settlement_date||',
'    originator_status_code||',
'    originator_dfi_code||',
'    batch_no   line1,',
'    ''batch_header_record'' as Record_name',
'FROM',
'    pa_ach_batch_header_record',
'where file_header_id = v_id',
'AND org_id = :APP_ORG_ID',
')',
'loop',
'',
'        v_text := i.line1;',
'',
'     ',
'    HTP.p (''</n>''||''''|| replace (replace (UPPER(v_text), chr (94), ''''), chr (94), '' '')|| '''');',
'     v_id:=i.id;',
'     v_batch_id:=i.id;',
'     v_count:=v_count+1;       ',
'',
'-- entry detail starts here',
'          for i in (',
'       ',
'    SELECT',
'    id,',
'    record_type_code||',
'    transaction_code||',
'    receiving_dfi_id||',
'    check_digit||',
'    dfi_account_number||',
'    trans_amount||',
'    identification_no||',
'    ccd_ppd_name||',
'    discretionary_data||',
'    addenda_record_indicator||',
'    trace_number  Description,',
'    ''entry_detail_records'' as Record_name',
'FROM',
'    pa_ach_entry_detail_record',
'where  batch_header_id = v_id ',
'AND org_id = :APP_ORG_ID',
'order by  (trace_number) asc  )',
'     loop',
'        v_text := i.Description;',
'         ',
'      /*   HTP.p ('''' || replace(v_text,''&amp;'',''&'') || '''');*/',
'     HTP.p (''</n>''||''''|| replace (replace (UPPER(v_text), chr (94), ''''), chr (94), '' '')|| '''');',
'    v_count:=v_count+1;',
'    v_id:=i.id;',
'',
'',
'    for i in(',
'',
'        SELECT',
'    id,',
'    record_type_code||',
'    addenda_type_code||',
'    payment_related_info||',
'    addenda_sequence_no||',
'    entry_detail_sequence_no Description',
'    ',
'FROM',
'    pa_ach_entry_addenda_record',
'where entry_detail_id = v_id ',
'and org_id = :APP_ORG_ID   ',
'',
'    )',
'    loop',
'    v_text := i.Description;',
'     HTP.p (''</n>''||''''|| replace (replace (UPPER(v_text), chr (94), ''''), chr (94), '' '')|| '''');',
'    v_count:=v_count+1;',
'    ',
'    end loop;',
'',
'',
'',
'     end loop;',
'     ',
'',
'end loop;',
'',
'    for i in (',
'        SELECT',
'    id,',
'    record_type_code||',
'    service_class_code||',
'    addenda_count||',
'    entry_hash||',
'    debit_entry_totamt||',
'    credit_entry_totamt||',
'    company_identification||',
'    message_auth_code||',
'    reserved||',
'    originating_dfi_id||',
'    batch_no description',
'FROM',
'    pa_ach_company_batch_control',
' where batch_header_id = v_batch_id ',
' and org_id = :APP_ORG_ID ',
'',
'',
'    )',
'    loop',
'    v_text := i.Description;',
'     HTP.p (''</n>''||''''|| replace (replace (UPPER(v_text), chr (94), ''''), chr (94), '' '')|| '''');',
'    v_count:=v_count+1;',
'    ',
'    end loop;',
'     ',
'    v_block_count :=pkg_ach.fn_get_block_count(v_count); ',
'     v_block_count := v_block_count/10;',
'',
'     update pa_ach_file_control_record set block_count =lpad(v_block_count,6,''0'')',
'     where id =(select id from pa_ach_file_control_record where org_id = :APP_ORG_ID)',
'     and org_id = :APP_ORG_ID;',
'     commit; ',
'',
'     SELECT',
'    record_type_code||',
'    batch_count_number||',
'    block_count||',
'    addenda_count||',
'    entry_hash||',
'    debit_entry_totamt_file||',
'    credit_entry_totamt_file||',
'    reserved into v_text',
'FROM',
'    pa_ach_file_control_record',
'    where org_id = :APP_ORG_ID;',
'',
'    HTP.p (''</n>''||''''|| replace (replace (UPPER(v_text), chr (94), ''''), chr (94), '' '')|| '''');',
'    v_count:=v_count+1;',
'       ',
'      END LOOP;',
'',
'    ',
'',
'    LOOP',
'    if REMAINDER(v_count,10) <> 0 then ',
'    HTP.p (''9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999</n>'');',
'    v_count:= v_count+1;',
'    else',
'    exit;',
'    -- HTP.p (''9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999</n>'');',
'      end if;',
'    --  when REMAINDER(v_count,10) = 0;',
'   end loop;',
'  ',
'',
'',
'      HTP.p (''</span>'');',
'',
'END;',
'',
'',
''))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3380429175969250102)
,p_plug_name=>'Parameters'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3384958213364413374)
,p_plug_name=>'Warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<b>Remember the format that you see in the region below is not correct but if you download the file and view it then it will be in the correct format.',
'    You can find the file to download below this region, once generated.',
'</b>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3384957028311413362)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_button_name=>'GENERATE_ACH_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Generate ACH File'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3384957533994413367)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_button_name=>'Purge_Tables'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Purge Tables'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3382121578338649288)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_button_name=>'ARCHIVE_FILES'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Archive Files'
,p_button_position=>'EDIT'
,p_button_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(130458050453198125)
,p_name=>'P217_ACH_CONFIG_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(383304928492864859)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(308049701338143081)
,p_name=>'P217_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID',
'FROM',
'    PA_ACH_FILEOUTPUT',
'WHERE',
'    ach_config_id = :P217_ACH_CONFIG_OPTION',
'    AND earnings_period_id = :P217_EARNING_PERIOD',
'    AND trunc(date_effective) = nvl(',
'        :P217_EFFECTIVE_DATE,',
'        trunc(date_effective)',
'    )'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3277204042894922471)
,p_name=>'P217_PAYMENT_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_item_default=>'select null from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Payment Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP(a.PAYMENT_TYPE) A,a.PAYMENT_TYPE B',
'FROM VW_USERACCESS A'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Payment Type--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3282981180103752516)
,p_name=>'P217_ORGANISATION_PERIODS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_item_default=>'select null from dual'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Periods'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT a,B',
'FROM',
'    (  SELECT DISTINCT TO_CHAR(END_DATE,''MONTH'')||'' ''||company_year A',
'      , company_year||EXTRACT(month FROM END_DATE) b',
'      ,  company_year C, EXTRACT(month FROM END_DATE) D',
'      FROM PA_PCF_EARNINGPERIOD  v join HR_HCF_COMPANYYEAR x on x.id = v.company_year_id',
'      where  exists ( ',
'              select 1',
'              FROM VW_USERACCESS A ',
'              where v.org_id=a.org_id      ',
'              and v.payment_type=a.payment_type ',
'              and v.employment_class_id=a.employment_class_id ',
'                    )',
'      )',
'ORDER BY C DESC, D DESC    '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---ALL--'
,p_lov_null_value=>'1'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3352385117558586982)
,p_name=>'P217_ACH_FILENAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    record_type_code',
'    ||',
'    priority_code',
'    ||',
'    immediate_destination',
'    ||',
'    file_creation_date',
'    ||',
'    file_id_modifier',
'   line1,',
'    ',
'    ''File_header'' as Record_name',
'    ',
'FROM',
'    pa_ach_file_header'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3380429267965250103)
,p_name=>'P217_ACH_CONFIG_OPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_prompt=>'Config Option'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'ACH_CONFIG_OPTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    config_name,',
'    id',
'FROM pa_ach_config',
'WHERE ( end_date IS NULL OR end_date <= current_date )',
'AND ORG_ID = :APP_ORG_ID',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select ACH Config Options--'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(3380429378389250104)
,p_name=>'P217_EARNING_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_prompt=>'Earning Period'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'  UPPER( SHORT_NAME)',
'  ||'' ''||case when upper(INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE''))) =''MULTIOPTPAYROLL'' then replace(earn_prd_dtl_option, ''_'', '' '')',
'    else INITCAP(PKG_GLOBAL_FNTS.GET_LOOKUP_COL(EMPLOYMENT_CLASS_ID,''TABLE_VALUE'')) end ',
'   ||'' ''||a.PAYMENT_TYPE',
'   || '': '' || TO_CHAR(a.START_DATE ,''DD-Mon-YYYY'')',
'   || '' -- '' || TO_CHAR(A.END_DATE,''DD-Mon-YYYY'') ||'' for ''||earnings_type||'' ''||initcap(replace(compute_gross,''_'','' '')) AS EXPR1,A.ID',
'FROM PA_PCF_EARNINGPERIOD a  ',
'join HR_HCF_ORGANISATION g on g.id = a.org_id',
'join HR_HCF_COMPANYYEAR v on v.id = A.company_year_id',
'where a.org_id = :APP_ORG_ID',
'AND v.company_year||EXTRACT(month FROM a.END_DATE)=DECODE(:P217_ORGANISATION_PERIODS,''1'',v.company_year||EXTRACT(month FROM A.END_DATE),:P217_ORGANISATION_PERIODS)',
'AND UPPER(a.PAYMENT_TYPE) = NVL(UPPER(:P217_PAYMENT_TYPE),UPPER(a.PAYMENT_TYPE))',
'ORDER BY a.org_id,  a.start_date DESC'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Earning Period--'
,p_lov_cascade_parent_items=>'P217_ORGANISATION_PERIODS,P217_PAYMENT_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>3031561932232085882
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3380429496432250105)
,p_name=>'P217_EFFECTIVE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_prompt=>'Effective Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_field_template=>3031561932232085882
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
 p_id=>wwv_flow_imp.id(3380429658319250106)
,p_name=>'P217_USE_ADDENDA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_prompt=>'Use Addenda?'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>3031561666792084173
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'No',
  'off_value', '0',
  'on_label', 'Yes',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3387836567348180860)
,p_name=>'P217_EMPLOYEE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_prompt=>'Employee'
,p_display_as=>'NATIVE_SHUTTLE'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P217_BANK is null then ',
'return ''SELECT (SELECT initcap(first_name || '''' '''' || surname) ',
'        || '''' ('''' || ',
'        (select e.emp_company_no from hr_rcm_employee e where e.id = c.emp_id)',
'        ||'''')''''',
'        FROM hr_rcm_individual A JOIN hr_rcm_employee B ON A.ID=B.IND_ID WHERE B.ID=C.EMP_ID) ||''''--''''||initcap(BANK_BRANCH_NAME) DISPLAY, C.EMP_ID RETURN',
'FROM',
'    pa_pmg_pay_disbursement c join hr_rcm_employee emp on c.emp_id=emp.id',
'WHERE',
'        c.earnings_period_id = :P217_EARNING_PERIOD',
'and payment_mode = ''''BANK''''',
'and emp.org_id = :APP_ORG_ID',
''';',
'   ',
'else',
'',
'return ''SELECT (SELECT initcap(first_name || '''' '''' || surname) ',
'        || '''' ('''' || ',
'        (select e.emp_company_no from hr_rcm_employee e where e.id = c.emp_id)',
'        ||'''')''''',
'        FROM hr_rcm_individual A JOIN hr_rcm_employee B ON A.ID=B.IND_ID WHERE B.ID=C.EMP_ID) ||''''--''''||initcap(BANK_BRANCH_NAME) DISPLAY, C.EMP_ID RETURN',
'FROM',
'    pa_pmg_pay_disbursement c join hr_rcm_employee emp on c.emp_id=emp.id',
'WHERE',
'        c.earnings_period_id = :P217_EARNING_PERIOD',
'    and payment_mode = ''''BANK''''',
'    and emp.org_id = :APP_ORG_ID',
'    AND bank_branch_id IN (',
'        SELECT',
'            a_field',
'        FROM',
'            XMLTABLE ( ''''/root/e/text()''''',
'                    PASSING xmltype(''''<root><e>''''',
'                                    || replace( nvl(:P217_BANK,bank_branch_id) , '''':'''', ''''</e><e>'''')',
'                                       || ''''</e></root>'''')',
'                COLUMNS',
'                    a_field VARCHAR2(32767) PATH ''''/''''',
'            )',
'    )'';',
'end if;'))
,p_lov_cascade_parent_items=>'P217_EARNING_PERIOD,P217_BANK'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>15
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'show_controls', 'ALL')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3387836747546180861)
,p_name=>'P217_BANK'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3380429175969250102)
,p_prompt=>'Bank'
,p_display_as=>'PLUGIN_BE.CTB.SELECT2'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT INITCAP(a.bank_branch_name) DISPLAY, a.bank_branch_ID RETURN',
'FROM pa_pmg_pay_disbursement a join hr_rcm_employee b on a.emp_id=b.id',
'WHERE a.earnings_period_id = :P217_EARNING_PERIOD',
'and b.org_id = :APP_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Choose Bank--'
,p_lov_cascade_parent_items=>'P217_EARNING_PERIOD'
,p_ajax_optimize_refresh=>'N'
,p_field_template=>3031561666792084173
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'MULTI',
  'attribute_06', 'Y',
  'attribute_08', 'CIC',
  'attribute_10', '100%',
  'attribute_14', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3384957883991413371)
,p_validation_name=>'check effective date'
,p_validation_sequence=>10
,p_validation=>'P217_EFFECTIVE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Effective Date cannot be empty!'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3384957028311413362)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3384958009702413372)
,p_validation_name=>'check config'
,p_validation_sequence=>20
,p_validation=>'P217_ACH_CONFIG_OPTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Configuration Option cannot be empty!'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3384957028311413362)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(3384958116285413373)
,p_validation_name=>'check earning period'
,p_validation_sequence=>30
,p_validation=>'P217_EARNING_PERIOD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Earning Period cannot be empty!'
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_imp.id(3384957028311413362)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(387967561761287955)
,p_name=>'d_set'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P217_EFFECTIVE_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(383306334860864873)
,p_event_id=>wwv_flow_imp.id(387967561761287955)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Clear ACH Data'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_CONFIG_ID        NUMBER;',
'  IN_ORG_ID           NUMBER;',
'  IN_EARN_PRD         NUMBER;',
'  IN_EFFECTIVE_DATE   DATE;',
'  IN_ADDENDA_RECORD   VARCHAR2(200);',
'  IN_EMP_ID           clob;',
'BEGIN',
'  IN_CONFIG_ID := :P217_ACH_CONFIG_OPTION;',
'  IN_ORG_ID := :APP_ORG_ID;',
'  IN_EARN_PRD := :P217_EARNING_PERIOD;',
'  IN_EFFECTIVE_DATE := :P217_EFFECTIVE_DATE;',
'  IN_ADDENDA_RECORD := :P217_USE_ADDENDA;',
'  IN_EMP_ID := :P217_EMPLOYEE;',
'',
'  -- Clean up any previous data',
'  pkg_ach.delete_ach_data(',
'    in_org_id         => IN_ORG_ID,',
'    in_earn_prd       => IN_EARN_PRD,',
'    in_effective_date => TO_CHAR(IN_EFFECTIVE_DATE, ''dd-mon-yyyy'')',
'  );',
'END;'))
,p_attribute_02=>'P217_EARNING_PERIOD,P217_EFFECTIVE_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(387967648145287956)
,p_event_id=>wwv_flow_imp.id(387967561761287955)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(370566677505532214)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(383306394370864874)
,p_event_id=>wwv_flow_imp.id(387967561761287955)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(383305343246864863)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(387967928280287958)
,p_name=>'downloadAchFile'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.downloadAch'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(387968014715287959)
,p_event_id=>wwv_flow_imp.id(387967928280287958)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'PLUGIN_UC_DOWNLOAD_FILES_DA'
,p_attribute_01=>'sql'
,p_attribute_02=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT',
'      file_name    as file_name',
'    , MIMETYPE    as file_mime_type',
'    , FILE_CONTENTS as file_content_blob',
'FROM',
'    PA_ACH_FILEOUTPUT',
'WHERE',
'    ach_config_id = :P217_ACH_CONFIG_OPTION',
'    AND earnings_period_id = :P217_EARNING_PERIOD',
'    AND trunc(date_effective) = nvl(',
'        :P217_EFFECTIVE_DATE,',
'        trunc(date_effective)',
'    )'))
,p_attribute_05=>'P217_ACH_CONFIG_OPTION,P217_EARNING_PERIOD,P217_EFFECTIVE_DATE'
,p_attribute_09=>'attachment'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(130458171125198126)
,p_name=>'set_config_name'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P217_ACH_CONFIG_OPTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(130458232156198127)
,p_event_id=>wwv_flow_imp.id(130458171125198126)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P217_ACH_CONFIG_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select config_name ',
'  from PA_ACH_CONFIG',
'  where id = :P217_ACH_CONFIG_OPTION;'))
,p_attribute_07=>'P217_ACH_CONFIG_OPTION'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3384956958346413361)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ACH GENERATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  IN_CONFIG_ID        NUMBER;',
'  IN_ORG_ID           NUMBER;',
'  IN_EARN_PRD         NUMBER;',
'  IN_EFFECTIVE_DATE   DATE;',
'  IN_ADDENDA_RECORD   VARCHAR2(200);',
'  IN_EMP_ID           clob;',
'  v_sqlcode varchar2(200); ',
'  v_sqlerrm varchar2(200); ',
'  v_out_return VARCHAR2(1); ',
'  v_config varchar2(200);',
'BEGIN',
'',
'  IN_CONFIG_ID := :P217_ACH_CONFIG_OPTION;',
'  IN_ORG_ID := :APP_ORG_ID;',
'  IN_EARN_PRD := :P217_EARNING_PERIOD;',
'  IN_EFFECTIVE_DATE := :P217_EFFECTIVE_DATE;',
'  IN_ADDENDA_RECORD := :P217_USE_ADDENDA;',
'  IN_EMP_ID := :P217_EMPLOYEE;',
'',
'  select config_name into v_config',
'  from PA_ACH_CONFIG',
'  where id = :P217_ACH_CONFIG_OPTION;',
'',
'  -- Step 1: Clean up any previous data',
'  pkg_ach.delete_ach_data(',
'    in_org_id         => IN_ORG_ID,',
'    in_earn_prd       => IN_EARN_PRD,',
'    in_effective_date => TO_CHAR(IN_EFFECTIVE_DATE, ''dd-mon-yyyy'')',
'  );',
'',
'if trim(v_config) like ''%RBGL%'' then',
'  -- Step 2: Generate ACH data',
'      pkg_ach.prcd_ach_rbgl(',
'        IN_CONFIG_ID        => IN_CONFIG_ID,',
'        IN_ORG_ID           => IN_ORG_ID,',
'        IN_EARN_PRD         => IN_EARN_PRD,',
'        IN_EFFECTIVE_DATE   => IN_EFFECTIVE_DATE,',
'        IN_ADDENDA_RECORD   => IN_ADDENDA_RECORD,',
'        IN_EMP_ID           => IN_EMP_ID',
'      );',
'',
'      -- Step 3: Export to RBGL table',
'      pkg_ach.prcd_export_to_rbgl_table(',
'        IN_CONFIG_ID        => IN_CONFIG_ID,',
'        IN_ORG_ID           => IN_ORG_ID,',
'        IN_EARN_PRD         => IN_EARN_PRD,',
'        IN_EFFECTIVE_DATE   => IN_EFFECTIVE_DATE,',
'        IN_ADDENDA_RECORD   => IN_ADDENDA_RECORD,',
'        IN_EMP_ID           => IN_EMP_ID',
'      );',
'elsif trim(v_config) like ''%DEMBANK%'' then',
'    -- Generate ACH data for DEMBANK',
'    pkg_ach.prcd_ach_dembank(',
'        IN_CONFIG_ID        => IN_CONFIG_ID,',
'        IN_ORG_ID           => IN_ORG_ID,',
'        IN_EARN_PRD         => IN_EARN_PRD,',
'        IN_EFFECTIVE_DATE   => IN_EFFECTIVE_DATE,',
'        IN_ADDENDA_RECORD   => IN_ADDENDA_RECORD,',
'        IN_EMP_ID           => IN_EMP_ID',
'      );',
'',
'      -- Export to DEMBANK table',
'      pkg_ach.PRCD_EXPORT_TO_ACH_TABLE(',
'        IN_CONFIG_ID        => IN_CONFIG_ID,',
'        IN_ORG_ID           => IN_ORG_ID,',
'        IN_EARN_PRD         => IN_EARN_PRD,',
'        IN_EFFECTIVE_DATE   => IN_EFFECTIVE_DATE,',
'        IN_ADDENDA_RECORD   => IN_ADDENDA_RECORD,',
'        IN_EMP_ID           => IN_EMP_ID',
'      );',
'end if;',
'  -- apex_application.g_print_success_message := ''ACH process and export complete for Earning Period'';',
'',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    -- Log the error',
'    APEX_DEBUG.ERROR(''Error during ACH generation: '' || SQLERRM);',
'',
'        v_sqlcode := sqlcode;',
'        v_sqlerrm := sqlerrm;',
'        v_out_return:=''N'';',
'        pkg_errorlogger.insert_err(',
'                                    v_sqlcode,',
'                                    v_sqlerrm,',
'                                    ''error occured while executing PKG_ACH.prcd_ach_rbgl or PKG_ACH.prcd_export_to_rbgl_table'',',
'                                    ''PKG_ACH'',',
'                                    ''prcd_ach_rbgl-prcd_export_to_rbgl_table__or__prcd_ach_dembank-PRCD_EXPORT_TO_ACH_TABLE'',',
'                                    ''ACH'',',
'                                   null',
'                                );',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3384957028311413362)
,p_process_success_message=>'Data from the Earnings Period and Configuration selected has been generated successfully in the ACH format'
,p_internal_uid=>2963164965148416787
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3384957657208413368)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAN DATA FROM TABLES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'delete from PA_ACH_FILE_HEADER WHERE ORG_ID = :APP_ORG_ID;',
'delete from PA_ACH_BATCH_HEADER_RECORD WHERE ORG_ID = :APP_ORG_ID;',
'delete from PA_ACH_ENTRY_DETAIL_RECORD WHERE ORG_ID = :APP_ORG_ID;',
'delete from PA_ACH_COMPANY_BATCH_CONTROL WHERE ORG_ID = :APP_ORG_ID;',
'delete from PA_ACH_FILE_CONTROL_RECORD WHERE ORG_ID = :APP_ORG_ID;',
'delete from PA_ACH_ENTRY_ADDENDA_RECORD WHERE ORG_ID = :APP_ORG_ID;',
'commit;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3384957533994413367)
,p_process_success_message=>'Data from all ACH Tables has been Deleted. You can try generating the data again.'
,p_internal_uid=>2963165664010416794
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3382121683963649289)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ARCHIVE_ACH_FILES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    in_config_id        NUMBER;',
'    in_org_id           NUMBER;',
'    in_earn_prd         NUMBER;',
'    in_effective_date   DATE;',
'    in_entered_by       VARCHAR2(500);',
'begin',
'',
' PKG_ACH.PRCD_ARCHIVE_ACH_FILES(',
'        in_config_id      => :P217_ACH_CONFIG_OPTION,              ',
'        in_org_id         => :APP_ORG_ID,           ',
'        in_earn_prd       => :P217_EARNING_PERIOD,         ',
'        in_effective_date => :P217_EFFECTIVE_DATE,        ',
'        in_entered_by     => :APP_USER        ',
'    );',
'',
'COMMIT;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(3382121578338649288)
,p_process_success_message=>'ACH Generated File has been archived.'
,p_internal_uid=>2960329690765652715
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(383304796303864858)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Download ACH DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  l_blob      BLOB;',
'  l_filename  VARCHAR2(300);',
'  l_mimetype  VARCHAR2(300);',
'BEGIN',
'  SELECT file_contents, file_name, mimetype',
'  INTO   l_blob, l_filename, l_mimetype',
'  FROM   pa_ach_fileoutput',
'  WHERE  id = :P217_ID;',
'',
'  sys.htp.init;',
'  sys.owa_util.mime_header(nvl(l_mimetype, ''application/octet''), FALSE);',
'  sys.htp.p(''Content-length: '' || dbms_lob.getlength(l_blob));',
'  sys.htp.p(''Content-Disposition: attachment; filename="'' || l_filename || ''"'');',
'  sys.htp.p(''Cache-Control: max-age=0'');',
'  sys.owa_util.http_header_close;',
'  sys.wpg_docload.download_file(l_blob);',
'',
'  apex_application.stop_apex_engine;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_process_when=>'DOWNLOAD_ACH'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>194409528193240224
);
wwv_flow_imp.component_end;
end;
/
