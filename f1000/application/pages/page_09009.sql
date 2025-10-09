prompt --application/pages/page_09009
begin
--   Manifest
--     PAGE: 09009
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
 p_id=>9009
,p_name=>'testReport'
,p_step_title=>'testReport'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3847250298521523737)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_HTML_CODE VARCHAR2(3000);',
'V_REPORT_URL VARCHAR2(3000);',
'begin',
'',
'--function taking :P402_PREPORT_ID AND :P402_PARAMETERS--',
'--V_REPORT_URL := pkg_reports.fn_build_report_url(:P402_REPORT_ID)||:P402_PARAMATERS;',
'--V_HTML_CODE :=''<iframe src="''||V_REPORT_URL||''"''||'' height=100% width=100%></iframe>'';',
'V_HTML_CODE :=''<iframe src="http://apps4.innosysgy.com:8082/jasperserver/flow.html?_flowId=viewReportFlow&reportUnit=/reports/PeoplePay_GPL/01_HR/HR_09&output=pdf&j_username=jasperadmin&j_password=Inno$y$jasperadmin&IN_ORG_ID=17832" height=100% width'
||'=100%></iframe>'';',
'',
'htp.p(V_HTML_CODE);',
'end;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp.component_end;
end;
/
