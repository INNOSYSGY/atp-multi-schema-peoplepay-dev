prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 112
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(2966290120110482565)
,p_build_option_name=>'DEVELOPMENT_IN_PROGRESS'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>1
,p_default_on_export=>'EXCLUDE'
,p_build_option_comment=>'for development only'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(3185269509846974399)
,p_build_option_name=>'Feature: Feedback'
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_feature_identifier=>'APPLICATION_FEEDBACK'
,p_build_option_comment=>'Provide a mechanism for end users to post general comments back to the application administrators and developers.'
);
wwv_flow_imp.component_end;
end;
/
