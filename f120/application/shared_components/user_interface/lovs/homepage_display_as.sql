prompt --application/shared_components/user_interface/lovs/homepage_display_as
begin
--   Manifest
--     HOMEPAGE_DISPLAY_AS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3631398591102484082)
,p_lov_name=>'HOMEPAGE_DISPLAY_AS'
,p_lov_query=>'.'||wwv_flow_imp.id(3631398591102484082)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631398926740484084)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Faceted Cards View'
,p_lov_return_value=>'CARDS'
,p_lov_template=>'<span class="t-Icon fa fa-cards" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3631399796821484085)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Faceted List View'
,p_lov_return_value=>'REPORT'
,p_lov_template=>'<span class="t-Icon fa fa-table" title="#DISPLAY_VALUE#"></span><span class="u-VisuallyHidden">#DISPLAY_VALUE#</span>'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3560371853987044535)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Interactive View'
,p_lov_return_value=>'INTERACTIVE'
);
wwv_flow_imp.component_end;
end;
/
