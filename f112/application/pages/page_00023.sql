prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>23
,p_name=>'Administration'
,p_step_title=>'Utilities'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(3278888442163947016)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(169429799058457752)
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
 p_id=>wwv_flow_imp.id(3237031064247219841)
,p_plug_name=>'Workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--noBorder:t-Region--hiddenOverflow'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3326939919346323089)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3237383448592379956)
,p_plug_name=>'Query'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3326945352702323094)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3237703544636557890)
,p_plug_name=>'Tools'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent13:t-Region--noBorder:t-Region--hiddenOverflow:t-Form--noPadding'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--basic:t-Cards--5cols:t-Cards--animColorFill'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_location=>null
,p_list_id=>wwv_flow_imp.id(3326952778235323112)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2886769488667748277
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4959471430745887765)
,p_plug_name=>'Reset Application Data'
,p_region_template_options=>'#DEFAULT#:t-Region--accent13:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_plug_display_column=>1
,p_location=>null
,p_plug_source=>'<p>This application uses sample tables called EBA_DEMO_DA_EMP and EBA_DEMO_DA_DEPT.</p>'
,p_plug_query_headings_type=>'QUERY_COLUMNS'
,p_plug_query_num_rows=>15
,p_plug_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_plug_query_show_nulls_as=>' - '
,p_plug_display_condition_type=>'NEVER'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326954984735323134)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4959471430745887765)
,p_button_name=>'RESET_DATA'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Data'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326954560797323129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4959471430745887765)
,p_button_name=>'RETURN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2349107722467437027
,p_button_image_alt=>'Return'
,p_button_position=>'CLOSE'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3326953040179323114)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:RP,1::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_comment=>'Created 14-DEC-2011 13:59 by MIKE'
);
wwv_flow_imp.component_end;
end;
/
