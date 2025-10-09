prompt --application/shared_components/user_interface/lovs/rtp_all
begin
--   Manifest
--     RTP_ALL
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
 p_id=>wwv_flow_imp.id(3691894400274598735)
,p_lov_name=>'RTP_ALL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    rtp_num',
'    || '' :- Level: ''',
'    || unit_level',
'    || '' ''',
'    || unit_name',
'    || '' - ''',
'    || req_ind.first_name',
'    || '' ''',
'    || req_ind.surname',
'    || '' (''',
'    || to_char(requisition_date, ''DD-MON-YYYY'')',
'    || '')'' discrip,',
'    a.purchase_req_id',
'FROM',
'    tblpurchasereq      a',
'    JOIN hr_hcf_orgstructuredtl       b ON a.department_id = b.id',
'    LEFT OUTER JOIN hr_rcm_employee     req_emp ON req_emp.id = a.requester',
'    LEFT OUTER JOIN hr_rcm_individual   req_ind ON req_ind.id = req_emp.ind_id',
'WHERE a.approved_by IS NOT NULL',
'ORDER BY',
'    requisition_date DESC,',
'    pre_no_req_no'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'PURCHASE_REQ_ID'
,p_display_column_name=>'DISCRIP'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/
