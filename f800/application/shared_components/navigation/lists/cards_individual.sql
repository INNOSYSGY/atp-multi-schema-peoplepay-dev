prompt --application/shared_components/navigation/lists/cards_individual
begin
--   Manifest
--     LIST: Cards-Individual
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3830732303634079610)
,p_name=>'Cards-Individual'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'null,',
'initcap(first_name || '' '' || surname) label,',
'',
'apex_util.prepare_url(',
'               ''f?p='' || v(''APP_ID'') || '':1261:'' || V(''APP_SESSION'') || ''::NO::P1261_ID:'' || id)',
'',
' target,',
'''NO'' is_current_list_entry,',
'apex_util.prepare_url(''f?p='' || v(''APP_ID'') || '':IMAGE:'' || V(''APP_SESSION'') || ''::::GET_ID:'' || id) as image,',
'null image_attribute,',
'null image_alt_attribute,',
'''A01'' A01,',
' ''A02'' A02',
'from "#OWNER#"."HR_RCM_INDIVIDUAL" x',
'where x.ind_org_id=:APP_ORG_SHR_DED',
'order by first_name || '' '' || surname'))
,p_list_status=>'PUBLIC'
,p_version_scn=>41800249082269
);
wwv_flow_imp.component_end;
end;
/
