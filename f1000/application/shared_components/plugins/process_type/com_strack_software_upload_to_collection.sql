prompt --application/shared_components/plugins/process_type/com_strack_software_upload_to_collection
begin
--   Manifest
--     PLUGIN: COM.STRACK-SOFTWARE.UPLOAD-TO-COLLECTION
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.9'
,p_default_workspace_id=>31592798490575853
,p_default_application_id=>1000
,p_default_id_offset=>221683928681757931
,p_default_owner=>'TEMPLATE_APPV8'
);
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(897962092580335257)
,p_plugin_type=>'PROCESS TYPE'
,p_name=>'COM.STRACK-SOFTWARE.UPLOAD-TO-COLLECTION'
,p_display_name=>'Upload to APEX Collection'
,p_supported_component_types=>'APEX_APPLICATION_PAGE_PROC'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('PROCESS TYPE','COM.STRACK-SOFTWARE.UPLOAD-TO-COLLECTION'),'')
,p_api_version=>1
,p_execution_function=>'upload_to_collection_plugin.plugin_Upload_to_Collection'
,p_substitute_attributes=>true
,p_version_scn=>41800303178599
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Plugin for converting uploaded data to an apex collection.',
'',
'To use this plugin, navigate to a "XX - Data Load Source" page in your application.',
'You can copy page 44 from the demo application to your application for that purpose.',
'Create a Page process.',
'Choose ''Process type'' "Plug-ins".',
'Select Plug-in "Convert Upload to Apex Collection".',
'Set ''Name'' to "Convert Upload to Apex Collection".',
'Set ''Sequence'' to 5 to ensure that the process is executed before the "Parse Uploaded Data" process.',
'Set ''Point'' to "On Submit - After Computations and Validations"',
'At ''Process Condition'' set ''When Button Pressed'' to "NEXT".',
'',
'Now edit the settings of the plugin instance.',
'Set the mandatory attributes ''Import From Item'', ''Separator Item'', ''File Name Item'' and ''Character Set Item''',
'to the same values that are used in the "Parse Uploaded Data" process.',
'',
'Set the optional attribute ''Show Success Message''. Set this attribute to ''Yes'' when a success message should be displayed.',
'The Message is of the form "Filtered uploaded data. Found %0 good rows and %1 bad rows." and is displayed,',
'when a page branch with the option ''include process success message '' is followed.',
'',
'Set the optional attribute ''Rows Loaded Item'' Enter the page item to receive the count of loaded rows.',
'You can type in the name or pick from the list of available items.',
'When the Plugin is processed, rows that do not contain the proper formatting will be removed',
'from the input data and will be added to the bad rows item.',
'',
'Set the attribute ''Collection Name''. Enter the name of the collection that will be created.',
'',
'The process is skipped when no data can be processed and one of the following success messages is returned:',
'''Filename is empty.'', ''Line delimiter not found.'', ''Separator not found in the first line.''.',
'the messages can be translated via entries in the Dynamic Translations Lists'))
,p_version_identifier=>'1.0.8'
,p_about_url=>'https://github.com/dstrack/strack-software-upload-to-collection-plugin.git'
,p_plugin_comment=>wwv_flow_string.join(wwv_flow_t_varchar2(
'The package upload_to_collection_plugin has to be installed in the application schema. ',
'execute the file upload_to_collection_plsql_code.sql to install the required database objects.',
'You can add the file to the installation script of your application.',
''))
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(897979603696750444)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Import From Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'PXX_IMPORT_FROM'
,p_help_text=>'Enter the page item to hold the Import From option chosen by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(897989565204029088)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Separator Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'PXX_SEPARATOR'
,p_help_text=>'Enter the page item to hold the Seperator text entered by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(897989934870034022)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'File Name Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_examples=>'PXX_FILE_NAME'
,p_help_text=>'Enter the page item to hold the File Name value entered by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(897990179234041436)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Character Set Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'PXX_CHAR_SET'
,p_help_text=>'Enter the page item to hold the File Character Set selected by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(897990510879074234)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Rows Loaded Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_examples=>'PXX_ROWS_LOADED'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(898110018069277973)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Collection Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'IMPORTED_DATA'
,p_display_length=>28
,p_max_length=>28
,p_is_translatable=>false
,p_text_case=>'UPPER'
,p_help_text=>'Name of the APEX collection where the imported data is loaded.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(898409640370984214)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Show Success Message'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Set this attribute to ''Yes'' when a Success Message should be displayed.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(817810157657330965)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>22
,p_prompt=>'Enclosed By Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the page item to hold the Optionally Enclosed By text entered by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(817826970717147389)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>26
,p_prompt=>'FIrst Row Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'Enter the page item to hold the First Row has Column Names checkbox value entered by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(847128938204826973)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>24
,p_prompt=>'Currency Symbol Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the page item to hold the Currency Symbol entered by the end user. You can type in the name or pick from the list of available items.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(754121329564788415)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Column Headers Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>'Enter the item name of page item where the column header names are loaded as a list. The elements are separated by the '':'' character.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(756237991303480880)
,p_plugin_id=>wwv_flow_imp.id(897962092580335257)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Use APEX Data Parser'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'When the Option is set to ''Yes'' the APEX Data Parser API will be used to parse your data. Additional file formats like .xls and JSON can be used as input.',
'When set to ''No'' the build-in data parser is used and only .csv file and .txt with Unicode encoded files.'))
);
end;
/
begin
wwv_flow_imp.component_end;
end;
/
