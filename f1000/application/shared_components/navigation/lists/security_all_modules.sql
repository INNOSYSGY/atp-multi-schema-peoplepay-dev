prompt --application/shared_components/navigation/lists/security_all_modules
begin
--   Manifest
--     LIST: SECURITY_ALL_MODULES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3846793613195446839)
,p_name=>'SECURITY_ALL_MODULES'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT null, ',
'        page_label label,   ',
'      ''f?p=&APP_ID.:''||webpage_id||'':''||:APP_SESSION  target, ',
'       ''YES'' is_current, ',
'       new_icon image, ',
'       null image_attrib, ',
'       null image_alt,',
'       CARD_DESCRIPTION attribute1',
'FROM  QRY_USER_PAGE_DML_ACCESS_START',
'where application_tab=''SECURITY''',
'AND WEBPAGE_TYPE=''REPORT''',
'ORDER BY page_label',
''))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
