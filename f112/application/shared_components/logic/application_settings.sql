prompt --application/shared_components/logic/application_settings
begin
--   Manifest
--     APPLICATION SETTINGS: 112
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_app_setting(
 p_id=>wwv_flow_imp.id(3185269837129974400)
,p_name=>'FEEDBACK_ATTACHMENTS_YN'
,p_value=>'Y'
,p_is_required=>'N'
,p_valid_values=>'Y, N'
,p_on_upgrade_keep_value=>true
,p_required_patch=>wwv_flow_imp.id(3185269509846974399)
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
