prompt --application/shared_components/navigation/lists/po_trans_status
begin
--   Manifest
--     LIST: PO_Trans_Status
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
 p_id=>wwv_flow_imp.id(3809086219229211434)
,p_name=>'PO_Trans_Status'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select null,  Wfl_Status_Description,:APP_PAGE_ID, CASE WHEN WFL_STATUS_ID=:P620_STATUS THEN ''YES'' ELSE ''NO'' END is_current',
'from TBLWORKFLOWSTATUS a Join Tblworkflowdtl D On D.Id=A.Workflow_Dtl_Id',
'where exists (select 1',
'              from TBLWORKFLOWSTAGELIST B join TBLWORKFLOWDTL C on B.STAGE_ID=C.STAGE_ID',
'              Where A.Workflow_Dtl_Id=C.Id)  ',
'And Webpage_Id=:APP_PAGE_ID',
'and TRANSACTION_TYPE_ID=:P620_TRANSACTION_TYPE_ID',
'order by sequence'))
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
