prompt --application/pages/page_01417
begin
--   Manifest
--     PAGE: 01417
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
 p_id=>1417
,p_name=>'frmLeaveHistory'
,p_alias=>'FRMLEAVEHISTORY'
,p_step_title=>'Manage Leave Request'
,p_allow_duplicate_submissions=>'N'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3825577203571145519)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';',
'',
'',
'',
'// create a private scope where $ is set to apex.jQuery',
'(function($) {',
'    // This is the function that calculates over all the rows of the model and then',
'    // updates something else.',
'    // Change this to do whatever calculation is needed.',
'    // Call this whenever the model data changes.',
'    function update(model) {',
'        var salKey = model.getFieldKey("PERCENTAGE"), ',
'            total = 0;',
'',
'        model.forEach(function(record, index, id) {',
'            var sal = parseFloat(record[salKey]),  // record[salKey] should be a little faster than using model.getValue in a loop',
'                meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(sal) && !meta.deleted && !meta.agg) {',
'                total += sal;',
'            }',
'        });',
'        $s("P1417_PERCENT", total);',
'    }',
'',
'    //',
'    // This is the general pattern for subscribing to model notifications',
'    //',
'',
'    // need to do this here rather than in Execute when Page Loads so that the handler',
'    // is setup BEFORE the IG is initialized otherwise miss the first model created event',
'    $(function() {',
'        // the model gets released and created at various times such as when the report changes',
'        // listen for model created events so that we can subscribe to model notifications',
'        $("#AFFECT_SALARY").on("interactivegridviewmodelcreate", function(event, ui) {',
'            var sid,',
'                model = ui.model;',
'',
'            // note this is only done for the grid veiw. It could be done for',
'            // other views if desired. The imporant thing to realize is that each',
'            // view has its own model',
'            if ( ui.viewId === "grid" ) {',
'                sid = model.subscribe( {',
'                    onChange: function(type, change) {',
'                        if ( type === "set" ) {',
'                            // don''t bother to recalculate if other columns change',
'                            if (change.field === "PERCENTAGE" ) {',
'                                update( model );',
'                            }',
'                        } else if (type !== "move" && type !== "metaChange") {',
'                            // any other change except for move and metaChange affect the calculation',
'                            update( model );',
'                        }',
'                    },',
'                    progressView: $("#P1417_PERCENT") // this will cause a spinner on this field',
'                } );',
'                // if not lazy loaded there is no notification for initial data so update',
'                update( model ); ',
'                // just in case fetch all the data. Model notifications will',
'                // cause calls to update so nothing to do in the callback function.',
'                // can remove if data will always be less than 50 records',
'                model.fetchAll(function() {});',
'            }',
'        });',
'',
'    });',
'',
'})(apex.jQuery);',
'',
'',
'',
'',
'',
'// This JavaScript function could be used as a validation in an Oracle APEX item.',
'function ChkPayrollDays(payrollDays, actualDays, pendingDays) {',
'    var payroll = parseInt(payrollDays);',
'    var actual  = parseInt(actualDays);',
'    var pending = parseInt(pendingDays);',
'',
'    console.log(payroll);',
'    console.log(actual);',
'    console.log(pending);',
'//take into consideration of overdraft',
'',
'',
'',
'return null;',
' ',
'        // if (payroll > actual) { ',
'        //     return ''Payroll Days cannot exceed Actual Days'';',
'        //     // actual 5 pending 3  2 days in payrolls days ',
'        //     // actual 5 pending 39 ',
'        // } else if ((actual - pending) < payroll) {',
'        //     return ''Payroll Days cannot exceed the difference between Actual and Pending Days'';',
'        // } else {',
'        //     return null;',
'        // }',
'}   ',
'',
'',
'',
'// // if (actual < pending) {',
'// //     return null;',
'// //     }',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(document).ready(function() {',
'//     setTimeout(function() {',
'//         apex.region("AFFECT_SALARY").widget().interactiveGrid("getActions").invoke("refresh", {refresh: true});',
'//     }, 2000); //milliseconds',
'// });',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'img {',
'    border-radius: 50%;',
'}',
'',
'/* #P1417_DAYS_TAKEN,#P1417_LEAVE_WEEKEND,#P1417_LEAVE_HOLIDAY,#P1417_HOLIDAYS{  ',
'    pointer-events: none;',
'    background-color: white;',
'    font-size:12px;',
'    font-weight:bolder;',
'} */',
'',
'.purplecolor{',
'    color:purple;',
'}',
'.bluecolor{',
'    color:darkblue;',
'}',
'',
'.t-Form-itemText .fa {',
'  vertical-align:middle;',
'  top:-1px;',
'}'))
,p_step_template=>2526646919027767344
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>'No help is available for this page.'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2401591474902982331)
,p_plug_name=>'Buttons Container'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10988457567102635447)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2443349009465791182)
,p_plug_name=>'Photograph'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2513513220046292545)
,p_plug_name=>'<b> Bio Data </b>'
,p_parent_plug_id=>wwv_flow_imp.id(2443349009465791182)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'',
'   Cursor c_Emp Is',
'     select 1 order_num, ''Age:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(dob,current_date))||'' (''||dob||'')'' label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'       union',
'     select 2 order_num, ''Years Service:'' label, to_char(PKG_GLOBAL_FNTS.fn_calcage(date_employed,nvl(date_separated,current_date)))||'' (''||date_employed||'')'' label_value',
'     from hr_rcm_employee b ',
'     where b.id=:P1417_EMP_ID',
'           union',
'    select 3 order_num, ''Position:'' label, to_char(c.a) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id ',
'    join vw_position_full c on c.b=b.POSITION_ID',
'    where b.id=:P1417_EMP_ID',
'       union',
'      select 4 order_num, ''Address:'' label,  pkg_global_fnts.fn_Address(''HOME'', a.id, ''FULL'',TRUNC(current_date)) label_value  ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'         union',
'     select 5 order_num, ''Cell:'' label,   to_char(cell_phone) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'         union',
'     select 6 order_num, ''Email:'' label,   to_char(email) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'         union',
'     select 7 order_num, ''Marital Status:'' label,   to_char(marital_code) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'          union',
'     select 8 order_num, ''No. of Kids:'' label,   to_char(no_of_children) label_value    ',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'         union',
'     select 9 order_num, ''Nationality:'' label,   to_char(nationality) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'       union',
'     select 10 order_num, ''Past Employer:'' label,    max(pkg_global_fnts.fn_getlastemployer (a.id, extract(year from current_date))) label_value',
'     from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'     where b.id=:P1417_EMP_ID',
'       union',
'     select 11 order_num, ''National IDs:'' label,   ',
'    (SELECT ',
'    LISTAGG(ID_TYPE||'':-''||ID_NUMBER, ''; '') WITHIN GROUP (ORDER BY issue_date desc) label_value',
'    FROM hr_rcm_natidentifier',
'    where ind_id=a.id',
'    and end_date is null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee emp on a.id = emp.ind_id',
'    where emp.id=:P1417_EMP_ID',
'    union',
'    select 12 order_num, ''Work Stints:'' label,  to_char(count(1))label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1417_EMP_ID',
'     union',
'    select 13 order_num, ''Gender:'' label,  case when sex_code=''M'' then ''Male'' ',
'                                                when sex_code=''F'' then ''Female''',
'                                                when sex_code=''C'' then ''Common''',
'                                                else ''Neuter''       end label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1417_EMP_ID',
'    union',
'    select 14 order_num, ''Contact Numbers:'' label,   ',
'    (SELECT ',
'    LISTAGG(initcap(relation)||'': ''||cell_phone, ''; '') WITHIN GROUP (ORDER BY ind_id desc) label_value',
'    FROM HR_RCM_RELATIVESFRD rel join hr_rcm_individual ind on ind.id =related_to',
'    where ind_id=a.id',
'    and cell_phone is not null',
'    ) label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1417_EMP_ID',
'    union',
'    select 15 order_num, ''High Qualification:'' label,   ',
'    (SELECT ',
'    LISTAGG(Q_LEVEL, ''; '') WITHIN GROUP (ORDER BY Q_WEIGHT desc) label_value',
'    FROM HR_RCM_QUALIFICATION',
'    where ind_id=a.id',
'    and rownum=1)label_value',
'    from hr_rcm_individual a join hr_rcm_employee b on a.id=b.ind_id',
'    where b.id=:P1417_EMP_ID',
'     order by order_num ;',
'    ',
'     ',
'',
'Begin  ',
'   ',
'   for a in c_Emp loop',
'    sys.htp.p(''<b>'' || a.label || ''</b>'' );',
'    sys.htp.p( a.label_value ) ;',
'     sys.htp.p(''<p>''||''''||''</p>'');',
'   end loop;',
'    ',
'End;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2488001031866881278)
,p_name=>'Approval History'
,p_template=>2664334895415463485
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum "No.", EMPLOYEE,POSITION,ACTION,DATE_OF_ACTION,created_by user_name',
'from tblapprovalhistory',
'where table_name=''HR_LV_LEAVEHISTORY''',
'and table_name_key=:P1417_ID'))
,p_display_when_condition=>'P1417_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_show_nulls_as=>' - '
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_query_asc_image=>'apex/builder/dup.gif'
,p_query_asc_image_attr=>'width="16" height="16" alt="" '
,p_query_desc_image=>'apex/builder/ddown.gif'
,p_query_desc_image_attr=>'width="16" height="16" alt="" '
,p_plug_query_strip_html=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(663594967894837632)
,p_query_column_id=>1
,p_column_alias=>'No.'
,p_column_display_sequence=>1
,p_column_heading=>'No.'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(663595344689837634)
,p_query_column_id=>2
,p_column_alias=>'EMPLOYEE'
,p_column_display_sequence=>2
,p_column_heading=>'EMPLOYEE'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(663595755796837634)
,p_query_column_id=>3
,p_column_alias=>'POSITION'
,p_column_display_sequence=>3
,p_column_heading=>'POSITION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(663596157285837634)
,p_query_column_id=>4
,p_column_alias=>'ACTION'
,p_column_display_sequence=>4
,p_column_heading=>'ACTION'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(663596592780837635)
,p_query_column_id=>5
,p_column_alias=>'DATE_OF_ACTION'
,p_column_display_sequence=>5
,p_column_heading=>'DATE_OF_ACTION'
,p_column_format=>'DD-MON-YYYY HH:MIPM'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(663597009615837635)
,p_query_column_id=>6
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>6
,p_column_heading=>'USER_NAME'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2490089304970552603)
,p_plug_name=>'Shift Roster'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2672673746673652531
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select ',
'           to_Char(work_date,''DD-MON-YYYY'') WKDATE, ',
'           assigned_shift,',
'           normal_time shw,',
'           hours_worked chw,',
'           over_time cot',
'    from hr_att_empcalendar_hd',
'    where emp_id = :P1417_EMP_ID',
'    and to_date(work_date,''DD-MON-YYYY'')  between TO_DATE(to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')  and (TO_DATE(to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1417_EMP_ID,P1417_FROMDATE,P1417_TODATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Shift Roster'
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
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2490089133991552602)
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
,p_owner=>'JAY.KHAN'
,p_internal_uid=>1846613212111798097
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995021479279849291)
,p_db_column_name=>'WKDATE'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Wkdate'
,p_column_type=>'STRING'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995021107287849291)
,p_db_column_name=>'ASSIGNED_SHIFT'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Assigned Shift'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(3854076615499010825)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995020684691849290)
,p_db_column_name=>'SHW'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Shw'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995020286799849290)
,p_db_column_name=>'CHW'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Chw'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995019918989849289)
,p_db_column_name=>'COT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Cot'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2488836481320045801)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10212361'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'WKDATE:ASSIGNED_SHIFT:SHW:CHW:COT'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2495130921743173383)
,p_name=>'Audit Record Verified by: &P1417_VERIFIED_BY.'
,p_template=>2664334895415463485
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  to_char(entry_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||entered_by entered,',
'  to_char(last_changed_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||last_changed_by last_changed,',
'  to_char(verified_date,''DD-MON-YYYY HH:MIPM'')||'' by ''||verified_by verified,',
'  machine_insert,',
'  machine_update,',
'  apex_util.get_since(last_changed_date) updated',
'from  HR_LV_LEAVEHISTORY',
'where  id = :P1417_ID'))
,p_display_when_condition=>'P1417_ID'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
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
 p_id=>wwv_flow_imp.id(686740394019449251)
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
 p_id=>wwv_flow_imp.id(686740510615449252)
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
 p_id=>wwv_flow_imp.id(686740613528449253)
