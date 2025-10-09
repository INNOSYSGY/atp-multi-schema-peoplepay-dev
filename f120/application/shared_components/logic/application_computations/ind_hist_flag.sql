prompt --application/shared_components/logic/application_computations/ind_hist_flag
begin
--   Manifest
--     APPLICATION COMPUTATION: IND_HIST_FLAG
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3730122717299751892)
,p_computation_sequence=>10
,p_computation_item=>'IND_HIST_FLAG'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ind_hist_change',
'from hr_hcf_org_rule ',
'where org_id  = :APP_ORG_ID'))
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
