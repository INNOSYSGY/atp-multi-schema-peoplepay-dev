prompt --application/shared_components/user_interface/lovs/data_load_charset2
begin
--   Manifest
--     DATA_LOAD_CHARSET2
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>112
,p_default_id_offset=>115784133856313705
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(349643250177425)
,p_lov_name=>'DATA_LOAD_CHARSET2'
,p_lov_query=>'.'||wwv_flow_imp.id(349643250177425)||'.'
,p_location=>'STATIC'
,p_version_scn=>41800099541193
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(350078735177428)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European Windows 1252'
,p_lov_return_value=>'windows-1252'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(350449352177430)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Western European ISO-8859-1'
,p_lov_return_value=>'iso-8859-1'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(350914674177431)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Vietnamese Windows 1258'
,p_lov_return_value=>'windows-1258'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(351233893177432)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-8'
,p_lov_return_value=>'utf-8'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(351669419177433)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish Windows 1254'
,p_lov_return_value=>'windows-1254'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(352017079177433)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Turkish ISO-8859-9'
,p_lov_return_value=>'iso-8859-9'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(352501153177434)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Thai TIS-620'
,p_lov_return_value=>'tis-620'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(352874452177435)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Southern European ISO-8859-3'
,p_lov_return_value=>'iso-8859-3'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(353237741177436)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European Windows 1257'
,p_lov_return_value=>'windows-1257'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(353679837177437)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Northern European ISO-8859-4'
,p_lov_return_value=>'iso-8859-4'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(354100274177437)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Korean EUC'
,p_lov_return_value=>'euc-kr'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(354454376177438)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese Shift JIS'
,p_lov_return_value=>'shift_jis'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(354844852177439)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Japanese EUC'
,p_lov_return_value=>'euc-jp'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(355216123177440)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew Windows 1255'
,p_lov_return_value=>'windows-1255'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(355661208177441)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Hebrew ISO-8859-8-i'
,p_lov_return_value=>'iso-8859-8-i'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(356082708177442)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek Windows 1253'
,p_lov_return_value=>'windows-1253'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(356403702177442)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greek ISO-8859-7'
,p_lov_return_value=>'iso-8859-7'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(356775226177443)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European Windows 1250'
,p_lov_return_value=>'windows-1250'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(357119265177444)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Eastern European ISO-8859-2'
,p_lov_return_value=>'iso-8859-2'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(357607380177445)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic Windows 1251'
,p_lov_return_value=>'windows-1251'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(358012813177446)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-U'
,p_lov_return_value=>'koi8-u'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(358404541177447)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic KOI8-R'
,p_lov_return_value=>'koi8-r'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(358755447177447)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Cyrilic ISO-8859-5'
,p_lov_return_value=>'iso-8859-5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(359119980177448)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese GBK'
,p_lov_return_value=>'gbk'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(359518724177449)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Chinese Big5'
,p_lov_return_value=>'big5'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(359955672177450)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic Windows 1256'
,p_lov_return_value=>'windows-1256'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(360379699177451)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Arabic ISO-8859-6'
,p_lov_return_value=>'iso-8859-6'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(360754826177452)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'US-ASCII'
,p_lov_return_value=>'us-ascii'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(361146040177452)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Big Endian'
,p_lov_return_value=>'utf-16be'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(361572259177453)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Unicode UTF-16 Little Endian'
,p_lov_return_value=>'utf-16le'
);
wwv_flow_imp.component_end;
end;
/
