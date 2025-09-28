prompt --application/shared_components/user_interface/lovs/p_pay_frequency
begin
--   Manifest
--     P_PAY_FREQUENCY
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>188895268110624634
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3632450843863335678)
,p_lov_name=>'P_PAY_FREQUENCY'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct payment_type_hist name,payment_type_hist id',
'from pa_pmg_payrolldtl e',
'where org_id= :APP_ORG_ID',
'',
'and payment_type_hist is not null'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'ID'
,p_display_column_name=>'NAME'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
