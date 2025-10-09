prompt --application/shared_components/logic/application_items/file_id
begin
--   Manifest
--     APPLICATION ITEM: FILE_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(3831315451255813573)
,p_name=>'FILE_ID'
,p_protection_level=>'N'
,p_escape_on_http_output=>'N'
,p_item_comment=>'This is a generic item used to fetch things via ajax. Used for fetching images.'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
