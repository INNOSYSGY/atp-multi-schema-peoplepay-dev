prompt --application/pages/page_123456
begin
--   Manifest
--     PAGE: 123456
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
 p_id=>123456
,p_name=>'test_email'
,p_step_title=>'test_email'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3708777174496921671)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3708777279325921672)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3708777174496921671)
,p_button_name=>'Send_email'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Send Email'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3701361616675713361)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3708777174496921671)
,p_button_name=>'Send2'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Send2'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3709618311940806969)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3708777174496921671)
,p_button_name=>'Send_JS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Send Js'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3709617863154806965)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3708777174496921671)
,p_button_name=>'Send_PLSQL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Send Plsql'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3701361833704713363)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3708777279325921672)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3701361751011713362)
,p_event_id=>wwv_flow_imp.id(3701361833704713363)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var soapRequest =''<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://WebServices/">'' +',
'   ''<soapenv:Header/><soapenv:Body><web:getHelloWorldAsString/></soapenv:Body></soapenv:Envelope>'';',
'',
'jQuery.ajax({',
'          url: ''http://apps3.innosysgy.com:8080/Report/hello'',',
'          type: ''POST'',',
'          //dataType: ''xml'',',
'          //data: soapRequest,',
'          contentType: ''text/xml;charset=utf-8'',          ',
'          timeout: 10000,       ',
'          success: function( response ){',
'              ',
'              alert("success!!!");',
'          },',
'',
'          error: function(XMLHttpRequest,textStatus, errorThrown){',
'              ',
'              alert("error : " + errorThrown);',
'          }',
'',
'  });'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3701361527806713360)
,p_name=>'New_1'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3701361616675713361)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3701361412646713359)
,p_event_id=>wwv_flow_imp.id(3701361527806713360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var xmlhttp = new XMLHttpRequest();',
'            xmlhttp.open(''POST'',''https://apps4.innosysgy.com:8443/Report/hello'', true);',
'',
'            // build SOAP request',
'            var sr =''<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:web="http://WebServices/"><soapenv:Header/><soapenv:Body><web:getHelloWorldAsString/></soapenv:Body></soapenv:Envelope>'';',
'',
'          /*  xmlhttp.onload = function() {',
'                   alert("Loaded");',
'              };',
'',
'',
'                xmlhttp.onerror = function() { // only triggers if the request couldn''t be made at all',
'                  alert("Network Error");',
'                };*/',
'',
'            xmlhttp.onreadystatechange = function () {',
'                   ',
'                if (xmlhttp.readyState == 4) {',
'                    if (xmlhttp.status == 200) {',
'                        alert(xmlhttp.responseText);',
'                        // alert(''done. use firebug/console to see network response'');',
'                    }',
'                    else {alert(xmlhttp.status);}',
'                }',
'            }  ',
'',
' ',
'',
'            // Send the POST request',
'            xmlhttp.setRequestHeader(''Content-Type'', ''text/xml'');',
'            xmlhttp.send(sr);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3709617956163806966)
,p_name=>'New_2'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3709617863154806965)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3709618046400806967)
,p_event_id=>wwv_flow_imp.id(3709617956163806966)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_envelope   CLOB;',
'    l_xml        XMLTYPE;',
'BEGIN',
'    l_envelope := ''<?xml version="1.0" encoding="UTF-8"?>',
'<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/"xmlns:xs="http://WebServices/">',
'    <soap:Header/>',
'        <soap:Body>',
'            <web:getHelloWorldAsString/>',
'        </soap:Body>',
'</soapenv:Envelope>'';',
'    l_xml := apex_web_service.make_request(',
'                            p_url => ''http://apps3.innosysgy.com:8080/Report/hello''',
'                           ,p_action => ''http://apps3.innosysgy.com:8080/Report/hello'', ',
'                            p_envelope => l_envelope);',
'',
'END;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3709618424782806970)
,p_name=>'New_3'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3709618311940806969)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3709618444179806971)
,p_event_id=>wwv_flow_imp.id(3709618424782806970)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var xmlhttp = new XMLHttpRequest();',
'            xmlhttp.open(''POST'', ''http://apps3.innosysgy.com:8080/Report/hello'', true);',
'',
'            // build SOAP request',
'            var sr =',
'                ''<?xml version="1.0" encoding="utf-8"?>'' +',
'                ''<soapenv:Envelope '' + ',
'                    ''xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" '' +',
'                    ''xmlns:api="http://127.0.0.1/Integrics/Enswitch/API" '' +',
'                    ''xmlns:xsd="http://www.w3.org/2001/XMLSchema" '' +',
'                    ''xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">'' +',
'                    ''<soapenv:Body>'' +',
'                        ''<api:some_api_call soapenv:encodingStyle="http://schemas.xmlsoap.org/soap/encoding/">'' +',
'                            ''<username xsi:type="xsd:string">login_username</username>'' +',
'                            ''<password xsi:type="xsd:string">password</password>'' +',
'                        ''</api:some_api_call>'' +',
'                    ''</soapenv:Body>'' +',
'                ''</soapenv:Envelope>'';',
'',
'            xmlhttp.onreadystatechange = function () {',
'                if (xmlhttp.readyState == 4) {',
'                    if (xmlhttp.status == 200) {',
'                        alert(xmlhttp.responseText);',
'                        // alert(''done. use firebug/console to see network response'');',
'                    }',
'                }',
'            };',
'            // Send the POST request',
'            xmlhttp.setRequestHeader(''Content-Type'', ''text/xml'');',
'            xmlhttp.send(sr);',
'            // send request',
'            // ...'))
);
wwv_flow_imp.component_end;
end;
/
