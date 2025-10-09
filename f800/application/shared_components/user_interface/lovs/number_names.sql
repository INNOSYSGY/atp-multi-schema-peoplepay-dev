prompt --application/shared_components/user_interface/lovs/number_names
begin
--   Manifest
--     NUMBER_NAMES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>800
,p_default_id_offset=>221543258820678920
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3854062932034160083)
,p_lov_name=>'NUMBER_NAMES'
,p_lov_query=>'.'||wwv_flow_imp.id(3854062932034160083)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3824127529166684263)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employee Applicant Number'
,p_lov_return_value=>'EMP_COMPANY_NO_APPL'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854062539583160083)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Employee Number'
,p_lov_return_value=>'EMP_COMPANY_NO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854062223840160082)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Request To Purchase Number'
,p_lov_return_value=>'RTP_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854061806969160082)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Request For Quotation Number'
,p_lov_return_value=>'RFQ_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854061342179160082)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Quotation Number'
,p_lov_return_value=>'QUOTATION_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854060978498160081)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Purchase Order Number'
,p_lov_return_value=>'PO_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854060587269160081)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Stores Requisition Number'
,p_lov_return_value=>'STORES_REQ_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854060128529160081)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'Miscellaneous Transaction Number'
,p_lov_return_value=>'MISC_TRAN_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854059772701160080)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Asset Purchase Order Number'
,p_lov_return_value=>'ASSET_PO_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854059377564160080)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Asset Requisition Number'
,p_lov_return_value=>'ASSET_REQ_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854059018378160080)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Point of Sale Number'
,p_lov_return_value=>'POS_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3854058545698160080)
,p_lov_disp_sequence=>11
,p_lov_disp_value=>'Asset Miscellaneous Transaction'
,p_lov_return_value=>'ASSET_MISC_TRAN_NUM'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3823841791084952893)
,p_lov_disp_sequence=>12
,p_lov_disp_value=>'Employee Requisition Number'
,p_lov_return_value=>'EMP_REQ_NUM'
);
wwv_flow_imp.component_end;
end;
/
