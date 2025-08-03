prompt --application/pages/page_09996
begin
--   Manifest
--     PAGE: 09996
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.7'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_page.create_page(
 p_id=>9996
,p_name=>'New POS'
,p_step_title=>'New POS'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.pos-item{',
'    padding: 1rem;',
'    border:1px solid rgba(0,0,0,.1);',
'    border-radius: 2px;',
'    box-shadow: 0 2px 4px -2px rgba(0,0,0,.075);',
'    text-align: center;',
'    margin-top: 1rem;',
'    margin-bottom: 1rem;',
'}',
'',
'.pos-item.unselected-pos-item{',
'    background:#fff;',
'}',
'',
'.pos-item.unselected-pos-item:hover{',
'    background:#0572ce33;',
'}',
'',
'.pos-item.selected-pos-item{',
'    background:rgb(5, 114, 206);',
'    color:white;',
'}',
'',
'.pos-body{',
'    display:block;',
'    margin: 1rem auto;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3322311684586894207)
,p_plug_name=>'Items'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'for i in (',
'    select ',
'        rownum seq, ',
'        mod(rownum,6) seq_reset,',
'        inventory_item_id,',
'        org_item_description ',
'    from tblinventoryitem ',
'    where rownum <= 20',
'    and org_id=:APP_ORG_ID',
'    order by org_item_description',
') loop',
'',
'htp.p(''<div class = "col col-lg-1 col-md-3 col-sm-3 col-xs-4 col-xxs-4">'');',
'htp.p(''<div class = "pos-item unselected-pos-item" title="''||i.org_item_description||''" id="positem''||i.inventory_item_id||''">'');',
'htp.p(''<span aria-hidden="true" class="fa fa-shopping-cart fa-2x fam-plus fam-is-success"></span>'');',
'htp.p(''<b class="pos-body">''||i.inventory_item_id||''</b>'');',
'htp.p(''<span class="pos-body">''||substr(i.org_item_description,1,8)||''</span>'');',
'htp.p(''</div>'');',
'htp.p(''</div>'');',
'',
'end loop;'))
,p_plug_source_type=>'NATIVE_PLSQL'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3322312221312894212)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3322311684586894207)
,p_button_name=>'CHECKOUT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--success'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Checkout'
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3322311848539894208)
,p_name=>'Toggle State'
,p_event_sequence=>10
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.pos-item'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322311884820894209)
,p_event_id=>wwv_flow_imp.id(3322311848539894208)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// get element',
'var elem = this.triggeringElement;',
'// get classes',
'var classes = elem.classList;',
'// get fa icon classes',
'var faClasses = elem.getElementsByClassName("fa")[0].classList;',
'// check for pos item',
'if(classes.contains("pos-item")) {',
'    // toggle state',
'    if(classes.contains("unselected-pos-item")) {',
'        classes.replace("unselected-pos-item","selected-pos-item");',
'        faClasses.replace("fam-plus","fam-minus");',
'        faClasses.replace("fam-is-success","fam-is-danger");',
'    } else if (classes.contains("selected-pos-item")) {',
'        classes.replace("selected-pos-item","unselected-pos-item");',
'        faClasses.replace("fam-minus","fam-plus");',
'        faClasses.replace("fam-is-danger","fam-is-success");',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3322312293987894213)
,p_name=>'Checkout'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3322312221312894212)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3322312456696894214)
,p_event_id=>wwv_flow_imp.id(3322312293987894213)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'elems = document.getElementsByClassName("selected-pos-item");',
'ids = [];',
'for (i=0;i<elems.length;i++)',
'    ids.push(elems[i].id.replace(''positem'',''''));',
'alert(''You checked out''||ids);',
'console.log(ids);'))
);
wwv_flow_imp.component_end;
end;
/