,p_query_column_id=>3
,p_column_alias=>'VERIFIED'
,p_column_display_sequence=>30
,p_column_heading=>'Verified'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(686740631423449254)
,p_query_column_id=>4
,p_column_alias=>'MACHINE_INSERT'
,p_column_display_sequence=>40
,p_column_heading=>'Machine Insert'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(686740782671449255)
,p_query_column_id=>5
,p_column_alias=>'MACHINE_UPDATE'
,p_column_display_sequence=>50
,p_column_heading=>'Machine Update'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(686917186379920906)
,p_query_column_id=>6
,p_column_alias=>'UPDATED'
,p_column_display_sequence=>60
,p_column_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2495136435174271930)
,p_plug_name=>'Leave Request'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'TABLE'
,p_query_table=>'HR_LV_LEAVEHISTORY'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2495136612448274737)
,p_plug_name=>'Additional Information'
,p_region_template_options=>'#DEFAULT#:t-Region--accent11:t-Region--noBorder:t-Region--scrollBody:t-Form--slimPadding:margin-top-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2496465806361385337)
,p_plug_name=>'Affect Salary'
,p_region_name=>'AFFECT_SALARY'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'TABLE'
,p_query_table=>'HR_LV_LEAVEREQUEST_AS'
,p_query_where=>'leaverequest_id = :P1417_ID '
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1417_ID'
,p_plug_display_condition_type=>'EXPRESSION'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- (  upper(pkg_global_fnts.status_descript (:P1417_STATUS)) like ''VERI% '' or   upper(pkg_global_fnts.status_descript (:P1417_STATUS)) like ''CANCE%'')',
'',
'1=1'))
,p_plug_display_when_cond2=>'PLSQL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Affect Salary'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(663750933402195111)
,p_name=>'PAY_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAY_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Pay Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>5
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2490089912408552609)
,p_name=>'EMPENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Entitlement'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'is-readonly'
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d ,ent.id r',
'from hr_rcm_empentitle ent ',
'join (select description , id from pa_pcf_incomecode) inc on  ent.income_code_id = inc.id',
'where income_code_id = :INC_DED_ID',
'and emp_id = :P1417_EMP_ID',
'and (start_date between to_date(TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY'') and current_date OR start_date < to_date(TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY''))',
'and (end_date is null or end_date <= to_date(TO_DATE(:P1417_TODATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY'') or end_date >= current_date) '))
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'INC_DED_ID'
,p_ajax_items_to_submit=>'P1417_EMP_ID,P1417_TODATE,P1417_TODATE,P1417_FROMDATE'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496461880918385298)
,p_name=>'EARNINGS_PERIOD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EARNINGS_PERIOD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Earnings Period'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select earn_description,id',
'        from VW_EARNALL a',
'        where exists (select 1',
'                      from hr_rcm_employee x',
'                      where x.org_id=a.org_id',
'                      and x.employment_class_id=a.employment_class_id',
'                      and x.payment_type=a.payment_type',
'                      and x.compute_gross = a.compute_gross',
'                      and x.id = :P1417_EMP_ID',
'                      )',
'and EARN_PAY_STATUS = ''OPEN'''))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select Earning Period--'
,p_lov_cascade_parent_items=>'P1417_EMP_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462073176385300)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462169493385301)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462274359385302)
,p_name=>'PERCENTAGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERCENTAGE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Percentage'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '100',
  'min_value', '1',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'PERCENTAGE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'100'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462330446385303)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462522759385304)
