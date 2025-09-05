prompt --application/shared_components/user_interface/lovs/hr_export_to_payroll
begin
--   Manifest
--     HR_EXPORT_TO_PAYROLL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.8'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3194229127033348847)
,p_lov_name=>'HR_EXPORT_TO_PAYROLL'
,p_lov_query=>'.'||wwv_flow_imp.id(3194229127033348847)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194229464690348849)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Activity( e.g. Training)'
,p_lov_return_value=>'ACTIVITY_ATTEND'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3235552726264623590)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Appraisal Incentives'
,p_lov_return_value=>'APPRAISAL_INCENTIVE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194574194220230004)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Disciplinary Actions'
,p_lov_return_value=>'DISCIPLINE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194231484597391137)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Partial and Prorated Deductions  (e.g. Maternity)'
,p_lov_return_value=>'MAKEUP_PAY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194232453350421589)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Gratuity Payment :- Computed'
,p_lov_return_value=>'GRATUITY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194233991603438201)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Severance Like Gratuity :- Computed'
,p_lov_return_value=>'SP'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3227814613317103159)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Short Payments:- Computed'
,p_lov_return_value=>'SHORT_PAYMENT'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194229861528348850)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Payment in-lieu of Leave'
,p_lov_return_value=>'LEAVEPAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2964479824291235866)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Retroactive Incomes'
,p_lov_return_value=>'RET'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194573978916230003)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Separation Benefits'
,p_lov_return_value=>'SEPARATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3235738562314947607)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Separation Deduction'
,p_lov_return_value=>'MOV_SEPARATION_DED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3193787298902004883)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Time Sheet Absence Deduction'
,p_lov_return_value=>'ATTENDANCE_DED'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2964479419455235865)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Time Sheet Absence Payment'
,p_lov_return_value=>'ATTENDANCE_INC_ABS'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3078786836854593596)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Time Sheet Incomes'
,p_lov_return_value=>'ATTENDANCE_INC'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3194233039906426899)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'Vacation Allowance'
,p_lov_return_value=>'LEAVEPASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(137727481927616664)
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'Leave Request Payments'
,p_lov_return_value=>'LEAVE_INC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(137727773971618973)
,p_lov_disp_sequence=>18
,p_lov_disp_value=>'Leave Request Deductions'
,p_lov_return_value=>'LEAVE_DED'
);
wwv_flow_imp.component_end;
end;
/
