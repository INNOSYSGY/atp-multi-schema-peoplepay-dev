prompt --application/shared_components/logic/application_computations/pcnt_note
begin
--   Manifest
--     APPLICATION COMPUTATION: PCNT_NOTE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3295407433412664419)
,p_computation_sequence=>10
,p_computation_item=>'PCNT_NOTE'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'0'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
