prompt --application/shared_components/user_interface/lovs/transaction_status
begin
--   Manifest
--     TRANSACTION_STATUS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>120
,p_default_id_offset=>221824690189185566
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854214675679438459)
,p_lov_name=>'TRANSACTION_STATUS'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select initcap(Webpage_Name)||'': ''||Wfl_Status_Description screen, Wfl_Status_Id',
'From Tblworkflowstatus A Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'join tblpagelist e on e.WEBPAGE_ID=d.WEBPAGE_ID',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)',
'order by 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'WFL_STATUS_ID'
,p_display_column_name=>'SCREEN'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