,p_name=>'UPDATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Updated'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462583108385305)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462640530385306)
,p_name=>'CREATED'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Created'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462738984385307)
,p_name=>'LEAVEREQUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LEAVEREQUEST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P1417_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462854709385308)
,p_name=>'EXPORT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXPORT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496462968868385309)
,p_name=>'AMOUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AMOUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Amount'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>100
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'di is-readonly u-bold'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496463037370385310)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_value_css_classes=>'di is-readonly u-bold'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496463158822385311)
,p_name=>'PAYROLL_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYROLL_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Payroll Days (Qty)'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>80
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_max_length=>4
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496463308419385312)
,p_name=>'INC_DED_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INC_DED_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Inc/Ded Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select fn_get_dedinc_desc(in_id => description, in_type => case when :AFFECT_SALARY = ''PAYMENT'' then ''INCOME'' else ''DEDUCTION'' end) d ,to_number(description) r ',
'from table(pkg_leave.fn_split_commadelimitedstringintorows(in_string => (select case when :AFFECT_SALARY = ''PAYMENT'' then income_code_id else deduction_code_id end from hr_lv_leavepolicy',
'where id = :P1417_POLICY_ID),in_delimiter => '':''))'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'AFFECT_SALARY'
,p_ajax_items_to_submit=>'P1417_POLICY_ID'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496463408089385313)
,p_name=>'INC_DED_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'INC_DED_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'1111'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496463479954385314)
,p_name=>'AFFECT_SALARY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AFFECT_SALARY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Affect Salary'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select description d, description r',
'from table(pkg_leave.fn_split_commadelimitedstringintorows(in_string => (select affect_salary from hr_lv_leavetype',
'                                                                            where id = :P1417_LEAVETYPE_ID)',
'                                                                        ,in_delimiter => '',''))'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'--Select--'
,p_lov_cascade_parent_items=>'P1417_LEAVETYPE_ID'
,p_ajax_items_to_submit=>'P1417_LEAVETYPE_ID'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2496463606579385315)
,p_name=>'ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2496465714719385336)
,p_internal_uid=>1852989792839630831
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) { ',
'',
'    config.initActions = function(actions) {',
'        var $ig = $(actions.context),',
'            saveAction = actions.lookup("save"),',
'            originalSaveAction = saveAction.action;',
'',
'        saveAction.action = function(event,el) {',
'            var view = $ig.interactiveGrid("getCurrentView"),',
'                model = view.model,',
'                PercentageKey = model.getFieldKey("PERCENTAGE"), // Set here your work hours column name e.g. WORK_HOURS',
'                PayrollDKey   = model.getFieldKey("PAYROLL_DAYS"),',
'                PercentMessage,',
'                Percentage,PayrollDays, meta, PercentageTotal = 0; PayrollDaysTotal = 0;',
' ',
'        model.forEach(function(record, index, id)',
'        {',
'            Percentage = parseFloat(record[PercentageKey]);',
'            PayrollDays = parseFloat(record[PayrollDKey]);',
'',
'            meta = model.getRecordMetadata(id);',
'',
'            if (!isNaN(Percentage) && !meta.deleted && !meta.agg ) {',
'                PercentageTotal += Percentage;',
'            }',
'',
'              if (!isNaN(PayrollDays) && !meta.deleted && !meta.agg ) {',
'                PayrollDaysTotal += PayrollDays;',
'            }',
'',
'',
'        });',
'',
'    if(PercentageTotal !== 100){',
'',
'            percentMessage = "Percentage is not equal 100%.";',
'        }',
'        else{',
'            percentMessage = "";',
'        }',
'',
'apex.message.clearErrors();',
'',
'',
'',
' if (PercentageTotal == 100 || ChkPayrollDays(PayrollDaysTotal, $v(''P1417_ACTUAL_DAYS''), $v(''P1417_PENDING'')) === null) {',
'    originalSaveAction();',
'} else {',
'    var errorMessages = [];',
'',
'    var chkPayrollResult = ChkPayrollDays(PayrollDaysTotal, $v(''P1417_ACTUAL_DAYS''), $v(''P1417_PENDING''));',
'    if (chkPayrollResult !== null) {',
'        errorMessages.push({',
'            type: "error",',
'            location: "page",',
'            message: chkPayrollResult,',
'            unsafe: true',
'        });',
'    }',
'',
'    if (percentMessage !== "") {',
'        errorMessages.push({',
'            type: "error",',
'            location: "page",',
'            message: percentMessage,',
'            unsafe: true',
'        });',
'    }',
'',
'     apex.message.showErrors(errorMessages);',
'}',
'            return true;',
'        }',
'    }',
'',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2495081937243176247)
,p_interactive_grid_id=>wwv_flow_imp.id(2496465714719385336)
,p_static_id=>'10132668'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2495081744309176247)
,p_report_id=>wwv_flow_imp.id(2495081937243176247)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(665409542341171007)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(663750933402195111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2489026098960463014)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2490089912408552609)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495001843448960533)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2496461880918385298)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495010997668981055)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2496462169493385301)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495053166163134871)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2496462274359385302)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>83
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495054111701134874)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2496462330446385303)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495054934602134877)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2496462522759385304)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495055880976134881)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2496462583108385305)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495056820318134884)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2496462640530385306)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495057713617134887)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(2496462738984385307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495058561304134890)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(2496462854709385308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495059521783134894)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2496462968868385309)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495060348231134897)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2496463037370385310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495061328341134900)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2496463158822385311)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>117
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495062176520134904)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2496463308419385312)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>151
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495063097419134907)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2496463408089385313)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495064006140134911)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2496463479954385314)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2495064913085134914)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2496463606579385315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(1392975207775331663)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(2496462968868385309)
,p_show_grand_total=>true
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_aggregate(
 p_id=>wwv_flow_imp.id(1392978360235337021)
,p_view_id=>wwv_flow_imp.id(2495081744309176247)
,p_function=>'SUM'
,p_column_id=>wwv_flow_imp.id(2496463158822385311)
,p_show_grand_total=>false
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2501049450723153201)
,p_plug_name=>'Employee Leave Track'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:is-collapsed:t-Region--noUI:t-Region--scrollBody:t-Form--slimPadding:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2664334895415463485
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' x."ID",',
' x."EMP_ID",',
'x.lv_track_effective_date start_Date,',
'x.cr_adjustments,',
'x.dr_adjustments,',
'x.end_date,',
'  BROUGHT_FWD,',
'  USED,',
' PENDING,',
' x."COMPANY_YEAR",',
'(SELECT b.leave_description',
'FROM HR_RCM_EMPLEAVEENTITLE a join hr_lv_leavetype b on a.leave_type_id=b.id',
'WHERE A.id=X.EMPLVENT_ID',
') "LEAVE_TYPE_ID",',
' x."LESS_DAYS",',
'x."MACHINE_INSERT",',
' x."MACHINE_UPDATE",',
' x."ENTERED_BY",',
' x."ENTRY_DATE",',
' x."LAST_CHANGED_BY",',
' x."LAST_CHANGED_DATE",entitlement, leave_earn',
'from #OWNER#.HR_LV_LEAVETRACK X join hr_rcm_employee v on x.emp_id=v.id',
'where X.EMP_ID = NVL(:P1417_EMP_FROM_SCREEN, :P1417_EMP_ID)',
'order by X.COMPANY_YEAR desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P1417_EMP_ID'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_plug_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(2501049550675153201)
,p_name=>'Listing of Employee Leave Tracking'
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
,p_owner=>'PUR_INV'
,p_internal_uid=>1857573628795398696
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995075155898849370)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'ID'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995074798047849370)
,p_db_column_name=>'EMP_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Employee'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_static_id=>'EMP_ID'
,p_rpt_named_lov=>wwv_flow_imp.id(3831315173993580301)
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995074389765849370)
,p_db_column_name=>'COMPANY_YEAR'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'COMPANY_YEAR'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995073945350849369)
,p_db_column_name=>'LESS_DAYS'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Less Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
,p_static_id=>'LESS_DAYS'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995073541663849369)
,p_db_column_name=>'MACHINE_INSERT'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'MACHINE_INSERT'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_INSERT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995073156321849368)
,p_db_column_name=>'MACHINE_UPDATE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'MACHINE_UPDATE'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'MACHINE_UPDATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995072743097849368)
,p_db_column_name=>'ENTERED_BY'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'ENTERED_BY'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTERED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995072373286849368)
,p_db_column_name=>'ENTRY_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'ENTRY_DATE'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
,p_static_id=>'ENTRY_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995071994143849367)
,p_db_column_name=>'LAST_CHANGED_BY'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Last Changed by'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_BY'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995071554239849367)
,p_db_column_name=>'LAST_CHANGED_DATE'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Last Changed Date'
,p_column_type=>'DATE'
,p_tz_dependent=>'N'
,p_static_id=>'LAST_CHANGED_DATE'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995071196636849366)
,p_db_column_name=>'LEAVE_TYPE_ID'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Leave Type'
,p_column_type=>'STRING'
,p_tz_dependent=>'N'
,p_static_id=>'LEAVE_TYPE_ID'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995075993681849372)
,p_db_column_name=>'ENTITLEMENT'
,p_display_order=>55
,p_column_identifier=>'S'
,p_column_label=>'Entitlement'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(995075528634849371)
,p_db_column_name=>'LEAVE_EARN'
,p_display_order=>65
,p_column_identifier=>'T'
,p_column_label=>'Leave Earn'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875409656090314)
,p_db_column_name=>'END_DATE'
,p_display_order=>85
,p_column_identifier=>'V'
,p_column_label=>'End Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875511498090315)
,p_db_column_name=>'DR_ADJUSTMENTS'
,p_display_order=>95
,p_column_identifier=>'W'
,p_column_label=>'Dr Adjustments'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875564374090316)
,p_db_column_name=>'CR_ADJUSTMENTS'
,p_display_order=>105
,p_column_identifier=>'X'
,p_column_label=>'Cr Adjustments'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875707988090317)
,p_db_column_name=>'BROUGHT_FWD'
,p_display_order=>115
,p_column_identifier=>'Y'
,p_column_label=>'Brought Fwd'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875749099090318)
,p_db_column_name=>'USED'
,p_display_order=>125
,p_column_identifier=>'Z'
,p_column_label=>'Used'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671875914938090319)
,p_db_column_name=>'PENDING'
,p_display_order=>135
,p_column_identifier=>'AA'
,p_column_label=>'Pending'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(671876019311090320)
,p_db_column_name=>'START_DATE'
,p_display_order=>145
,p_column_identifier=>'AB'
,p_column_label=>'Start Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(2501051251416153433)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'10212906'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'START_DATE:END_DATE:EMP_ID:LEAVE_TYPE_ID:ENTITLEMENT:BROUGHT_FWD:LEAVE_EARN:USED:PENDING:DR_ADJUSTMENTS:CR_ADJUSTMENTS:'
,p_sort_column_1=>'LEAVE_TYPE_ID'
,p_sort_direction_1=>'ASC'
,p_sort_column_2=>'COMPANY_YEAR'
,p_sort_direction_2=>'DESC'
,p_sort_column_3=>'0'
,p_sort_direction_3=>'ASC'
,p_sort_column_4=>'0'
,p_sort_direction_4=>'ASC'
,p_sort_column_5=>'0'
,p_sort_direction_5=>'ASC'
,p_sort_column_6=>'0'
,p_sort_direction_6=>'ASC'
,p_break_on=>'EMP_ID:0:0:0:0:LEAVE_TYPE_ID'
,p_break_enabled_on=>'EMP_ID:0:0:0:0:LEAVE_TYPE_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707676698968718302)
,p_plug_name=>'qc2'
,p_icon_css_classes=>'fa-alert'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-callout:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707677537545718311)
,p_plug_name=>'Alertqc2'
,p_parent_plug_id=>wwv_flow_imp.id(2707676698968718302)
,p_icon_css_classes=>'fa-exclamation-triangle-o is-warning'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--warning:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'Employee has exceeded the pending amount of days'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707679108347718326)
,p_plug_name=>'qc1'
,p_icon_css_classes=>'fa-alert'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-popup-callout:js-dialog-nosize'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2707677331782718309)
,p_plug_name=>'Alertqc1'
,p_parent_plug_id=>wwv_flow_imp.id(2707679108347718326)
,p_icon_css_classes=>'fa-exclamation-triangle-o is-danger'
,p_region_template_options=>'#DEFAULT#:t-Alert--colorBG:t-Alert--wizard:t-Alert--customIcons:t-Alert--danger:t-Alert--removeHeading js-removeLandmark'
,p_plug_template=>2040683448887306517
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Employee is not allowed to exceed the pending amount.',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2855761980832644938)
,p_plug_name=>'manual_forward'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size600x400'
,p_plug_template=>1485369341786500999
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663636153423837675)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2855761980832644938)
,p_button_name=>'FORWARD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Forward'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663589122655837627)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'RETURN'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--primary'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Return'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1416:&SESSION.::&DEBUG.:1416::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663594135039837631)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2513513220046292545)
,p_button_name=>'VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'View'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1281:&SESSION.::&DEBUG.:RP,1281:P1281_ID,P1281_NAVIGATOR:&P1417_EMP_ID.,1417'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663589614678837627)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Delete'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663589973211837627)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>' :P1417_ID IS NOT NULL AND upper(pkg_global_fnts.status_descript(:P1417_STATUS))   NOT like ''%CANC%'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_security_scheme=>wwv_flow_imp.id(3807018998455118135)
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663590389712837627)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1417_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663590771780837628)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'CREATE_AGAIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Create Again'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1417_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663591175599837628)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'ADD_NEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Add New'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417::'
,p_button_condition=>'P1417_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663591533882837628)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'ADD_FILE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Attach File'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P1417_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_security_scheme=>wwv_flow_imp.id(3807019444763118136)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663591925502837628)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'PRINT_LEAVE_LETTER'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print Leave Letter'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from HR_LV_LEAVEHISTORY',
'where id=:P1417_id',
'AND upper(leave_type)=''ANNUAL LEAVE''',
'AND approved_date is not null',
'and org_id= :APP_ORG_ID'))
,p_button_condition_type=>'EXISTS'
,p_security_scheme=>wwv_flow_imp.id(3807018089076118135)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(663592360991837628)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_button_name=>'MANUAL_FORWARD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#::t-Button--primary:::::::'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Manual Forward'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT 1',
'FROM (SELECT 1 ',
'      FROM tbluser',
'      WHERE user_name= nvl(V(''APP_USER''),user)',
'      AND forward_default_only=''N''',
'         union',
'      select 1',
'      from TBLSYSTEMCONFIGURATION',
'      where AUTO_FORWARD=''CHOOSE''',
'      )',
'  where :P1417_ID is not null'))
,p_button_condition_type=>'EXISTS'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(663693692078837713)
,p_branch_name=>'delete_branch'
,p_branch_action=>'f?p=&APP_ID.:1416:&SESSION.::&DEBUG.:1416::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>11
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'DELETE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(663694092229837714)
,p_branch_name=>'CREATE AGAIN'
,p_branch_action=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417::'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(663590771780837628)
,p_branch_sequence=>21
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(663692499362837713)
,p_branch_name=>'doc_man'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_MODULE,P129_FORM_NAME,P129_TABLE_KEY,P129_MEDIA_EMP_ID,P129_RETURN_VALUE:121,FRMLEAVEHISTORY,&P1417_ID.,&P1417_EMP_ID.,1417'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(663591533882837628)
,p_branch_sequence=>22
,p_branch_condition_type=>'NOT_EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1417_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(663692845354837713)
,p_branch_name=>'doc_man_view'
,p_branch_action=>'f?p=&APP_ID.:129:&SESSION.::&DEBUG.:129:P129_ID,P129_RETURN_VALUE:&P1417_DOC_EXIST.,1417'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(663591533882837628)
,p_branch_sequence=>23
,p_branch_condition_type=>'EXISTS'
,p_branch_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1417_ID'))
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(663693228219837713)
,p_branch_name=>'Go To Page 1417'
,p_branch_action=>'f?p=&APP_ID.:1417:&SESSION.::&DEBUG.:1417:P1417_ID,P1417_RETURN_VALUE:&P1417_ID.,1416&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>43
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(682864640998535326)
,p_name=>'P1417_VERIFIED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(2495130921743173383)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'VERIFIED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995030464763849307)
,p_name=>'P1417_EMP_FROM_SCREEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2401591474902982331)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995031861679849309)
,p_name=>'P1417_PHOTO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2443349009465791182)
,p_display_as=>'NATIVE_DISPLAY_IMAGE'
,p_tag_css_classes=>'img'
,p_tag_attributes=>'style="width:100%" onchange="htmldb_item_change(this)"'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'SQL',
  'sql_statement', wwv_flow_string.join(wwv_flow_t_varchar2(
    'SELECT PHOTO',
    'FROM HR_RCM_INDIVIDUAL a join hr_rcm_employee b on a.id=b.ind_id',
    'where exists (select 1',
    '              from hr_lv_leavehistory C ',
    '              where  C.EMP_ID=B.ID',
    '              and c.id=:P1417_ID)')))).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995057973991849353)
,p_name=>'P1417_MACHINE_INSERT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2495130921743173383)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_INSERT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995058205591849325)
,p_name=>'P1417_PERCENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2496465806361385337)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995058320355849353)
,p_name=>'P1417_MACHINE_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2495130921743173383)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'LOGIN_VAR'
,p_item_default_type=>'ITEM'
,p_source=>'MACHINE_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995058798586849354)
,p_name=>'P1417_DOC_EXIST'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(2495130921743173383)
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Id',
'From Media_Head',
'Where Form_Id=:APP_PAGE_ID',
'and TABLE_KEY=:P1417_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995062478478849359)
,p_name=>'P1417_RETURN_VALUE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995062859699849360)
,p_name=>'P1417_FROMDATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>' trunc(current_date)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'From Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'FROMDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
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
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995063287272849360)
,p_name=>'P1417_TODATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>' to_char(TRUNC(current_date)+1 - (1/24/60),''DD-MON-YYYY HH:MIAM'')'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Date'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'TODATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>20
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', '2',
  'show_on', 'IMAGE',
  'show_time', 'Y',
  'time_increment', '-1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995063670697849360)
