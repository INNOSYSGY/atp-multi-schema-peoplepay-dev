prompt --application/shared_components/user_interface/lovs/hr_export_to_payroll
begin
--   Manifest
--     HR_EXPORT_TO_PAYROLL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>500
,p_default_id_offset=>221402556581611694
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(3721639542956643410)
,p_lov_name=>'HR_EXPORT_TO_PAYROLL'
,p_lov_query=>'.'||wwv_flow_imp.id(3721639542956643410)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721639880613643412)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Activity( e.g. Training)'
,p_lov_return_value=>'ACTIVITY_ATTEND'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3762963142187918153)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Appraisal Incentives'
,p_lov_return_value=>'APPRAISAL_INCENTIVE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721984610143524567)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Disciplinary Actions'
,p_lov_return_value=>'DISCIPLINE'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721641900520685700)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Partial and Prorated Deductions  (e.g. Maternity)'
,p_lov_return_value=>'MAKEUP_PAY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721642869273716152)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Gratuity Payment :- Computed'
,p_lov_return_value=>'GRATUITY'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721644407526732764)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Severance Like Gratuity :- Computed'
,p_lov_return_value=>'SP'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3755225029240397722)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Short Payments:- Computed'
,p_lov_return_value=>'SHORT_PAYMENT'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721640277451643413)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Payment in-lieu of Leave'
,p_lov_return_value=>'LEAVEPAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3491890240214530429)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Retroactive Incomes'
,p_lov_return_value=>'RET'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721984394839524566)
,p_lov_disp_sequence=>9
,p_lov_disp_value=>'Separation Benefits'
,p_lov_return_value=>'SEPARATION'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3763148978238242170)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Separation Deduction'
,p_lov_return_value=>'MOV_SEPARATION_DED'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721197714825299446)
,p_lov_disp_sequence=>13
,p_lov_disp_value=>'Time Sheet Absence Deduction'
,p_lov_return_value=>'ATTENDANCE_DED'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3491889835378530428)
,p_lov_disp_sequence=>14
,p_lov_disp_value=>'Time Sheet Absence Payment'
,p_lov_return_value=>'ATTENDANCE_INC_ABS'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3606197252777888159)
,p_lov_disp_sequence=>15
,p_lov_disp_value=>'Time Sheet Incomes'
,p_lov_return_value=>'ATTENDANCE_INC'
,p_lov_disp_cond_type=>'NEVER'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(3721643455829721462)
,p_lov_disp_sequence=>16
,p_lov_disp_value=>'Vacation Allowance'
,p_lov_return_value=>'LEAVEPASS'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(665137897850911227)
,p_lov_disp_sequence=>17
,p_lov_disp_value=>'Leave Request Payments'
,p_lov_return_value=>'LEAVE_INC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(665138189894913536)
,p_lov_disp_sequence=>18
,p_lov_disp_value=>'Leave Request Deductions'
,p_lov_return_value=>'LEAVE_DED'
);
wwv_flow_imp.component_end;
end;
/
