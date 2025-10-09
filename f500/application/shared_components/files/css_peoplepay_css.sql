prompt --application/shared_components/files/css_peoplepay_css
begin
--   Manifest
--     APP STATIC FILES: 500
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E737472657463682D434B45203E206469762E742D466F726D2D696E707574436F6E7461696E6572203E206469762E742D466F726D2D6974656D57726170706572203E206469767B0D0A77696474683A20313030253B0D0A7D0D0A0D0A2E737472657463';
wwv_flow_imp.g_varchar2_table(2) := '682D434B45203E206469762E742D466F726D2D696E707574436F6E7461696E6572203E206469762E742D466F726D2D6974656D57726170706572203E20646976203E206469767B0D0A77696474683A20696E697469616C2021696D706F7274616E743B0D';
wwv_flow_imp.g_varchar2_table(3) := '0A7D0D0A0D0A2E646973706C61795F6F6E6C797B20200D0A20202020706F696E7465722D6576656E74733A206E6F6E653B0D0A202020206261636B67726F756E642D636F6C6F723A2077686974653B0D0A20202020666F6E742D73697A653A313570783B';
wwv_flow_imp.g_varchar2_table(4) := '0D0A20202020666F6E742D7765696768743A626F6C643B0D0A7D';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(3695359411005748245)
,p_file_name=>'css/peoplepay.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