,p_name=>'P1417_DAY_SLIDER'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Day Slider'
,p_source=>'SLIDER_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1/4 Day;0.25,1/2 Day;0.5,3/4 Day;0.75,1 Day;1'
,p_cHeight=>1
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:margin-bottom-none:margin-left-none:margin-right-none'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_show_quick_picks=>'Y'
,p_quick_pick_label_01=>'Full Day'
,p_quick_pick_value_01=>'1'
,p_quick_pick_label_02=>'Half Day'
,p_quick_pick_value_02=>'0.5'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995064111198849361)
,p_name=>'P1417_EMP_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Employee'
,p_source=>'EMP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct initcap(ind.Surname || '', '' || nvl(ind.First_Name, '''')) ||'' '' ||nvl(ind.Middle_Name,'''')',
'||''(''||PKG_GLOBAL_FNTS.Get_Lookup_Col(emp.employment_class_id, ''TABLE_VALUE'' )||'')'' || ''-'' || emp.emp_company_no AS fullname , emp.id',
'from hr_rcm_employee emp',
'--join hr_att_empcalendar_hd empcal on (emp.id = empcal.emp_id and emp.org_id = empcal.org_id)',
'join hr_rcm_individual ind on emp.ind_id = ind.id ',
'where emp.employment_status = ''ACTIVE''',
'--where empcal.work_date between TO_CHAR(TO_DATE(:P1417_FROMDATE, ''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'') and TO_CHAR(TO_DATE(:P1417_TODATE, ''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')',
'and emp.org_id = :APP_ORG_ID',
'and exists(select 1',
'          from HR_HCF_ORGSTRUCTUREDTL T left outer join VW_USERORGSTRUCT w on ( t.id=w.ORG_STRUCTURE_ID  and nvl(w.user_name,''1'') = decode(w.user_name, null, ''1'', :APP_USER))',
'          where  t.id=emp.ORGDTL_ID',
'          and emp.ORGDTL_ID=decode(pkg_security.fn_testfinegradeOrgStruct(:APP_USER), 0, emp.ORGDTL_ID, w.org_structure_id)         ',
'          )'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--None--'
,p_lov_cascade_parent_items=>'P1417_FROMDATE,P1417_TODATE'
,p_ajax_items_to_submit=>'P1417_RETURN_VALUE,P1281_ID,P1409_EMP_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(995064508189849362)
,p_name=>'P1417_LEAVE_REQUEST_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Leave Type'
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a id="clocklink" href="#">   <span aria-hidden="true" ',
'class="fa fa-clock-o" style="color: green; pointer-events: auto;"></span> </a>',
''))
,p_source=>'LEAVE_REQUEST_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  c.leave_description || '' from '' ',
'                               ||  to_char(a.start_date,''DD-MON-YYYY'') ',
'                               || case when trunc(x.date_employed + b.accessible_after) >= trunc(current_date) then ',
'                                         '' Accessible after '' || to_char((x.date_employed + b.accessible_after),''DD-MON-YYYY'') ',
'                                         else null ',
'                                  end D',
'   , c.c_id r',
'   from hr_rcm_empleaveentitle a ',
'   join hr_rcm_employee x on x.id = a.emp_id',
'   join hr_lv_leavepolicy b on a.policy_id = b.id',
'   join (SELECT c.leave_description,c.leave_type lt_ent_id, c.id c_id',
'            FROM hr_lv_leavetype p',
'            JOIN hr_lv_leavetype c ON p.id = c.leave_type',
'            where p.org_id = :APP_ORG_ID',
'            and p.PLANNED_OR_UNPLANNED in (''PLANNED'',''UNPLANNED'')',
'            ) c on (c.lt_ent_id = a.leave_type_id)',
'    where emp_id  = :P1417_EMP_ID',
'    and TO_DATE(to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'') between a.start_date  and nvl(a.end_date,TO_DATE(to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))',
'order by 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select Leave Type--'
,p_lov_cascade_parent_items=>'P1417_EMP_ID'
,p_ajax_items_to_submit=>'P1417_FROMDATE,P1417_TODATE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--preTextBlock:t-Form-fieldContainer--postTextBlock'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995064877829849362)
,p_name=>'P1417_SEPARATOR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995065240480849362)
,p_name=>'P1417_SHIFT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'SHIFT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_help_text=>'This field is used exclusively in cases when the leave taken is less than or equal to one day.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995066169455849363)
,p_name=>'P1417_EMPLVENT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'EMPLVENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995066571124849364)
,p_name=>'P1417_DAYS_TAKEN'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'<span class="bluecolor" aria-hidden="true">Calendar Days </span>'
,p_source=>'DAYS_TAKEN'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_cMaxlength=>255
,p_tag_css_classes=>'bluecolor'
,p_grid_column=>2
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995066943823849364)
,p_name=>'P1417_HOLIDAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'<span class="u-warning-text" aria-hidden="true">Excluded Days </span>'
,p_source=>'HOLIDAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_css_classes=>'u-warning-text'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>5
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995067386848849365)
,p_name=>'P1417_ACTUAL_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'<span class="u-success-text" aria-hidden="true">Actual Days</span>'
,p_source=>'ACTUAL_DAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>8
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only u-success-tex'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995067772900849365)
,p_name=>'P1417_LEAVE_HOLIDAY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>' <span Class="u-warning-text" Aria-hidden="true">Holidays </span>'
,p_source=>'LEAVE_HOLIDAY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_css_classes=>'u-warning-text'
,p_grid_column=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only '
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995068149974849365)
,p_name=>'P1417_LEAVE_WEEKEND'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'<span class="u-warning-text" aria-hidden="true">Off Days </span>'
,p_source=>'LEAVE_WEEKEND'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_css_classes=>'u-warning-text'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>5
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only '
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995068600707849366)
,p_name=>'P1417_PENDING'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'<span class="purplecolor" aria-hidden="true">Pending Days </span>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_css_classes=>'purplecolor'
,p_grid_column=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995068990203849366)
,p_name=>'P1417_UNVERIFED_PENDING'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'<span class="purplecolor" aria-hidden="true">Unverified Days </span>'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_css_classes=>'purplecolor'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_column=>5
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995069370205849367)
,p_name=>'P1417_SEPARATOR_2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995069777407849367)
,p_name=>'P1417_REDUCE_LEAVE_DAYS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995070204486849367)
,p_name=>'P1417_RESUMPTION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Resumption date'
,p_source=>'RESUMPTION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>12
,p_grid_column=>1
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
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
 p_id=>wwv_flow_imp.id(995070551043849368)
,p_name=>'P1417_LEAVE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'LEAVE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995071022531849368)
,p_name=>'P1417_LEAVE_DOLLAR_VALUE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Absence ($)'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'LEAVE_DOLLAR_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>12
,p_begin_on_new_line=>'N'
,p_grid_column=>8
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995071415020849369)
,p_name=>'P1417_PERSONAL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Personal Time'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_global_fnts.fn_contimedaily(DAYS_TAKEN, :APP_ORG_ID, ID ) DAYS_TAKEN',
' from hr_lv_leavehistory',
' where id=:P1417_ID'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select 1',
'from hr_lv_leavehistory a join hr_rcm_empleaveentitle c on c.id = a.emplvent_id',
'where a.id  = :P1417_ID',
'and UPPER(pkg_global_fnts.Get_Lookup_Col(c.leave_type_id, ''VALUE_DESCRIPTION''))=''PERSONAL DAYS'''))
,p_display_when_type=>'EXISTS'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995071737585849369)
,p_name=>'P1417_H_EMP_ID'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select emp_id',
'from hr_lv_leavehistory',
'where id=:P1417_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995072165363849370)
,p_name=>'P1417_ADJUSTED_FROMDATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'ADJUSTED_FROMDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995072546167849370)
,p_name=>'P1417_ADJUSTED_TODATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'ADJUSTED_TODATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995072956050849370)
,p_name=>'P1417_LEAVETYPE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'LEAVE_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995073344975849371)
,p_name=>'P1417_QUOTA_CONTROL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995073794067849371)
,p_name=>'P1417_DATESUB'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995074148758849372)
,p_name=>'P1417_DIFF_OF_QUOTA'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995074616505849372)
,p_name=>'P1417_CONSECUTIVE_DAYS'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995074950507849372)
,p_name=>'P1417_POLICY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'POLICY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995075421042849373)
,p_name=>'P1417_SLIDER_VALUE'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995075816102849373)
,p_name=>'P1417_SLIDER_DATE'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'P1417_FROMDATE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995076193645849374)
,p_name=>'P1417_DATES'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995088072869849385)
,p_name=>'P1417_LEAVE_MODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'TIME'
,p_prompt=>'Leave Mode'
,p_source=>'LEAVE_MODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_begin_on_new_line=>'N'
,p_field_template=>2526760615038828570
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_help_text=>'This is specific to Payment in Leu of Leave or cash, while other option is the routine time spend for leave.'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', 'TIME',
  'off_value', 'TIME',
  'on_label', 'CASH',
  'on_value', 'CASH',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995088898354849386)
,p_name=>'P1417_PAYROLL_DAYS'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'0'
,p_prompt=>'Payroll Days'
,p_post_element_text=>' &nbsp Days'
,p_source=>'PAYROLL_DAYS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>5
,p_tag_css_classes=>'u-color-39-text'
,p_display_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'min_value', '0',
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995089336304849386)
,p_name=>'P1417_PAYROLL_DOLLAR_VALUE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Payroll ($)'
,p_format_mask=>'FML999G999G999G999G990'
,p_source=>'PAYROLL_DOLLAR_VALUE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_tag_css_classes=>'u-color-39-text'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995089751481849386)
,p_name=>'P1417_POLICY_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'<span Class="purplecolor" Aria-hidden="true">Policy </span>'
,p_source=>'POLICY_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_tag_css_classes=>'purplecolor'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995090100582849387)
,p_name=>'P1417_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_source=>'ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995090495340849387)
,p_name=>'P1417_POSITION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Position'
,p_source=>'POSITION_NAME_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>6
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995090949913849388)
,p_name=>'P1417_COMPUTE_GROSS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'<span class="purplecolor" aria-hidden="true">Compute Gross</span>'
,p_source=>'COMPUTE_GROSS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'purplecolor'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995091341248849388)
,p_name=>'P1417_WKLOCATION_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Work Location'
,p_source=>'LOCATION_NAME_HIST'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995091704254849389)
,p_name=>'P1417_ORG_STRUCTURE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Department'
,p_source=>'ORG_STRUCTURE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>6
,p_grid_column=>6
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995092171690849389)
,p_name=>'P1417_APPROVED_BY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Approved By'
,p_source=>'APPROVED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_tag_css_classes=>'u-color-36-text'
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'LOWER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995092567751849390)
,p_name=>'P1417_APPROVED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Approved On'
,p_format_mask=>'DD-MON-YYYY HH:MIPM'
,p_source=>'APPROVED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_tag_css_classes=>'u-color-36-text'
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>6
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_css_classes=>'display_only'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995092962975849390)
,p_name=>'P1417_TRANSACTION_TYPE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_item_default=>'110'
,p_prompt=>'Transaction'
,p_source=>'TRANSACTION_TYPE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PAGE_TRANSACTION'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select initcap(TRANSACTION_DESCRIPTION) a ,TRANSACTION_TYPE_ID',
'from TBLTRANSACTIONTYPE a',
'where exists (select 1',
'              from TBLWORKFLOWSTATUS B join TBLWORKFLOWDTL c on c.id=b.WORKFLOW_DTL_ID',
'              where a.TRANSACTION_TYPE_ID=B.TRANSACTION_TYPE_ID',
'              and WEBPAGE_ID=:APP_PAGE_ID)',
'AND trunc(a.START_DATE) <= trunc(current_date)',
'AND (TRUNC(a.END_DATE) IS NULL OR TRUNC(a.END_DATE) >= TRUNC(current_date))',
'order by priority'))
,p_cHeight=>1
,p_colspan=>5
,p_grid_label_column_span=>2
,p_field_template=>2526760615038828570
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995093346475849391)
,p_name=>'P1417_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Wfl_Status_Description,Wfl_Status_Id',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'--and upper(Wfl_Status_Description) not like DECODE(:P1417_ID, NULL,''%VERI%'',''test'')   ',
'And Webpage_Id=:APP_PAGE_ID      ',
'and TRANSACTION_TYPE_ID=:P1417_TRANSACTION_TYPE_ID',
'AND upper(Wfl_Status_Description) NOT LIKE DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%APP%'',''test'') ',
'AND upper(Wfl_Status_Description) not like DECODE(pkg_global_fnts.chk_approver(nvl(V(''APP_USER''),USER)), 0,''%DISAPP%'',''test'') ',
'and upper(wfl_status_description) not like decode(upper(pkg_global_fnts.status_descript(:P1417_STATUS)),''VERIFY'', ''%KEY%'',''test'')',
'order by sequence'))
,p_lov_cascade_parent_items=>'P1417_TRANSACTION_TYPE_ID'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_column=>6
,p_grid_label_column_span=>2
,p_read_only_when_type=>'NEVER'
,p_field_template=>2526760615038828570
,p_item_css_classes=>'u-bold'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995093738946849391)
,p_name=>'P1417_REASON_FOR_CANCELLATION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Reason For Cancellation'
,p_source=>'REASON_FOR_CANCELLATION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_ONE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select y.value_description||case when y.value_description is null then '''' else '':-'' end||x.value_description a, x.ID  b',
'from table(pkg_global_fnts.get_lookup_value(''TBLREASON'')) X left outer join table(pkg_global_fnts.get_lookup_value(''TBLREASONTYPE'')) y on x.id=y.lookup_id',
'where  x.lookup_id=(select id from hr_hcf_lookup where table_value=''RTLC'' and org_id=:APP_ORG_ID)',
'AND x.org_id= :APP_ORG_ID',
''))
,p_cSize=>30
,p_read_only_when_type=>'NEVER'
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs::::::::'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'fetch_on_search', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995094155593849392)
,p_name=>'P1417_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_source_plug_id=>wwv_flow_imp.id(2495136435174271930)
,p_prompt=>'Remarks'
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>55
,p_cMaxlength=>400
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995094546707849392)
,p_name=>'P1417_COMENT_SWITCH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_item_default=>'0'
,p_prompt=>'Add Workflow Notes'
,p_display_as=>'NATIVE_YES_NO'
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(995094925865849392)
,p_name=>'P1417_WORK_FLOW_COMMENT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2495136612448274737)
,p_prompt=>'<font color="purple" size="2"><b> Work Flow Notes</b></font>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>2000
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>6
,p_grid_label_column_span=>2
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'Y',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995126684882849429)
,p_name=>'P1417_FORWARD_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2855761980832644938)
,p_prompt=>'Forward Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Send for Checking;KEYED,Send for Approval;CHECK,Send Verification Notification;VERIFIED'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995127098780849429)
,p_name=>'P1417_FORWARD_LIST'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2855761980832644938)
,p_prompt=>'Forward List'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P1417_FORWARD_STATUS = ''VERIFIED'' THEN',
'RETURN ''select USER_NAME A, USER_NAME B',
'from tbluser',
'where can_forward = ''''Y''''',
'and can_VERIFY = ''''Y''''',
'and UPPER(user_name) <> upper(:APP_USER)',
'and upper(user_name)  like ''''%@%''''',
'--AND user_name not like ''''%@INNOSYSGY.COM''''',
''';',
'ELSE ',
'RETURN ',
'''select USER_NAME A, USER_NAME B',
'from tbluser',
'where can_forward = ''''Y''''',
'and UPPER(user_name) <> upper(:APP_USER)',
'and upper(user_name)  like ''''%@%''''',
'--AND user_name not like ''''%@INNOSYSGY.COM''''',
''';',
'END IF;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P1417_FORWARD_STATUS'
,p_ajax_items_to_submit=>'P1417_FORWARD_STATUS'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>2318601014859922299
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
 p_id=>wwv_flow_imp.id(995127488669849430)
