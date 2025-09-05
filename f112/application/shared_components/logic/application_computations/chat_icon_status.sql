prompt --application/shared_components/logic/application_computations/chat_icon_status
begin
--   Manifest
--     APPLICATION COMPUTATION: CHAT_ICON_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(135861695804904364)
,p_computation_sequence=>10
,p_computation_item=>'CHAT_ICON_STATUS'
,p_computation_point=>'AFTER_LOGIN'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when count(1) > 0 then ''fa-comments fam-plus fam-is-success'' else ''fa-comments'' end show_icon ',
'from APP_GLO_CHATRECIPIENTS',
'where USER_NAME = :APP_USER',
'and comment_read= 0'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
