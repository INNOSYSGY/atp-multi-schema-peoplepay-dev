prompt --application/pages/page_00093
begin
--   Manifest
--     PAGE: 00093
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
 p_id=>93
,p_name=>'smtp.js test'
,p_step_title=>'smtp.js test'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709278595628994255)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'',
'<head>',
'    <title></title>',
'    <script src="https://smtpjs.com/v3/smtp.js"></script>',
'    <script type="text/javascript">',
'        function sendEmail() {',
'            Email.send({',
'                    Host: "smtp.elasticemail.com",',
'                    Username: "mjkhan122143@gmail.com",',
'                    Password: "9B86EB024545A71D921A69D459F120D1E26D",',
'                    To: "mkhan@innosysgy.com",',
'                    From: "mjkhan122143@gmail.com",',
'                    Subject: "This is the subject",',
'                    Body: "And this is the body"',
'                })',
'                .then(function(message) {',
'                    alert("mail sent successfully")',
'                });',
'        }',
'    </script>',
'</head>',
'',
'<body>',
'    <form method="post">',
'        <input type="button" value="Send Email" onclick="sendEmail()" />',
'    </form>',
'</body>',
'',
'</html>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/
