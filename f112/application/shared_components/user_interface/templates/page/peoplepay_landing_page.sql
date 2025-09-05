prompt --application/shared_components/user_interface/templates/page/peoplepay_landing_page
begin
--   Manifest
--     TEMPLATE: PEOPLEPAY_LANDING_PAGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_template(
 p_id=>wwv_flow_imp.id(3190471533316960719)
,p_theme_id=>42
,p_name=>'Peoplepay Landing Page'
,p_internal_name=>'PEOPLEPAY_LANDING_PAGE'
,p_is_popup=>false
,p_header_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">',
'<head>',
'#HEAD#',
'<title>#TITLE#</title>',
'</head>',
'<body #ONLOAD#>#FORM_OPEN#<a name="PAGETOP"></a>'))
,p_box=>'#BOX_BODY#'
,p_footer_template=>'#FORM_CLOSE#<a name="END"></a></body></html>'
,p_theme_class_id=>8
,p_grid_type=>'TABLE'
);
wwv_flow_imp_shared.create_page_tmpl_display_point(
 p_id=>wwv_flow_imp.id(125886001076931487)
,p_page_template_id=>wwv_flow_imp.id(3190471533316960719)
,p_name=>'Page Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_has_region_support=>true
,p_has_item_support=>true
,p_has_button_support=>true
,p_glv_new_row=>true
);
wwv_flow_imp.component_end;
end;
/