,p_name=>'P1417_OVERLAP_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2855761980832644938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(995127879562849430)
,p_name=>'P1417_L_URL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2855761980832644938)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663641862413837679)
,p_validation_name=>'enf_sicklv_compute_gross'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_compute_gross varchar2(20); v_LEAVE_TYPE varchar2(50);',
'begin',
'        ',
'    select UPPER(compute_gross) into v_compute_gross',
'    from hr_rcm_employee ',
'    where id =  :P1417_EMP_ID;',
'',
'SELECT UPPER(B.classification) into  v_LEAVE_TYPE',
'FROM hr_rcm_employee c join   HR_RCM_EMPLEAVEENTITLE a on c.id=a.emp_id',
'join hr_hcf_lookup b on a.leave_type_id=b.id',
'where a.id= :P1417_EMPLVENT_ID;',
'',
'--RETURN v_compute_gross;',
'',
'',
'if v_LEAVE_TYPE = ''DEDUCT_WHEN_APPLICABLE'' and v_compute_gross != ''BASIC_PAY'' and :P1417_LEAVE_MODE = ''DEDUCTION'' then',
'        return ''You cannot process sick or Illness leave as a deduction for wage based employees.'';',
'elsif  v_LEAVE_TYPE = ''DEDUCT_WHEN_APPLICABLE'' and v_compute_gross = ''BASIC_PAY'' AND :P1417_LEAVE_MODE = ''PAMENT'' then',
'         return  ''You cannot process sick or Illness leave as a payment for salary based employees.'';',
'else',
'         return '''';',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663640658881837678)
,p_validation_name=>'chk_adjfrom_vs_adjtodate'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if to_date(TO_CHAR(TO_DATE(nvl(:P1417_ADJUSTED_FROMDATE,:P1417_FROMDATE), ''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))> to_date(TO_CHAR(TO_DATE(nvl(:P1417_ADJUSTED_TODATE,:P1417_TODATE), ''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'')) then',
' return false;',
'else',
' return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The leave start/from date must be less than the end/stop date.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663641092485837679)
,p_validation_name=>'enf_workflow_seq'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF pkg_global_fnts.fn_enforce_wfl_seq(:P1417_TRANSACTION_TYPE_ID, :APP_PAGE_ID, :P1417_ID, :P1417_STATUS) =FALSE THEN',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The work flow sequence is set to enforce mode, select the next status value in sequence as it appear in the LOV.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663640313983837678)
,p_validation_name=>'chk_shift'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
' v_start date; v_end date;',
'',
'begin',
'',
'select trunc(DECODE(TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''), NULL, TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''))) ,  trunc(DECODE(TO_DATE(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY H'
||'H:MIPM''),NULL, TO_DATE(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''))) into v_start, v_end ',
'from dual;',
'',
'IF :P1417_SHIFT_ID IS NOT NULL AND v_start != v_end  THEN',
'  RETURN FALSE;',
'',
'ELSE',
'',
'  RETURN TRUE;',
'',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Shifts are entered for partial leave or those taken by hours instead of days. The start and end dates must be the same.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663639101770837677)
,p_validation_name=>'reject_approval_disapproval'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_approver(:APP_USER)=0 and pkg_global_fnts.status_descript(:P1417_STATUS) like ''%APPRO%'' then',
'  RETURN FALSE;',
'ELSE',
'  RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'User action disallowed. You are not an approver!'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663639480895837677)
,p_validation_name=>'reject_verification_unverification'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if pkg_global_fnts.chk_verifier(:APP_USER ,:APP_PAGE_ID )=0 and pkg_global_fnts.status_descript(:P1417_STATUS) like ''%VER%'' then',
'return FALSE;',
'ELSE',
' RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'You are not a verifier, actual disallowed.'
,p_validation_condition=>'CREATE,CREATE_AGAIN,SAVE'
,p_validation_condition_type=>'REQUEST_IN_CONDITION'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663639854949837678)
,p_validation_name=>'chk_unvailable_leave'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_PENDING number(10):=0; V_QUANTITY number(10):=0; V_PENDING_NO_CURRENT number(10):=0;  v_allow_overdraft number(4);  v_position_id number(10); v_LEAVE_TYPE_ID number(10); v_job_allow_leave number(10);',
'  v_leave_typo varchar2(50);',
'    ',
'BEGIN',
'',
'    select pkg_global_fnts.get_lookup_col(leave_type_id,''VALUE_DESCRIPTION'') a into v_leave_typo',
'    from hr_rcm_empleaveentitle',
'    where id = :P1417_EMPLVENT_ID;',
'',
'if v_leave_typo like ''%ANNUAL%'' then',
'',
'BEGIN',
'    ',
'      SELECT PENDING INTO V_PENDING',
'      FROM HR_LV_LEAVETRACK',
'      WHERE EMP_ID=:P1417_EMP_ID',
'      AND COMPANY_YEAR=EXTRACT(YEAR FROM  DECODE(TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''), NULL, TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')))',
'      AND EMPLVENT_ID=:P1417_EMPLVENT_ID;',
'      ',
'EXCEPTION',
'      WHEN OTHERS THEN',
'        V_PENDING:=0;',
'end;',
'   ',
'BEGIN',
'   ',
'    SELECT PENDING INTO V_PENDING_NO_CURRENT',
'    FROM HR_LV_LEAVETRACK',
'    WHERE EMP_ID=8521',
'    AND COMPANY_YEAR!=EXTRACT(YEAR FROM  DECODE(TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''), NULL, TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')))',
'    and COMPANY_YEAR =(select max(COMPANY_YEAR) from HR_LV_LEAVETRACK where EMPLVENT_ID=:P1417_EMPLVENT_ID)',
'    AND EMPLVENT_ID=:P1417_EMPLVENT_ID;',
'    ',
'EXCEPTION',
'  WHEN OTHERS THEN',
'    V_PENDING_NO_CURRENT:=0;',
'end;',
'    ',
'    ',
'   BEGIN',
'    ',
'      select QUANTITY, ALLOW_LEAVE_OVERDRAFT, position_id, LEAVE_TYPE_ID INTO V_QUANTITY, v_allow_overdraft, v_position_id, v_LEAVE_TYPE_ID',
'      FROM hr_rcm_employee c join  HR_RCM_EMPLEAVEENTITLE a on c.id=a.emp_id    ',
'      where  A.ID=:P1417_EMPLVENT_ID;',
'    ',
'    select allow_leave_overdraft into v_job_allow_leave',
'    from hr_hcf_jobleaveentitle',
'    where  LEAVE_TYPE_ID = v_LEAVE_TYPE_ID',
'    and (DECODE(TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''), NULL, TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')) ',
'    between start_date and  END_DATE or end_date is null)',
'    and job_id = (select job_id from hr_hcf_position where id = v_position_id);',
'    ',
'    EXCEPTION',
'      WHEN OTHERS THEN',
'        V_QUANTITY:=0;',
'    end;',
'  ',
'  ',
'if v_allow_overdraft = 0 and v_job_allow_leave = 0 then',
'',
'  IF (V_PENDING =0 AND TO_NUMBER(:P1417_DAYS_TAKEN) - TO_NUMBER(:P1417_HOLIDAYS) <= V_QUANTITY and :P1417_LEAVE_MODE!=''DEDUCTION'')',
'     or (V_PENDING >0 and TO_NUMBER(:P1417_DAYS_TAKEN) - TO_NUMBER(:P1417_HOLIDAYS) <= V_PENDING and :P1417_LEAVE_MODE!=''DEDUCTION'') ',
'     or (TO_NUMBER(:P1417_DAYS_TAKEN) - TO_NUMBER(:P1417_HOLIDAYS) <= V_PENDING_NO_CURRENT + V_QUANTITY) then',
'      RETURN TRUE;',
'  ELSE',
'      RETURN FALSE;',
'  end if;   ',
'  ',
'ELSE',
'      RETURN TRUE;',
'end if;',
'',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Either the Days taken for this leave is greater than what is pending or entitled to for the period! If management has granted this employee overdraft leave then active the status at the employee leave entitlement.'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663641476360837679)
,p_validation_name=>'chk_approval'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_test_approval number:=0;',
'  ',
'  begin',
'',
'        select count(1) into v_test_approval',
'        from tblapprovalhistory',
'        where table_name=''HR_LV_LEAVEHISTORY''',
'        and table_name_key=:P1417_ID;',
'        ',
'    if v_test_approval = 0 and pkg_global_fnts.status_descript(:P1417_STATUS) =''VERIFY'' then',
'        return FALSE;',
'    else',
'        return TRUE;',
'    end if;',
'  end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This current record must be approved, at least by one person before it can be verified.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663642312945837680)
,p_validation_name=>'chk_reason_for_cancellation'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'   if upper(pkg_global_fnts.status_descript(:P1417_STATUS)) like ''%CANC%'' and :P1417_REASON_FOR_CANCELLATION is null then ',
'     return   ''You must have a reason for cancellation'';',
'    else return null;',
'   end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_imp.id(663589973211837627)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(663638693705837677)
,p_validation_name=>'chk_payroll_days'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if to_number(:P1417_PAYROLL_DAYS) > to_number(:P1417_ACTUAL_DAYS)  then',
'        return ''Payroll Days cannot exceed Actual Days'';',
'    elsif (:P1417_ACTUAL_DAYS - :P1417_PENDING ) < :P1417_PAYROLL_DAYS then',
'        return ''Payroll Days cannot exceed the difference between Actual and Pending Days'';',
'    else return null;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_associated_item=>wwv_flow_imp.id(995088898354849386)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663645394336837682)
,p_name=>'set_leave_config_fields'
,p_event_sequence=>1
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_EMPLVENT_ID'
,p_condition_element=>'P1417_EMPLVENT_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663645862183837683)
,p_event_id=>wwv_flow_imp.id(663645394336837682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_LEAVETYPE_ID,P1417_QUOTA_CONTROL,P1417_REDUCE_LEAVE_DAYS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.ID,c.quota_control,a.reduce_leave_days from hr_lv_leavetype a ',
'      /*join (select value_description,id,org_id from hr_hcf_lookup',
'                  where table_name = ''TBLLEAVETYPE'') lookup on (lookup.id = a.leave_type and lookup.org_id = a.org_id)*/',
'                  join hr_rcm_empleaveentitle b on a.id = b.LEAVE_TYPE_ID',
'join hr_lv_leavepolicy c on c.id   = b.policy_id',
'                  where a.org_id = :APP_ORG_ID',
'                  and b.id = :P1417_EMPLVENT_ID',
'order by 1'))
,p_attribute_07=>'P1417_EMPLVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663646343770837683)
,p_event_id=>wwv_flow_imp.id(663645394336837682)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_UNVERIFED_PENDING'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  nvl(sum(actual_days),0) ',
'from hr_lv_leavehistory',
'where emp_id = :P1417_EMP_ID',
'and EMPLVENT_ID = :P1417_EMPLVENT_ID',
'and pkg_global_fnts.status_descript(status) not like ''VERIF%'';'))
,p_attribute_07=>'P1417_TODATE,P1417_EMP_ID,P1417_EMPLVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663646858643837683)
,p_event_id=>wwv_flow_imp.id(663645394336837682)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_L_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  APEX_PAGE.GET_URL (',
'            p_application => :APP_ID,',
'            p_session => null,',
'            p_page   => :APP_PAGE_ID,',
'            p_items  => ''P1417_ID'',',
'            p_values => :P1417_ID   ) A',
'                        from dual'))
,p_attribute_07=>'P1417_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663647282319837683)
,p_name=>'set_findall_holidays'
,p_event_sequence=>18
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_condition_element=>'P1417_LEAVETYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663647781842837684)
,p_event_id=>wwv_flow_imp.id(663647282319837683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_LEAVE_HOLIDAY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select pkg_leave.FN_FINDHOLIDAY( TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 TO_DATE(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 :P1417_EMPLVENT_ID,',
'                                 :P1417_EMP_ID,:APP_ORG_ID ) a from dual',
''))
,p_attribute_07=>'P1417_FROMDATE,P1417_TODATE,P1417_ADJUSTED_FROMDATE,P1417_ADJUSTED_TODATE,P1417_EMPLVENT_ID,P1417_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663648200341837684)
,p_name=>'add_NonWorking_Days'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_condition_element=>'P1417_LEAVETYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663648683866837684)
,p_event_id=>wwv_flow_imp.id(663648200341837684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_LEAVE_WEEKEND'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT pkg_leave.Fn_findNonWorkingDay(',
'    :P1417_EMP_ID,',
'    :P1417_EMPLVENT_ID,',
'   DECODE(TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''), NULL, TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')),',
'    DECODE(TO_DATE(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),NULL, TO_DATE(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''), TO_DATE(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''))',
'  )  a',
'from dual'))
,p_attribute_07=>'P1417_EMP_ID,P1417_EMPLVENT_ID,P1417_FROMDATE,P1417_TODATE,P1417_ADJUSTED_FROMDATE,P1417_ADJUSTED_TODATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663649993226837685)
,p_name=>'Print Letter Onpreme'
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(663591925502837628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where OWA_UTIL.get_cgi_env (''HTTP_HOST'') like ''%192.168.12.16%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663650514871837685)
,p_event_id=>wwv_flow_imp.id(663649993226837685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:in_hd_id=&P1417_ID.,PeoplePay_GPL/01_HR/Standard_Letters/Leave_approval_gpl'', "popupWindow", "scrollbars=yes");',
'',
'if (window.focus) {win.focus()}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663650847943837686)
,p_name=>'compute_takendays'
,p_event_sequence=>99
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_condition_element=>'P1417_LEAVETYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663651379197837686)
,p_event_id=>wwv_flow_imp.id(663650847943837686)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_DAYS_TAKEN,P1417_HOLIDAYS,P1417_ACTUAL_DAYS,P1417_LEAVE_DOLLAR_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'pkg_leave.fn_compute_leave_days_duration ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')) a, ',
'pkg_leave.fn_compute_holidays ( in_leave_days_duration => pkg_leave.fn_compute_leave_days_duration ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')), ',
'                                 in_leave_holiday => :P1417_LEAVE_HOLIDAY,',
'                                 in_emp_id => :P1417_EMP_ID,',
'                                 in_emplventid =>:P1417_EMPLVENT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM'')) b,',
'pkg_leave.fn_compute_leave_days_taken ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_leave_holiday => :P1417_LEAVE_HOLIDAY,',
'                                 in_emp_id => :P1417_EMP_ID,',
'                                 in_emplventid =>:P1417_EMPLVENT_ID',
'                            ) c',
',nvl(pkg_leave.fn_getleavedollarvalue (in_emp_id => :P1417_EMP_ID,',
'                               in_leave_type_id => :P1417_LEAVETYPE_ID,',
'                               in_empent_id => :P1417_EMPLVENT_ID,',
'                               in_days_taken => pkg_leave.fn_compute_leave_days_taken ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_leave_holiday => :P1417_LEAVE_HOLIDAY,',
'                                 in_emp_id => :P1417_EMP_ID,',
'                                 in_emplventid =>:P1417_EMPLVENT_ID',
'                            ), in_date_start => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM'')',
'                                ,in_affect_salary => ''NONE'' ),0) leave_dollar_value',
'from dual;              '))
,p_attribute_07=>'P1417_SHIFT_ID,P1417_FROMDATE,P1417_TODATE,P1417_ADJUSTED_TODATE,P1417_ADJUSTED_FROMDATE,P1417_LEAVE_HOLIDAY,P1417_EMP_ID,P1417_EMPLVENT_ID,P1417_LEAVETYPE_ID,P1417_REDUCE_LEAVE_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663652645613837687)
,p_name=>'show_comments'
,p_event_sequence=>149
,p_condition_element=>'P1417_COMENT_SWITCH'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663653133103837687)
,p_event_id=>wwv_flow_imp.id(663652645613837687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663653641933837688)
,p_event_id=>wwv_flow_imp.id(663652645613837687)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663654033340837688)
,p_name=>'show_comment'
,p_event_sequence=>159
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_COMENT_SWITCH'
,p_condition_element=>'P1417_COMENT_SWITCH'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663654588761837688)
,p_event_id=>wwv_flow_imp.id(663654033340837688)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663655040638837689)
,p_event_id=>wwv_flow_imp.id(663654033340837688)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_WORK_FLOW_COMMENT'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663655443506837689)
,p_name=>'set_cash_enable_show_ern'
,p_event_sequence=>169
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVE_MODE'
,p_condition_element=>'P1417_LEAVE_MODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663656021600837689)
,p_event_id=>wwv_flow_imp.id(663655443506837689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_LEAVE_DOLLAR_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'nvl(pkg_leave.fn_getleavedollarvalue (in_emp_id => :P1417_EMP_ID,',
'                               in_leave_type_id => :P1417_LEAVETYPE_ID,',
'                               in_empent_id => :P1417_EMPLVENT_ID,',
'                               in_days_taken => pkg_leave.fn_compute_leave_days_taken ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_leave_holiday => :P1417_LEAVE_HOLIDAY,',
'                                 in_emp_id => :P1417_EMP_ID,',
'                                 in_emplventid =>:P1417_EMPLVENT_ID',
'                            ),in_date_start => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM'')',
'                            ,in_affect_salary => :P1417_LEAVE_MODE ),0) leave_dollar_value',
'',
'from dual;              '))
,p_attribute_07=>'P1417_SHIFT_ID,P1417_FROMDATE,P1417_TODATE,P1417_ADJUSTED_TODATE,P1417_ADJUSTED_FROMDATE,P1417_LEAVE_HOLIDAY,P1417_EMP_ID,P1417_EMPLVENT_ID,P1417_LEAVETYPE_ID,P1417_REDUCE_LEAVE_DAYS,P1417_LEAVE_MODE,P1417_PAYROLL_DOLLAR_VALUE,P1417_PAYROLL_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663656443488837690)
,p_event_id=>wwv_flow_imp.id(663655443506837689)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_LEAVE_MODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
' case when  :P1417_LEAVE_MODE=''PAYMENT'' then ''CASH''         ',
'    else ''TIME'' end',
'   '))
,p_attribute_07=>'P1417_ID,P1417_LEAVE_MODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663657769595837690)
,p_name=>'Print Letter Cloud'
,p_event_sequence=>199
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(663591925502837628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'EXISTS'
,p_display_when_cond=>'select 1 from dual where upper(OWA_UTIL.get_cgi_env (''HTTP_HOST'')) like ''%PEOPLEPAY%'''
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663658250885837691)
,p_event_id=>wwv_flow_imp.id(663657769595837690)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//var win = window.open(''f?p=&APP_ID.:403:&APP_SESSION.::NO:403:P403_PARAMETERS,P403_REPORT_PATH:in_hd_id=&P1417_ID.,PeoplePay_GPL/01_HR/Standard_Letters/Leave_approval_gpl'', "popupWindow", "scrollbars=yes");',
'',
'//if (window.focus) {win.focus()}',
'',
'',
'var win = window.open(''http://apps4.innosysgy.com:8082/Report/showPDF?p2=/reports/PeoplePay_New_Cloud/01_HR/Standard_Letters/Leave_approval_gpl-in_hd_id=&P1417_ID.'',''popUpWindow'',''height=300,width=900,left=50,top=50,resizable=yes,scrollbars=yes,toolb'
||'ar=yes,menubar=no,location=yes,directories=no, status=yes'');',
'if (window.focus) {win.focus();}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663660489022837692)
,p_name=>'refresh'
,p_event_sequence=>239
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_FROMDATE,P1417_EMP_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663660931886837693)
,p_event_id=>wwv_flow_imp.id(663660489022837692)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_SHIFT_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663661398758837694)
,p_name=>'dy_message'
,p_event_sequence=>259
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_STATUS'
,p_condition_element=>'P1417_QUOTA_CONTROL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663661908228837694)
,p_event_id=>wwv_flow_imp.id(663661398758837694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'You are about to exceed your entitled leave'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663662320389837694)
,p_name=>'dy_show_hide_hr_denom'
,p_event_sequence=>279
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_DATESUB'
,p_condition_element=>'P1417_DATESUB'
,p_triggering_condition_type=>'LESS_THAN_OR_EQUAL'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663662727509837694)
,p_event_id=>wwv_flow_imp.id(663662320389837694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_SHIFT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663663234173837695)
,p_event_id=>wwv_flow_imp.id(663662320389837694)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_SHIFT_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663663647819837695)
,p_name=>'dy_open_alert_qc2'
,p_event_sequence=>289
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_DIFF_OF_QUOTA'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P1417_DIFF_OF_QUOTA").getValue().indexOf(''has'') >= 0'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663664139540837695)
,p_event_id=>wwv_flow_imp.id(663663647819837695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2707676698968718302)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663664679357837695)
,p_event_id=>wwv_flow_imp.id(663663647819837695)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2707676698968718302)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663665107863837696)
,p_name=>'dy_open_alert_qc1'
,p_event_sequence=>299
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_DIFF_OF_QUOTA'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'apex.item("P1417_DIFF_OF_QUOTA").getValue().indexOf(''not'') >= 0'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663665570724837696)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(663589973211837627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663666063213837696)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(663590771780837628)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663666555217837697)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2707679108347718326)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663667035009837697)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(663590389712837627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663667592422837697)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2707679108347718326)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663668104330837697)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(663590389712837627)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663668606010837698)
,p_event_id=>wwv_flow_imp.id(663665107863837696)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(663590771780837628)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663668978318837698)
,p_name=>'dy_calc_diff'
,p_event_sequence=>309
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_PENDING,,P1417_ACTUAL_DAYS'
,p_condition_element=>'P1417_PENDING'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663669511029837698)
,p_event_id=>wwv_flow_imp.id(663668978318837698)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_DIFF_OF_QUOTA'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663669972774837699)
,p_event_id=>wwv_flow_imp.id(663668978318837698)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_UNVERIFED_PENDING'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_retval number := 0;',
'begin',
'',
'    begin ',
'select sum(nvl(days_taken,0)) into l_retval',
'from hr_lv_leavehistory',
'where pkg_global_fnts.status_descript(:P1417_STATUS) <> ''VERIFY''',
'and EMPLVENT_ID  = :P1417_EMPLVENT_ID',
'and id <> :P1417_ID;',
'',
'exception when others then',
'    l_retval := 0;',
'return l_retval;',
'end;',
'    return l_retval;',
'end;'))
,p_attribute_07=>'P1417_STATUS,P1417_EMPLVENT_ID,P1417_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663670422457837699)
,p_event_id=>wwv_flow_imp.id(663668978318837698)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
':P1417_DIFF_OF_QUOTA := fn_chk_quota_alert(in_emp_id => :P1417_EMP_ID,',
'                                           in_pending => to_number(:P1417_PENDING), ',
'                                           in_actual_days => to_number(:P1417_ACTUAL_DAYS), ',
'                                           in_policy_id => :P1417_POLICY_ID);',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P1417_PENDING,P1417_ACTUAL_DAYS,P1417_POLICY_ID,P1417_EMP_ID'
,p_attribute_03=>'P1417_DIFF_OF_QUOTA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663670874090837699)
,p_name=>'chk_consecutive_leave'
,p_event_sequence=>319
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_condition_element=>'P1417_LEAVETYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663671370395837700)
,p_event_id=>wwv_flow_imp.id(663670874090837699)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_CONSECUTIVE_DAYS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
' pkg_leave.fn_check_consecutive_leavetype( ',
'in_empent_id => :P1417_EMPLVENT_ID',
',in_org_id => :APP_ORG_ID',
',in_fromdate => TO_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM'')',
',in_todate => TO_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM'')',
',in_emp_id => :P1417_EMP_ID',
' ) a from dual '))
,p_attribute_07=>'P1417_EMPLVENT_ID,P1417_FROMDATE,P1417_TODATE,P1417_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663671791596837700)
,p_name=>'dy_set_leave_days_reduce'
,p_event_sequence=>329
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_CONSECUTIVE_DAYS'
,p_condition_element=>'P1417_CONSECUTIVE_DAYS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663672321705837700)
,p_event_id=>wwv_flow_imp.id(663671791596837700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_REDUCE_LEAVE_DAYS'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_reduce_days number(5);',
'begin',
'',
'if :P1417_CONSECUTIVE_DAYS = 0 then ',
'    select case when pkg_leave.fn_compute_leave_days_taken ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_leave_holiday => :P1417_LEAVE_HOLIDAY,',
'                                 in_emp_id => :P1417_EMP_ID,',
'                                 in_emplventid =>:P1417_EMPLVENT_ID',
'                            ) < reduce_leave_days then ',
'                            pkg_leave.fn_compute_leave_days_taken ( in_shift_id => :P1417_SHIFT_ID,',
'                                 in_fromdate => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_to_date => to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_todate => to_date(:P1417_ADJUSTED_TODATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_adjusted_fromdate => to_date(:P1417_ADJUSTED_FROMDATE,''DD-MON-YYYY HH:MIPM''),',
'                                 in_leave_holiday => :P1417_LEAVE_HOLIDAY,',
'                                 in_emp_id => :P1417_EMP_ID,',
'                                 in_emplventid =>:P1417_EMPLVENT_ID',
'                            ) else  reduce_leave_days end  x into l_reduce_days',
'                            ',
'                            from hr_lv_leavetype a ',
'      /*join (select value_description,id,org_id from hr_hcf_lookup',
'                  where table_name = ''TBLLEAVETYPE'') lookup on (lookup.id = a.leave_type and lookup.org_id = a.org_id)*/',
'                  join hr_rcm_empleaveentitle b on a.id = b.LEAVE_TYPE_ID',
'                  where a.org_id = :APP_ORG_ID',
'                  and b.id = :P1417_EMPLVENT_ID',
'order by 1;',
'elsif :P1417_CONSECUTIVE_DAYS > 0 then ',
'        l_reduce_days :=  0 ;',
'',
'end if;',
'return l_reduce_days;',
'',
'exception when others then return 0;',
'end;'))
,p_attribute_07=>'P1417_CONSECUTIVE_DAYS,P1417_SHIFT_ID,P1417_FROMDATE,P1417_TODATE,P1417_ADJUSTED_TODATE,P1417_ADJUSTED_FROMDATE,P1417_LEAVE_HOLIDAY,P1417_EMP_ID,P1417_EMPLVENT_ID,P1417_LEAVETYPE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663672706481837700)
,p_name=>'dy_set_payroll_dollarvalue'
,p_event_sequence=>339
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_PAYROLL_DAYS'
,p_condition_element=>'P1417_PAYROLL_DAYS'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663673214819837701)
,p_event_id=>wwv_flow_imp.id(663672706481837700)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_PAYROLL_DOLLAR_VALUE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'nvl(pkg_leave.fn_getleavedollarvalue (in_emp_id => :P1417_EMP_ID,',
'                               in_leave_type_id => :P1417_LEAVETYPE_ID,',
'                               in_empent_id => :P1417_EMPLVENT_ID,',
'                               in_days_taken => :P1417_PAYROLL_DAYS - :P1417_REDUCE_LEAVE_DAYS,in_date_start => to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM'')',
'                            ,in_affect_salary => :P1417_LEAVE_MODE ),0) payroll_dollar_value',
'from dual;              '))
,p_attribute_07=>'P1417_SHIFT_ID,P1417_FROMDATE,P1417_TODATE,P1417_ADJUSTED_TODATE,P1417_ADJUSTED_FROMDATE,P1417_LEAVE_HOLIDAY,P1417_EMP_ID,P1417_EMPLVENT_ID,P1417_LEAVETYPE_ID,P1417_REDUCE_LEAVE_DAYS,P1417_PAYROLL_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663673587113837701)
,p_name=>'dy_set_resumption_date'
,p_event_sequence=>349
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_TODATE'
,p_condition_element=>'P1417_TODATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663674039205837701)
,p_event_id=>wwv_flow_imp.id(663673587113837701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_RESUMPTION_DATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'trunc(TO_DATE(:P1417_TODATE,''DD-MON-YYYY HH:MIAM'')) + 1'
,p_attribute_07=>'P1417_TODATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663674481235837702)
,p_name=>'open_region'
,p_event_sequence=>359
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(663592360991837628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663675001272837702)
,p_event_id=>wwv_flow_imp.id(663674481235837702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2855761980832644938)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663675419122837702)
,p_name=>'set_policy'
,p_event_sequence=>369
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_condition_element=>'P1417_LEAVETYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663675896306837702)
,p_event_id=>wwv_flow_imp.id(663675419122837702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_POLICY_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select policy_id',
'from hr_rcm_empleaveentitle',
'where id = :P1417_EMPLVENT_ID;'))
,p_attribute_07=>'P1417_EMPLVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663676258927837703)
,p_name=>'dy_set_start_date'
,p_event_sequence=>379
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_DAY_SLIDER'
,p_condition_element=>'P1417_DAY_SLIDER'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663676807302837703)
,p_event_id=>wwv_flow_imp.id(663676258927837703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_FROMDATE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'fn_add_decimal_to_date(in_date => to_date(:P1417_SLIDER_DATE,''DD-MON-YYYY HH:MIAM''), in_decimal => :P1417_DAY_SLIDER)',
''))
,p_attribute_07=>'P1417_SLIDER_DATE,P1417_DAY_SLIDER'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663677172802837703)
,p_name=>'set_value'
,p_event_sequence=>389
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_FROMDATE,P1417_TODATE'
,p_condition_element=>'P1417_FROMDATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663677659229837704)
,p_event_id=>wwv_flow_imp.id(663677172802837703)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_DATES'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'round(to_date (:P1417_TODATE,''DD-MON-YYYY HH:MIAM'') - to_date (:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM''),2)'
,p_attribute_07=>'P1417_TODATE,P1417_FROMDATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663678025873837704)
,p_name=>'hideshowslider'
,p_event_sequence=>399
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_DATES'
,p_condition_element=>'P1417_DATES'
,p_triggering_condition_type=>'GREATER_THAN'
,p_triggering_expression=>'1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663678525877837704)
,p_event_id=>wwv_flow_imp.id(663678025873837704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_DAY_SLIDER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663679073067837705)
,p_event_id=>wwv_flow_imp.id(663678025873837704)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_DAY_SLIDER'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663679432009837705)
,p_name=>'get_pending_days'
,p_event_sequence=>409
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_condition_element=>'P1417_LEAVETYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663680016282837705)
,p_event_id=>wwv_flow_imp.id(663679432009837705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_PENDING'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(pending ,0)',
'from hr_lv_leavetrack',
'where emplvent_id = :P1417_EMPLVENT_ID',
'and TO_DATE(to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'') between lv_track_effective_date and end_date'))
,p_attribute_07=>'P1417_EMPLVENT_ID,P1417_FROMDATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663680359292837705)
,p_name=>'set_dy_class'
,p_event_sequence=>419
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_STATUS'
,p_condition_element=>'P1417_STATUS'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'466,2946'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663680841715837706)
,p_event_id=>wwv_flow_imp.id(663680359292837705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2495136435174271930)
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663681408953837706)
,p_event_id=>wwv_flow_imp.id(663680359292837705)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2495136612448274737)
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663681854170837706)
,p_event_id=>wwv_flow_imp.id(663680359292837705)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ADD_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_LEAVE_MODE,P1417_ORG_STRUCTURE,P1417_REMARKS,P1417_TRANSACTION_TYPE_ID'
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663682341815837706)
,p_event_id=>wwv_flow_imp.id(663680359292837705)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2495136435174271930)
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663682829031837707)
,p_event_id=>wwv_flow_imp.id(663680359292837705)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REMOVE_CLASS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_STATUS,P1417_REASON_FOR_CANCELLATION'
,p_attribute_01=>'display_only'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663683236476837707)
,p_name=>'dy_populate_emplvent_id'
,p_event_sequence=>429
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVE_REQUEST_TYPE_ID'
,p_condition_element=>'P1417_LEAVE_REQUEST_TYPE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663683792511837707)
,p_event_id=>wwv_flow_imp.id(663683236476837707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_EMPLVENT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select elv.id ',
'from hr_rcm_empleaveentitle elv',
' join hr_lv_leavetype lt on elv.leave_type_id = lt.leave_type',
'where elv.emp_id =:P1417_EMP_ID',
'and lt.id = :P1417_LEAVE_REQUEST_TYPE_ID',
'and TO_DATE(to_date(:P1417_FROMDATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY'') between elv.start_date  and nvl(elv.end_date,TO_DATE(to_date(:P1417_TODATE,''DD-MON-YYYY HH:MIPM''),''DD-MON-YYYY''))'))
,p_attribute_07=>'P1417_EMP_ID,P1417_LEAVE_REQUEST_TYPE_ID,P1417_FROMDATE,P1417_TODATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663684182104837708)
,p_name=>'show_pay_days_option'
,p_event_sequence=>439
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVE_MODE'
,p_condition_element=>'P1417_LEAVE_MODE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'NONE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663684688641837708)
,p_event_id=>wwv_flow_imp.id(663684182104837708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_PAYROLL_DAYS'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663685195113837708)
,p_event_id=>wwv_flow_imp.id(663684182104837708)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_PAYROLL_DAYS'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663685563666837708)
,p_name=>'dy_set_compute_gross'
,p_event_sequence=>459
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_LEAVETYPE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663686104467837709)
,p_event_id=>wwv_flow_imp.id(663685563666837708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_COMPUTE_GROSS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select compute_gross',
'from hr_rcm_employee where id = :P1417_EMP_ID;'))
,p_attribute_07=>'P1417_EMP_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663686424653837709)
,p_name=>'set_empent_id'
,p_event_sequence=>468
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2496465806361385337)
,p_triggering_element=>'INC_DED_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663686978514837709)
,p_event_id=>wwv_flow_imp.id(663686424653837709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'EMPENT_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id ',
'from hr_rcm_empentitle',
'where income_code_id = :INC_DED_ID',
'and emp_id = :P1417_EMP_ID',
'and (start_date between to_date(TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY'') and current_date OR start_date < to_date(TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY''))',
'and (end_date is null or end_date <= to_date(TO_DATE(:P1417_TODATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY'') or end_date >= current_date) '))
,p_attribute_07=>'INC_DED_ID,P1417_EMP_ID,P1417_FROMDATE,P1417_TODATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663687336374837710)
,p_name=>'dy_set_rate'
,p_event_sequence=>469
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2496465806361385337)
,p_triggering_element=>'INC_DED_ID,EMPENT_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'INC_DED_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663687919631837710)
,p_event_id=>wwv_flow_imp.id(663687336374837710)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'RATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_rate number := 0;',
'begin',
'',
'    begin',
'if :AFFECT_SALARY = ''PAYMENT'' then ',
'    ',
'    select rate into l_rate',
'    from table(pKG_GENERATORS.gen_Adhocposting(to_date(TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY'') , ',
'                                                :EMPENT_ID, ',
'                                                null, ',
'                                                :APP_ORG_ID, ',
'                                                null));',
'',
'elsif :AFFECT_SALARY = ''DEDUCTION'' then',
'',
'l_rate :=  nvl(pkg_hr.get_entitlement_rate(in_org_id => :APP_ORG_ID',
'                         ,in_emp_id => :P1417_EMP_ID',
'                         ,in_entitlement => null',
'                         ,in_deduct_code => :INC_DED_ID',
'                         ,in_start_date => to_date(TO_DATE(:P1417_FROMDATE,''DD-MON-YYYY HH:MIAM'' ),''DD-MON-YYYY'')),0);',
'',
'else l_rate := 0;',
'',
'end if;',
'exception ',
'    when no_data_found then l_rate := 0;',
'end;',
'',
'return l_rate;',
'end;'))
,p_attribute_07=>'AFFECT_SALARY,P1417_EMP_ID,EMPENT_ID,P1417_FROMDATE,INC_DED_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663688251085837710)
,p_name=>'dy_set_policy_code'
,p_event_sequence=>489
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1417_POLICY_ID'
,p_condition_element=>'P1417_POLICY_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663688731208837710)
,p_event_id=>wwv_flow_imp.id(663688251085837710)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1417_POLICY_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select lv_policy_code',
'from hr_lv_leavepolicy',
'where id = :P1417_POLICY_ID'))
,p_attribute_07=>'P1417_POLICY_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663689135104837711)
,p_name=>'dy_calculate_amount'
,p_event_sequence=>499
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(2496465806361385337)
,p_triggering_element=>'PAYROLL_DAYS,PERCENTAGE,RATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663689668177837711)
,p_event_id=>wwv_flow_imp.id(663689135104837711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'AMOUNT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':PERCENTAGE/100 * :RATE * :PAYROLL_DAYS'
,p_attribute_07=>'PERCENTAGE,RATE,PAYROLL_DAYS'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(663690097326837711)
,p_name=>'Dy_click_clock_show_shift'
,p_event_sequence=>509
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#clocklink'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663690575022837711)
,p_event_id=>wwv_flow_imp.id(663690097326837711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2490089304970552603)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(663691082046837712)
,p_event_id=>wwv_flow_imp.id(663690097326837711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2490089304970552603)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(663642924762837680)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_imp.id(2495136435174271930)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from HR_LV_LEAVEHISTORY'
,p_internal_uid=>20167002883083175
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(663643335802837680)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2495136435174271930)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process Row of HR_LV_LEAVEHISTORY'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
,p_internal_uid=>20167413923083175
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(663643794317837680)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(663589614678837627)
,p_internal_uid=>20167872438083175
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(663644221086837681)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'auto_notify'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'   get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'   v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'   v_LEAVE_TYPE varchar2(100);',
'   ',
'begin',
'',
'    select initcap(TRANSACTION_DESCRIPTION)  into get_transaction ',
'    from TBLTRANSACTIONTYPE ',
'    where TRANSACTION_TYPE_ID=:P1417_TRANSACTION_TYPE_ID;',
'',
'    select WFL_STATUS_DESCRIPTION into v_description',
'    from tblworkflowstatus',
'    where WFL_STATUS_ID=:P1417_STATUS;',
'',
'    SELECT UPPER(B.leave_description) into  v_LEAVE_TYPE',
'    From Hr_Rcm_Employee C Join   Hr_Rcm_Empleaveentitle A On C.Id=A.Emp_Id',
'    join hr_lv_leavetype b on a.leave_type_id=b.id',
'    Where a.id = :P1417_EMPLVENT_ID;',
'',
'',
'  pkg_biz_rules.pop_notification',
'(',
'	get_transaction||'' for: ''||nvl(:P1417_LEAVE_TYPE,v_LEAVE_TYPE),',
'	nvl(V(''APP_USER''),user),',
'	''ACTIVE'',',
'	current_date,	''f?p=''||:APP_ID||'':''||:APP_PAGE_ID||'':''||''::NO::P''||:APP_PAGE_ID||''_ID:''||:P1417_ID,',
'	v_description||'' ''||get_transaction||'' for: ''||''Leave History'',',
'	:P1417_STATUS,:APP_PAGE_ID,:P1417_TRANSACTION_TYPE_ID,',
'        ''HR_LV_LEAVEHISTORY'',:P1417_WORK_FLOW_COMMENT, :P1417_ID);',
'',
'--NVL(V(''APP_USER''),user)',
'',
' if pkg_global_fnts.status_descript(:P1417_STATUS) = ''APPROVED'' then    ',
'      pkg_global_fnts.approve_record(:APP_USER, ''HR_LV_LEAVEHISTORY'',''ID'', :P1417_ID);',
'',
'  elsif pkg_global_fnts.status_descript(:P1417_STATUS) = ''DISAPPROVED''  /*pkg_global_fnts.status_descript(:P1417_STATUS) like ''CANCEL%''*/ then',
'',
'      pkg_global_fnts.disapprove_record(:APP_USER, ''HR_LV_LEAVEHISTORY'', ''ID'', :P1417_ID);       ',
' end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(663589973211837627)
,p_process_when=>'pkg_global_fnts.status_descript(:P1417_STATUS) IN ( ''APPROVED'', ''DISAPPROVED'', ''SEND FOR'')'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>20168299207083176
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(663644931041837681)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'manual_forward'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_selected APEX_APPLICATION_GLOBAL.VC_ARR2;',
'     get_transaction TBLTRANSACTIONTYPE.TRANSACTION_DESCRIPTION%TYPE; ',
'     v_description tblworkflowstatus.WFL_STATUS_DESCRIPTION%TYPE;',
'     l_workflow_desc varchar2(3000);',
'     l_status varchar2(250);',
'     l_department varchar2(2000);',
'     l_name varchar2(5000);',
'',
'	 ',
'begin',
'    ',
'begin',
'select unit_name into l_department',
'from hr_hcf_orgstructuredtl',
'where id = :P1417_ORG_STRUCTURE;',
'',
'exception',
'when others then null;',
'end;',
'',
'',
'begin',
'',
'SELECT ',
'    initcap(ind.surname || '', '' || nvl(ind.first_name, '''')) || '' '' || nvl(ind.middle_name, '''') || ''(No.:'' || emp.emp_company_no || '')'' into l_name ',
'FROM',
'    hr_rcm_employee emp',
'    LEFT JOIN hr_rcm_individual ind on emp.ind_id = ind.id',
'    where emp.org_id = :APP_ORG_ID',
'    and emp.id = :P1417_EMP_ID;',
'',
'exception',
'when others then null;',
'end;',
'',
'     select   case when :P1417_FORWARD_STATUS  = ''KEYED'' then',
'                       ''Keyed Records sent for Checking for '' || initcap(:P1417_LEAVE_TYPE) || '' for '' || l_name  || '' in department: '' || l_department ',
'                   when :P1417_FORWARD_STATUS = ''CHECK'' then ',
'                       ''Checked Records sent for Approval for ''  || initcap(:P1417_LEAVE_TYPE) || '' for '' || l_name  || '' in department: '' || l_department',
'                    when :P1417_FORWARD_STATUS  = ''VERIFIED'' then',
'                       ''Records Verified for '' || initcap(:P1417_LEAVE_TYPE) || '' for '' || l_name  || '' in department: '' || l_department',
'               end x,',
'            case when :P1417_FORWARD_STATUS  = ''KEYED'' then',
'                       ''Keyed''',
'                   when :P1417_FORWARD_STATUS = ''CHECK'' then ',
'                      ''Checked''',
'                   when :P1417_FORWARD_STATUS  = ''VERIFIED'' then',
'                       ''Verified''',
'               end into l_workflow_desc,l_status',
'        from dual ;',
'',
'',
'-- Convert the colon separated string of values into',
'-- a PL/SQL array',
'l_selected := APEX_UTIL.STRING_TO_TABLE(:P1417_FORWARD_LIST || '':'' || upper(:APP_USER));',
'--',
'-- Loop over array to insert department numbers and current_date',
'--',
'FOR i IN 1..l_selected.count LOOP',
'begin',
'	pop_manual_notification',
'                        (',
'                            l_workflow_desc ,',
'                            l_selected(i),',
'                            l_status,',
'                            current_date,',
'                            :P1417_L_URL,',
'                            l_status,',
'                            1,',
'                            ''1'',',
'                            ''HR_LV_LEAVEHISTORY'',',
'                            ''1''',
'                        );	',
'-- exception ',
'-- when others then null;',
'end;',
'END LOOP;',
'  :P1417_FORWARD_LIST:=null;',
'  ',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(663636153423837675)
,p_process_success_message=>'Sent Successfully'
,p_internal_uid=>20169009162083176
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(663628326969837665)
,p_process_sequence=>160
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2496465806361385337)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Affect Salary - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>20152405090083160
);
wwv_flow_imp.component_end;
end;
/
