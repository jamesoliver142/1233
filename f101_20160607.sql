set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>5827132259369203
,p_default_application_id=>101
,p_default_owner=>'RDSDEV'
);
end;
/
prompt --application/set_environment
 
prompt APPLICATION 101 - Log On
--
-- Application Export:
--   Application:     101
--   Name:            Log On
--   Date and Time:   15:15 Tuesday June 7, 2016
--   Exported By:     JAMES@HUFFSTER.NZ
--   Flashback:       0
--   Export Type:     Application Export
--   Version:         5.0.3.00.03
--   Instance ID:     102254038199067
--

-- Application Statistics:
--   Pages:                      4
--     Items:                    9
--     Validations:              1
--     Processes:                8
--     Regions:                  5
--     Buttons:                  5
--   Shared Components:
--     Logic:
--       Items:                  1
--     Navigation:
--       Lists:                  8
--       Breadcrumbs:            3
--     Security:
--       Authentication:         2
--       Authorization:          1
--     User Interface:
--       Themes:                 1
--       Templates:
--         Page:                 9
--         Region:              13
--         Label:                5
--         List:                11
--         Popup LOV:            1
--         Calendar:             1
--         Breadcrumb:           1
--         Button:               3
--         Report:               9
--       LOVs:                  27
--       Shortcuts:              1
--       Plug-ins:               4
--     Globalization:
--     Reports:
--   Supporting Objects:  Included

prompt --application/delete_application
begin
wwv_flow_api.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/create_application
begin
wwv_flow_api.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_display_id=>nvl(wwv_flow_application_install.get_application_id,101)
,p_owner=>nvl(wwv_flow_application_install.get_schema,'RDSDEV')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Log On')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'LOGON')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'6808193F53A9B38C85984DE4C4C2C33BDAB528FF78F90D8B85E6D40897DCC65C'
,p_bookmark_checksum_function=>'SH1'
,p_max_session_idle_sec=>10800
,p_compatibility_mode=>'5.0'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_date_format=>'DD-Mon-YYYY'
,p_date_time_format=>'DD-Mon-YYYY HH24:MI:SS'
,p_timestamp_format=>'DD-Mon-YYYY HH24:MI:SS'
,p_timestamp_tz_format=>'DD-Mon-YYYY HH24:MI:SS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication=>'PLUGIN'
,p_authentication_id=>wwv_flow_api.id(12516880426265288)
,p_application_tab_set=>1
,p_logo_image=>'TEXT:Rue de Seine'
,p_public_user=>'APEX_PUBLIC_USER'
,p_proxy_server=> nvl(wwv_flow_application_install.get_proxy,'')
,p_flow_version=>'release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_flow_unavailable_text=>'This application is currently unavailable at this time.'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_vpd=>'execute immediate ''alter session set time_zone='' || chr(39) || ''Pacific/Auckland'' || chr(39) ;'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_last_updated_by=>'MIKEHNZ@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160530174522'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>3
,p_ui_type_name => null
);
end;
/
prompt --application/shared_components/navigation/lists
begin
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1082294632280660944)
,p_name=>'Shipping - menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1090062651897745454)
,p_name=>'Purchase Order - menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1107361622843694121)
,p_name=>'Production Schedule - menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1158430659281897215)
,p_name=>'Shipping List - menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1350646723337667749)
,p_name=>'Desktop Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1350689092352667880)
,p_name=>'Desktop Navigation Bar'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list_item(
 p_id=>wwv_flow_api.id(1350689297509667887)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Log Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_current_for_pages=>'&LOGOUT_URL.'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1356300359895999730)
,p_name=>'Drop down menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(1363106321214247357)
,p_name=>'Sales Order - menu'
,p_list_status=>'PUBLIC'
);
end;
/
prompt --application/shared_components/files
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000E1000000E10803000000096D224800000054504C5445FFFFFF999999949494939393A5A5A5F2F2F2E1E1E1D0D0D0FBFBFB909090D6D6D6CCCCCCE6E6E6BABABAB6B6B6FCFCFCC1C1C1F0F0F09F9F9FDCDC';
wwv_flow_api.g_varchar2_table(2) := 'DCA3A3A3ACACACC6C6C6E4E4E4B8B8B8B0B0B0BFBFBF8A8A8A02EA33C10000078249444154789CED9CE9A2A328108515DC705FA289B9EFFF9E43558126E9BEDD9D9926DB9CEFC7BD4A543C52144881510400000000000000000000000000000000000000';
wwv_flow_api.g_varchar2_table(3) := '000000000000000000000000F87CD27A9AB2A1784C6605D13D262F215D124D98B1A943E6339CF8F2696C5179C89C6E9846153B94AA826593364A3F4761A9E30B74A09C8B3E56B17A8AC2C1B8E2D35292660892CD44D93C47E12CFAD629AB46DE9C836433';
wwv_flow_api.g_varchar2_table(4) := '91A5287E7A0F562845A816CE7AA4A2FC4AA32EAF2C934D2A68A3A247CF1B43D127F3920EBC13656BD24E7C91AA9D93B9AD5CF1D7F46B69559DE6E434494AC316D25755BA293CCA25F994DC67F3F7A938E744764AB32E59DA45DDA894D2277E0076CBD8BB';
wwv_flow_api.g_varchar2_table(5) := '8D346D64B33DDCD419A58EB5B56B35DAA7D02A256E4AB5855CC69E9D7433D9BDD2BDA4384F66EA4DA15CBBE7474457FF0A533F5ACADA7B50DF467564AFAAA1ACF96752C877B82A7E1C1999DCE1408EA9B425AF441EFD1D4962C94725CE439BCCA58827DB';
wwv_flow_api.g_varchar2_table(6) := '154ADE07CA34E7AD2002A384B3CBAE13BF55484AACA84CFB1D652B32DFFD322D9CD246BB1EF76FFDA60CE5329A4A6E0D5833D9BBA89B1AF0BD42D55473E4158ED5B972DB74814CB91B1685AACD5739E99B7A288F97ECA7E0FCD25750E8CC5954C92D9D94';
wwv_flow_api.g_varchar2_table(7) := '1493BFE1C52B6C5D4A6CE8B79FFAD25C8C5EAED7861178AF9516BB42FEDD5D20692CE783B7492E4CBAE6595D2BBC690F0B7E0069B4D8C3F41448A1781A5F05743BA5570AD36B85CEE78AC2921FC65623C5A192BF28BDB946FDAF15F213B05BF494C650DD';
wwv_flow_api.g_varchar2_table(8) := '7E36146765D164FD889E8FDF97617BA1900B490EBD64BC4721B7C6736A7F53E74002A3545A7C369182CDCC7A3BB96D925D5E297486E9144AE5E53E519BEEDCA3506C9C8CF4D615FC45C4D9C77D56E7075F089DF73F0327FD52E1B23765DE19DEA170F2DD';
wwv_flow_api.g_varchar2_table(9) := 'FE319840A969529178C35071BACEAA6BD17EA950EC987A268DEDC3246BFD7385354B99F335BDEE973A23976E6320A6ADBFB18B58AED37EA5305AB874E2991F87A67EFBCF144A6D88957D75B95258B9E71AA8317412E35D8F160DA9DFCDE7DF2A8CCEFB0B';
wwv_flow_api.g_varchar2_table(10) := 'A69EB75EDB8D425F1BAC7FBA52E8724A420AB4B9F4A3A1AEAFF5A3BE511A0EB65B6CC6291A8D315FA4D010CE974E5F94BAF9863291D3CD416EBBE49F496143277D49267C90B6D71A38D10F26349B2F0BCB702CCBF278692A75599284CE8F1A5D0D1FF1CE';
wwv_flow_api.g_varchar2_table(11) := 'C5C1E9F5E9DBCFDDE581C3E48EB9BA1417B37AD018D8A32159D9A5F57F1CEB381FB80EEBA0437C4FA4F76F59A13ADD4F271727AC930FAD85D699AD49ACC635BC1F0500000000009FC6D0364D73F2A1AAFE6477FA87CEAA080E470E2980447407DA397C96';
wwv_flow_api.g_varchar2_table(12) := 'C2A31B75E29D4E62161FA950861D3E59A184013E5A21878A6E14A6535E95D9BBBFAF6F0AC94EAF141E1325AC4187AF83B329A488E6A5C2C56C318060B1CE87B02BA478F0AEB092B8B7CCABD2C767DFE67F40144A687CDD150E322E981F658030D0BC9187';
wwv_flow_api.g_varchar2_table(13) := 'C00A55EE820DB357C8B12A8E0E722CC9BC71218AC2CACD5B18BD422E4C0E95F3E4030E27BE295E61B6D747AB50E6C348909355BFF120B65728F3483685F1072A2CC60B851D85FB15CDF4FB1C2BB55B6A5728B37278468C4CFD7AE3167157B8458E48A14C';
wwv_flow_api.g_varchar2_table(14) := '219AD3E22845FBC65DD50B85D16157288518EB58C281EF1C6BB954589B5D61315FCC760839732438FC8E6F9C848576B47BC73F1B9943ABE337AE8496B4247C509A77BCA0A26CD679EDB3EF4E05000000000000FCC09A58C6371E14FC2DC9B674E953E101';
wwv_flow_api.g_varchar2_table(15) := '50287C6BFE4F0AEBEC78CC86289AFAA6E711A6A16A9A6A8B1176C7BC6F9A6629B765CA051D695FFC073AD11F57E7677BD0F442A1C55DE16AB436CB70E0352387540667941F4ECB63ED02A32691B18D9A5374923674A28C594D099FA4B46A5E46E3AE90C7';
wwv_flow_api.g_varchar2_table(16) := '095BBF006BF54B806401C1E2262E481ADD7DEDE7DF27FBEA65175C94C5DE6196A4DFCF8DC21DBFB7AFBF8CF57C4AB6056C6ED59B5B08C70AE5831149DFBC546CF156A19AB70151579E344C9AB38952A9B4EEE645B35A26771A29E4C014C56A782160A84F';
wwv_flow_api.g_varchar2_table(17) := '8BDCCB8D421A0396F5B463EA83323CE9A2186A32D794151ABFE694449CFD964432F8684E0BF3DD8DBBB9514841175E41C821348958F86925E9B4CC6294C60783A9420E5EA1AC652CF33C2F9B380EB8A4F93E6E1492498A42F2A1CBAE706A0FB1F66B4DCD';
wwv_flow_api.g_varchar2_table(18) := 'E54FDB2AC3C67F34435D38A4E7F3AD4232C04D46B7CAC73DE2DE5B69F5A3C293B8A38D401FC0B9973F53D8CB9707069764DCCA653E6FBAB6D263B6F1E2567AA95042BF3C89CF97A12C7A1DEB22DB5A0BF63461D7F9FE1BFE48A144B449E1E4EBE11648DC';
wwv_flow_api.g_varchar2_table(19) := 'DBC36E6B2DEA715ECFD58B84A6FECC4AF9A8F89CAF9BA711D51B7C78E95A7C2E673FFBF6E9FC99C2D27837C95D19C31E6624DFAA937A5328D5D595EACBC48747DB6DD65F5BCF7B24855FE408E9967BFA9117272FD2A18EAB889CA591BB2F9BB599AED6A4';
wwv_flow_api.g_varchar2_table(20) := '97A3EB9EABF9454AD0561986440CBC15D17B126DA497495676DE9F97A970694354D4432A31E1AB55F7F48E753E57E56B3414FF89C1A8783C6CADC507BE43BB3E6B7EACC4D3BCF1B493EF90D9607EA2E98BBC47FC55BA799BD3A7827EB0E48994B6336E8C';
wwv_flow_api.g_varchar2_table(21) := '8E93F3CBF8CDBF4E57A469FAD84FB0020000000000000000000000000000000000000000000000000000000000000000000000009ECD3F3E714FE58E6C3E0B0000000049454E44AE426082';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(1351241311411486873)
,p_file_name=>'images.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1350646407250667749)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1350646584852667749)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attribute_01=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_plugin_setting(
 p_id=>wwv_flow_api.id(1350646614647667749)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_CSS_CALENDAR'
);
end;
/
prompt --application/shared_components/security/authorizations
begin
wwv_flow_api.create_security_scheme(
 p_id=>wwv_flow_api.id(1165507333513564352)
,p_name=>'user role - admin'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'',
'v_user_count number;',
'',
'begin',
'',
'-- check if user exists in table',
'select count(*) into v_user_count from users',
'where upper(USR_EMAIL) = upper(v(''APP_USER''));',
'',
'if v_user_count = 0 then ',
'   return false;',
'else',
'   return true;',
'end if;',
'',
'end;'))
,p_error_message=>'You must have admin rights to access this page or function.'
,p_caching=>'BY_USER_BY_SESSION'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_processes
begin
null;
end;
/
prompt --application/shared_components/logic/application_items
begin
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(1362366455281431725)
,p_name=>'SEARCH_TERM'
,p_protection_level=>'I'
);
end;
/
prompt --application/shared_components/logic/application_computations
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs
begin
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351496468023442938)
,p_lov_name=>'ADMIN_ITEMS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select i.itm_name',
',i.itm_id',
'from item i ',
'inner join item_types it',
'on i.itm_type_itt_id = it.itt_id',
'where it.itt_name = ''Admin''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351005368875153922)
,p_lov_name=>'COLLECTION'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select col_name, col_id from collection',
'order by case when col_id = 0 then ''ZZZZZ'' else col_name end'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350766984694629796)
,p_lov_name=>'COUNTRY'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select cnt_name d,',
'       cnt_id as r',
'  from country',
' order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350767515909653717)
,p_lov_name=>'CURRENCY'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_value d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Currency''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350999776087080408)
,p_lov_name=>'ITEM_CATEGORY'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Item Category''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351001378304113890)
,p_lov_name=>'ITEM_COLOUR'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select IOP_DESC d , iop_id r from item_options ',
'where iop_option_group = ''COLOUR''',
'order by iop_sort_order'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351001053547111158)
,p_lov_name=>'ITEM_HEM'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select IOP_DESC d , iop_id r from item_options ',
'where iop_option_group = ''HEM''',
'order by iop_sort_order'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351000754742106797)
,p_lov_name=>'ITEM_SIZE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select IOP_DESC d , iop_id r from item_options ',
'where iop_option_group = ''SIZE''',
'order by iop_sort_order'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351000542741093842)
,p_lov_name=>'ITEM_STATUS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Item Status''',
'order by 1;'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350999902959082589)
,p_lov_name=>'ITEM_SUBCATEGORY'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Item Category''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350999506127077047)
,p_lov_name=>'ITEM_TYPE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select itt_name',
',itt_id',
'from item_types',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351402162648503758)
,p_lov_name=>'MEASUREMENT_UOM'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''UoM''',
'order by 1;'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351455553370027787)
,p_lov_name=>'ORDER_STATUS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Order Status''',
'order by l.list_sort_order'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351401395956481644)
,p_lov_name=>'ORDER_TYPE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Order Types''',
'order by l.list_sort_order'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351250123876979642)
,p_lov_name=>'P13_CHILD_COLOURS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'lists.list_value d',
',lists.list_id r',
'from item itm',
'inner join item_options_values iov ',
'on itm.itm_colour_iop_id = iov.iov_iop_id',
'inner join lists lists ',
'on iov.iov_value_list_id = lists.list_id',
'where itm.itm_id = :P13_CHILD_ITM_ID',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351248098569936409)
,p_lov_name=>'P13_CHILD_ITEM'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select distinct related_items.itm_name d',
',related_items.itm_id',
'from item itm',
'inner join item_types itt',
'on itm.itm_type_itt_id = itt.itt_parent_id',
'inner join item related_items',
'on itt.itt_id = related_items.itm_type_itt_id',
'where itm.itm_id = :p13_parent_itm_id',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351247757561868001)
,p_lov_name=>'P13_COLOURS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'lists.list_value d',
',lists.list_id r',
'from item itm',
'inner join item_options_values iov ',
'on itm.itm_colour_iop_id = iov.iov_iop_id',
'inner join lists lists ',
'on iov.iov_value_list_id = lists.list_id',
'where itm.itm_id = :P13_PARENT_ITM_ID',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1355286301036575760)
,p_lov_name=>'P33_COLOURS'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select ',
'lists.list_value || case when iov_add_cost_itm_id is not null then ',
''' (+'' || fee.itp_wholesale_price || fee.list_value || '')''  end d',
',lists.list_id r',
'from item_options_values iov',
'inner join lists lists',
'on iov.iov_value_list_id = lists.list_id',
'inner join item itm',
'on iov.iov_iop_id = itm.itm_colour_iop_id',
'left outer join (',
'select itp_itm_id, itp_wholesale_price, curr.list_value',
'from item_price ip',
'inner join stockist stk',
'on ip.itp_currency_list_id = stk.stk_currency_list_id',
'inner join lists curr',
'on ip.ITP_CURRENCY_LIST_ID = curr.list_id',
'where stk.stk_id = :p33_stk_id',
') fee',
'on iov.iov_add_cost_itm_id = fee.itp_itm_id',
'where itm.itm_id = :p33_itm_id',
'order by iov.iov_sort_order;'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1355287212227605316)
,p_lov_name=>'P33_HEM'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'lists.list_value || case when iov_add_cost_itm_id is not null then ',
''' (+'' || fee.itp_wholesale_price || fee.sor_currency || '')''  end d',
',lists.list_id r',
'from item itm',
'inner join item_options_values iov',
'on itm.itm_hem_iop_id = iov.iov_iop_id ',
'inner join lists lists',
'on iov.iov_value_list_id = lists.list_id',
'left outer join (',
'select itm_id, itp_wholesale_price, sor.sor_currency',
'from item_price_v itpv',
'inner join sales_order sor ',
'on itpv.currency_code = sor.sor_currency',
'where sor.sor_id = :p33_sor_id',
')fee',
'on iov.iov_add_cost_itm_id = fee.itm_id',
'where itm.itm_id = :p33_itm_id',
'order by iov.iov_sort_order;'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1355287008262601155)
,p_lov_name=>'P33_SIZE'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select',
'lists.list_value || case when iov_add_cost_itm_id is not null then ',
''' (+'' || fee.itp_wholesale_price || fee.sor_currency || '')''  end d',
',lists.list_id r',
'from item itm',
'inner join item_options_values iov',
'on itm.itm_size_iop_id = iov.iov_iop_id ',
'inner join lists lists',
'on iov.iov_value_list_id = lists.list_id',
'left outer join (',
'select itm_id, itp_wholesale_price, sor.sor_currency',
'from item_price_v itpv',
'inner join sales_order sor ',
'on itpv.currency_code = sor.sor_currency',
'where sor.sor_id = :p33_sor_id',
')fee',
'on iov.iov_add_cost_itm_id = fee.itm_id',
'where itm.itm_id = :p33_itm_id',
'order by iov.iov_sort_order;'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1355996605111493651)
,p_lov_name=>'PAYMENT_TERMS_SALES'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select pay_terms_desc d',
',pay_term_id r',
'from payment_terms',
'where pay_group_code = ''SALES''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350767713265657537)
,p_lov_name=>'REPORTING_REGION'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Reporting Regions''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351455770009033463)
,p_lov_name=>'SALES_CHANNEL'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Order Channel''',
'order by l.list_sort_order'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351401549911489045)
,p_lov_name=>'STOCKIST'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select stk_name',
',stk_id',
'from stockist',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350768139841685200)
,p_lov_name=>'XERO_GST_RATES'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''GST Rates''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1350772048835758627)
,p_lov_name=>'XERO_SALES_ACCOUNT'
,p_lov_query=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'select l.list_name d',
',l.list_id r',
'from lists l',
'inner join lists p',
'on l.list_parent_id = p.list_id',
'and p.list_value = ''Xero Sales Accounts''',
'order by 1'))
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(1351250698795004977)
,p_lov_name=>'YES_NO_FLAG'
,p_lov_query=>'.'||wwv_flow_api.id(1351250698795004977)||'.'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1351250949702004979)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'Y'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(1351251386489004982)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'N'
);
end;
/
prompt --application/shared_components/navigation/trees
begin
null;
end;
/
prompt --application/pages/page_groups
begin
null;
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/materials
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(259234722625084573)
,p_name=>'Materials'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/invoicing
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(1085540436828998558)
,p_name=>'Invoicing'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_api.create_menu(
 p_id=>wwv_flow_api.id(1350690466683667919)
,p_name=>' Breadcrumb'
);
end;
/
prompt --application/shared_components/user_interface/templates/page
begin
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350646850196667781)
,p_theme_id=>42
,p_name=>'Left Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.leftSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525196570560608698
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350646961360667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647017441667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647184336667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647244423667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647301489667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647492974667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647579340667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647657051667787)
,p_page_template_id=>wwv_flow_api.id(1350646850196667781)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350647701399667792)
,p_theme_id=>42
,p_name=>'Left and Right Side Columns'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.bothSideCols();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--showLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-side" id="t_Body_side">',
'      #REGION_POSITION_02#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525203692562657055
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647879908667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350647919488667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648070197667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Left Column'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648178232667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>3
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648233554667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648339308667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>6
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648407443667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648571475667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648696821667792)
,p_page_template_id=>wwv_flow_api.id(1350647701399667792)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350648731221667792)
,p_theme_id=>42
,p_name=>'Login'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.appLogin();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!doctype html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="html-login no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="html-login no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="html-login no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="html-login no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody--login no-anim #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #REGION_POSITION_01#',
'  #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'  <div class="t-Body-wrap">',
'    <div class="t-Body-col t-Body-col--main">',
'      <div class="t-Login-container">',
'      #BODY#',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>6
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2099711150063350616
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648857377667792)
,p_page_template_id=>wwv_flow_api.id(1350648731221667792)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350648963555667793)
,p_page_template_id=>wwv_flow_api.id(1350648731221667792)
,p_name=>'Body Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350649012766667793)
,p_theme_id=>42
,p_name=>'Master Detail'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.masterDetail();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--masterDetail t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-info" id="t_Body_info">',
'        #REGION_POSITION_02#',
'      </div>',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>1996914646461572319
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649193216667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649206078667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649315127667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Master Detail'
,p_placeholder=>'REGION_POSITION_02'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649453448667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Right Side Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649572487667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649607020667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649781212667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649897556667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350649922243667793)
,p_page_template_id=>wwv_flow_api.id(1350649012766667793)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350650088112667793)
,p_theme_id=>42
,p_name=>'Minimal (No Navigation)'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES# t-PageBody--noNav" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>4
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2977628563533209425
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650116096667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650246611667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650337527667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650433177667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650532933667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650615396667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650731348667793)
,p_page_template_id=>wwv_flow_api.id(1350650088112667793)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350650890854667793)
,p_theme_id=>42
,p_name=>'Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.modalDialog();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Dialog-wrapper">',
'    <div class="t-Dialog-header">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Dialog-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Dialog-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'500'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--standard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2098960803539086924
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350650999415667793)
,p_page_template_id=>wwv_flow_api.id(1350650890854667793)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651075476667793)
,p_page_template_id=>wwv_flow_api.id(1350650890854667793)
,p_name=>'Dialog Header'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651187028667793)
,p_page_template_id=>wwv_flow_api.id(1350650890854667793)
,p_name=>'Dialog Footer'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350651250373667793)
,p_theme_id=>42
,p_name=>'Right Side Column'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.rightSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'#SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'    <div class="t-Body-title" id="t_Body_title">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Body-content" id="t_Body_content">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      <div class="t-Body-contentInner">',
'        #BODY#',
'      </div>',
'      <footer class="t-Footer">',
'        #APP_VERSION#',
'        #CUSTOMIZE#',
'        #SCREEN_READER_TOGGLE#',
'        #REGION_POSITION_05#',
'      </footer>',
'    </div>',
'  </div>',
'  <div class="t-Body-actions" id="t_Body_actions">',
'    <button class="t-Button t-Button--icon t-Button--header t-Button--headerRight" id="t_Button_rightControlButton" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    <div class="t-Body-actionsContent">',
'    #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_sidebar_def_reg_pos=>'REGION_POSITION_03'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>17
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>false
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2525200116240651575
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651361444667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651485297667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651556248667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Right Column'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>false
,p_max_fixed_grid_columns=>4
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651601072667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651754288667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>8
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651822092667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350651972223667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652028779667795)
,p_page_template_id=>wwv_flow_api.id(1350651250373667793)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350652189729667795)
,p_theme_id=>42
,p_name=>'Standard'
,p_is_popup=>false
,p_javascript_code_onload=>'apex.theme42.initializePage.noSideCol();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#  ',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-PageBody t-PageBody--hideLeft t-PageBody--hideActions no-anim #PAGE_CSS_CLASSES#" #ONLOAD# id="t_PageBody">',
'#FORM_OPEN#',
'<header class="t-Header" id="t_Header">',
'  #REGION_POSITION_07#',
'  <div class="t-Header-branding">',
'    <div class="t-Header-controls">',
'      <button class="t-Button t-Button--icon t-Button--header t-Button--headerTree" id="t_Button_navControl" type="button"><span class="t-Icon fa-bars" aria-hidden="true"></span></button>',
'    </div>',
'    <div class="t-Header-logo">',
'      <a href="#HOME_LINK#" class="t-Header-logo-link">#LOGO#</a>',
'    </div>',
'    <div class="t-Header-navBar">',
'      #NAVIGATION_BAR#',
'    </div>',
'  </div>',
'  <div class="t-Header-nav">',
'    #TOP_GLOBAL_NAVIGATION_LIST#',
'    #REGION_POSITION_06#',
'  </div>',
'</header>',
'    '))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body">',
'  #SIDE_GLOBAL_NAVIGATION_LIST#',
'  <div class="t-Body-main">',
'      <div class="t-Body-title" id="t_Body_title">',
'        #REGION_POSITION_01#',
'      </div>',
'      <div class="t-Body-content" id="t_Body_content">',
'        #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'        <div class="t-Body-contentInner">',
'          #BODY#',
'        </div>',
'        <footer class="t-Footer">',
'          #APP_VERSION#',
'          #CUSTOMIZE#',
'          #SCREEN_READER_TOGGLE#',
'          #REGION_POSITION_05#',
'        </footer>',
'      </div>',
'  </div>',
'</div>',
'<div class="t-Body-inlineDialogs">',
'  #REGION_POSITION_04#',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>',
''))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_navigation_bar=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-NavigationBar t-NavigationBar--classic" data-mode="classic">',
'  <li class="t-NavigationBar-item">',
'    <span class="t-Button t-Button--icon t-Button--noUI t-Button--header t-Button--navBar t-Button--headerUser">',
'        <span class="t-Icon a-Icon icon-user"></span>',
'        <span class="t-Button-label">&APP_USER.</span>',
'    </span>',
'  </li>#BAR_BODY#',
'</ul>'))
,p_navbar_entry=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item">',
'  <a class="t-Button t-Button--icon t-Button--header" href="#LINK#">',
'      <span class="t-Icon #IMAGE#"></span>',
'      <span class="t-Button-label">#TEXT#</span>',
'  </a>',
'</li>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_breadcrumb_def_reg_pos=>'REGION_POSITION_01'
,p_theme_class_id=>1
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>4070909157481059304
,p_translate_this_template=>'N'
);
end;
/
begin
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652276225667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652386873667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Breadcrumb Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652464783667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Inline Dialogs'
,p_placeholder=>'REGION_POSITION_04'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652549212667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Footer'
,p_placeholder=>'REGION_POSITION_05'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652691486667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Page Navigation'
,p_placeholder=>'REGION_POSITION_06'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652781305667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Page Header'
,p_placeholder=>'REGION_POSITION_07'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350652815931667796)
,p_page_template_id=>wwv_flow_api.id(1350652189729667795)
,p_name=>'Before Navigation Bar'
,p_placeholder=>'REGION_POSITION_08'
,p_has_grid_support=>false
,p_glv_new_row=>false
);
wwv_flow_api.create_template(
 p_id=>wwv_flow_api.id(1350652966174667796)
,p_theme_id=>42
,p_name=>'Wizard Modal Dialog'
,p_is_popup=>true
,p_javascript_code_onload=>'apex.theme42.initializePage.wizardModal();'
,p_header_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<meta http-equiv="x-ua-compatible" content="IE=edge" />',
'',
'<!--[if lt IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8 lt-ie7" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 7]><html class="no-js lt-ie10 lt-ie9 lt-ie8" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 8]><html class="no-js lt-ie10 lt-ie9" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if IE 9]><html class="no-js lt-ie10" lang="&BROWSER_LANGUAGE."> <![endif]-->',
'<!--[if gt IE 9]><!--> <html class="no-js" lang="&BROWSER_LANGUAGE."> <!--<![endif]-->',
'<head>',
'  <meta charset="utf-8">  ',
'  <title>#TITLE#</title>',
'  #APEX_CSS#',
'  #THEME_CSS#',
'  #TEMPLATE_CSS#',
'  #THEME_STYLE_CSS#',
'  #APPLICATION_CSS#',
'  #PAGE_CSS#',
'  #FAVICONS#',
'  #HEAD#',
'  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>',
'</head>',
'<body class="t-Dialog-page #DIALOG_CSS_CLASSES# #PAGE_CSS_CLASSES#" #ONLOAD#>',
'#FORM_OPEN#'))
,p_box=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Dialog" role="dialog" aria-label="#TITLE#">',
'  <div class="t-Wizard t-Wizard--modal">',
'    <div class=" t-Wizard-steps">',
'      #REGION_POSITION_01#',
'    </div>',
'    <div class="t-Wizard-body">',
'      #SUCCESS_MESSAGE##NOTIFICATION_MESSAGE##GLOBAL_NOTIFICATION#',
'      #BODY#',
'    </div>',
'    <div class="t-Wizard-footer">',
'      #REGION_POSITION_03#',
'    </div>',
'  </div>',
'</div>'))
,p_footer_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#FORM_CLOSE#',
'#DEVELOPER_TOOLBAR#',
'#APEX_JAVASCRIPT#',
'#GENERATED_CSS#',
'#THEME_JAVASCRIPT#',
'#TEMPLATE_JAVASCRIPT#',
'#APPLICATION_JAVASCRIPT#',
'#PAGE_JAVASCRIPT#  ',
'#GENERATED_JAVASCRIPT#',
'</body>',
'</html>'))
,p_success_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--success t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Success" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-header">',
'          <h2 class="t-Alert-title">#SUCCESS_MESSAGE#</h2>',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Success'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_notification_message=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-alert">',
'  <div class="t-Alert t-Alert--defaultIcons t-Alert--warning t-Alert--horizontal t-Alert--page t-Alert--colorBG" id="t_Alert_Notification" role="alert">',
'    <div class="t-Alert-wrap">',
'      <div class="t-Alert-icon">',
'        <span class="t-Icon"></span>',
'      </div>',
'      <div class="t-Alert-content">',
'        <div class="t-Alert-body">',
'          #MESSAGE#',
'        </div>',
'      </div>',
'      <div class="t-Alert-buttons">',
'        <button class="t-Button t-Button--noUI t-Button--icon t-Button--closeAlert" onclick="apex.jQuery(''#t_Alert_Notification'').remove();" type="button" title="#CLOSE_NOTIFICATION#"><span class="t-Icon icon-close"></span></button>',
'      </div>',
'    </div>',
'  </div>',
'</div>'))
,p_region_table_cattributes=>' summary="" cellpadding="0" border="0" cellspacing="0" width="100%"'
,p_theme_class_id=>3
,p_error_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--danger t-Alert--wizard t-Alert--defaultIcons">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-body">',
'        <h3>#MESSAGE#</h3>',
'        <p>#ADDITIONAL_INFO#</p>',
'        <div class="t-Alert-inset">#TECHNICAL_INFO#</div>',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      <button onclick="#BACK_LINK#" class="t-Button t-Button--hot w50p t-Button--large" type="button">#OK#</button>',
'    </div>',
'  </div>',
'</div>'))
,p_grid_type=>'FIXED'
,p_grid_max_columns=>12
,p_grid_always_use_max_columns=>true
,p_grid_has_column_span=>true
,p_grid_always_emit=>true
,p_grid_emit_empty_leading_cols=>true
,p_grid_emit_empty_trail_cols=>false
,p_grid_default_label_col_span=>3
,p_grid_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="container">',
'#ROWS#',
'</div>'))
,p_grid_row_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="row">',
'#COLUMNS#',
'</div>'))
,p_grid_column_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="col col-#COLUMN_SPAN_NUMBER# #CSS_CLASSES#" #ATTRIBUTES#>',
'#CONTENT#',
'</div>'))
,p_grid_first_column_attributes=>'alpha'
,p_grid_last_column_attributes=>'omega'
,p_dialog_js_init_code=>'apex.navigation.dialog(#PAGE_URL#,{title:#TITLE#,height:#DIALOG_HEIGHT#,width:#DIALOG_WIDTH#,maxWidth:#DIALOG_MAX_WIDTH#,modal:#IS_MODAL#,dialog:#DIALOG#,#DIALOG_ATTRIBUTES#},#DIALOG_CSS_CLASSES#,#TRIGGERING_ELEMENT#);'
,p_dialog_js_close_code=>'apex.navigation.dialog.close(#IS_MODAL#,#TARGET#);'
,p_dialog_js_cancel_code=>'apex.navigation.dialog.cancel(#IS_MODAL#);'
,p_dialog_height=>'480'
,p_dialog_width=>'720'
,p_dialog_max_width=>'960'
,p_dialog_css_classes=>'t-Dialog--wizard'
,p_dialog_browser_frame=>'MODAL'
,p_reference_id=>2120348229686426515
,p_translate_this_template=>'N'
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350653044893667796)
,p_page_template_id=>wwv_flow_api.id(1350652966174667796)
,p_name=>'Wizard Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350653133738667796)
,p_page_template_id=>wwv_flow_api.id(1350652966174667796)
,p_name=>'Wizard Progress Bar'
,p_placeholder=>'REGION_POSITION_01'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_page_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350653294877667796)
,p_page_template_id=>wwv_flow_api.id(1350652966174667796)
,p_name=>'Wizard Buttons'
,p_placeholder=>'REGION_POSITION_03'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/button
begin
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1350683881619667857)
,p_template_name=>'Icon'
,p_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-hidden="true"><'
||'/span></button>'
,p_hot_template=>'<button class="t-Button t-Button--noLabel t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#" title="#LABEL#" aria-label="#LABEL#"><span class="t-Icon #ICON_CSS_CLASSES#" aria-h'
||'idden="true"></span></button>'
,p_reference_id=>2347660919680321258
,p_translate_this_template=>'N'
,p_theme_class_id=>5
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1350683932431667861)
,p_template_name=>'Text'
,p_template=>'<button onclick="#JAVASCRIPT#" class="t-Button #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_hot_template=>'<button onclick="#JAVASCRIPT#" class="t-Button t-Button--hot #BUTTON_CSS_CLASSES#" type="button" #BUTTON_ATTRIBUTES# id="#BUTTON_ID#"><span class="t-Button-label">#LABEL#</span></button>'
,p_reference_id=>4070916158035059322
,p_translate_this_template=>'N'
,p_theme_class_id=>1
,p_theme_id=>42
);
wwv_flow_api.create_button_templates(
 p_id=>wwv_flow_api.id(1350684085904667861)
,p_template_name=>'Text with Icon'
,p_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES#" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-label">#LABEL#'
||'</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_hot_template=>'<button class="t-Button t-Button--icon #BUTTON_CSS_CLASSES# t-Button--hot" #BUTTON_ATTRIBUTES# onclick="#JAVASCRIPT#" type="button" id="#BUTTON_ID#"><span class="t-Icon t-Icon--left #ICON_CSS_CLASSES#" aria-hidden="true"></span><span class="t-Button-'
||'label">#LABEL#</span><span class="t-Icon t-Icon--right #ICON_CSS_CLASSES#" aria-hidden="true"></span></button>'
,p_reference_id=>2081382742158699622
,p_translate_this_template=>'N'
,p_theme_class_id=>4
,p_preset_template_options=>'t-Button--iconRight'
,p_theme_id=>42
);
end;
/
prompt --application/shared_components/user_interface/templates/region
begin
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350653308237667798)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #BODY#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">#PREVIOUS##CLOSE##CREATE##NEXT#</div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Alert'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>21
,p_preset_template_options=>'t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2039236646100190748
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350653479455667804)
,p_plug_template_id=>wwv_flow_api.id(1350653308237667798)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350654883233667815)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="#REGION_CSS_CLASSES#"> ',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Blank with Attributes'
,p_theme_id=>42
,p_theme_class_id=>7
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4499993862448380551
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350654972532667815)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ButtonRegion t-Form--floatLeft #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-ButtonRegion-wrap">',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--content">',
'      <h2 class="t-ButtonRegion-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'      #BODY#',
'      <div class="t-ButtonRegion-buttons">#CHANGE#</div>',
'    </div>',
'    <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Buttons Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>17
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2124982336649579661
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350655051520667815)
,p_plug_template_id=>wwv_flow_api.id(1350654972532667815)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350655111884667815)
,p_plug_template_id=>wwv_flow_api.id(1350654972532667815)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350655900894667816)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--carousel #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'   <div class="t-Region-carouselRegions">',
'     #SUB_REGIONS#',
'   </div>',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Carousel Container'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-Region--showCarouselControls'
,p_preset_template_options=>'t-Region--hiddenOverflow'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2865840475322558786
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350655947221667816)
,p_plug_template_id=>wwv_flow_api.id(1350655900894667816)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350656034185667816)
,p_plug_template_id=>wwv_flow_api.id(1350655900894667816)
,p_name=>'Slides'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350659297398667819)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region t-Region--hideShow #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems  t-Region-headerItems--controls">',
'    <button class="t-Button t-Button--icon t-Button--hideShow" type="button"></button>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#EDIT#</div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#CLOSE#</div>',
'    <div class="t-Region-buttons-right">#CREATE#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #COPY#',
'     #BODY#',
'     #SUB_REGIONS#',
'     #CHANGE#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
' </div>',
'</div>'))
,p_page_plug_template_name=>'Collapsible'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>1
,p_preset_template_options=>'is-expanded:t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2662888092628347716
,p_translate_this_template=>'N'
,p_template_comment=>'Red Theme'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350659347464667819)
,p_plug_template_id=>wwv_flow_api.id(1350659297398667819)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350659471177667819)
,p_plug_template_id=>wwv_flow_api.id(1350659297398667819)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350661385990667821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-HeroRegion #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-HeroRegion-wrap">',
'    <div class="t-HeroRegion-col t-HeroRegion-col--left"><span class="t-HeroRegion-icon t-Icon #ICON_CSS_CLASSES#"></span></div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--content">',
'      <h2 class="t-HeroRegion-title">#TITLE#</h2>',
'      #BODY#',
'    </div>',
'    <div class="t-HeroRegion-col t-HeroRegion-col--right"><div class="t-HeroRegion-form">#SUB_REGIONS#</div><div class="t-HeroRegion-buttons">#NEXT#</div></div>',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Hero'
,p_theme_id=>42
,p_theme_class_id=>22
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672571031438297268
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350661451302667821)
,p_plug_template_id=>wwv_flow_api.id(1350661385990667821)
,p_name=>'Region Body'
,p_placeholder=>'#BODY#'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350661563087667821)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#_parent">',
'<div id="#REGION_STATIC_ID#"  class="t-DialogRegion #REGION_CSS_CLASSES# js-regionDialog" #REGION_ATTRIBUTES# style="display:none" title="#TITLE#">',
'  <div class="t-DialogRegion-body js-regionDialog-body">',
'#BODY#',
'  </div>',
'  <div class="t-DialogRegion-buttons js-regionDialog-buttons">',
'     <div class="t-ButtonRegion t-ButtonRegion--dialogRegion">',
'       <div class="t-ButtonRegion-wrap">',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--left"><div class="t-ButtonRegion-buttons">#PREVIOUS##DELETE##CLOSE#</div></div>',
'         <div class="t-ButtonRegion-col t-ButtonRegion-col--right"><div class="t-ButtonRegion-buttons">#EDIT##CREATE##NEXT#</div></div>',
'       </div>',
'     </div>',
'  </div>',
'</div>',
'</div>'))
,p_page_plug_template_name=>'Inline Dialog'
,p_theme_id=>42
,p_theme_class_id=>24
,p_default_template_options=>'js-modal:js-draggable:js-resizable'
,p_preset_template_options=>'js-dialog-size600x400'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2671226943886536762
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350661620192667822)
,p_plug_template_id=>wwv_flow_api.id(1350661563087667821)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350662431831667826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-IRR-region #REGION_CSS_CLASSES#" role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <h2 class="u-VisuallyHidden" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'#PREVIOUS##BODY##SUB_REGIONS##NEXT#',
'</div>'))
,p_page_plug_template_name=>'Interactive Report'
,p_theme_id=>42
,p_theme_class_id=>9
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2099079838218790610
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350662745966667826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Login-region t-Form--stretchInputs t-Form--labelsAbove #REGION_CSS_CLASSES#" id="#REGION_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
'  <div class="t-Login-header">',
'    <span class="t-Login-logo #ICON_CSS_CLASSES#"></span>',
'    <h1 class="t-Login-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h1>',
'  </div>',
'  <div class="t-Login-body">',
'    #BODY#',
'  </div>',
'  <div class="t-Login-buttons">',
'    #NEXT#',
'  </div>',
'  <div class="t-Login-links">',
'    #EDIT##CREATE#',
'  </div>',
'  #SUB_REGIONS#',
'</div>'))
,p_page_plug_template_name=>'Login'
,p_theme_id=>42
,p_theme_class_id=>23
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2672711194551076376
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350662838598667826)
,p_plug_template_id=>wwv_flow_api.id(1350662745966667826)
,p_name=>'Content Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350662929702667826)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Region #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# role="group" aria-labelledby="#REGION_STATIC_ID#_heading">',
' <div class="t-Region-header">',
'  <div class="t-Region-headerItems t-Region-headerItems--title">',
'    <h2 class="t-Region-title" id="#REGION_STATIC_ID#_heading">#TITLE#</h2>',
'  </div>',
'  <div class="t-Region-headerItems t-Region-headerItems--buttons">#COPY##EDIT#<span class="js-maximizeButtonContainer"></span></div>',
' </div>',
' <div class="t-Region-bodyWrap">',
'   <div class="t-Region-buttons t-Region-buttons--top">',
'    <div class="t-Region-buttons-left">#PREVIOUS#</div>',
'    <div class="t-Region-buttons-right">#NEXT#</div>',
'   </div>',
'   <div class="t-Region-body">',
'     #BODY#',
'     #SUB_REGIONS#',
'   </div>',
'   <div class="t-Region-buttons t-Region-buttons--bottom">',
'    <div class="t-Region-buttons-left">#CLOSE##HELP#</div>',
'    <div class="t-Region-buttons-right">#DELETE##CHANGE##CREATE#</div>',
'   </div>',
' </div>',
'</div>',
''))
,p_page_plug_template_name=>'Standard'
,p_plug_table_bgcolor=>'#ffffff'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Region--scrollBody'
,p_plug_heading_bgcolor=>'#ffffff'
,p_plug_font_size=>'-1'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>4070912133526059312
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350663061685667826)
,p_plug_template_id=>wwv_flow_api.id(1350662929702667826)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350663167583667826)
,p_plug_template_id=>wwv_flow_api.id(1350662929702667826)
,p_name=>'Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
,p_max_fixed_grid_columns=>12
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350665088959667830)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-TabsRegion #REGION_CSS_CLASSES#" #REGION_ATTRIBUTES# id="#REGION_STATIC_ID#">',
'  #BODY#',
'  <div class="t-TabsRegion-items">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_sub_plug_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div data-label="#SUB_REGION_TITLE#" id="SR_#SUB_REGION_ID#">',
'  #SUB_REGION#',
'</div>'))
,p_page_plug_template_name=>'Tabs Container'
,p_theme_id=>42
,p_theme_class_id=>5
,p_preset_template_options=>'t-TabsRegion-mod--simple'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>3221725015618492759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350665189892667830)
,p_plug_template_id=>wwv_flow_api.id(1350665088959667830)
,p_name=>'Region Body'
,p_placeholder=>'BODY'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350665287444667830)
,p_plug_template_id=>wwv_flow_api.id(1350665088959667830)
,p_name=>'Tabs'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>false
,p_glv_new_row=>true
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350666257371667830)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES# class="t-BreadcrumbRegion #REGION_CSS_CLASSES#"> ',
'  <div class="t-BreadcrumbRegion-body">',
'    <div class="t-BreadcrumbRegion-breadcrumb">',
'      #BODY#',
'    </div>',
'    <div class="t-BreadcrumbRegion-title">',
'      <h1 class="t-BreadcrumbRegion-titleText">#TITLE#</h1>',
'    </div>',
'  </div>',
'  <div class="t-BreadcrumbRegion-buttons">#PREVIOUS##CLOSE##DELETE##HELP##CHANGE##EDIT##COPY##CREATE##NEXT#</div>',
'</div>'))
,p_page_plug_template_name=>'Title Bar'
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BreadcrumbRegion--showBreadcrumb'
,p_preset_template_options=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2530016523834132090
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_template(
 p_id=>wwv_flow_api.id(1350666778255667833)
,p_layout=>'TABLE'
,p_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Wizard #REGION_CSS_CLASSES#" id="#REGION_STATIC_ID#" #REGION_ATTRIBUTES#>',
'  <div class="t-Wizard-header">',
'    <h1 class="t-Wizard-title">#TITLE#</h1>',
'    <div class="u-Table t-Wizard-controls">',
'      <div class="u-Table-fit t-Wizard-buttons">#PREVIOUS##CLOSE#</div>',
'      <div class="u-Table-fill t-Wizard-steps">',
'        #BODY#',
'      </div>',
'      <div class="u-Table-fit t-Wizard-buttons">#NEXT#</div>',
'    </div>',
'  </div>',
'  <div class="t-Wizard-body">',
'    #SUB_REGIONS#',
'  </div>',
'</div>'))
,p_page_plug_template_name=>'Wizard Container'
,p_theme_id=>42
,p_theme_class_id=>8
,p_preset_template_options=>'t-Wizard--hideStepsXSmall'
,p_default_label_alignment=>'RIGHT'
,p_default_field_alignment=>'LEFT'
,p_reference_id=>2117602213152591491
,p_translate_this_template=>'N'
);
wwv_flow_api.create_plug_tmpl_display_point(
 p_id=>wwv_flow_api.id(1350666831668667834)
,p_plug_template_id=>wwv_flow_api.id(1350666778255667833)
,p_name=>'Wizard Sub Regions'
,p_placeholder=>'SUB_REGIONS'
,p_has_grid_support=>true
,p_glv_new_row=>true
);
end;
/
prompt --application/shared_components/user_interface/templates/list
begin
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350675194096667848)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item #A02#">',
'  <span class="t-BadgeList-label">#TEXT#</span>',
'  <span class="t-BadgeList-value"><a href="#LINK#" #A03#>#A01#</a></span>',
'</li>',
''))
,p_list_template_name=>'Badge List'
,p_theme_id=>42
,p_theme_class_id=>3
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_list_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Value'
,p_a02_label=>'List item CSS Classes'
,p_a03_label=>'Link Attributes'
,p_reference_id=>2062482847268086664
,p_list_template_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A01: Large Number',
'A02: List Item Classes',
'A03: Link Attributes'))
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350676885201667852)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #A04#">',
'  <div class="t-Card">',
'    <a href="#LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #ICON_CSS_CLASSES#"><span class="t-Card-initials" role="presentation">#A03#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#TEXT#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#A01#</div>',
'        <div class="t-Card-info">#A02#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_list_template_name=>'Cards'
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_list_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Secondary Information'
,p_a03_label=>'Initials'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2885322685880632508
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350678930155667852)
,p_list_template_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_list_template_name=>'Links List'
,p_theme_id=>42
,p_theme_class_id=>18
,p_list_template_before_rows=>'<ul class="t-LinksList #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<ul class="t-LinksList-list">'
,p_after_sub_list=>'</ul>'
,p_sub_list_item_current=>'<li class="t-LinksList-item is-current #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-b'
||'adge">#A01#</span></a></li>'
,p_sub_list_item_noncurrent=>'<li class="t-LinksList-item#A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#<'
||'/span></a></li>'
,p_item_templ_curr_w_child=>'<li class="t-LinksList-item is-current is-expanded #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t'
||'-LinksList-badge">#A01#</span></a>#SUB_LISTS#</li>'
,p_item_templ_noncurr_w_child=>'<li class="t-LinksList-item #A03#"><a href="#LINK#" class="t-LinksList-link" #A02#><span class="t-LinksList-icon"><span class="t-Icon #ICON_CSS_CLASSES#"></span></span><span class="t-LinksList-label">#TEXT#</span><span class="t-LinksList-badge">#A01#'
||'</span></a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'Link Attributes'
,p_a03_label=>'List Item CSS Classes'
,p_reference_id=>4070914341144059318
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350679760222667852)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item is-active #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-MediaList-item  #A04#">',
'    <a href="#LINK#" class="t-MediaList-itemWrap" #A03#>',
'        <div class="t-MediaList-iconWrap">',
'            <span class="t-MediaList-icon"><span class="t-Icon #ICON_CSS_CLASSES#" #IMAGE_ATTR#></span></span>',
'        </div>',
'        <div class="t-MediaList-body">',
'            <h3 class="t-MediaList-title">#TEXT#</h3>',
'            <p class="t-MediaList-desc">#A01#</p>',
'        </div>',
'        <div class="t-MediaList-badgeWrap">',
'            <span class="t-MediaList-badge">#A02#</span>',
'        </div>',
'    </a>',
'</li>'))
,p_list_template_name=>'Media List'
,p_theme_id=>42
,p_theme_class_id=>5
,p_default_template_options=>'t-MediaList--showDesc:t-MediaList--showIcons'
,p_list_template_before_rows=>'<ul class="t-MediaList #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_a01_label=>'Description'
,p_a02_label=>'Badge Value'
,p_a03_label=>'Link Attributes'
,p_a04_label=>'List Item CSS Classes'
,p_reference_id=>2066548068783481421
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350680684880667854)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Menu Bar'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  iconType: ''fa'',',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-showSubMenuIcons'
,p_list_template_before_rows=>'<div class="t-MenuBar #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_reference_id=>2008709236185638887
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350681130648667854)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>',
''))
,p_list_template_name=>'Menu Popup'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menu", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({ slide: e.hasClass("js-slide")});',
''))
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<div id="#PARENT_STATIC_ID#_menu" class="#COMPONENT_CSS_CLASSES#" style="display:none;"><ul>'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'Data ID'
,p_a02_label=>'Disabled (True/False)'
,p_a03_label=>'Hidden (True/False)'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut'
,p_reference_id=>3492264004432431646
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350681240652667855)
,p_list_template_current=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_noncurrent=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <a class="t-Button t-Button--icon t-Button--header t-Button--navBar" href="#LINK#" role="button">',
'    <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span>',
'  </a>',
'</li>'))
,p_list_template_name=>'Navigation Bar'
,p_theme_id=>42
,p_theme_class_id=>20
,p_list_template_before_rows=>'<ul class="t-NavigationBar #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'
,p_list_template_after_rows=>'</ul>'
,p_before_sub_list=>'<div class="t-NavigationBar-menu" style="display: none" id="menu_#PARENT_LIST_ITEM_ID#"><ul>'
,p_after_sub_list=>'</ul></div></li>'
,p_sub_list_item_current=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item is-active #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_item_templ_noncurr_w_child=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-NavigationBar-item #A02#">',
'  <button class="t-Button t-Button--icon t-Button t-Button--header t-Button--navBar js-menuButton" type="button" id="#LIST_ITEM_ID#" data-menu="menu_#LIST_ITEM_ID#">',
'      <span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Button-label">#TEXT_ESC_SC#</span><span class="t-Button-badge">#A01#</span><span class="a-Icon icon-down-arrow"></span>',
'  </button>'))
,p_sub_templ_curr_w_child=>'<li data-current="true" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_sub_templ_noncurr_w_child=>'<li data-current="false" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#">#TEXT_ESC_SC#</a></li>'
,p_a01_label=>'Badge Value'
,p_a02_label=>'List  Item CSS Classes'
,p_reference_id=>2846096252961119197
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350681361473667855)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Side Navigation Menu'
,p_javascript_file_urls=>'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.treeView#MIN#.js?v=#APEX_VERSION#'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'$(''body'').addClass(''t-PageBody--leftNav'');',
''))
,p_theme_id=>42
,p_theme_class_id=>19
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Body-nav" id="t_Body_nav" role="navigation" aria-label="&APP_TITLE!ATTR.">',
'<div class="t-TreeNav #COMPONENT_CSS_CLASSES#" id="t_TreeNav" data-id="#PARENT_STATIC_ID#_tree" aria-label="&APP_TITLE!ATTR."><ul style="display:none">'))
,p_list_template_after_rows=>'</ul></div></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True/False'
,p_a04_label=>'Title'
,p_reference_id=>2466292414354694776
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350681488759667855)
,p_list_template_current=>'<li class="t-Tabs-item is-active"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_noncurrent=>'<li class="t-Tabs-item"><a href="#LINK#" class="t-Tabs-link"><span class="t-Icon #ICON_CSS_CLASSES#"></span><span class="t-Tabs-label">#TEXT#</span></a></li>'
,p_list_template_name=>'Tabs'
,p_theme_id=>42
,p_theme_class_id=>7
,p_list_template_before_rows=>'<ul class="t-Tabs #COMPONENT_CSS_CLASSES#">'
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>3288206686691809997
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350682368237667855)
,p_list_template_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_list_template_name=>'Top Navigation Menu'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'var e = apex.jQuery("##PARENT_STATIC_ID#_menubar", apex.gPageContext$);',
'if (e.hasClass("js-addActions")) {',
'  if ( apex.actions ) {',
'    apex.actions.addFromMarkup( e );',
'  } else {',
'    apex.debug.warn("Include actions.js to support menu shortcuts");',
'  }',
'}',
'e.menu({',
'  behaveLikeTabs: e.hasClass("js-tabLike"),',
'  menubarShowSubMenuIcon: e.hasClass("js-showSubMenuIcons") || null,',
'  slide: e.hasClass("js-slide"),',
'  menubar: true,',
'  menubarOverflow: true',
'});'))
,p_theme_id=>42
,p_theme_class_id=>20
,p_default_template_options=>'js-tabLike'
,p_list_template_before_rows=>'<div class="t-Header-nav-list #COMPONENT_CSS_CLASSES#" id="#PARENT_STATIC_ID#_menubar"><ul style="display:none">'
,p_list_template_after_rows=>'</ul></div>'
,p_before_sub_list=>'<ul>'
,p_after_sub_list=>'</ul></li>'
,p_sub_list_item_current=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_sub_list_item_noncurrent=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a></li>'
,p_item_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_item_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_curr_w_child=>'<li data-current="true" data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_sub_templ_noncurr_w_child=>'<li data-id="#A01#" data-disabled="#A02#" data-hide="#A03#" data-shortcut="#A05#" data-icon="#ICON_CSS_CLASSES#"><a href="#LINK#" title="#A04#">#TEXT_ESC_SC#</a>'
,p_a01_label=>'ID Attribute'
,p_a02_label=>'Disabled True / False'
,p_a03_label=>'Hide'
,p_a04_label=>'Title Attribute'
,p_a05_label=>'Shortcut Key'
,p_reference_id=>2525307901300239072
);
wwv_flow_api.create_list_template(
 p_id=>wwv_flow_api.id(1350682851517667855)
,p_list_template_current=>'<li class="t-WizardSteps-step is-active" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"></span></span></div></li>'
,p_list_template_noncurrent=>'<li class="t-WizardSteps-step" id="#LIST_ITEM_ID#"><div class="t-WizardSteps-wrap"><span class="t-WizardSteps-marker"><span class="t-Icon a-Icon icon-check"></span></span><span class="t-WizardSteps-label">#TEXT# <span class="t-WizardSteps-labelState"'
||'></span></span></div></li>'
,p_list_template_name=>'Wizard Progress'
,p_javascript_code_onload=>'apex.theme.initWizardProgressBar();'
,p_theme_id=>42
,p_theme_class_id=>17
,p_preset_template_options=>'t-WizardSteps--displayLabels'
,p_list_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<h2 class="u-VisuallyHidden">#CURRENT_PROGRESS#</h2>',
'<ul class="t-WizardSteps #COMPONENT_CSS_CLASSES#" id="#LIST_ID#">'))
,p_list_template_after_rows=>'</ul>'
,p_reference_id=>2008702338707394488
);
end;
/
prompt --application/shared_components/user_interface/templates/report
begin
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350667320578667837)
,p_row_template_name=>'Alerts'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Alert t-Alert--horizontal t-Alert--colorBG t-Alert--defaultIcons t-Alert--#ALERT_TYPE#" role="alert">',
'  <div class="t-Alert-wrap">',
'    <div class="t-Alert-icon">',
'      <span class="t-Icon"></span>',
'    </div>',
'    <div class="t-Alert-content">',
'      <div class="t-Alert-header">',
'        <h2 class="t-Alert-title">#ALERT_TITLE#</h2>',
'      </div>',
'      <div class="t-Alert-body">',
'        #ALERT_DESC#',
'      </div>',
'    </div>',
'    <div class="t-Alert-buttons">',
'      #ALERT_ACTION#',
'    </div>',
'  </div>',
'</div>'))
,p_row_template_before_rows=>'<div class="t-Alerts">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</div>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>14
,p_reference_id=>2881456138952347027
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350667493766667839)
,p_row_template_name=>'Badge List'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-BadgeList-item">',
'  <span class="t-BadgeList-label">#COLUMN_HEADER#</span>',
'  <span class="t-BadgeList-value">#COLUMN_VALUE#</span>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-BadgeList t-BadgeList--circular #COMPONENT_CSS_CLASSES#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_default_template_options=>'t-BadgeList--responsive'
,p_preset_template_options=>'t-BadgeList--large:t-BadgeList--fixed'
,p_reference_id=>2103197159775914759
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350669117811667839)
,p_row_template_name=>'Cards'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Cards-item #CARD_MODIFIERS#">',
'  <div class="t-Card">',
'    <a href="#CARD_LINK#" class="t-Card-wrap">',
'      <div class="t-Card-icon"><span class="t-Icon #CARD_ICON#"><span class="t-Card-initials" role="presentation">#CARD_INITIALS#</span></span></div>',
'      <div class="t-Card-titleWrap"><h3 class="t-Card-title">#CARD_TITLE#</h3></div>',
'      <div class="t-Card-body">',
'        <div class="t-Card-desc">#CARD_TEXT#</div>',
'        <div class="t-Card-info">#CARD_SUBTEXT#</div>',
'      </div>',
'    </a>',
'  </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Cards #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_cards">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Cards--3cols:t-Cards--featured'
,p_reference_id=>2973535649510699732
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350671216014667840)
,p_row_template_name=>'Comments'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Comments-item #COMMENT_MODIFIERS#">',
'    <div class="t-Comments-icon a-MediaBlock-graphic">',
'        <div class="t-Comments-userIcon #ICON_MODIFIER#" aria-hidden="true">#USER_ICON#</div>',
'    </div>',
'    <div class="t-Comments-body a-MediaBlock-content">',
'        <div class="t-Comments-info">',
'            #USER_NAME# &middot; <span class="t-Comments-date">#COMMENT_DATE#</span> <span class="t-Comments-actions">#ACTIONS#</span>',
'        </div>',
'        <div class="t-Comments-comment">',
'            #COMMENT_TEXT##ATTRIBUTE_1##ATTRIBUTE_2##ATTRIBUTE_3##ATTRIBUTE_4#',
'        </div>',
'    </div>',
'</li>'))
,p_row_template_before_rows=>'<ul class="t-Comments #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_report">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>',
''))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-Comments--chat'
,p_reference_id=>2611722012730764232
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350671622351667841)
,p_row_template_name=>'Search Results'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition1=>':LABEL_02 is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition2=>':LABEL_03 is null'
,p_row_template3=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'    </div>',
'  </li>'))
,p_row_template_condition3=>':LABEL_04 is null'
,p_row_template4=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-SearchResults-item">',
'    <h3 class="t-SearchResults-title"><a href="#SEARCH_LINK#">#SEARCH_TITLE#</a></h3>',
'    <div class="t-SearchResults-info">',
'      <p class="t-SearchResults-desc">#SEARCH_DESC#</p>',
'      <span class="t-SearchResults-misc">#LABEL_01#: #VALUE_01#</span>',
'      <span class="t-SearchResults-misc">#LABEL_02#: #VALUE_02#</span>',
'      <span class="t-SearchResults-misc">#LABEL_03#: #VALUE_03#</span>',
'      <span class="t-SearchResults-misc">#LABEL_04#: #VALUE_04#</span>',
'    </div>',
'  </li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-SearchResults #COMPONENT_CSS_CLASSES#">',
'<ul class="t-SearchResults-list">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>',
'</div>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'NOT_CONDITIONAL'
,p_row_template_display_cond3=>'NOT_CONDITIONAL'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070913431524059316
,p_translate_this_template=>'N'
,p_row_template_comment=>' (SELECT link_text, link_target, detail1, detail2, last_modified)'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350671701912667841)
,p_row_template_name=>'Standard'
,p_row_template1=>'<td class="t-Report-cell" #ALIGNMENT# headers="#COLUMN_HEADER_NAME#">#COLUMN_VALUE#</td>'
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Report #COMPONENT_CSS_CLASSES#" id="report_#REGION_STATIC_ID#" #REPORT_ATTRIBUTES#>',
'  <div class="t-Report-wrap">',
'    <table class="t-Report-pagination" role="presentation">#TOP_PAGINATION#</table>',
'    <div class="t-Report-tableWrap">',
'    <table class="t-Report-report" summary="#REGION_TITLE#">'))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'      </tbody>',
'    </table>',
'    </div>',
'    <div class="t-Report-links">#EXTERNAL_LINK##CSV_LINK#</div>',
'    <table class="t-Report-pagination t-Report-pagination--bottom" role="presentation">#PAGINATION#</table>',
'  </div>',
'</div>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_before_column_heading=>'<thead>'
,p_column_heading_template=>'<th class="t-Report-colHead" #ALIGNMENT# id="#COLUMN_HEADER_NAME#" #COLUMN_WIDTH#>#COLUMN_HEADER#</th>'
,p_after_column_heading=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</thead>',
'<tbody>'))
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>4
,p_preset_template_options=>'t-Report--altRowsDefault:t-Report--rowHighlight'
,p_reference_id=>2537207537838287671
,p_translate_this_template=>'N'
);
begin
wwv_flow_api.create_row_template_patch(
 p_id=>wwv_flow_api.id(1350671701912667841)
,p_row_template_before_first=>'<tr>'
,p_row_template_after_last=>'</tr>'
);
exception when others then null;
end;
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350673064951667842)
,p_row_template_name=>'Timeline'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <div class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </div>',
'</li>'))
,p_row_template_condition1=>':EVENT_LINK is null'
,p_row_template2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<li class="t-Timeline-item #EVENT_MODIFIERS#" #EVENT_ATTRIBUTES#>',
'  <a href="#EVENT_LINK#" class="t-Timeline-wrap">',
'    <div class="t-Timeline-user">',
'      <div class="t-Timeline-avatar #USER_COLOR#">',
'        #USER_AVATAR#',
'      </div>',
'      <div class="t-Timeline-userinfo">',
'        <span class="t-Timeline-username">#USER_NAME#</span>',
'        <span class="t-Timeline-date">#EVENT_DATE#</span>',
'      </div>',
'    </div>',
'    <div class="t-Timeline-content">',
'      <div class="t-Timeline-typeWrap">',
'        <div class="t-Timeline-type #EVENT_STATUS#">',
'          <span class="t-Icon #EVENT_ICON#"></span>',
'          <span class="t-Timeline-typename">#EVENT_TYPE#</span>',
'        </div>',
'      </div>',
'      <div class="t-Timeline-body">',
'        <h3 class="t-Timeline-title">#EVENT_TITLE#</h3>',
'        <p class="t-Timeline-desc">#EVENT_DESC#</p>',
'      </div>',
'    </div>',
'  </a>',
'</li>'))
,p_row_template_before_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<ul class="t-Timeline #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="#REGION_STATIC_ID#_timeline">',
''))
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</ul>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'NOT_CONDITIONAL'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'NOT_CONDITIONAL'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_reference_id=>1513373588340069864
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350673277423667842)
,p_row_template_name=>'Value Attribute Pairs - Column'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #COLUMN_HEADER#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #COLUMN_VALUE#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES#>'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'GENERIC_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>6
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068636272681754
,p_translate_this_template=>'N'
);
wwv_flow_api.create_row_template(
 p_id=>wwv_flow_api.id(1350674279616667843)
,p_row_template_name=>'Value Attribute Pairs - Row'
,p_row_template1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<dt class="t-AVPList-label">',
'  #1#',
'</dt>',
'<dd class="t-AVPList-value">',
'  #2#',
'</dd>'))
,p_row_template_before_rows=>'<dl class="t-AVPList #COMPONENT_CSS_CLASSES#" #REPORT_ATTRIBUTES# id="report_#REGION_STATIC_ID#">'
,p_row_template_after_rows=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</dl>',
'<table class="t-Report-pagination" role="presentation">#PAGINATION#</table>'))
,p_row_template_type=>'NAMED_COLUMNS'
,p_row_template_display_cond1=>'0'
,p_row_template_display_cond2=>'0'
,p_row_template_display_cond3=>'0'
,p_row_template_display_cond4=>'0'
,p_pagination_template=>'<span class="t-Report-paginationText">#TEXT#</span>'
,p_next_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_page_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS#',
'</a>'))
,p_next_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--next">',
'  #PAGINATION_NEXT_SET#<span class="a-Icon icon-right-arrow"></span>',
'</a>'))
,p_previous_set_template=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<a href="#LINK#" class="t-Button t-Button--small t-Button--noUI t-Report-paginationLink t-Report-paginationLink--prev">',
'  <span class="a-Icon icon-left-arrow"></span>#PAGINATION_PREVIOUS_SET#',
'</a>'))
,p_theme_id=>42
,p_theme_class_id=>7
,p_preset_template_options=>'t-AVPList--leftAligned'
,p_reference_id=>2099068321678681753
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/label
begin
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1350683384305667856)
,p_template_name=>'Hidden'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer t-Form-labelContainer--hiddenLabel col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label u-VisuallyHidden">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--hiddenLabel rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>13
,p_reference_id=>2039339104148359505
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1350683447824667856)
,p_template_name=>'Optional'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>',
'</div>',
''))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>2317154212072806530
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1350683521854667856)
,p_template_name=>'Optional - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'<label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</label>#HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>3
,p_reference_id=>3030114864004968404
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1350683670887667856)
,p_template_name=>'Required'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer col col-#LABEL_COLUMN_SPAN_NUMBER#">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span>',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer rel-col #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer col col-#ITEM_COLUMN_SPAN_NUMBER#">'
,p_after_element=>'#HELP_TEMPLATE##ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>2525313812251712801
,p_translate_this_template=>'N'
);
wwv_flow_api.create_field_template(
 p_id=>wwv_flow_api.id(1350683733016667856)
,p_template_name=>'Required - Above'
,p_template_body1=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-Form-labelContainer">',
'  <label for="#CURRENT_ITEM_NAME#" id="#LABEL_ID#" class="t-Form-label">'))
,p_template_body2=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
' <span class="u-VisuallyHidden">(#VALUE_REQUIRED#)</span></label><span class="t-Form-required"><span class="a-Icon icon-asterisk"></span></span> #HELP_TEMPLATE#',
'</div>'))
,p_before_item=>'<div class="t-Form-fieldContainer t-Form-fieldContainer--stacked #ITEM_CSS_CLASSES#" id="#CURRENT_ITEM_CONTAINER_ID#">'
,p_after_item=>'</div>'
,p_before_element=>'<div class="t-Form-inputContainer">'
,p_after_element=>'#ERROR_TEMPLATE#</div>'
,p_help_link=>'<button class="t-Button t-Button--noUI t-Button--helpButton js-itemHelp" data-itemhelp="#CURRENT_ITEM_ID#" title="#CURRENT_ITEM_HELP_LABEL#" aria-label="#CURRENT_ITEM_HELP_LABEL#" tabindex="-1" type="button"><span class="a-Icon icon-help" aria-hidden'
||'="true"></span></button>'
,p_error_template=>'<span class="t-Form-error">#ERROR_MESSAGE#</span>'
,p_theme_id=>42
,p_theme_class_id=>4
,p_reference_id=>3030115129444970113
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/breadcrumb
begin
wwv_flow_api.create_menu_template(
 p_id=>wwv_flow_api.id(1350684491571667861)
,p_name=>'Breadcrumb'
,p_before_first=>'<ul class="t-Breadcrumb #COMPONENT_CSS_CLASSES#">'
,p_current_page_option=>'<li class="t-Breadcrumb-item is-active"><span class="t-Breadcrumb-label">#NAME#</span></li>'
,p_non_current_page_option=>'<li class="t-Breadcrumb-item"><a href="#LINK#" class="t-Breadcrumb-label">#NAME#</a></li>'
,p_after_last=>'</ul>'
,p_max_levels=>6
,p_start_with_node=>'PARENT_TO_LEAF'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916542570059325
,p_translate_this_template=>'N'
);
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
wwv_flow_api.create_popup_lov_template(
 p_id=>wwv_flow_api.id(1350684693416667866)
,p_page_name=>'winlov'
,p_page_title=>'Search Dialog'
,p_page_html_head=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html lang="&BROWSER_LANGUAGE.">',
'<head>',
'<title>#TITLE#</title>',
'#APEX_CSS#',
'#THEME_CSS#',
'#THEME_STYLE_CSS#',
'#FAVICONS#',
'#APEX_JAVASCRIPT#',
'#THEME_JAVASCRIPT#',
'<meta name="viewport" content="width=device-width,initial-scale=1.0" />',
'</head>'))
,p_page_body_attr=>'onload="first_field()" class="t-Page t-Page--popupLOV"'
,p_before_field_text=>'<div class="t-PopupLOV-actions t-Form--large">'
,p_filter_width=>'20'
,p_filter_max_width=>'100'
,p_filter_text_attr=>'class="t-Form-field t-Form-searchField"'
,p_find_button_text=>'Search'
,p_find_button_attr=>'class="t-Button t-Button--hot t-Button--padLeft"'
,p_close_button_text=>'Close'
,p_close_button_attr=>'class="t-Button u-pullRight"'
,p_next_button_text=>'Next &gt;'
,p_next_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_prev_button_text=>'&lt; Previous'
,p_prev_button_attr=>'class="t-Button t-PopupLOV-button"'
,p_after_field_text=>'</div>'
,p_scrollbars=>'1'
,p_resizable=>'1'
,p_width=>'380'
,p_height=>'380'
,p_result_row_x_of_y=>'<div class="t-PopupLOV-pagination">Row(s) #FIRST_ROW# - #LAST_ROW#</div>'
,p_result_rows_per_pg=>100
,p_before_result_set=>'<div class="t-PopupLOV-links">'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>2885398517835871876
,p_translate_this_template=>'N'
,p_after_result_set=>'</div>'
);
end;
/
prompt --application/shared_components/user_interface/templates/calendar
begin
wwv_flow_api.create_calendar_template(
 p_id=>wwv_flow_api.id(1350684505737667865)
,p_cal_template_name=>'Calendar'
,p_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th id="#DY#" scope="col" class="t-ClassicCalendar-dayColumn">',
'  <span class="visible-md visible-lg">#IDAY#</span>',
'  <span class="hidden-md hidden-lg">#IDY#</span>',
'</th>'))
,p_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #YYYY#</h1>'))
,p_month_open_format=>'<table class="t-ClassicCalendar-calendar" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>',
''))
,p_day_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_day_close_format=>'</td>'
,p_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#">#TITLE_FORMAT#<div class="t-ClassicCalendar-dayEvents">#DATA#</div>'
,p_weekend_close_format=>'</td>'
,p_nonday_title_format=>'<span class="t-ClassicCalendar-date">#DD#</span>'
,p_nonday_open_format=>'<td class="t-ClassicCalendar-day is-inactive" headers="#DY#">'
,p_nonday_close_format=>'</td>'
,p_week_open_format=>'<tr>'
,p_week_close_format=>'</tr> '
,p_daily_title_format=>'<table cellspacing="0" cellpadding="0" border="0" summary="" class="t1DayCalendarHolder"> <tr> <td class="t1MonthTitle">#IMONTH# #DD#, #YYYY#</td> </tr> <tr> <td>'
,p_daily_open_format=>'<tr>'
,p_daily_close_format=>'</tr>'
,p_weekly_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--weekly">',
'<h1 class="t-ClassicCalendar-title">#WTITLE#</h1>'))
,p_weekly_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="t-ClassicCalendar-dayColumn" id="#DY#">',
'  <span class="visible-md visible-lg">#DD# #IDAY#</span>',
'  <span class="hidden-md hidden-lg">#DD# #IDY#</span>',
'</th>'))
,p_weekly_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="t-ClassicCalendar-calendar">'
,p_weekly_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_weekly_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_day_close_format=>'</div></td>'
,p_weekly_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_open_format=>'<td class="t-ClassicCalendar-day is-weekend" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_weekly_weekend_close_format=>'</div></td>'
,p_weekly_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol">'
,p_weekly_time_close_format=>'</th>'
,p_weekly_time_title_format=>'#TIME#'
,p_weekly_hour_open_format=>'<tr>'
,p_weekly_hour_close_format=>'</tr>'
,p_daily_day_of_week_format=>'<th scope="col" id="#DY#" class="t-ClassicCalendar-dayColumn">#IDAY#</th>'
,p_daily_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--daily">',
'<h1 class="t-ClassicCalendar-title">#IMONTH# #DD#, #YYYY#</h1>'))
,p_daily_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL#" class="t-ClassicCalendar-calendar">'
,p_daily_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'</div>'))
,p_daily_day_open_format=>'<td class="t-ClassicCalendar-day" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_day_close_format=>'</div></td>'
,p_daily_today_open_format=>'<td class="t-ClassicCalendar-day is-today" headers="#DY#"><div class="t-ClassicCalendar-dayEvents">'
,p_daily_time_open_format=>'<th scope="row" class="t-ClassicCalendar-day t-ClassicCalendar-timeCol" id="#TIME#">'
,p_daily_time_close_format=>'</th>'
,p_daily_time_title_format=>'#TIME#'
,p_daily_hour_open_format=>'<tr>'
,p_daily_hour_close_format=>'</tr>'
,p_cust_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal">',
'<h1 class="uMonth">#IMONTH# <span>#YYYY#</span></h1>'))
,p_cust_day_of_week_format=>'<th scope="col" class="uCalDayCol" id="#DY#">#IDAY#</th>'
,p_cust_month_open_format=>'<table class="uCal" cellpadding="0" cellspacing="0" border="0" summary="#IMONTH# #YYYY#">'
,p_cust_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>',
''))
,p_cust_week_open_format=>'<tr>'
,p_cust_week_close_format=>'</tr> '
,p_cust_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_day_close_format=>'</td>'
,p_cust_today_open_format=>'<td class="uDay today" headers="#DY#">'
,p_cust_nonday_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_nonday_open_format=>'<td class="uDay nonday" headers="#DY#">'
,p_cust_nonday_close_format=>'</td>'
,p_cust_weekend_title_format=>'<span class="uDayTitle weekendday">#DD#</span>'
,p_cust_weekend_open_format=>'<td class="uDay" headers="#DY#">'
,p_cust_weekend_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uDayData">#DATA#</span>',
'</td>'))
,p_cust_hour_open_format=>'<tr>'
,p_cust_hour_close_format=>'</tr>'
,p_cust_time_title_format=>'#TIME#'
,p_cust_time_open_format=>'<th scope="row" class="uCalHour" id="#TIME#">'
,p_cust_time_close_format=>'</th>'
,p_cust_wk_month_title_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="uCal uCalWeekly">',
'<h1 class="uMonth">#WTITLE#</h1>'))
,p_cust_wk_day_of_week_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<th scope="col" class="uCalDayCol" id="#DY#">',
'  <span class="visible-desktop">#DD# #IDAY#</span>',
'  <span class="hidden-desktop">#DD# <em>#IDY#</em></span>',
'</th>'))
,p_cust_wk_month_open_format=>'<table border="0" cellpadding="0" cellspacing="0" summary="#CALENDAR_TITLE# #START_DL# - #END_DL#" class="uCal">'
,p_cust_wk_month_close_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'</table>',
'<div class="uCalFooter"></div>',
'</div>'))
,p_cust_wk_week_open_format=>'<tr>'
,p_cust_wk_week_close_format=>'</tr> '
,p_cust_wk_day_title_format=>'<span class="uDayTitle">#DD#</span>'
,p_cust_wk_day_open_format=>'<td class="uDay" headers="#DY#"><div class="uDayData">'
,p_cust_wk_day_close_format=>'</div></td>'
,p_cust_wk_today_open_format=>'<td class="uDay today" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_open_format=>'<td class="uDay weekend" headers="#DY#"><div class="uDayData">'
,p_cust_wk_weekend_close_format=>'</div></td>'
,p_agenda_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<div class="t-ClassicCalendar t-ClassicCalendar--list">',
'  <div class="t-ClassicCalendar-title">#IMONTH# #YYYY#</div>',
'  <ul class="t-ClassicCalendar-list">',
'    #DAYS#',
'  </ul>',
'</div>'))
,p_agenda_past_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-past">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_today_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-today">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_future_day_format=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'  <li class="t-ClassicCalendar-listTitle is-future">',
'    <span class="t-ClassicCalendar-listDayTitle">#IDAY#</span><span class="t-ClassicCalendar-listDayDate">#IMONTH# #DD#</span>',
'  </li>'))
,p_agenda_past_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-past">#DATA#</li>'
,p_agenda_today_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-today">#DATA#</li>'
,p_agenda_future_entry_format=>'  <li class="t-ClassicCalendar-listEvent is-future">#DATA#</li>'
,p_month_data_format=>'#DAYS#'
,p_month_data_entry_format=>'<span class="t-ClassicCalendar-event">#DATA#</span>'
,p_theme_id=>42
,p_theme_class_id=>1
,p_reference_id=>4070916747979059326
);
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_api.create_theme(
 p_id=>wwv_flow_api.id(1350685089222667874)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_ui_type_name=>'DESKTOP'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4070917134413059350
,p_is_locked=>false
,p_default_page_template=>wwv_flow_api.id(1350652189729667795)
,p_default_dialog_template=>wwv_flow_api.id(1350650890854667793)
,p_error_template=>wwv_flow_api.id(1350648731221667792)
,p_printer_friendly_template=>wwv_flow_api.id(1350652189729667795)
,p_breadcrumb_display_point=>'REGION_POSITION_01'
,p_sidebar_display_point=>'REGION_POSITION_02'
,p_login_template=>wwv_flow_api.id(1350648731221667792)
,p_default_button_template=>wwv_flow_api.id(1350683932431667861)
,p_default_region_template=>wwv_flow_api.id(1350662929702667826)
,p_default_chart_template=>wwv_flow_api.id(1350662929702667826)
,p_default_form_template=>wwv_flow_api.id(1350662929702667826)
,p_default_reportr_template=>wwv_flow_api.id(1350662929702667826)
,p_default_tabform_template=>wwv_flow_api.id(1350662929702667826)
,p_default_wizard_template=>wwv_flow_api.id(1350662929702667826)
,p_default_menur_template=>wwv_flow_api.id(1350666257371667830)
,p_default_listr_template=>wwv_flow_api.id(1350662929702667826)
,p_default_irr_template=>wwv_flow_api.id(1350662431831667826)
,p_default_report_template=>wwv_flow_api.id(1350671701912667841)
,p_default_label_template=>wwv_flow_api.id(1350683447824667856)
,p_default_menu_template=>wwv_flow_api.id(1350684491571667861)
,p_default_calendar_template=>wwv_flow_api.id(1350684505737667865)
,p_default_list_template=>wwv_flow_api.id(1350678930155667852)
,p_default_nav_list_template=>wwv_flow_api.id(1350682368237667855)
,p_default_top_nav_list_temp=>wwv_flow_api.id(1350682368237667855)
,p_default_side_nav_list_temp=>wwv_flow_api.id(1350681361473667855)
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>wwv_flow_api.id(1350654972532667815)
,p_default_dialogr_template=>wwv_flow_api.id(1350654883233667815)
,p_default_option_label=>wwv_flow_api.id(1350683447824667856)
,p_default_required_label=>wwv_flow_api.id(1350683670887667856)
,p_default_page_transition=>'NONE'
,p_default_popup_transition=>'NONE'
,p_default_navbar_list_template=>wwv_flow_api.id(1350681240652667855)
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#IMAGE_PREFIX#themes/theme_42/1.0/')
,p_files_version=>62
,p_icon_library=>'FONTAWESOME'
,p_javascript_file_urls=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.regionDisplaySelector#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#widget.stickyTableHeader#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/apex/#MIN_DIRECTORY#tooltipManager#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#libraries/hammer/2.0.3/hammer#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/modernizr-custom#MIN#.js?v=#APEX_VERSION#',
'#IMAGE_PREFIX#plugins/com.oracle.apex.carousel/1.0/com.oracle.apex.carousel#MIN#.js?v=#APEX_VERSION#',
'#THEME_IMAGES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_IMAGES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1350684741230667867)
,p_theme_id=>42
,p_name=>'Vista'
,p_css_file_urls=>'#THEME_IMAGES#css/Vista#MIN#.css?v=#APEX_VERSION#'
,p_is_current=>false
,p_theme_roller_read_only=>true
,p_reference_id=>4007676303523989775
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1350684896858667870)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(1350684988270667870)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_config=>'{"customCSS":"","vars":{"@g_Accent-BG":"#505f6d","@g_Accent-OG":"#ececec","@g_Body-Title-BG":"#dee1e4","@l_Link-Base":"#337ac0","@g_Body-BG":"#f5f5f5"}}'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_display_points
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350653604789667812)
,p_theme_id=>42
,p_name=>'ALERT_TYPE'
,p_display_name=>'Alert Type'
,p_display_sequence=>3
,p_template_types=>'REGION'
,p_help_text=>'Sets the type of alert which can be used to determine the icon, icon color, and the background color.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350653879060667815)
,p_theme_id=>42
,p_name=>'ALERT_ICONS'
,p_display_name=>'Alert Icons'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets how icons are handled for the Alert Region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350654004642667815)
,p_theme_id=>42
,p_name=>'ALERT_DISPLAY'
,p_display_name=>'Alert Display'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the layout of the Alert Region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350655213365667815)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>40
,p_template_types=>'REGION'
,p_help_text=>'Determines how the region is styled. Use the "Remove Borders" template option to remove the region''s borders and shadows.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350655479728667815)
,p_theme_id=>42
,p_name=>'BODY_PADDING'
,p_display_name=>'Body Padding'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body padding for the region.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350656186566667817)
,p_theme_id=>42
,p_name=>'TIMER'
,p_display_name=>'Timer'
,p_display_sequence=>2
,p_template_types=>'REGION'
,p_help_text=>'Sets the timer for when to automatically navigate to the next region within the Carousel Region.'
,p_null_text=>'No Timer'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350656501311667818)
,p_theme_id=>42
,p_name=>'BODY_HEIGHT'
,p_display_name=>'Body Height'
,p_display_sequence=>10
,p_template_types=>'REGION'
,p_help_text=>'Sets the Region Body height. You can also specify a custom height by modifying the Region''s CSS Classes and using the height helper classes "i-hXXX" where XXX is any increment of 10 from 100 to 800.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350657151077667818)
,p_theme_id=>42
,p_name=>'ACCENT'
,p_display_name=>'Accent'
,p_display_sequence=>30
,p_template_types=>'REGION'
,p_help_text=>'Set the Region''s accent. This accent corresponds to a Theme-Rollable color and sets the background of the Region''s Header.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350657739800667818)
,p_theme_id=>42
,p_name=>'HEADER'
,p_display_name=>'Header'
,p_display_sequence=>20
,p_template_types=>'REGION'
,p_help_text=>'Determines the display of the Region Header which also contains the Region Title.'
,p_null_text=>'Visible - Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350657976780667818)
,p_theme_id=>42
,p_name=>'BODY_OVERFLOW'
,p_display_name=>'Body Overflow'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Determines the scroll behavior when the region contents are larger than their container.'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350658897554667819)
,p_theme_id=>42
,p_name=>'ANIMATION'
,p_display_name=>'Animation'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the animation when navigating within the Carousel Region.'
,p_null_text=>'Fade'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350660408568667821)
,p_theme_id=>42
,p_name=>'DEFAULT_STATE'
,p_display_name=>'Default State'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the default state of the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350661810012667822)
,p_theme_id=>42
,p_name=>'DIALOG_SIZE'
,p_display_name=>'Dialog Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350665350243667830)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350665543336667830)
,p_theme_id=>42
,p_name=>'TAB_STYLE'
,p_display_name=>'Tab Style'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350665967396667830)
,p_theme_id=>42
,p_name=>'TABS_SIZE'
,p_display_name=>'Tabs Size'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350666331386667831)
,p_theme_id=>42
,p_name=>'REGION_TITLE'
,p_display_name=>'Region Title'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_help_text=>'Sets the source of the Title Bar region''s title.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350666927872667834)
,p_theme_id=>42
,p_name=>'HIDE_STEPS_FOR'
,p_display_name=>'Hide Steps For'
,p_display_sequence=>1
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350667548539667839)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350667743541667839)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Determines the layout of Cards in the report.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350669327872667839)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'REPORT'
,p_help_text=>'Determines the amount of text to display for the Card body.'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350670071792667840)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Controls the style and design of the cards in the report.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350670385327667840)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Controls how to handle icons in the report.'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350671010693667840)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350671357827667840)
,p_theme_id=>42
,p_name=>'COMMENTS_STYLE'
,p_display_name=>'Comments Style'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Determines the style in which comments are displayed.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350671819658667842)
,p_theme_id=>42
,p_name=>'ALTERNATING_ROWS'
,p_display_name=>'Alternating Rows'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_help_text=>'Shades alternate rows in the report with slightly different background colors.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350672152078667842)
,p_theme_id=>42
,p_name=>'ROW_HIGHLIGHTING'
,p_display_name=>'Row Highlighting'
,p_display_sequence=>20
,p_template_types=>'REPORT'
,p_help_text=>'Determines whether you want the row to be highlighted on hover.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350672305139667842)
,p_theme_id=>42
,p_name=>'REPORT_BORDER'
,p_display_name=>'Report Border'
,p_display_sequence=>30
,p_template_types=>'REPORT'
,p_help_text=>'Controls the display of the Report''s borders.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350673368731667842)
,p_theme_id=>42
,p_name=>'LABEL_WIDTH'
,p_display_name=>'Label Width'
,p_display_sequence=>10
,p_template_types=>'REPORT'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350675225980667851)
,p_theme_id=>42
,p_name=>'LAYOUT'
,p_display_name=>'Layout'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350676079842667851)
,p_theme_id=>42
,p_name=>'BADGE_SIZE'
,p_display_name=>'Badge Size'
,p_display_sequence=>70
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350677085170667852)
,p_theme_id=>42
,p_name=>'BODY_TEXT'
,p_display_name=>'Body Text'
,p_display_sequence=>40
,p_template_types=>'LIST'
,p_null_text=>'Auto'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350677787267667852)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>10
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350678096631667852)
,p_theme_id=>42
,p_name=>'ICONS'
,p_display_name=>'Icons'
,p_display_sequence=>20
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350678708943667852)
,p_theme_id=>42
,p_name=>'COLOR_ACCENTS'
,p_display_name=>'Color Accents'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350679405018667852)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>30
,p_template_types=>'LIST'
,p_null_text=>'No Icons'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350681878605667855)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>1
,p_template_types=>'LIST'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350682961836667855)
,p_theme_id=>42
,p_name=>'LABEL_DISPLAY'
,p_display_name=>'Label Display'
,p_display_sequence=>50
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350684133793667861)
,p_theme_id=>42
,p_name=>'ICON_POSITION'
,p_display_name=>'Icon Position'
,p_display_sequence=>50
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the position of the icon relative to the label.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350685145772667877)
,p_theme_id=>42
,p_name=>'TYPE'
,p_display_name=>'Type'
,p_display_sequence=>20
,p_template_types=>'BUTTON'
,p_null_text=>'Normal'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350685391350667878)
,p_theme_id=>42
,p_name=>'SPACING_LEFT'
,p_display_name=>'Spacing Left'
,p_display_sequence=>70
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the left of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350685562570667878)
,p_theme_id=>42
,p_name=>'SPACING_RIGHT'
,p_display_name=>'Spacing Right'
,p_display_sequence=>80
,p_template_types=>'BUTTON'
,p_help_text=>'Controls the spacing to the right of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350685772246667878)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the size of the button.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350685997506667878)
,p_theme_id=>42
,p_name=>'STYLE'
,p_display_name=>'Style'
,p_display_sequence=>30
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the style of the button. Use the "Simple" option for secondary actions or sets of buttons. Use the "Remove UI Decoration" option to make the button appear as text.'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350686349932667878)
,p_theme_id=>42
,p_name=>'BUTTON_SET'
,p_display_name=>'Button Set'
,p_display_sequence=>40
,p_template_types=>'BUTTON'
,p_help_text=>'Enables you to group many buttons together into a pill. You can use this option to specify where the button is within this set. Set the option to Default if this button is not part of a button set.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350687044166667878)
,p_theme_id=>42
,p_name=>'WIDTH'
,p_display_name=>'Width'
,p_display_sequence=>60
,p_template_types=>'BUTTON'
,p_help_text=>'Sets the width of the button.'
,p_null_text=>'Auto - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350687497460667878)
,p_theme_id=>42
,p_name=>'LABEL_POSITION'
,p_display_name=>'Label Position'
,p_display_sequence=>140
,p_template_types=>'REGION'
,p_help_text=>'Sets the position of the label relative to the form item.'
,p_null_text=>'Inline - Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350687666798667878)
,p_theme_id=>42
,p_name=>'ITEM_SIZE'
,p_display_name=>'Item Size'
,p_display_sequence=>110
,p_template_types=>'REGION'
,p_help_text=>'Sets the size of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350687836052667878)
,p_theme_id=>42
,p_name=>'LABEL_ALIGNMENT'
,p_display_name=>'Label Alignment'
,p_display_sequence=>130
,p_template_types=>'REGION'
,p_help_text=>'Set the label text alignment for items within this region.'
,p_null_text=>'Right'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350688077196667878)
,p_theme_id=>42
,p_name=>'ITEM_PADDING'
,p_display_name=>'Item Padding'
,p_display_sequence=>100
,p_template_types=>'REGION'
,p_help_text=>'Sets the padding around items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350688348692667879)
,p_theme_id=>42
,p_name=>'ITEM_WIDTH'
,p_display_name=>'Item Width'
,p_display_sequence=>120
,p_template_types=>'REGION'
,p_help_text=>'Sets the width of the form items within this region.'
,p_null_text=>'Default'
,p_is_advanced=>'Y'
);
wwv_flow_api.create_template_opt_group(
 p_id=>wwv_flow_api.id(1350688620137667879)
,p_theme_id=>42
,p_name=>'SIZE'
,p_display_name=>'Size'
,p_display_sequence=>10
,p_template_types=>'FIELD'
,p_null_text=>'Default'
,p_is_advanced=>'N'
);
end;
/
prompt --application/shared_components/user_interface/template_options
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350653502346667806)
,p_theme_id=>42
,p_name=>'COLOREDBACKGROUND'
,p_display_name=>'Highlight Background'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--colorBG'
,p_template_types=>'REGION'
,p_help_text=>'Set alert background color to that of the alert type (warning, success, etc.)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350653714082667814)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--danger'
,p_group_id=>wwv_flow_api.id(1350653604789667812)
,p_template_types=>'REGION'
,p_help_text=>'Show an error or danger alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350653995715667815)
,p_theme_id=>42
,p_name=>'HIDE_ICONS'
,p_display_name=>'Hide Icons'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--noIcon'
,p_group_id=>wwv_flow_api.id(1350653879060667815)
,p_template_types=>'REGION'
,p_help_text=>'Hides alert icons'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654179950667815)
,p_theme_id=>42
,p_name=>'HORIZONTAL'
,p_display_name=>'Horizontal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--horizontal'
,p_group_id=>wwv_flow_api.id(1350654004642667815)
,p_template_types=>'REGION'
,p_help_text=>'Show horizontal alert with buttons to the right.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654247553667815)
,p_theme_id=>42
,p_name=>'INFORMATION'
,p_display_name=>'Information'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--info'
,p_group_id=>wwv_flow_api.id(1350653604789667812)
,p_template_types=>'REGION'
,p_help_text=>'Show informational alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654347713667815)
,p_theme_id=>42
,p_name=>'SHOW_CUSTOM_ICONS'
,p_display_name=>'Show Custom Icons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--customIcons'
,p_group_id=>wwv_flow_api.id(1350653879060667815)
,p_template_types=>'REGION'
,p_help_text=>'Set custom icons by modifying the Alert Region''s Icon CSS Classes property.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654429419667815)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--success'
,p_group_id=>wwv_flow_api.id(1350653604789667812)
,p_template_types=>'REGION'
,p_help_text=>'Show success alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654521519667815)
,p_theme_id=>42
,p_name=>'USEDEFAULTICONS'
,p_display_name=>'Show Default Icons'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--defaultIcons'
,p_group_id=>wwv_flow_api.id(1350653879060667815)
,p_template_types=>'REGION'
,p_help_text=>'Uses default icons for alert types.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654634171667815)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--warning'
,p_group_id=>wwv_flow_api.id(1350653604789667812)
,p_template_types=>'REGION'
,p_help_text=>'Show a warning alert.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350654781046667815)
,p_theme_id=>42
,p_name=>'WIZARD'
,p_display_name=>'Wizard'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350653308237667798)
,p_css_classes=>'t-Alert--wizard'
,p_group_id=>wwv_flow_api.id(1350654004642667815)
,p_template_types=>'REGION'
,p_help_text=>'Show the alert in a wizard style region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350655351800667815)
,p_theme_id=>42
,p_name=>'BORDERLESS'
,p_display_name=>'Borderless'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1350654972532667815)
,p_css_classes=>'t-ButtonRegion--noBorder'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350655579738667815)
,p_theme_id=>42
,p_name=>'NOPADDING'
,p_display_name=>'No Padding'
,p_display_sequence=>3
,p_region_template_id=>wwv_flow_api.id(1350654972532667815)
,p_css_classes=>'t-ButtonRegion--noPadding'
,p_group_id=>wwv_flow_api.id(1350655479728667815)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350655654975667815)
,p_theme_id=>42
,p_name=>'REMOVEUIDECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>4
,p_region_template_id=>wwv_flow_api.id(1350654972532667815)
,p_css_classes=>'t-ButtonRegion--noUI'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350655719416667816)
,p_theme_id=>42
,p_name=>'SLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>5
,p_region_template_id=>wwv_flow_api.id(1350654972532667815)
,p_css_classes=>'t-ButtonRegion--slimPadding'
,p_group_id=>wwv_flow_api.id(1350655479728667815)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656276333667817)
,p_theme_id=>42
,p_name=>'10_SECONDS'
,p_display_name=>'10 Seconds'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'js-cycle10s'
,p_group_id=>wwv_flow_api.id(1350656186566667817)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656381623667817)
,p_theme_id=>42
,p_name=>'15_SECONDS'
,p_display_name=>'15 Seconds'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'js-cycle15s'
,p_group_id=>wwv_flow_api.id(1350656186566667817)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656430187667817)
,p_theme_id=>42
,p_name=>'20_SECONDS'
,p_display_name=>'20 Seconds'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'js-cycle20s'
,p_group_id=>wwv_flow_api.id(1350656186566667817)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656642928667818)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656773632667818)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656828332667818)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350656959047667818)
,p_theme_id=>42
,p_name=>'5_SECONDS'
,p_display_name=>'5 Seconds'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'js-cycle5s'
,p_group_id=>wwv_flow_api.id(1350656186566667817)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657077439667818)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657202283667818)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657392656667818)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657409503667818)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657550569667818)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657661174667818)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350657878214667818)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(1350657739800667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658074145667818)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1350657976780667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658145440667818)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1350657739800667818)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658251114667819)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658340626667819)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658462216667819)
,p_theme_id=>42
,p_name=>'REMEMBER_CAROUSEL_SLIDE'
,p_display_name=>'Remember Carousel Slide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658519417667819)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1350657976780667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658673166667819)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658788120667819)
,p_theme_id=>42
,p_name=>'SHOW_NEXT_AND_PREVIOUS_BUTTONS'
,p_display_name=>'Show Next and Previous Buttons'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--showCarouselControls'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350658905294667819)
,p_theme_id=>42
,p_name=>'SLIDE'
,p_display_name=>'Slide'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--carouselSlide'
,p_group_id=>wwv_flow_api.id(1350658897554667819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659007149667819)
,p_theme_id=>42
,p_name=>'SPIN'
,p_display_name=>'Spin'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--carouselSpin'
,p_group_id=>wwv_flow_api.id(1350658897554667819)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659151600667819)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350655900894667816)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659535548667819)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659651962667819)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659754148667819)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 480px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659882083667819)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets body height to 640px.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350659977106667821)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660020080667821)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660162485667821)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660229523667821)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660322153667821)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660588625667821)
,p_theme_id=>42
,p_name=>'COLLAPSED'
,p_display_name=>'Collapsed'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'is-collapsed'
,p_group_id=>wwv_flow_api.id(1350660408568667821)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660603284667821)
,p_theme_id=>42
,p_name=>'EXPANDED'
,p_display_name=>'Expanded'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'is-expanded'
,p_group_id=>wwv_flow_api.id(1350660408568667821)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660766822667821)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1350657976780667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660893091667821)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350660965464667821)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350661035804667821)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350661180875667821)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1350657976780667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350661265638667821)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350659297398667819)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350661746017667822)
,p_theme_id=>42
,p_name=>'DRAGGABLE'
,p_display_name=>'Draggable'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350661563087667821)
,p_css_classes=>'js-draggable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350661996317667822)
,p_theme_id=>42
,p_name=>'LARGE_720X480'
,p_display_name=>'Large (720x480)'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350661563087667821)
,p_css_classes=>'js-dialog-size720x480'
,p_group_id=>wwv_flow_api.id(1350661810012667822)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350662074058667823)
,p_theme_id=>42
,p_name=>'MEDIUM_600X400'
,p_display_name=>'Medium (600x400)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350661563087667821)
,p_css_classes=>'js-dialog-size600x400'
,p_group_id=>wwv_flow_api.id(1350661810012667822)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350662105789667823)
,p_theme_id=>42
,p_name=>'MODAL'
,p_display_name=>'Modal'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350661563087667821)
,p_css_classes=>'js-modal'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350662231053667823)
,p_theme_id=>42
,p_name=>'RESIZABLE'
,p_display_name=>'Resizable'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350661563087667821)
,p_css_classes=>'js-resizable'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350662379720667823)
,p_theme_id=>42
,p_name=>'SMALL_480X320'
,p_display_name=>'Small (480x320)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350661563087667821)
,p_css_classes=>'js-dialog-size480x320'
,p_group_id=>wwv_flow_api.id(1350661810012667822)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350662528155667826)
,p_theme_id=>42
,p_name=>'REMOVEBORDERS'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662431831667826)
,p_css_classes=>'t-IRR-region--noBorders'
,p_template_types=>'REGION'
,p_help_text=>'Removes borders around the Interactive Report'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350662647029667826)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662431831667826)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Interactive Reports toolbar to maximize the report. Clicking this button will toggle the maximize state and stretch the report to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663225274667827)
,p_theme_id=>42
,p_name=>'240PX'
,p_display_name=>'240px'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'i-h240'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 240px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663357460667827)
,p_theme_id=>42
,p_name=>'320PX'
,p_display_name=>'320px'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'i-h320'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
,p_help_text=>'Sets region body height to 320px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663438518667827)
,p_theme_id=>42
,p_name=>'480PX'
,p_display_name=>'480px'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'i-h480'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663548021667827)
,p_theme_id=>42
,p_name=>'640PX'
,p_display_name=>'640px'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'i-h640'
,p_group_id=>wwv_flow_api.id(1350656501311667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663686160667827)
,p_theme_id=>42
,p_name=>'ACCENT_1'
,p_display_name=>'Accent 1'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--accent1'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663785590667827)
,p_theme_id=>42
,p_name=>'ACCENT_2'
,p_display_name=>'Accent 2'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--accent2'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663826904667827)
,p_theme_id=>42
,p_name=>'ACCENT_3'
,p_display_name=>'Accent 3'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--accent3'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350663968979667827)
,p_theme_id=>42
,p_name=>'ACCENT_4'
,p_display_name=>'Accent 4'
,p_display_sequence=>40
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--accent4'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664001465667827)
,p_theme_id=>42
,p_name=>'ACCENT_5'
,p_display_name=>'Accent 5'
,p_display_sequence=>50
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--accent5'
,p_group_id=>wwv_flow_api.id(1350657151077667818)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664105687667827)
,p_theme_id=>42
,p_name=>'HIDDENHEADERNOAT'
,p_display_name=>'Hidden'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--removeHeader'
,p_group_id=>wwv_flow_api.id(1350657739800667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664294152667827)
,p_theme_id=>42
,p_name=>'HIDEOVERFLOW'
,p_display_name=>'Hide'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--hiddenOverflow'
,p_group_id=>wwv_flow_api.id(1350657976780667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664323682667827)
,p_theme_id=>42
,p_name=>'HIDEREGIONHEADER'
,p_display_name=>'Hidden but accessible'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--hideHeader'
,p_group_id=>wwv_flow_api.id(1350657739800667818)
,p_template_types=>'REGION'
,p_help_text=>'This option will hide the region header.  Note that the region title will still be audible for Screen Readers. Buttons placed in the region header will be hidden and inaccessible.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664485904667827)
,p_theme_id=>42
,p_name=>'NOBODYPADDING'
,p_display_name=>'Remove Body Padding'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--noPadding'
,p_template_types=>'REGION'
,p_help_text=>'Removes padding from region body.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664562485667827)
,p_theme_id=>42
,p_name=>'NOBORDER'
,p_display_name=>'Remove Borders'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--noBorder'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes borders from the region.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664697608667827)
,p_theme_id=>42
,p_name=>'REMOVE_UI_DECORATION'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>30
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--noUI'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes UI decoration (borders, backgrounds, shadows, etc) from the region.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664734137667827)
,p_theme_id=>42
,p_name=>'SCROLLBODY'
,p_display_name=>'Scroll - Default'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--scrollBody'
,p_group_id=>wwv_flow_api.id(1350657976780667818)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664844616667827)
,p_theme_id=>42
,p_name=>'SHOW_MAXIMIZE_BUTTON'
,p_display_name=>'Show Maximize Button'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'js-showMaximizeButton'
,p_template_types=>'REGION'
,p_help_text=>'Displays a button in the Region Header to maximize the region. Clicking this button will toggle the maximize state and stretch the region to fill the screen.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350664904244667830)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stack Region'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350662929702667826)
,p_css_classes=>'t-Region--stacked'
,p_group_id=>wwv_flow_api.id(1350655213365667815)
,p_template_types=>'REGION'
,p_help_text=>'Removes side borders and shadows, and can be useful for accordions and regions that need to be grouped together vertically.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350665418084667830)
,p_theme_id=>42
,p_name=>'FILL_TAB_LABELS'
,p_display_name=>'Fill Tab Labels'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350665088959667830)
,p_css_classes=>'t-TabsRegion-mod--fillLabels'
,p_group_id=>wwv_flow_api.id(1350665350243667830)
,p_template_types=>'REGION'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350665667588667830)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350665088959667830)
,p_css_classes=>'t-TabsRegion-mod--pill'
,p_group_id=>wwv_flow_api.id(1350665543336667830)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350665797947667830)
,p_theme_id=>42
,p_name=>'REMEMBER_ACTIVE_TAB'
,p_display_name=>'Remember Active Tab'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350665088959667830)
,p_css_classes=>'js-useLocalStorage'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350665881757667830)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350665088959667830)
,p_css_classes=>'t-TabsRegion-mod--simple'
,p_group_id=>wwv_flow_api.id(1350665543336667830)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350666045965667830)
,p_theme_id=>42
,p_name=>'TABSLARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350665088959667830)
,p_css_classes=>'t-TabsRegion-mod--large'
,p_group_id=>wwv_flow_api.id(1350665967396667830)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350666106051667830)
,p_theme_id=>42
,p_name=>'TABS_SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350665088959667830)
,p_css_classes=>'t-TabsRegion-mod--small'
,p_group_id=>wwv_flow_api.id(1350665967396667830)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350666432007667833)
,p_theme_id=>42
,p_name=>'GET_TITLE_FROM_BREADCRUMB'
,p_display_name=>'Use Current Breadcrumb Entry'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1350666257371667830)
,p_css_classes=>'t-BreadcrumbRegion--useBreadcrumbTitle'
,p_group_id=>wwv_flow_api.id(1350666331386667831)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350666562480667833)
,p_theme_id=>42
,p_name=>'HIDE_BREADCRUMB'
,p_display_name=>'Show Breadcrumbs'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1350666257371667830)
,p_css_classes=>'t-BreadcrumbRegion--showBreadcrumb'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350666698362667833)
,p_theme_id=>42
,p_name=>'REGION_HEADER_VISIBLE'
,p_display_name=>'Use Region Title'
,p_display_sequence=>1
,p_region_template_id=>wwv_flow_api.id(1350666257371667830)
,p_css_classes=>'t-BreadcrumbRegion--useRegionTitle'
,p_group_id=>wwv_flow_api.id(1350666331386667831)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350667078422667834)
,p_theme_id=>42
,p_name=>'HIDESMALLSCREENS'
,p_display_name=>'Small Screens (Tablet)'
,p_display_sequence=>20
,p_region_template_id=>wwv_flow_api.id(1350666778255667833)
,p_css_classes=>'t-Wizard--hideStepsSmall'
,p_group_id=>wwv_flow_api.id(1350666927872667834)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350667196254667834)
,p_theme_id=>42
,p_name=>'HIDEXSMALLSCREENS'
,p_display_name=>'X Small Screens (Mobile)'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350666778255667833)
,p_css_classes=>'t-Wizard--hideStepsXSmall'
,p_group_id=>wwv_flow_api.id(1350666927872667834)
,p_template_types=>'REGION'
,p_help_text=>'Hides the wizard progress steps for screens that are smaller than 768px wide.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350667298755667834)
,p_theme_id=>42
,p_name=>'SHOW_TITLE'
,p_display_name=>'Show Title'
,p_display_sequence=>10
,p_region_template_id=>wwv_flow_api.id(1350666778255667833)
,p_css_classes=>'t-Wizard--showTitle'
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350667693639667839)
,p_theme_id=>42
,p_name=>'128PX'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(1350667548539667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350667899685667839)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350667977125667839)
,p_theme_id=>42
,p_name=>'32PX'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(1350667548539667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668030483667839)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668178186667839)
,p_theme_id=>42
,p_name=>'48PX'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(1350667548539667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668208203667839)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668360214667839)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668471410667839)
,p_theme_id=>42
,p_name=>'64PX'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(1350667548539667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668584203667839)
,p_theme_id=>42
,p_name=>'96PX'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(1350667548539667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668689031667839)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668727427667839)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668885460667839)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350668928326667839)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'REPORT'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669018628667839)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350667493766667839)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669233559667839)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>15
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669401651667840)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(1350669327872667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669548483667840)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669617823667840)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(1350669327872667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669740209667840)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669866999667840)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(1350669327872667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350669974375667840)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670184511667840)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(1350670071792667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670285796667840)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(1350670071792667840)
,p_template_types=>'REPORT'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670438786667840)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(1350670385327667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670511011667840)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(1350670385327667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670700091667840)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(1350670071792667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670704861667840)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670803667667840)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(1350669327872667839)
,p_template_types=>'REPORT'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350670929039667840)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350671165976667840)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350669117811667839)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(1350671010693667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350671494783667840)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350671216014667840)
,p_css_classes=>'t-Comments--basic'
,p_group_id=>wwv_flow_api.id(1350671357827667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350671531629667841)
,p_theme_id=>42
,p_name=>'SPEECH_BUBBLES'
,p_display_name=>'Speech Bubbles'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350671216014667840)
,p_css_classes=>'t-Comments--chat'
,p_group_id=>wwv_flow_api.id(1350671357827667840)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350671907165667842)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--staticRowColors'
,p_group_id=>wwv_flow_api.id(1350671819658667842)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672075403667842)
,p_theme_id=>42
,p_name=>'ALTROWCOLORSENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--altRowsDefault'
,p_group_id=>wwv_flow_api.id(1350671819658667842)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672246812667842)
,p_theme_id=>42
,p_name=>'ENABLE'
,p_display_name=>'Enable'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--rowHighlight'
,p_group_id=>wwv_flow_api.id(1350672152078667842)
,p_template_types=>'REPORT'
,p_help_text=>'Enable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672414166667842)
,p_theme_id=>42
,p_name=>'HORIZONTALBORDERS'
,p_display_name=>'Horizontal Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--horizontalBorders'
,p_group_id=>wwv_flow_api.id(1350672305139667842)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672523201667842)
,p_theme_id=>42
,p_name=>'REMOVEALLBORDERS'
,p_display_name=>'No Borders'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--noBorders'
,p_group_id=>wwv_flow_api.id(1350672305139667842)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672647062667842)
,p_theme_id=>42
,p_name=>'REMOVEOUTERBORDERS'
,p_display_name=>'No Outer Borders'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--inline'
,p_group_id=>wwv_flow_api.id(1350672305139667842)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672724814667842)
,p_theme_id=>42
,p_name=>'ROWHIGHLIGHTDISABLE'
,p_display_name=>'Disable'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--rowHighlightOff'
,p_group_id=>wwv_flow_api.id(1350672152078667842)
,p_template_types=>'REPORT'
,p_help_text=>'Disable row highlighting on mouse over'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672869820667842)
,p_theme_id=>42
,p_name=>'STRETCHREPORT'
,p_display_name=>'Stretch Report'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--stretch'
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350672986158667842)
,p_theme_id=>42
,p_name=>'VERTICALBORDERS'
,p_display_name=>'Vertical Only'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350671701912667841)
,p_css_classes=>'t-Report--verticalBorders'
,p_group_id=>wwv_flow_api.id(1350672305139667842)
,p_template_types=>'REPORT'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673169786667842)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>1
,p_report_template_id=>wwv_flow_api.id(1350673064951667842)
,p_css_classes=>'t-Timeline--compact'
,p_group_id=>wwv_flow_api.id(1350670071792667840)
,p_template_types=>'REPORT'
,p_help_text=>'Displays a compact video of timeline with smaller font-sizes and fewer columns.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673485014667842)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673521821667842)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673635029667842)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673757822667843)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673887386667843)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350673972566667843)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674095517667843)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674128120667843)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1350673277423667842)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674373173667843)
,p_theme_id=>42
,p_name=>'FIXED_LARGE'
,p_display_name=>'Fixed - Large'
,p_display_sequence=>30
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--fixedLabelLarge'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674412955667843)
,p_theme_id=>42
,p_name=>'FIXED_MEDIUM'
,p_display_name=>'Fixed - Medium'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--fixedLabelMedium'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674512245667843)
,p_theme_id=>42
,p_name=>'FIXED_SMALL'
,p_display_name=>'Fixed - Small'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--fixedLabelSmall'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674687216667843)
,p_theme_id=>42
,p_name=>'LEFT_ALIGNED_DETAILS'
,p_display_name=>'Left Aligned Details'
,p_display_sequence=>10
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--leftAligned'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674800058667844)
,p_theme_id=>42
,p_name=>'RIGHT_ALIGNED_DETAILS'
,p_display_name=>'Right Aligned Details'
,p_display_sequence=>20
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--rightAligned'
,p_group_id=>wwv_flow_api.id(1350667743541667839)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674813603667844)
,p_theme_id=>42
,p_name=>'VARIABLE_LARGE'
,p_display_name=>'Variable - Large'
,p_display_sequence=>60
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--variableLabelLarge'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350674991262667844)
,p_theme_id=>42
,p_name=>'VARIABLE_MEDIUM'
,p_display_name=>'Variable - Medium'
,p_display_sequence=>50
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--variableLabelMedium'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675048808667844)
,p_theme_id=>42
,p_name=>'VARIABLE_SMALL'
,p_display_name=>'Variable - Small'
,p_display_sequence=>40
,p_report_template_id=>wwv_flow_api.id(1350674279616667843)
,p_css_classes=>'t-AVPList--variableLabelSmall'
,p_group_id=>wwv_flow_api.id(1350673368731667842)
,p_template_types=>'REPORT'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675340479667851)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a two column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675439233667851)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--3cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 3 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675547352667851)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--4cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in 4 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675693661667851)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--cols t-BadgeList--5cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Arrange badges in a 5 column grid'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675782367667851)
,p_theme_id=>42
,p_name=>'FIXED'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--fixed'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Span badges horizontally'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675812802667851)
,p_theme_id=>42
,p_name=>'FLEXIBLEBOX'
,p_display_name=>'Flexible Box'
,p_display_sequence=>80
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--flex'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Use flexbox to arrange items'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350675919740667851)
,p_theme_id=>42
,p_name=>'FLOATITEMS'
,p_display_name=>'Float Items'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--float'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Float badges to left'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676107014667851)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'64px'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--large'
,p_group_id=>wwv_flow_api.id(1350676079842667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676292888667851)
,p_theme_id=>42
,p_name=>'MEDIUM'
,p_display_name=>'48px'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--medium'
,p_group_id=>wwv_flow_api.id(1350676079842667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676320840667851)
,p_theme_id=>42
,p_name=>'RESPONSIVE'
,p_display_name=>'Responsive'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--responsive'
,p_template_types=>'LIST'
,p_help_text=>'Automatically resize badges to smaller sizes as screen becomes smaller.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676412709667851)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'32px'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--small'
,p_group_id=>wwv_flow_api.id(1350676079842667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676531086667851)
,p_theme_id=>42
,p_name=>'STACKED'
,p_display_name=>'Stacked'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--stacked'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Stack badges on top of each other'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676665875667851)
,p_theme_id=>42
,p_name=>'XLARGE'
,p_display_name=>'96px'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'.t-BadgeList--xlarge'
,p_group_id=>wwv_flow_api.id(1350676079842667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676711886667851)
,p_theme_id=>42
,p_name=>'XXLARGE'
,p_display_name=>'128px'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1350675194096667848)
,p_css_classes=>'t-BadgeList--xxlarge'
,p_group_id=>wwv_flow_api.id(1350676079842667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350676968062667852)
,p_theme_id=>42
,p_name=>'2_COLUMNS'
,p_display_name=>'2 Columns'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677163587667852)
,p_theme_id=>42
,p_name=>'2_LINES'
,p_display_name=>'2 Lines'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--desc-2ln'
,p_group_id=>wwv_flow_api.id(1350677085170667852)
,p_template_types=>'LIST'
);
end;
/
begin
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677298563667852)
,p_theme_id=>42
,p_name=>'3_COLUMNS'
,p_display_name=>'3 Columns'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--3cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677358324667852)
,p_theme_id=>42
,p_name=>'3_LINES'
,p_display_name=>'3 Lines'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--desc-3ln'
,p_group_id=>wwv_flow_api.id(1350677085170667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677494055667852)
,p_theme_id=>42
,p_name=>'4_COLUMNS'
,p_display_name=>'4 Columns'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--4cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677535123667852)
,p_theme_id=>42
,p_name=>'4_LINES'
,p_display_name=>'4 Lines'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--desc-4ln'
,p_group_id=>wwv_flow_api.id(1350677085170667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677670120667852)
,p_theme_id=>42
,p_name=>'5_COLUMNS'
,p_display_name=>'5 Columns'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--5cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677820224667852)
,p_theme_id=>42
,p_name=>'BASIC'
,p_display_name=>'Basic'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--basic'
,p_group_id=>wwv_flow_api.id(1350677787267667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350677973051667852)
,p_theme_id=>42
,p_name=>'COMPACT'
,p_display_name=>'Compact'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--compact'
,p_group_id=>wwv_flow_api.id(1350677787267667852)
,p_template_types=>'LIST'
,p_help_text=>'Use this option when you want to show smaller cards.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678157771667852)
,p_theme_id=>42
,p_name=>'DISPLAY_ICONS'
,p_display_name=>'Display Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--displayIcons'
,p_group_id=>wwv_flow_api.id(1350678096631667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678223093667852)
,p_theme_id=>42
,p_name=>'DISPLAY_INITIALS'
,p_display_name=>'Display Initials'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--displayInitials'
,p_group_id=>wwv_flow_api.id(1350678096631667852)
,p_template_types=>'LIST'
,p_help_text=>'Initials come from List Attribute 3'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678353063667852)
,p_theme_id=>42
,p_name=>'FEATURED'
,p_display_name=>'Featured'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--featured'
,p_group_id=>wwv_flow_api.id(1350677787267667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678402212667852)
,p_theme_id=>42
,p_name=>'FLOAT'
,p_display_name=>'Float'
,p_display_sequence=>60
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--float'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678527168667852)
,p_theme_id=>42
,p_name=>'HIDDEN_BODY_TEXT'
,p_display_name=>'Hidden'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--hideBody'
,p_group_id=>wwv_flow_api.id(1350677085170667852)
,p_template_types=>'LIST'
,p_help_text=>'This option hides the card body which contains description and subtext.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678644861667852)
,p_theme_id=>42
,p_name=>'SPAN_HORIZONTALLY'
,p_display_name=>'Span Horizontally'
,p_display_sequence=>70
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--spanHorizontally'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350678900423667852)
,p_theme_id=>42
,p_name=>'USE_THEME_COLORS'
,p_display_name=>'Use Theme Colors'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350676885201667852)
,p_css_classes=>'t-Cards--colorize'
,p_group_id=>wwv_flow_api.id(1350678708943667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679035816667852)
,p_theme_id=>42
,p_name=>'ACTIONS'
,p_display_name=>'Actions'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350678930155667852)
,p_css_classes=>'t-LinksList--actions'
,p_group_id=>wwv_flow_api.id(1350677787267667852)
,p_template_types=>'LIST'
,p_help_text=>'Render as actions to be placed on the right side column.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679126175667852)
,p_theme_id=>42
,p_name=>'DISABLETEXTWRAPPING'
,p_display_name=>'Disable Text Wrapping'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350678930155667852)
,p_css_classes=>'t-LinksList--nowrap'
,p_template_types=>'LIST'
,p_help_text=>'Do not allow link text to wrap to new lines. Truncate with ellipsis.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679242848667852)
,p_theme_id=>42
,p_name=>'SHOWBADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350678930155667852)
,p_css_classes=>'t-LinksList--showBadge'
,p_template_types=>'LIST'
,p_help_text=>'Show badge to right of link (requires Attribute 1 to be populated)'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679342437667852)
,p_theme_id=>42
,p_name=>'SHOWGOTOARROW'
,p_display_name=>'Show Right Arrow'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350678930155667852)
,p_css_classes=>'t-LinksList--showArrow'
,p_template_types=>'LIST'
,p_help_text=>'Show arrow to the right of link'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679545438667852)
,p_theme_id=>42
,p_name=>'SHOWICONS'
,p_display_name=>'For All Items'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350678930155667852)
,p_css_classes=>'t-LinksList--showIcons'
,p_group_id=>wwv_flow_api.id(1350679405018667852)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679649186667852)
,p_theme_id=>42
,p_name=>'SHOWTOPICONS'
,p_display_name=>'For Top Level Items Only'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350678930155667852)
,p_css_classes=>'t-LinksList--showTopIcons'
,p_group_id=>wwv_flow_api.id(1350679405018667852)
,p_template_types=>'LIST'
,p_help_text=>'This will show icons for top level items of the list only. It will not show icons for sub lists.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679890804667853)
,p_theme_id=>42
,p_name=>'2COLUMNGRID'
,p_display_name=>'2 Column Grid'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--cols t-MediaList--2cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350679965710667853)
,p_theme_id=>42
,p_name=>'3COLUMNGRID'
,p_display_name=>'3 Column Grid'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--cols t-MediaList--3cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680063304667853)
,p_theme_id=>42
,p_name=>'4COLUMNGRID'
,p_display_name=>'4 Column Grid'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--cols t-MediaList--4cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680135507667853)
,p_theme_id=>42
,p_name=>'5COLUMNGRID'
,p_display_name=>'5 Column Grid'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--cols t-MediaList--5cols'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680266898667853)
,p_theme_id=>42
,p_name=>'SHOW_BADGES'
,p_display_name=>'Show Badges'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--showBadges'
,p_template_types=>'LIST'
,p_help_text=>'Show a badge (Attribute 2) to the right of the list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680397122667853)
,p_theme_id=>42
,p_name=>'SHOW_DESCRIPTION'
,p_display_name=>'Show Description'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--showDesc'
,p_template_types=>'LIST'
,p_help_text=>'Shows the description (Attribute 1) for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680494491667854)
,p_theme_id=>42
,p_name=>'SHOW_ICONS'
,p_display_name=>'Show Icons'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--showIcons'
,p_template_types=>'LIST'
,p_help_text=>'Shows an icon for each list item.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680570503667854)
,p_theme_id=>42
,p_name=>'SPANHORIZONTAL'
,p_display_name=>'Span Horizontal'
,p_display_sequence=>50
,p_list_template_id=>wwv_flow_api.id(1350679760222667852)
,p_css_classes=>'t-MediaList--horizontal'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Show all list items in one horizontal row.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680716680667854)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>40
,p_list_template_id=>wwv_flow_api.id(1350680684880667854)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680891997667854)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350680684880667854)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350680912077667854)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350680684880667854)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350681019626667854)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350680684880667854)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350681524702667855)
,p_theme_id=>42
,p_name=>'ABOVE_LABEL'
,p_display_name=>'Above Label'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--iconsAbove'
,p_group_id=>wwv_flow_api.id(1350678096631667852)
,p_template_types=>'LIST'
,p_help_text=>'Places icons above tab label.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350681669793667855)
,p_theme_id=>42
,p_name=>'FILL_LABELS'
,p_display_name=>'Fill Labels'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--fillLabels'
,p_group_id=>wwv_flow_api.id(1350675225980667851)
,p_template_types=>'LIST'
,p_help_text=>'Stretch tabs to fill to the width of the tabs container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350681800240667855)
,p_theme_id=>42
,p_name=>'INLINE_WITH_LABEL'
,p_display_name=>'Inline with Label'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--inlineIcons'
,p_group_id=>wwv_flow_api.id(1350678096631667852)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350681911557667855)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--large'
,p_group_id=>wwv_flow_api.id(1350681878605667855)
,p_template_types=>'LIST'
,p_help_text=>'Increases font size and white space around tab items.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682064474667855)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Pill'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--pill'
,p_group_id=>wwv_flow_api.id(1350677787267667852)
,p_template_types=>'LIST'
,p_help_text=>'Displays tabs in a pill container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682153461667855)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--simple'
,p_group_id=>wwv_flow_api.id(1350677787267667852)
,p_template_types=>'LIST'
,p_help_text=>'A very simplistic tab UI.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682266837667855)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>5
,p_list_template_id=>wwv_flow_api.id(1350681488759667855)
,p_css_classes=>'t-Tabs--small'
,p_group_id=>wwv_flow_api.id(1350681878605667855)
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682425381667855)
,p_theme_id=>42
,p_name=>'ADD_ACTIONS'
,p_display_name=>'Add Actions'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1350682368237667855)
,p_css_classes=>'js-addActions'
,p_template_types=>'LIST'
,p_help_text=>'Use this option to add shortcuts for menu items. Note that actions.js must be included on your page to support this functionality.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682573323667855)
,p_theme_id=>42
,p_name=>'BEHAVE_LIKE_TABS'
,p_display_name=>'Behave Like Tabs'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1350682368237667855)
,p_css_classes=>'js-tabLike'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682638567667855)
,p_theme_id=>42
,p_name=>'ENABLE_SLIDE_ANIMATION'
,p_display_name=>'Enable Slide Animation'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1350682368237667855)
,p_css_classes=>'js-slide'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350682773030667855)
,p_theme_id=>42
,p_name=>'SHOW_SUB_MENU_ICONS'
,p_display_name=>'Show Sub Menu Icons'
,p_display_sequence=>1
,p_list_template_id=>wwv_flow_api.id(1350682368237667855)
,p_css_classes=>'js-showSubMenuIcons'
,p_template_types=>'LIST'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350683021761667856)
,p_theme_id=>42
,p_name=>'ALLSTEPS'
,p_display_name=>'All Steps'
,p_display_sequence=>10
,p_list_template_id=>wwv_flow_api.id(1350682851517667855)
,p_css_classes=>'t-WizardSteps--displayLabels'
,p_group_id=>wwv_flow_api.id(1350682961836667855)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350683155304667856)
,p_theme_id=>42
,p_name=>'CURRENTSTEPONLY'
,p_display_name=>'Current Step Only'
,p_display_sequence=>20
,p_list_template_id=>wwv_flow_api.id(1350682851517667855)
,p_css_classes=>'t-WizardSteps--displayCurrentLabelOnly'
,p_group_id=>wwv_flow_api.id(1350682961836667855)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350683250405667856)
,p_theme_id=>42
,p_name=>'HIDELABELS'
,p_display_name=>'Hide Labels'
,p_display_sequence=>30
,p_list_template_id=>wwv_flow_api.id(1350682851517667855)
,p_css_classes=>'t-WizardSteps--hideLabels'
,p_group_id=>wwv_flow_api.id(1350682961836667855)
,p_template_types=>'LIST'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350684228335667861)
,p_theme_id=>42
,p_name=>'LEFTICON'
,p_display_name=>'Left'
,p_display_sequence=>10
,p_button_template_id=>wwv_flow_api.id(1350684085904667861)
,p_css_classes=>'t-Button--iconLeft'
,p_group_id=>wwv_flow_api.id(1350684133793667861)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350684397041667861)
,p_theme_id=>42
,p_name=>'RIGHTICON'
,p_display_name=>'Right'
,p_display_sequence=>20
,p_button_template_id=>wwv_flow_api.id(1350684085904667861)
,p_css_classes=>'t-Button--iconRight'
,p_group_id=>wwv_flow_api.id(1350684133793667861)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350685227169667877)
,p_theme_id=>42
,p_name=>'DANGER'
,p_display_name=>'Danger'
,p_display_sequence=>30
,p_css_classes=>'t-Button--danger'
,p_group_id=>wwv_flow_api.id(1350685145772667877)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350685415196667878)
,p_theme_id=>42
,p_name=>'LARGELEFTMARGIN'
,p_display_name=>'Large Left Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapLeft'
,p_group_id=>wwv_flow_api.id(1350685391350667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350685699158667878)
,p_theme_id=>42
,p_name=>'LARGERIGHTMARGIN'
,p_display_name=>'Large Right Margin'
,p_display_sequence=>20
,p_css_classes=>'t-Button--gapRight'
,p_group_id=>wwv_flow_api.id(1350685562570667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350685885247667878)
,p_theme_id=>42
,p_name=>'LARGE'
,p_display_name=>'Large'
,p_display_sequence=>20
,p_css_classes=>'t-Button--large'
,p_group_id=>wwv_flow_api.id(1350685772246667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686100043667878)
,p_theme_id=>42
,p_name=>'NOUI'
,p_display_name=>'Remove UI Decoration'
,p_display_sequence=>20
,p_css_classes=>'t-Button--noUI'
,p_group_id=>wwv_flow_api.id(1350685997506667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686197317667878)
,p_theme_id=>42
,p_name=>'SMALLLEFTMARGIN'
,p_display_name=>'Small Left Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padLeft'
,p_group_id=>wwv_flow_api.id(1350685391350667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686284546667878)
,p_theme_id=>42
,p_name=>'SMALLRIGHTMARGIN'
,p_display_name=>'Small Right Margin'
,p_display_sequence=>10
,p_css_classes=>'t-Button--padRight'
,p_group_id=>wwv_flow_api.id(1350685562570667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686497436667878)
,p_theme_id=>42
,p_name=>'PILL'
,p_display_name=>'Inner Button'
,p_display_sequence=>20
,p_css_classes=>'t-Button--pill'
,p_group_id=>wwv_flow_api.id(1350686349932667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686559322667878)
,p_theme_id=>42
,p_name=>'PILLEND'
,p_display_name=>'Last Button'
,p_display_sequence=>30
,p_css_classes=>'t-Button--pillEnd'
,p_group_id=>wwv_flow_api.id(1350686349932667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686607945667878)
,p_theme_id=>42
,p_name=>'PILLSTART'
,p_display_name=>'First Button'
,p_display_sequence=>10
,p_css_classes=>'t-Button--pillStart'
,p_group_id=>wwv_flow_api.id(1350686349932667878)
,p_template_types=>'BUTTON'
,p_help_text=>'Use this for the start of a pill button.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686786276667878)
,p_theme_id=>42
,p_name=>'PRIMARY'
,p_display_name=>'Primary'
,p_display_sequence=>10
,p_css_classes=>'t-Button--primary'
,p_group_id=>wwv_flow_api.id(1350685145772667877)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686820389667878)
,p_theme_id=>42
,p_name=>'SIMPLE'
,p_display_name=>'Simple'
,p_display_sequence=>10
,p_css_classes=>'t-Button--simple'
,p_group_id=>wwv_flow_api.id(1350685997506667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350686906413667878)
,p_theme_id=>42
,p_name=>'SMALL'
,p_display_name=>'Small'
,p_display_sequence=>10
,p_css_classes=>'t-Button--small'
,p_group_id=>wwv_flow_api.id(1350685772246667878)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350687124223667878)
,p_theme_id=>42
,p_name=>'STRETCH'
,p_display_name=>'Stretch'
,p_display_sequence=>10
,p_css_classes=>'t-Button--stretch'
,p_group_id=>wwv_flow_api.id(1350687044166667878)
,p_template_types=>'BUTTON'
,p_help_text=>'Stretches button to fill container'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350687218194667878)
,p_theme_id=>42
,p_name=>'SUCCESS'
,p_display_name=>'Success'
,p_display_sequence=>40
,p_css_classes=>'t-Button--success'
,p_group_id=>wwv_flow_api.id(1350685145772667877)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350687374983667878)
,p_theme_id=>42
,p_name=>'WARNING'
,p_display_name=>'Warning'
,p_display_sequence=>20
,p_css_classes=>'t-Button--warning'
,p_group_id=>wwv_flow_api.id(1350685145772667877)
,p_template_types=>'BUTTON'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350687582149667878)
,p_theme_id=>42
,p_name=>'SHOWFORMLABELSABOVE'
,p_display_name=>'Show Form Labels Above'
,p_display_sequence=>10
,p_css_classes=>'t-Form--labelsAbove'
,p_group_id=>wwv_flow_api.id(1350687497460667878)
,p_template_types=>'REGION'
,p_help_text=>'Show form labels above input fields.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350687741472667878)
,p_theme_id=>42
,p_name=>'FORMSIZELARGE'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form--large'
,p_group_id=>wwv_flow_api.id(1350687666798667878)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350687903483667878)
,p_theme_id=>42
,p_name=>'FORMLEFTLABELS'
,p_display_name=>'Left'
,p_display_sequence=>20
,p_css_classes=>'t-Form--leftLabels'
,p_group_id=>wwv_flow_api.id(1350687836052667878)
,p_template_types=>'REGION'
,p_help_text=>'Align form labels to left.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688167561667878)
,p_theme_id=>42
,p_name=>'FORMREMOVEPADDING'
,p_display_name=>'Remove Padding'
,p_display_sequence=>20
,p_css_classes=>'t-Form--noPadding'
,p_group_id=>wwv_flow_api.id(1350688077196667878)
,p_template_types=>'REGION'
,p_help_text=>'Removes padding between items.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688227459667879)
,p_theme_id=>42
,p_name=>'FORMSLIMPADDING'
,p_display_name=>'Slim Padding'
,p_display_sequence=>10
,p_css_classes=>'t-Form--slimPadding'
,p_group_id=>wwv_flow_api.id(1350688077196667878)
,p_template_types=>'REGION'
,p_help_text=>'Reduces form item padding to 4px.'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688476678667879)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_FIELDS'
,p_display_name=>'Stretch Form Fields'
,p_display_sequence=>10
,p_css_classes=>'t-Form--stretchInputs'
,p_group_id=>wwv_flow_api.id(1350688348692667879)
,p_template_types=>'REGION'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688505733667879)
,p_theme_id=>42
,p_name=>'FORMSIZEXLARGE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form--xlarge'
,p_group_id=>wwv_flow_api.id(1350687666798667878)
,p_template_types=>'REGION'
,p_is_advanced=>'N'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688784467667879)
,p_theme_id=>42
,p_name=>'LARGE_FIELD'
,p_display_name=>'Large'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--large'
,p_group_id=>wwv_flow_api.id(1350688620137667879)
,p_template_types=>'FIELD'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688843328667879)
,p_theme_id=>42
,p_name=>'STRETCH_FORM_ITEM'
,p_display_name=>'Stretch Form Item'
,p_display_sequence=>10
,p_css_classes=>'t-Form-fieldContainer--stretchInputs'
,p_template_types=>'FIELD'
,p_help_text=>'Stretches the form item to fill its container.'
);
wwv_flow_api.create_template_option(
 p_id=>wwv_flow_api.id(1350688958799667879)
,p_theme_id=>42
,p_name=>'X_LARGE_SIZE'
,p_display_name=>'X Large'
,p_display_sequence=>20
,p_css_classes=>'t-Form-fieldContainer--xlarge'
,p_group_id=>wwv_flow_api.id(1350688620137667879)
,p_template_types=>'FIELD'
);
end;
/
prompt --application/shared_components/logic/build_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/user_interface/shortcuts
begin
wwv_flow_api.create_shortcut(
 p_id=>wwv_flow_api.id(1351141741403314920)
,p_shortcut_name=>'DELETE_CONFIRM_MSG'
,p_shortcut_type=>'TEXT_ESCAPE_JS'
,p_shortcut=>'Would you like to perform this delete action?'
);
end;
/
prompt --application/shared_components/security/authentications
begin
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(12516880426265288)
,p_name=>'RDS Custom Authentication'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'user_pkg.authenticate'
,p_attribute_05=>'N'
,p_invalid_session_type=>'URL'
,p_invalid_session_url=>'f?p=LOGON:101:&SESSION.'
,p_logout_url=>'f?p=LOGON:101'
,p_cookie_name=>'RDS_SESSION'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_api.create_authentication(
 p_id=>wwv_flow_api.id(1350689375691667890)
,p_name=>'Application Express Authentication'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_cookie_name=>'RDS_COOKIE_TIME'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/process_type/nl_amis_scheffer_process_excel2collection
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(1095040276965045000)
,p_plugin_type=>'PROCESS TYPE'
,p_name=>'NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'
,p_display_name=>'Excel2Collection'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('PROCESS TYPE','NL.AMIS.SCHEFFER.PROCESS.EXCEL2COLLECTION'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function parse_excel',
'  ( p_process apex_plugin.t_process',
'  , p_plugin apex_plugin.t_plugin',
'  )',
'return apex_plugin.t_process_exec_result',
'is',
'  e_no_doc exception;',
'  t_rv apex_plugin.t_process_exec_result;',
'  t_time date := sysdate;',
'  t_what varchar2(100);',
'  t_file_id number;',
'  t_document blob;',
'  t_filename varchar2(32767);',
'  t_parse varchar2(32767);',
'  p_browse_item varchar2(32767);',
'  p_collection_name varchar2(32767);',
'  p_sheet_nrs varchar2(32767);',
'  p_separator varchar2(32767);',
'  p_enclosed_by varchar2(32767);',
'  p_encoding varchar2(32767);',
'  p_round varchar2(1);',
'  ',
'  t_collection_retrun number;',
'  t_upload_file_collection_name varchar2(30);',
'--',
'  t_parse_bef varchar2(32767) :=',
'''H4sIAAAAAAAAC31QyW7DIBC98xUcE8mKUrdqDlH7K2iAKUEaAxqIm/x9MXE2q+1t''||',
'''lrfNCIuGgFGUc0JZkjJIJH2WjCayFSsLBVRbjsDmANyvXtaiy4V9cGoEus9f+937''||',
'''ru7CcdDIbXcpRVdVsA2mQnSaom7tVIj1/ubO8XsyL6AJZfy6BwoWT1KfZaKsfCjo''||',
'''kJ9YeUlrSv+y8gGxPJ4aYHi4st9ut/WYpj17PCad/rL0nBV/d70wZubUm0iEpvgY''||',
'''lIaMyz8uIM/hbpA5TV+RT2kg4UlBSuQNNL6rnwbajEYBc/9XyP4qtheJo0F7ZJTD''||',
'''WVF0q6SG7G4R1sJnodH5IJqXRX10asCcweGm4q/1hdclRTgiyY9P+VaDY7D7H52c''||',
'''7d18AgAA'';',
'  t_parse_aft varchar2(32767) :=',
'''H4sIAAAAAAAAC8XWSYvbMBQA4Lt/hQ4FWeAYa8ksGWaglB4LPfTSk3FkZSLwEixn''||',
'''FsiPr6Tnl/Ek6QItdC7Jk/Sk72mZmWRtHm2XjKXum8bo0fZdua6cIat7svJtZVe1''||',
'''5s7319VYhcZdNTiTrnZl3evMf7itMaNjd0n7Wjb9Y0rjgDqjhwMk5brfd+PhQAkM''||',
'''JRsf13SW0fZPtnskY08+HRGpY2FItTMvM1quB1ONpuyHchz2nQ7f33rTsyr8quWH''||',
'''Lx+/hqk2/UAssR3hJM/J3JY0fb97vwWh6lDt+b4cDh5a6m01pN2+aewmtRln59XE''||',
'''Ygn1461XrAgNiXHR1LI8zB+2xNccN+pk6QuVV3VdtqZdm+EXZSbZrtRFwe8f3i81''||',
'''tYvQfrJU6Opiik3+bsMnuN3M6hz6ZwebnDLyQIpk3Bp/20Rem8aMBk5lODmVY2JT''||',
'''uelwzic1L9aNLh0YTBnm0cd5lsUxzV/RIVw4ck/od4rrp5r5VH/AOpzps288md/3''||',
'''4hKakZBFdF81xmmTuv3ajeEYThL8yNx3+NMvn6om45kqioJleF0i43JWtw8HC1lq''||',
'''gfNPeb/LoN++fKYsW0jGwvdb+rbkxdQ6HGJMrOtF2y5e/Q/ZboVatXblHGWMmK6+''||',
'''S0zjzH/aqj8o+d+V6e+G3cBnuDRvhfNQePgtQOmlYT9/oe78YcxeZph49iBFKjCU''||',
'''MZQYqhgqDJcxXGJ4FcMrDK9jeI3hTQxvMLyN4e0U8gIYBcYTC10cXBxhHGAcZRxk''||',
'''HGkcaBxtHGwccRxwHHUcdBx5HHgcfQJ8An0CfAJ9Yto39AnwCfQJ8An0CfAJ9Anw''||',
'''CfQJ8An0CfAJ9AnwCfRJ8En0SfBJ9EnwSfTJ6WDRJ8En0SfBJ9EnwSfRJ8En0SfB''||',
'''J9EnwSfRp8Cn0KfAp9CnwKfQp8Cn0Kemm4c+BT6FPgU+hT4FPoU+BT6FPgU+hb4l''||',
'''+Jbexy69rNmfUlNf/L8gvNwfVlv4JbsIAAA='';',
'  t_parse_csv varchar2(32767) :=',
'''H4sIAAAAAAAAC+2ZWW/cyBGA3+dXNIIAJGFKGB7yIUUCHEXIGvHagS04eQhCcMie''||',
'''EQEOSTR7dAT68anq6uI1nJEW67zFwK7YV/XXdfUxi1xmZarkQj81UugmyWRZiqIV''||',
'''Sma1yhdunuo0MY33qcruUhW6gbfwW62KapPcp2VfH4Xv3r6Dtmq3XUll2uhz4YMU''||',
'''aSrwY+Gvynplivix8C662VX9gJPrdFVKUa97oCqXj2L1JJqyTYpKy41Uo1HtdJiR''||',
'''dHRUeyelHi61SreDVYbL5RIWY2TbOYakqJfpnFbi/Kw0wo7EclaXpcx0UVfJKm3l''||',
'''VI+TLmO4roulCaHniCZt5GOSNk1ZZKkZvwFNp+XpfZakSoWHIEMWdrFoVJ3JfKek''||',
'''2D4lZb1xm2TbbjoEb1G0i5XcFNXCzJXL1W6TbGXbpht5Cv35m8b5TVLKe1mKyysR''||',
'''A7is8ovFeleZxYkmVa1cQM+8zsgnfKvNpFJDRHF+CT5VltguH7VKRb7atvVONzud''||',
'''lEUlW1hd+tR18xZK6p2qWO8IrcmlrGuhmtFXyMS21Fl81m7tvciA0bTJVif1et2C''||',
'''3cWAMcDGVmVd215j1ha5DQ8slilEU1ZDp0dtq7Errg6UvzrN5TrdldxPP+KYh1RV''||',
'''EITC/Bs4mqwHQRkK/Gu8qZXNIIj7elnBclqZ7zUaNd6XbrtbQby7VuVu6PmBH3i+''||',
'''8wfHjC9lNfX1pm6nVa1OlZ7pZ3An1WjJJKv2uq8LWeZQkY8bJNokWYMbCPmYyQZ9''||',
'''Cruvduu5qILqORpy5mItyA0hmtCFRK16K2ykhsVu9B25qicuxXKh72TVuZn1EnBv''||',
'''UaxHyn2dLo1bQNesTkvZZtKtABEXAF6UFHk3LvIw0Y7bdrpMiuB9dbpNG64fDPC7''||',
'''9r/efLn59uk6uf765fbmn7d9w6ePXz4mt1+Tr98+Xn++mZnCuf7l47fk+rvjYS4E''||',
'''Xe2aRvarCTwPHFG4zi+3ju/8+xP871+30NeoiBwQ13an3A+YA8r2sIQfRsLfUMKP''||',
'''WQlBMBFhNVvCzrQdygMFg7bAVAD/zSFJZGv5KLOdlqLYbmVewM4kHNMgzh9xFkc8''||',
'''P4teEJacC4GZyxG7FiMPPc5AAQk73uIBJhA1TKMgjYywnQvHZj7gln39wC/m6NE9''||',
'''Lhyv96rOHzMlgVrLbVOrVD25Jjn5Wu2kN+xVV/dSaV1j1qI+mD/BgWFj5k7w3zZ9''||',
'''bIv/wPY8ymtY7DMZltBH8e8wZ2HZ5iPrGUWF6yEitNcSbHDVhUtatHK0P0mlauWe''||',
'''4K4b+M6XWotUXH//cbIuSunwklgBM+KDyBjIfI6monzITjPqxf6zJ2vZ94oOyxr1''||',
'''OiLriICDo45M2881DE48H7hkG+Pr/7h5f/Pn6798uj5bLp0ZMaENHznHZNVsN34H''||',
'''t2d0d7CHeCj0ndkd0kxLnJnC5CAKBo1P0YIdF5hrVPpwmqXgYbrGb9cEAnUVaSug''||',
'''AOJ1rfwjIziv9sOoBifq8EQKKzkmpC778TdfPzvmhNftSqCToWGov/G+vs+VMBvL''||',
'''K9w69J3PsK8J2kGErmsBJ+/NvnfTjgqT273GzO71eygfIbpdkiv67bE7ZcAJ57Q/''||',
'''wmMO+u7sraBzM9wwoY/NRbxqM6vfDTixNew/RhgS/0xVkGNaHgPS66fXU7+Tm17m''||',
'''8wQWXtZ1Axm50MIkY1bcFYGa9c+uMcDQ6X2L1WK0OLjxoBqdkT3s5xuem05A+/5j''||',
'''Bfu9CtkUg6MEak70Z5pR2ptgw8A3wW/A3q8E7z9s7pNuXd5kuThx2Nnp583k2RO4''||',
'''O/Bmr5f3og4gd3RnhT3aSYQMimg4yqmzwrtAxARglV2XPBFeFNw+HC1uf5uAw3sJ''||',
'''m/SMBoM3I8nToO5Lbw7E97FMNeNkw/D9yeE6SimXr0ope3H++rzzYgYYEIk/Udgf''||',
'''jC5iOGrFqd0GyQiyzDg1YQIYpkY85NnLBCvFJodlN/kkW8CqfDOQtXAyWOkwaQxy''||',
'''txVBgIPu+3lzmHLMDjlruJmY7uxj+WbIjgfvUS1bTRrDud3yekBjRwvq4bXsZ2H/''||',
'''xgw05w0vZpYDWfJ1aBPv/x06nrKj5P/noP9VDprEXZ8culvXWsnp9c3jNye4/Z2a''||',
'''Vz88bnRXoWGreali47YXe48Q4ytpn/NILy9AHLVGxFc08OMin72o8YPK/kMnEJ9D''||',
'''nbkndA9sUGleAd1zczP1MV36s4972ANTI/zBE4/963nj+wocspznZxION+BdpZ+f''||',
'''HWHeFFsBSqhyZzBiW9/jxUHX4rqDdVsPu5jXzX4J9s6d1CqBtVYZfvet7t5qYdbk''||',
'''j79+/DuKWkPSKvB5IxCnp2LIxqfG6YMvxfVEf3CQghsMXnJc1FKxdgs4/uyvhp6j''||',
'''8fpTAMW5cHAgOU9BroUqgTUbRU2mnll5mufJVuLT5JFl4stCBnf4y6vxVLY+xPrJ''||',
'''VNhUmSHF4vcp3IKbPMCTY2iQkt3hlTrsTmVoFTWxSjewhPsiGWdfKGxYrW5dZV+n''||',
'''UE7WyTlbWpuGbuZBH7xfo/HshWQoCFpZVuaZJ6P++a9LR5MB0HOwlfiBH+PPFT77''||',
'''xWz//ncZ37n99YPzQnf+zcZ38vxkuz15gn8OnH7pAWt80NH4q5BLL8aOM5fyDjtT''||',
'''u2/DgRPRz02d74RuyMXIFCMuxqYYc/HMFM+4+NYU33LxnSm+4+J7U3zPxQ+m+MEW''||',
'''gyVhLLlssZgrIK6AwQICC5gsILKA0QJCC5gtILaA4QKCC5guILqA8QLCC5gvJL6Q''||',
'''+ULiC5kvtHpjvpD4QuYLiS9kvpD4QuYLiS9kvpD4QuYLiS9kvpD4QuaLiC9ivoj4''||',
'''IuaLiC9ivsgalvki4ouYLyK+iPki4ouYLyK+iPki4ouYLyK+iPli4ouZLya+mPli''||',
'''4ouZLya+mPli63nMFxNfzHwx8cXMFxNfzHwx8cXMFxNfzHxnxHe2NG/u+5E1yPoy''||',
'''n93CMGL/CyKJQ6rpHQAA'';',
'--',
'  t_parse_xml varchar2(32767) :=',
'''H4sIAAAAAAAAC6VWW2/TMBR+z6+w+hJbpFkviKFUQyAQEtLgAYrgLUqTk8arY1ex''||',
'''u27SfjzHzrXdCuuoVMXxuX3n+Ds+8fKdTA1XkmyTSoNHt3Gm0l0J0pCVUCsv2Ma6''||',
'''ADCa3CZVWiTVjERXRO6E8JhXgdlVkhg0Skzice2Z2FrFqeYZKpUrqJy60LG11WBi''||',
'''nlH/w/V89nP5+a3PFmhxVwqCf3O/BfsquARtfVZqr+2Giy8rskUvXBpYQ2W3UXy8''||',
'''lSpxvHWbiA45nc8u31y6mIgX4rw0vWw6mTCL1c+ycVmO7/FHimL2Oip5pLVvjWRf''||',
'''BDpr1RG51FcjrEOk0wLKRI9LnlZKq9yMU1VGKs95CpHeVpBkLpcR8cnDg1ebovMz''||',
'''rWssGclWpbbFy1QZ4l+qzNVPiqckgmtTS2d/F89Pi1ew5tIr72Oh1tS3hOFyTX5/''||',
'''vSZ7bgpiC5OkBuwxuwwPzl0mJdABPVh39ljF5vgH7AuGqkMWoPakKQAuh1jLZAMW''||',
'''LB1ursG0LkGAfRyIJezx0WpQB4jV0KToA2ixrVQKWqsq1OgnNTaQphZG4F/8UtVm''||',
'''pdTGLRxQP7B0QT+5qggnXJIJCUNyhEyAXJvCehFsPPWEUtvDTLuXV9OFx3NCSdeO''||',
'''XNddaP1LbSrqR67mnQKucStoto1yJ0E7j6xRYOQdmTzXy+NqYH/tQOUHReUGSpdU''||',
'''wFngv9c6+oaH35TkICzzTAGy7seE1o8wVTtpXk1ZaCnz9BmcHXXR0db2Uc3OJ6LW''||',
'''MVl3DYVIfTDQXjeIZdo20T+5cRrbMlkJuPiu9gcsuXkGS2YDmjSA5K2gZxZoFtw0''||',
'''FfoiM7hrUHiB8+mx9ibts52/MNs60EcQ4iDTzTMynQ8ybcC8INN5sDmRKfqsM7UD''||',
'''4nyO1Y7R7yfkTpccduj/+LmwQJd4D7atguMF92HJkcdtpzR4u35WbpZRJwh8O7bs''||',
'''+Mqy0XLUj69wNJlMRj4L+smHcAHvUJ53ZKfu/Bl1xWGh7YrY3spuzP3wT+nhrYFj''||',
'''oMNlFwMGuYW9vWwwe56DXnKLY9mjnqSMhfZToLZwCHrovWX7LeIsnWDxB4dfK6rd''||',
'''CAAA'';',
'--',
'  t_parse_xlsx varchar2(32767) :=',
'''H4sIAAAAAAAAC70aa4/TuPZ7fkXEl8Q7mbZJS+e1s2KXAS0SoBUDElfcVZWmbidL''||',
'''HpXtznTQ/vh7ju04zqOdzgC3AtrYx+f9dHCWmyIRaVm486ycR0W5oP56hr/lAnEY''||',
'''FRtWuIt5zmfbPFuU+QD+IpyTcmdOV2nhpEtXn0m5W2yyzC2ZOgFrgxUVGS1W4kYj''||',
'''Ju6lO3LEDS0q5HjkwqHFwk2XF30U8/grlazZi4B3USabnBaCZhS/GtsFvYOvCsKH''||',
'''VXG/roQLiozPkpuYcSpm6cL3fn87jj59fH3qEfwAM9uErlEvzh0w6pbALuOK6QVN''||',
'''sphRR8yA4R69XMBOgsqoPviAiwvKxaxcLoGm66bA9YoyXOcsMcv2ehYXq1lSwsJW''||',
'''gI7yOWXu+WWt2AVdxpusghNbPHMXsyItVoqwwaXMZA4mjMaCCpqvSxaze1/xGwi2''||',
'''oaTNKBAM20yqtRpdWdxSJkSJWDQyJ1CKdgIDBn/zeMvTb9QJGjTwsUbv7LENQtpa''||',
'''wWctsSM5B4tUGvpxrqMkkm5hhFky2lEgMb6LjEiH1v+0gmyT2zEGmoL4qIwFT+uS''||',
'''V0+kDhE0fx1yenkjshmL7wZJDNoU5WyeFsDPTJ/2Dbt8M+eCVc4vCSpCJKhQZKmA''||',
'''OJ0Bv2lckDbjjV3Ek640T2joe0G5uwazacJohInhHbDvZFwz1pBjycq8LYmkuIPX''||',
'''IKx46LCdlNkszpaSZfjt3sYMPSsyvFlMd3iMeZKmvlEdnA+OQ0KOpxPnqLjNfL8P''||',
'''IAoUCPklmgYjsgdybCCnJwja5h2cdLZMM+rAgW/pek0Xtc9geOHerIhzaqRyjFgS''||',
'''BuQBp8jX8gmjI8UMW+eXm0V7ZZm1V2iRlAtMKBUNPxzJSLNctsovioCdoezUb4lA''||',
'''jiPIH1lZriHPpsKVKVad/tUNG8XDqMw6HkwCCYyF5AayAMTgne89H03+GD0fTT1y''||',
'''UXMifxyHqrggwQssVprU/jJk9ANorLDt4eMonJIjoLEExlNQCogwGOw6E+kzp0Qp''||',
'''ANipvHqeillcLHqi1kYQBhVnR2ckqOUfYe1qaARXlICWHUGaOqGCtBmn7e1P16d/''||',
'''vZyMT7xaGbLC1w53KXlOw9NiAJQw8aBvOPs5d4I9KtESRacyx+unydSRjxV3jhEH''||',
'''vW+/XSqEE6JNjkeMxWHFsGjEwuhG8/ne0Au8/2rluS33QIXpFcj/4l6S9EmtK0tn''||',
'''+y1pyQ1B1TLdaFQbT4flQQJPIun/GPbnNsbw9ekfiNX6jD3SqOJrLGRwEJPLIXaz''||',
'''1QyZLghDNJZi9mgcOkd77K2hohNyENgZcWxeY4CCQJHcmqIAPUESiweix+IZotYJ''||',
'''mnVNegmQcupSjtiTMl8zyvkg+zaD7KyfFHnygww++i6D72ntUEW6szvE1lIFYMuf''||',
'''bErTKAEP3dCxc6+dDfbhrzOIewjceHQgXETs6tEuFVa9XmPHisUaGkdTpPkN9Inc''||',
'''VE8UCM/iFtiexdJjyo1Yb0DxaUF5zFh8b8BMQReANhaxqumsvOO4gt+yX4edCkI/''||',
'''0/BsNHHnZZnRuIA1GH00BMUhTcTzjLrlsoKAtLegW3d+bzdEiGq7VGf0Wdljb/Jl''||',
'''LnYty2GlXtZ0IRYgf/MGadNRjKOT6QnZyYJUIQwC3EJUr2Pi7uxoas1V1qYoQfsW''||',
'''Rd/ibZz1LRdM98FSWx31dVaSjnidFcbaK4XFZjQCz8UyDcNKwS+f3QixPh8OeXJD''||',
'''85gPSsiMsAO9SB4LeGSrIYd0FS+kuvJsCOenwzxOi2fexd4ZtlhEu7fGu7Zo1t7R''||',
'''E5Y819nEY1nK9W4vwXq7l2i1LV2t7lKlcWDebCtctar5PeTBle9hzGLb8/nt9WfP''||',
'''miDry5CqC1dxHXjbbHhXsq8QN18HwIhHSCPi4GxW3lWj15Zna1YmUCxKNgAH2tBy''||',
'''6SONwDNYzI+/2PBFhccL0OhEtyOYvqEjCTWHWT3j2vg5KDoRyDTv0FBpSH1p3Fa/''||',
'''OsJ+tTUf674dyZHjUPWqViz66VFI+vmo5LQRplCRJK4gJYH3gp2nCxBIevA5O8SH''||',
'''y+UyTeiVHsmVEzOaxZh5+U265s+Ucqyk8H0sIgqvkfptYBz/zf1AS3PlXUGZdXkA''||',
'''g8qhnsXFfUa55VePsLU8e43iDyEhvc7B3Or7e+yNSe+pGlTmewk8eqoH94E2NkUS''||',
'''beAtFh5xf4OOHNmyN/J8x8b9vd4wjZJVi/ZE3D4zSxW9WeDshM0GRFqzHVG2b1IK''||',
'''JxZwa+v57q3p7q2TnVtR1Nx6kkMkNMs+L/lwuxzWEv8otzCwSF2qfKfCidVS+KkS''||',
'''zJZ2QLeQzbmyN2l1FeYAUof6Nznz/t/hCaWFLq5VS2GiFDy7KEVDGSnH7k0hr1x1''||',
'''i+hHuinAG1Rs+S8qjT7GrlwMefplXfIUs59Pfrt85rn//uvqMRzgtr8gFUx/sOw9''||',
'''c2MQrob/tQWPBwBWntEn/jbeUV/Q7PEMt5JMGWjbuA15RHVJ1HndtMGYslF9g17w''||',
'''EYQc4HldDWKVz7oXwc1sIIbSz0hl1jZh/XbDJJ8sethou6mxYU1PqeufA9QV2fpq''||',
'''q6W9BLZ8XIxGwT+kUfS6qbC79/2RFzVDz+2JvRlUe95ovQa4Ik3VvHizuhTlQeai''||',
'''zTfzWGVJU2G8cxkSBgCj4BxalPNGpKREb7Tq0wOnm11JE4fJD6pXrXIEjnYDaG6p''||',
'''Gq5wsvPVl5IJ4nUgr+KU1Rv4L0x7i32/28uDGWn2VndpG0g5H+xOq/H05cWbRZVO''||',
'''7O6wyiPDFx9jtsKm8/B5ZR0nX+MV3d3kHZCqNUdYRsjFAdl3/KieWgqquukrMMkQ''||',
'''rPWz8/GBqXi8MxezA5LL2EouT89u44BBeku+3P791MSG82UryzdSlB40e171Va/z''||',
'''JA6ixv5uvYgFpMn5BpoQxAOpWPkVk7AZ7CEpFjDzyxuF0XjyfHpyeqY7cxmq9eul''||',
'''faAmslfyco4jd3INamzSDcSnVTUpcODd2iUMbzIeFl54VbUT2FZxz1yRK8YwV5ai''||',
'''UfkwO6GwjOCrTzLAvKQGcLyYuPYuemBUZapEtSpVOVMXKL4JV1N0Mq75kmMwnIA0''||',
'''khZ4T3Ytf9PqyvRnMws/GmxRdfODe032nSCJOVVR2phdXnn1/3uAbj4ueBZLE8jd''||',
'''gXGa4PgIBLs6qz4gIdKzjuirZXUyDNpUjkOyH5/MKK/g46FETuC9f3s9e//p3asP''||',
'''b17OXv75+4ffX3589eH6chB4jr4je9iJuHEibttAZjrT8pv23tIZXnI0gNq7h5nx''||',
'''ytPkqxuUPceosWupKELIHsMfdfHiXV0dv3t3/B/4eOQIzWwsfjCuMeIatXFhjLLj''||',
'''aUharrRTbdbws1919pT0JPU9Jgp26sLC974Xn+KrxidV27r6f6jh/BHDnlS47LBk''||',
'''LyX7MK0mPYFUnCNMFnNBBsuUWfeM/UAtTVh1VzemBrQqdXp21DvaxqxptF4NC02h''||',
'''q66ucKFCh8wkFjOyBFUVt8KrXmwYvqMW34Zrw1vFdGKYbikI2G8qBduYnYzLw405''||',
'''qyYWPkws7BBT3tpw9Lar7bRSj416Je6Tc7+RrF/I4B7TNKn3qaBP8F5ZuxOdetfW''||',
'''GS7IQL5hMmrtQ/P0CIyI/f5PvbPCN2n/A3L/7b+LKAAA'';',
'--',
'  t_parse_xls varchar2(32767) :=',
'''H4sIAAAAAAAAC+0cXW/jRu7dv0J9OEhayz5JVmyn6RZINwmwwO72sGnRuydDtseJ''||',
'''urZkSHKTHPrjj5wvzYwl2bGdbHHbIICt0QzJ4ZAcDslxZ7FJZ2WSpdY6zgvScdaT''||',
'''eTbbrEhaWtNlNu1460lxT0hZWH/E+ew+zkPr+7dWulku8RV5LPPYmk9XRbYp15ty''||',
'''skxSUsR5Hj/Jbm4nJ+UmT60SYMdl3EmKTjmZkeUSW/DzAp7z7KHAZ/zEZ+wpRuDz''||',
'''Q5Z/mWbZF0oVNiTp3ErSktyRHB8L43lJUvVxFT+aTTOYovJ4l0+T0srjBydw8Xma''||',
'''LBZnFqBckjilGMpc8sAZhKPhiPZL5lVrZOEnbb4n8ZzkFF5EG8rVmj5VI3MyM1pg''||',
'''siQ49yMF7dOaIBuKAogFBsXTJbGyhUkITGROHq3pk7VeFhOVLTCODa9gIRYNGMfW''||',
'''CORxwcbwsdi0WJVmG4cOneGlBl8B14YDh0kAHEkdx/F5UhDlXeD7Lsqb/dv1+OPt''||',
'''b+8/BeFZaCvcQwmm/Aay4CPL5x0njVfEBN/xFDHquAaEQpuVDreJ/2ychCDbtOF0''||',
'''VuZQirqaoivE2Oi4zrMZmW9yAhOL55NNmsyyOUFpTdI7pmvQpgnalNwlKZdorqUX''||',
'''nYf7BObF1OJHy+8ss2zdSRbWplxOYHAftGMSp3OHa4p3D7qfIVTbD2zXtd5aekun''||',
'''vCcpAnAsi6lnlwJ/EwJ4ARRU8q68dygT3G7QAQTUmkxAyfvFZgoUOpXue6FH9b5L''||',
'''1bsb6UgH73wf0HLEcnbsy59/UpxJME770HtSZlSMHEGIxAWEeIxc17MvPwTDX3+5''||',
'''CYYfrm1X2AwKE770jEm0gXKtf1qhsFoUgDINYa6gXcCYxUWJNE6TNM6fxGI7e7Am''||',
'''dD1JV1KWSzIh6TyJU7eycYCnBVDAAUXSRrX3p7T35KguE9SCTzS46JAl7CvHL4fH''||',
'''paduWQrJVlXOlAXzgQxU7AUnZ1ssX0UoAS0n9oe39eiE8OJuochDnUwdJY9yWTgi''||',
'''ZgMEj75lOd3NeSaJjYJXL3Z06RE2bCFpVjLXSAiFQAbOVFosYTt1aF/JoUdovyOO''||',
'''fXNje/boxgYdgK8uhSXh7KliDLL96+3o8vbd+/d2JQq4TUhRWGSwV8O2ZgVWv78t''||',
'''qwDDZVuEHCdlIktncenQdm+LjYg88QJX3T9AQ1zGKYR4sf9MEINpDaSe13wy8PAN''||',
'''5if83vxLmG5WU5BacD6/4D4pHVbWjnso2zF5Mwg9wX5lBnNwzP3RmDECBVmFCdv+''||',
'''AOYJ+yyokO2HtoWrtkuTTOgUnH3z7ob+2U1KBNtNJDANXhyT7wtcfjuuebYB58kx''||',
'''JAWGsT/bQ6RNmASO4EgcuybaMlPwM5n06CIEchKiEwyg4CsXGylF+KaSIWoHhJ/P''||',
'''FFccjzLajt5TD/7xPWj71VXv48fef+DPdrsUfiXSdQMHONA3BzLKesPA5bQbXuNs''||',
'''MYUuswU9XbnMa1ROMGdByM5ETyWZgPMMzYazSlLwOsHhtCzFpfaZjSz+C63aAIs2''||',
'''s/a6V2RWvp9vvWLGWbwV3f6BfrLiqJNZMjccdbVno6e+KuKyAkAJhwajZbsPQM4Y''||',
'''k0I/GrMJ32c5bAFZWsZwGs7liRXMAYlX8hG3UoMG80gijpOzyU1OyOSWzN5fUbYA''||',
'''8KKMYZNRj1bfv+0F2Pc6nU9+Xkze3QN6Pqapf4j9by9/UUA39h1g349656a+Efa9''||',
'''ev95cr1al09aT3bCRuuu7wBixC223ZFdIwJ1BOXrrhFhNeJDNvti7aZqUI34V56t''||',
'''SQ5TaR8RVSM+Z7DL78ZxZisHMq5yNY4MKqcHauihBlPvVfYWTgCI4dY2zbq41g8W''||',
'''jFV7yP2Y9YAdauxa36mUXfnvboLg2r8MfgqCy+ug8mKZ2VG9RcUuAO10f3xQTbSJ''||',
'''LTz3Qt1PvrmmDo1m2DXza6GTohxG72Q7mjNqVRUq3tYDEY6StFYYM1D9B+kL1few''||',
'''1UlT+wWv19kDbJ+ht+f+avJiEAAvPJV6l5tNgH8C8IM68NK789G7C/zzXiC8OW5e''||',
'''dzv5TRhHo27yJvIiAyuw7hGceioXEgsIi2LahBl2Epd7f7SX4RoeS9/wvIY2Ef3g''||',
'''0L9DwrbtqMqjrFlPqWygtnbptzcCLD1z6KxnYgQ+VC8UwCkH2Ad4L5u0dFz3kOky''||',
'''Ij1Yi25Qtxon4SlH0qtdb4kB5/y7Mmd1brrkPYurlFO/u61sraBTrr4aU08rsnW4''||',
'''vr7IVrzlzP0qIiuXlracTLI566O/orUIwnHF/P1CMs28BmDd4dnWLsE3VYT+oxWK''||',
'''nZN6qBzb7uidhiPgIRiKSOyvyoGdug07yByB/8POgarrx4iTzJ1BW0lKslqDb5E/''||',
'''OcLz9sp8Q1zjGHEs54JgVCMgp1mVIKzTgmpZDhbqs22aGQ+FYCsMahVuyfN4vSY0''||',
'''OcBZvaekV3hA2muWRuh21aobWXTWXozmrZOcx7wy/rEf+e30c9GXmMs8WSnyisss''||',
'''VpxqHqa4eEDTFiopM6MiYAZDjbijGPvT/uMUJcOTzG4VM1n1arp2gvU3aH9F4a3i''||',
'''7mj+DtjiYH0luUnRsiJ43gqMZVyA6902RBOjJjRUcPaCznpqIVlx9l09wZA7x8Yq''||',
'''BDx2/fvDLR6MleCUKEsQ+iDFl59/LdgpJeo7UsozsOiIJPqMRIHtU2ZJMAuUogU4''||',
'''L3OKOE4KMgEJWSazGIN8E5LnWe70Qt/3Bx6MLK3Y+iNeJnOktYejbSH0W2mUQC1B''||',
'''UP2AWjr5AX+PnJORdT33x3CGhr99U1YRFg5YjhqIwYBERwvO+0N69N8T5NCg6UxP''||',
'''yrKqivZMjUKdHiRiwZLXSkLVp8CoCVFPstjtR+zG11cp/mifZsTXkBeRQOetnMJ2''||',
'''lCZ0jYN0godo278ENh/hdohggdfCEap1DN0NZjW5tpPZMs4xZJJvtPIaWLfqsQo3''||',
'''x/M5NTCg0UYA1DWC5DSjxno1ZUu7QVNE6jkrIDO3z18JhSeDiifHpk8PX569css8''||',
'''V2pkSForIXblVaXGVtnEPTOyShZXCa0ZWVk9O61sG1rX/bPAY46VpjVkcELLdD7f''||',
'''qAhpGjcmsKjtkAowUDP4z5UIJRvdasSMBHWoZdfboAZ1w4OLPSuCxlsVQWNRESTn''||',
'''z1JKaDVedf5CPBlePUO/x8yirZlFWzNjlgQN4HEzi3ZoO2L4Qfg0EiH90o3C8+h8''||',
'''OArPh3WKxdkRVfHuR7NgoaaajBcU0kiPHuihzt1FxQHK3zdRlwKur5RQOmwl54Eo''||',
'''xbKOzxTL+nyzwnID6HcIGEfoHAYgWsStrXhkrNaNYOVfvzWYwkolqmrHyrIeSb67''||',
'''2waMRZrpuOI/WcdRi+RcVnSZNWLM3Ldz81xy8xmVKgY5slIF2g+rVFE0a58VRTxN''||',
'''9SoCBNeTQ1Y3aLMYHH7hiC+mAmOjqXphqKierE4+zH0PWJZXRxBcg/38i+j24HDd''||',
'''jhTdxqrlV1XqVrdwl6qfvYaqD49S9eFfTNXbF7hdx0XdvHOYfjcutNsBihxgDesN''||',
'''aDx7PrddWsqNXFNfrFYNL56e+IstPb32j9qDRX2/I74clSbaKfQ67VF4rP/gVAdC''||',
'''dpSiYRM78MOR7YGojDHGgQGSFI6zKAeg2oDcofcRLt99/vnj5acxr9cUtZ9SceR1''||',
'''BnGBQQ7YLmJsOlmqYUMpYkHETHu+IXr7WUP7sKF9VN8ehkq7majSl7nKVvG7JDLF''||',
'''L6D1yWNS0N2JS0oCsoEsVRCq7+pUE2ko1GSZss9VFFSOKNsPC7dfnW1eK+xmBLaG''||',
'''9qEBtsD3hfA5lnpPRdQEMQW3v7exjlZ2gO/Q5PFmYb2KbuDyV4aB2DFe4SV1gVQY''||',
'''SvSPXV9h5wx25as/J0vCrhThTS+HfbAlA2KkQ2ViuJAxXDynWLVU/B0rbI8V0it4''||',
'''yh78OrHD0bUfHuvxCSNyyMZx1raJCpMMnOmjILJLWGiYryTL8AWZ/BFz3vHS36qM''||',
'''vOHgFblKcKwGwacKAQMkUOwDWd0hZi+wpXZlBoNCv6PpPxoJoG3ooLlCpU/t2oAZ''||',
'''cBA+UzB2X1Tf4P3B/6VINZBiFLgbwtAYfTxM+E5LwzcupsMT+qHN4R3qYlL/lN4D''||',
'''gDOah8XP7P5JbQ0wnRmyVa8AZtchtLtrf2vJ31ryElpCOvWXqral27gFVL9Qt9VC''||',
'''sci1WKg9sJxTHTLuM9k3lx9ur23LuIJk//L5V2ilMetvY63022sdcXVcZZZWK/LM''||',
'''67L+CK9pbGWWswfjgsmB4dEdbJ5ly1Pg2bGcInP5da/YHhLDOSJG2cJ7NTsUXTQr''||',
'''9Hasty1oOFAisjWG4JnR2ZYLyWx2A7cxY1aDnafLKjPfquDZslJx+kHVElo1I8qv''||',
'''JVZ33J9nGW37WzFherEdZ5fqpkXHnyb0lETjMhyTyNt12kbgb6vkcM2S86qK3dfe''||',
'''z0+kS9+WV1MrXFdHnwFOmctutcnPkog9rcy+ovIti8jN1ZGpluYF+Yo8rd8Fi/Ig''||',
'''Po+aE91f8Xz/09EL90I5YJmbOTHkzu56uVqQvbAFJs/StFmfs+7wjZP0mAnyhseG''||',
'''8ND6tKZWXyQqjFgHLxIVlpD38zAT/lM4L6U0CN+0emZKfVdWk64vzRfRzBDNK4lV''||',
'''YQMr77joL4F4t79Icvqrd5KZNZ2oRlcsZ6qSywoDpavIHwIlGF/jb3jSMq9qaxFD''||',
'''bsJl2BkGNaXbNDle1ozEzBRi6HpJBeFwq5/roXSHBt2SakmbIFr5sSmdQUC+zhTM''||',
'''ITUSzn5Uo9B/0IhDCnYjC7aQcX9U3brMNHjjKtWsUe2M6+bZvkjGvZ2WpdGx17Gg''||',
'''buK1c9XVpFKXrVSp26e/nynZWgdG/FoM/0lNPDD+DzoaiNz+UwAA'';',
'--',
'  t_parse_html varchar2(32767) :=',
'''H4sIAAAAAAAAC9VXzW7jOAy++ym0e7GNOm28M9PJbJpeOpc97aEPYCi2khhQJEOS''||',
'''23QxDz+k/mLHTtEeN0Bii6Io8uMnUkl2vahNKwXpqNIsybqqkTXZcrlNiq7SB8ZM''||',
'''JRTpuK5aYdieKfL3hoiec5xnJ6MoabZHLXvT9abirWCaKkXfolqeKGZ6JYgB29TQ''||',
'''pNWJqWrGOUrwuYaxkq84hIcfaT/UOMZ1YT2OD+bISQ1O2kmmTSV3O80MGfhY4pxW''||',
'''dZiazNW6bcDF45YpHHIq9lUtQelkvBhVMbgKdrpt2I72POiZE655pUq0Yk/sx9u3''||',
'''pvsRZCjqpL4UGbqtmGguxRD0nBi0OatqYSYTalbazEl1R8WlrJZ8VnxARhjyQhW+''||',
'''/pWVy+UyXydbtm9F0u5IRhxZWu0SLdUZrD0znIm9OThC5WRDliMF3W+1UW62+FaU''||',
'''OfljQ9IvT/er71/vf94/pcAbc2AiksfnHoFpdzF9SDJw2/tatU3WG1615UrcHmkX''||',
'''5Fn6z/O/i9Xq249FmRZL2A3iiK7UilHDDDt2UlH1ljl6FUb1bKQmxQtTxkjknVfC''||',
'''MwABJEXUgu+RnnT7H0uKETVxeGZjUogXnrkgimWOk0P+4dhzK8kDoSDWViBo3sH0''||',
'''YSubtzQP7Joq+PA3qAMJc2qPZEkooOhGD8Qad1jHpIMln6AQp9W+WSUFZ1SbDL3H''||',
'''pLe7bLwlSZ1qDlEV1nTuYp3V/vNT2vD5jPrjjHa+sKLFKnGQfIQ8ERXHHCTqOHke''||',
'''u2Edmqs/o7rzQeJe7P3/oGM4o+FpqYdLgHoBrHM1AzvLte8It3jIK/PWMRSnz+k6''||',
'''4VJ2V3e0VlKfXNjw1BryChv4/bzlUGen6++sgcd5C2EZWiGXLg+GN2VoWdAjOBSS''||',
'''QVF2wb0fg3o3AAJVM6AXfbqagxDKzZdPWgP3o/eQr9HpdyYXZajSd2nIYmhVc8iq''||',
'''K7CGNdGbIBh6REYQhveI9BDo5sNAN58A2jsVauvHgUbtaM3V24G1GWixHFloR8j6''||',
'''EFzZLeP5gJVwCKsXysP9CnbncHHzrX3aAlxz35xDt6fRKp87gR0+uN2cB67Lny8H''||',
'''6Ius3LUo4+DFMVP29zIc1L5Z+TZhDRYzHQK1cizG+LJY5dgK0jQ8LKQ16/Bimlhc''||',
'''JTil4EqI7z5qhNOHPnAyToZbwgTH2XQCX5srfH03oWQ+MTPHx2c67hA9PBM4vEea''||',
'''Z0GSu2l3WXbl1If8SMpYUqeGot6iHJdlPCgjeCJDz45hRcvC0cuj2hUDg1qCRTwb''||',
'''FMj8VtCjq+hWRlLy69ewgs4vsn8Cwq56uG3wMba5nWKTCxyAPL07rn8DAB+QK/EM''||',
'''AAA='';',
'--',
'  cursor c_api( b_app_id number, b_page_id number, b_item_name varchar2 )',
'  is',
'    select api.attribute_01 ',
'    from apex_application_page_items api',
'    where api.application_id = b_app_id',
'    and   api.page_id = b_page_id',
'    and   api.display_as_code = ''NATIVE_FILE''',
'    and   api.item_name = b_item_name;',
'  r_api c_api%rowtype;',
'--',
'  procedure log( p_msg varchar2 )',
'  is',
'  begin',
'--    apex_debug_message.error( p_msg );',
'    apex_debug_message.log_message( p_msg, p_level => 4 );',
'  end;',
'  function dc( p varchar2 ) return varchar2',
'  is',
'  begin',
'    return utl_raw.cast_to_varchar2( utl_compress.lz_uncompress( utl_encode.base64_decode( utl_raw.cast_to_raw( p ) ) ) );',
'  end;',
'--',
'begin',
'  p_browse_item     := p_process.attribute_01;',
'  p_collection_name := p_process.attribute_02;',
'  p_sheet_nrs       := p_process.attribute_03;',
'  if upper( p_process.attribute_04 ) in ( ''HT'', ''^I'', ''\T'' )',
'  then',
'    p_separator := chr(9);',
'  elsif upper( p_process.attribute_04 ) in ( ''VT'', ''^K'', ''\V'' )',
'  then',
'    p_separator := chr(11);',
'  else',
'    p_separator := substr( ltrim( p_process.attribute_04 ), 1, 1 );',
'  end if;',
'  p_enclosed_by     := substr( ltrim( p_process.attribute_05 ), 1, 1 );',
'  p_encoding        := p_process.attribute_06;',
'  p_round := substr( ltrim( p_process.attribute_07 ), 1, 1 );',
'--',
'  open c_api( nv(''APP_ID''), nv(''APP_PAGE_ID''), upper( p_browse_item ) );',
'  fetch c_api into r_api;',
'  if c_api%notfound',
'  then',
'    log( ''FILE BROWSE item '' || p_browse_item || '' not found'' );',
'  end if;',
'  close c_api;',
'  t_filename := apex_util.get_session_state(  p_browse_item );',
'  log( ''looking for uploaded file '' || t_filename || '' in '' || r_api.attribute_01 );',
'--',
'  begin',
'    if r_api.attribute_01 = ''WWV_FLOW_FILES''',
'    then',
'      select aaf.id',
'           , aaf.blob_content',
'      into t_file_id',
'         , t_document',
'      from apex_application_files aaf',
'      where aaf.name = t_filename;',
'--',
'      delete from apex_application_files aaf',
'      where aaf.id = t_file_id;',
'--',
'      log( ''retrieved!''  );',
'    elsif r_api.attribute_01 = ''APEX_APPLICATION_TEMP_FILES''',
'    then',
'      execute immediate ''select aaf.blob_content',
'                         from apex_application_temp_files aaf',
'                         where aaf.name = :fn''',
'      into t_document using t_filename;',
'--',
'      log( ''retrieved!''  );',
'    end if;',
'  exception',
'    when no_data_found',
'    then ',
'     --raise e_no_doc; /* removed and added below */',
'     ',
'     log( ''looking in CLOB_CONTENT''  );',
'     begin',
'       /* ',
'         We didn''t use the filebrowser, but the container',
'       */',
'       select apex_web_service.clobbase642blob',
'                (utils.clob_to_clob_substr(',
'                          p_clob => col.clob001,',
'                          p_start_pos => dbms_lob.instr(col.clob001,'','',1,1) + 1,',
'                          p_clob_length => dbms_lob.getlength(col.clob001) )',
'                    ',
'                 -- replace below with above as this blew out at over 4000 characters',
'                 --   dbms_lob.substr( col.clob001',
'                 --               ,  dbms_lob.getlength(col.clob001)',
'                 --               , dbms_lob.instr(col.clob001,'','',1,1) + 1)',
'                )',
'                ,dbms_lob.substr(col.clob001, dbms_lob.instr(col.clob001,'':'',1,2) - 10, 10) /*filename:XXXX.csv: */',
'       into   t_document, t_filename',
'       from   apex_collections col',
'       where  col.collection_name = ''CLOB_CONTENT''',
'       and    col.clob001 is not null ;',
'       ',
'       -- set the collection ',
'       t_upload_file_collection_name := ''UPLOAD_FILE'';',
'       ',
'       -- we want to delete the collection to store the upload file details',
'       if apex_collection.collection_exists( t_upload_file_collection_name )',
'          then',
'            apex_collection.delete_collection( t_upload_file_collection_name );',
'          end if;',
'       ',
'       -- now create the collection',
'       APEX_COLLECTION.CREATE_COLLECTION(t_upload_file_collection_name);',
'       ',
'       /* insert file details into collection - we will save these to dropbox later if we need to */',
'       t_collection_retrun := APEX_COLLECTION.ADD_MEMBER(',
'                                     p_collection_name => t_upload_file_collection_name,',
'                                     p_c001            => t_filename,',
'                                     p_c002            => v(''APP_USER''),',
'                                     p_d001            => current_date, ',
'                                     p_blob001         => t_document);',
'       ',
'       /*-- debug what is happening  ',
'       insert into tmp_apex_collections',
'       select * from apex_collections; */',
'       --',
'       log (''Found'');',
'     exception',
'       when no_data_found',
'       then',
'         log(''Not found'');',
'         raise e_no_doc;',
'     end ;',
'     /* end of insert */',
'  end;',
'--',
'  if t_document is null or dbms_lob.getlength( t_document ) = 0',
'  then',
'    log( ''file is empty'' );',
'    return null;',
'  else',
'    log( ''file with length '' || dbms_lob.getlength( t_document ) || '' found '' );',
'  end if;',
'--',
'  if apex_collection.collection_exists( p_collection_name )',
'  then',
'    apex_collection.delete_collection( p_collection_name );',
'  end if;',
'  for i in 1 .. 10',
'  loop',
'    if apex_collection.collection_exists( p_collection_name || i )',
'    then',
'      apex_collection.delete_collection( p_collection_name || i );',
'    end if;',
'  end loop;',
'--',
'  if dbms_lob.substr( t_document, 4, 1 ) = hextoraw( ''504B0304'' )',
'  then',
'    log( ''parsing XLSX'' );',
'    t_what := ''XLSX-file'';',
'    execute immediate dc( t_parse_bef ) || dc( t_parse_xlsx ) || dc( t_parse_aft ) using p_collection_name, t_document, p_sheet_nrs, p_round;',
'  elsif dbms_lob.substr( t_document, 8, 1 ) = hextoraw( ''D0CF11E0A1B11AE1'' )',
'  then',
'    log( ''parsing XLS'' );',
'    t_what := ''XLS-file'';',
'    execute immediate dc( t_parse_bef ) || dc( t_parse_xls ) || dc( t_parse_aft ) using p_collection_name, t_document, p_sheet_nrs, p_round;',
'  elsif dbms_lob.substr( t_document, 5, 1 ) = hextoraw( ''3C68746D6C'' )',
'  then',
'    log( ''parsing HTML'' );',
'    t_what := ''HTML-file'';',
'    execute immediate dc( t_parse_bef ) || dc( t_parse_html ) || dc( t_parse_aft ) using p_collection_name, t_document, p_sheet_nrs, p_round;',
'  elsif (  dbms_lob.substr( t_document, 1, 1 ) = hextoraw( ''3C'' )',
'        or dbms_lob.substr( t_document, 2, 1 ) = hextoraw( ''003C'' )',
'        or dbms_lob.substr( t_document, 4, 1 ) = hextoraw( ''0000003C'' )',
'        )',
'  then',
'    log( ''parsing XML'' );',
'    t_what := ''XML-file'';',
'    execute immediate dc( t_parse_bef ) || dc( t_parse_xml ) || dc( t_parse_aft ) using p_collection_name, t_document, p_sheet_nrs, p_round;',
'  else',
'    log( ''parsing CSV'' );',
'    t_what := ''CSV-file'';',
'    execute immediate dc( t_parse_csv ) using p_collection_name, t_document, p_separator, p_enclosed_by, p_encoding;',
'  end if;',
'--',
'   -- t_rv.success_message := ''Loaded a '' || t_what || '' in '' || to_char( trunc( ( sysdate - t_time ) * 24 * 60 * 60 ) ) || '' seconds'';',
'   -- return t_rv;',
'   return null; -- I don''t want to say we have uploaded a file',
'exception',
'  when e_no_doc',
'  then',
'    t_rv.success_message := ''No uploaded document found'';',
'    return t_rv;',
'  when others',
'  then',
'    log( dbms_utility.format_error_stack );',
'    log( dbms_utility.format_error_backtrace );',
'    t_rv.success_message := ''Something went uploading file''||',
'         ''<br/>'' || dbms_utility.format_error_stack || ''<br/><br/>'' ||',
'       dbms_utility.format_error_backtrace || ''<br/><br/>'' ||',
'         ''Please check that: <ul>'' ||',
'           ''<li>'' || ''1. the file is in the correct format'' || ''</li>'' ||',
'           ''<li>'' || ''2. the delimeter is "~" ''||',
'           ''</li></ul><br/>'';',
'    return t_rv;',
'end;',
''))
,p_execution_function=>'parse_excel'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'0.821'
,p_plugin_comment=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'0.821',
'  XLSX: fixed bug for numbers without a format',
'0.820',
'  Apex 5.0: Handle APEX_APPLICATION_TEMP_FILES',
'0.818',
'  XLS: fixed bug for unicode strings starting at CONTINUE record',
'0.816',
'  XLSX: treat numbers with "text" format as string',
'0.814',
'  XLS: performance',
'0.812',
'  XLS, XLSX: option to round number values',
'  XLS: fixed bug for Asian strings',
'0.810',
'  XLSX: skip empty nodes',
'  CSV: handle 1 line file',
'0.808',
'  Use dd-mm-yyyy hh24:mi:ss for date format',
'0.806',
'  save mapping between sheet name and collection name in <Collection name>_$MAP',
'  XLSX: also strings on 10.2 databases',
'        read formulas',
'  XLS: fix empty string results for formulas',
'       added standard data formats',
'  CSV: performance in case of wrong separator',
'0.804',
'  XLSX: Fix bug for formated strings',
'  CSV: Support for HT separator',
'0.802',
'  XLSX: Support for numbers in scientific notation',
'  XLSX: Fix bug for empty strings',
''))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1095084754352792028)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Browse Item'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>'The name of the File Browse Item which is used to select the uploaded Excel file.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1095085451974819757)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Collection name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'The name of the Collection in which the first sheet is placed.',
'<br/>Eventually, other sheets are placed in Colections with a sequence number attached to this name: <br/>',
'<br/>&lt;Collection name&gt;2',
'<br/>&lt;Collection name&gt;3',
'<br/>&lt;Collection name&gt;4'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1095086766566852316)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Sheets'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A colon separated list of sheets which should loaded.',
'<br/>When left empty all sheets are loaded.<br/>',
'A sheet is identified by its name or positional number.',
'<br/><br/>For instance',
'<br/>',
'&nbsp;&nbsp;1:3 will load the first and the third sheet<br/>',
'&nbsp;&nbsp;Sheet1:Sheet2 will load the sheets with the names "Sheet1" and  "Sheet2"'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1095087470768881946)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'CSV Separator'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>';'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'The column separator character used for CSV-files.<br/>',
'Use \t, ^I or HT for a (horizontal) tab character.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1095088168606900200)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'CSV Enclosed By'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_default_value=>'"'
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A delimiter character used for CSV-files. This character is used to delineate the starting and ending boundary of a data value.',
'The default value is ".',
'The same character is used as the escape character.'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1095088862897936428)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'CSV Character set'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>false
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'The character set used for loading a CSV file.',
'<br/>When left empty the database character set is used.',
'<br/>Use the Oracle name for the character set, for instance WE8MSWIN1252 and not Windows-1252'))
);
end;
/
begin
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1093325068259251256)
,p_plugin_id=>wwv_flow_api.id(1095040276965045000)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Round Excel numbers'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'Y'
,p_is_translatable=>false
,p_help_text=>'Excel has a numerical precision of 15 digits. When this option is used numbers are rounded to 15 digits.'
);
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/be_ctb_jq_alv
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(1390118139711869782)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'BE.CTB.JQ.ALV'
,p_display_name=>'Live Validation'
,p_category=>'COMPONENT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','BE.CTB.JQ.ALV'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render(p_dynamic_action in apex_plugin.t_dynamic_action',
'              , p_plugin         in apex_plugin.t_plugin)',
'return apex_plugin.t_dynamic_action_render_result is',
'  l_validation           varchar2(4000) := p_dynamic_action.attribute_01;',
'  l_item_type            varchar2(4000) := p_dynamic_action.attribute_02;',
'  l_items_to_validate    varchar2(4000) := p_dynamic_action.attribute_03;',
'  l_triggering_event     varchar2(4000) := p_dynamic_action.attribute_04;',
'  l_condition            varchar2(4000) := p_dynamic_action.attribute_05;',
'  l_equal                varchar2(4000) := p_dynamic_action.attribute_06;',
'  l_regex                varchar2(4000) := p_dynamic_action.attribute_07;',
'  l_minimum_item         varchar2(4000) := p_dynamic_action.attribute_08;',
'  l_maximum_item         varchar2(4000) := p_dynamic_action.attribute_09;',
'  l_minimum              varchar2(4000) := p_dynamic_action.attribute_10;',
'  l_maximum              varchar2(4000) := p_dynamic_action.attribute_11;',
'  l_forms_to_validate    varchar2(4000) := p_dynamic_action.attribute_12;',
'  l_form_submit_elements varchar2(4000) := p_dynamic_action.attribute_13;',
'  l_error_msg            varchar2(4000) := p_dynamic_action.attribute_14;',
'  l_error_msg_location   varchar2(4000) := p_dynamic_action.attribute_15;',
'',
'  l_date_format        varchar2(4000);',
'  l_numeric_characters varchar2(4000);',
'',
'  l_render_result      apex_plugin.t_dynamic_action_render_result;',
'begin',
'  apex_javascript.add_library(',
'    p_name      => ''jquery.alv'',',
'    p_directory => p_plugin.file_prefix,',
'    p_version   => null',
'  );',
'  apex_css.add_file(',
'    p_name      => ''style.alv'',',
'    p_directory => p_plugin.file_prefix,',
'    p_version   => null',
'  );',
'',
'  select value',
'  into l_date_format',
'  from nls_session_parameters',
'  where parameter = ''NLS_DATE_FORMAT'';',
'',
'  select value',
'  into l_numeric_characters',
'  from nls_session_parameters',
'  where parameter = ''NLS_NUMERIC_CHARACTERS'';',
'',
'  l_render_result.attribute_01 := l_validation;',
'  l_render_result.attribute_02 := apex_plugin_util.page_item_names_to_jquery(l_items_to_validate);',
'  l_render_result.attribute_03 := l_triggering_event;',
'  l_render_result.attribute_04 := l_condition;',
'  l_render_result.attribute_05 := l_forms_to_validate;',
'  l_render_result.attribute_06 := l_item_type;',
'  l_render_result.attribute_07 := l_form_submit_elements;',
'  if l_minimum_item is not null then',
'    l_minimum_item := apex_plugin_util.page_item_names_to_jquery(l_minimum_item);',
'  end if;',
'  if l_maximum_item is not null then',
'    l_maximum_item := apex_plugin_util.page_item_names_to_jquery(l_maximum_item);',
'  end if;',
'  l_render_result.attribute_10 := nvl(l_minimum_item, l_minimum);',
'  l_render_result.attribute_11 := nvl(l_maximum_item, l_maximum);',
'  l_render_result.attribute_12 := apex_plugin_util.page_item_names_to_jquery(l_equal);',
'  l_render_result.attribute_13 := l_regex;',
'  l_render_result.attribute_14 := l_error_msg;',
'  l_render_result.attribute_15 := l_error_msg_location;',
'',
'  l_render_result.javascript_function := ''',
'    function() {',
'      var render = this;',
'      var action = render.action;',
'      var l_allowWhitespace = true;',
'',
'      if (!action.attribute14) { action.attribute14 = ""; }',
'',
'      if (action.attribute01 !== "form") {',
'        // item validation',
'        if (action.attribute01 === "notBlank") {',
'          action.attribute01 = "notEmpty";',
'          l_allowWhitespace = false;',
'        }',
'        if (!action.attribute04) { action.attribute04 = ""; }',
'        if (!action.attribute10) { action.attribute10 = ""; }',
'        if (!action.attribute11) { action.attribute11 = ""; }',
'',
'        $(action.attribute02).alv({',
'          validate: action.attribute01,',
'          triggeringEvent: action.attribute03,',
'          condition: action.attribute04,',
'          errorMsg: action.attribute14,',
'          errorMsgLocation: action.attribute15,',
'          allowWhitespace: l_allowWhitespace,',
'          itemType: action.attribute06,',
'          dateFormat: "'' || l_date_format || ''",',
'          numericCharacters: "'' || l_numeric_characters || ''",',
'          min: action.attribute10,',
'          max: action.attribute11,',
'          equal: action.attribute12,',
'          regex: action.attribute13',
'        });',
'      } else {',
'        // form validation',
'        $(action.attribute07).alv("validateForm", {',
'          formsToSubmit: action.attribute05,',
'          errorMsg: action.attribute14',
'        });',
'      }',
'    }',
'  '';',
'',
'  return l_render_result;',
'end render;'))
,p_render_function=>'render'
,p_standard_attributes=>'STOP_EXECUTION_ON_ERROR'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.5'
,p_about_url=>'http://apex.oracle.com/pls/apex/f?p=59381:1'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390126249324891469)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Validation'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'notEmpty'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Select the type of validation you want to perform.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390138525213893995)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>10
,p_display_value=>'Required'
,p_return_value=>'notEmpty'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390142832832896148)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>20
,p_display_value=>'Required (Trim Whitespace)'
,p_return_value=>'notBlank'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390147139065898079)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>30
,p_display_value=>'Item Type'
,p_return_value=>'itemType'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390151443567899330)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>40
,p_display_value=>'Equality'
,p_return_value=>'equal'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390155747723900470)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>50
,p_display_value=>'Match Regex'
,p_return_value=>'regex'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390160052571901891)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>60
,p_display_value=>'Character Length'
,p_return_value=>'charLength'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390196826168913215)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>70
,p_display_value=>'Number Size'
,p_return_value=>'numberSize'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390201140713917400)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>80
,p_display_value=>'Date Order'
,p_return_value=>'dateOrder'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390205444176918373)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>90
,p_display_value=>'Checkboxes'
,p_return_value=>'totalChecked'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390209750756920304)
,p_plugin_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_display_sequence=>100
,p_display_value=>'Form'
,p_return_value=>'form'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390221947817957321)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Item Type'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'number'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'itemType'
,p_lov_type=>'STATIC'
,p_help_text=>'Define what kind of item type validation should be applied.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390226351972958519)
,p_plugin_attribute_id=>wwv_flow_api.id(1390221947817957321)
,p_display_sequence=>10
,p_display_value=>'Number'
,p_return_value=>'number'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390230622321959456)
,p_plugin_attribute_id=>wwv_flow_api.id(1390221947817957321)
,p_display_sequence=>20
,p_display_value=>'Only Digits'
,p_return_value=>'digit'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390234925091960178)
,p_plugin_attribute_id=>wwv_flow_api.id(1390221947817957321)
,p_display_sequence=>30
,p_display_value=>'Alphanumeric'
,p_return_value=>'alphanumeric'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390239227169960877)
,p_plugin_attribute_id=>wwv_flow_api.id(1390221947817957321)
,p_display_sequence=>40
,p_display_value=>'Date'
,p_return_value=>'date'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390243529940961614)
,p_plugin_attribute_id=>wwv_flow_api.id(1390221947817957321)
,p_display_sequence=>50
,p_display_value=>'E-mail'
,p_return_value=>'email'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390247832364962318)
,p_plugin_attribute_id=>wwv_flow_api.id(1390221947817957321)
,p_display_sequence=>60
,p_display_value=>'URL'
,p_return_value=>'url'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390260033880972179)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Page Item(s)'
,p_attribute_type=>'PAGE ITEMS'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'form'
,p_help_text=>'The page item(s) for which you want the above validation to apply. Separate multiple page items with a comma.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390268329509980430)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Triggering Event'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'blur'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'form'
,p_lov_type=>'STATIC'
,p_help_text=>'Specify the JavaScript event that will cause the validation to fire.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390272732972981410)
,p_plugin_attribute_id=>wwv_flow_api.id(1390268329509980430)
,p_display_sequence=>10
,p_display_value=>'Blur'
,p_return_value=>'blur'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390277037474982743)
,p_plugin_attribute_id=>wwv_flow_api.id(1390268329509980430)
,p_display_sequence=>20
,p_display_value=>'FocusOut'
,p_return_value=>'focusout'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390281343361984412)
,p_plugin_attribute_id=>wwv_flow_api.id(1390268329509980430)
,p_display_sequence=>30
,p_display_value=>'Change'
,p_return_value=>'change'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390285646132985262)
,p_plugin_attribute_id=>wwv_flow_api.id(1390268329509980430)
,p_display_sequence=>40
,p_display_value=>'KeyUp'
,p_return_value=>'keyup'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390297839683992825)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Condition'
,p_attribute_type=>'TEXTAREA'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'form'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Optionally specify a JavaScript expression to support conditional execution of your validation. The validation will fire when the expression evaluates to true.',
'',
'For example: $(''#P5_COUNTRY'').val() === "Belgium"'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390306141678012307)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>6
,p_display_sequence=>60
,p_prompt=>'Must Equal'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'equal'
,p_help_text=>'Select the page item that you want the value to be equal to. Frequently used to validate that two password fields are equal.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390326133151019304)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>7
,p_display_sequence=>70
,p_prompt=>'Regex'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'regex'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'This field allows specifying a regular expression that has to match the entered value.',
'',
'For example: #[A-Fa-f0-9]{6}'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390334454622025585)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>80
,p_prompt=>'Minimum Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'numberSize,dateOrder'
,p_help_text=>'The page item that contains the minimum value. Overrides the ''Minimum'' setting if filled in.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390338840208030839)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>90
,p_prompt=>'Maximum Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>false
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'numberSize,dateOrder'
,p_help_text=>'The page item that contains the maximum value. Overrides the ''Maximum'' setting if filled in.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390358846797108450)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>10
,p_display_sequence=>100
,p_prompt=>'Minimum'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'charLength,numberSize,dateOrder,totalChecked'
,p_help_text=>'A fixed minimum value. Gets overridden by the ''Minimum Item'' setting if filled in.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390363241387116440)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>11
,p_display_sequence=>110
,p_prompt=>'Maximum'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>30
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'charLength,numberSize,dateOrder,totalChecked'
,p_help_text=>'A fixed maximum value. Gets overridden by the ''Maximum Item'' setting if filled in.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390371531475123006)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>12
,p_display_sequence=>120
,p_prompt=>'Form(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'form'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A jQuery selector to determine the form region(s) you want to validate before the page is submitted. Use a comma to separate multiple elements.',
'',
'For example: #empForm,#deptForm'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390379852600129071)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>13
,p_display_sequence=>130
,p_prompt=>'Form Submit Element(s)'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'IN_LIST'
,p_depending_on_expression=>'form'
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'A jQuery ID selector to determine the buttons that submit the form. Use a comma to separate multiple elements.',
'',
'For example: #createBtn,#saveBtn'))
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390388134723133496)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>14
,p_display_sequence=>140
,p_prompt=>'Error Message'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_is_translatable=>true
,p_help_text=>'Specifying an error message overrides the default error message. Use &1, &2, &n for substitution values.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(1390392552038138374)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>15
,p_display_sequence=>150
,p_prompt=>'Error Message Location'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'after'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(1390126249324891469)
,p_depending_on_condition_type=>'NOT_IN_LIST'
,p_depending_on_expression=>'form'
,p_lov_type=>'STATIC'
,p_help_text=>'You can choose to show the error message before or after the input item.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390396925504140232)
,p_plugin_attribute_id=>wwv_flow_api.id(1390392552038138374)
,p_display_sequence=>10
,p_display_value=>'After Item'
,p_return_value=>'after'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(1390401231391141966)
,p_plugin_attribute_id=>wwv_flow_api.id(1390392552038138374)
,p_display_sequence=>20
,p_display_value=>'Before Item'
,p_return_value=>'before'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1385856396793319842)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_name=>'alvformfail'
,p_display_name=>'Form Failure'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1385852086750316951)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_name=>'alvformsuccess'
,p_display_name=>'Form Success'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1385847912592314961)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_name=>'alvitemfail'
,p_display_name=>'Item Failure'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(1385843706705313299)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_name=>'alvitemsuccess'
,p_display_name=>'Item Success'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '76617220616C763D7B7D3B616C762E7574696C3D7B7472696D3A66756E6374696F6E2874297B72657475726E20742E7265706C616365282F5E5C732B7C5C732B242F672C2222297D2C7265706C61636543686172496E537472696E673A66756E6374696F';
wwv_flow_api.g_varchar2_table(2) := '6E28742C732C65297B72657475726E20742E73756273747228302C73292B28652B2222292B742E73756273747228732B28652B2222292E6C656E677468297D2C676574506167654974656D56616C75653A66756E6374696F6E2874297B72657475726E28';
wwv_flow_api.g_varchar2_table(3) := '742B2222292E737562737472696E6728302C32293D3D3D222350223F242874292E76616C28293A747D2C676574436F6E646974696F6E526573756C743A66756E6374696F6E287045787072657373696F6E297B7661722065787072657373696F6E526573';
wwv_flow_api.g_varchar2_table(4) := '756C743D21303B72657475726E207045787072657373696F6E2E6C656E67746826262865787072657373696F6E526573756C743D6576616C287045787072657373696F6E29292C65787072657373696F6E526573756C747D2C6765744E756D6265724672';
wwv_flow_api.g_varchar2_table(5) := '6F6D537472696E673A66756E6374696F6E2874297B72657475726E28742B2222292E6C656E6774683F4E756D6265722874293A22227D2C6765744461746546726F6D537472696E673A66756E6374696F6E2874297B76617220733D742E73706C69742822';
wwv_flow_api.g_varchar2_table(6) := '2F22292C653D7061727365496E7428735B325D292C693D7061727365496E7428735B315D2C3130292C613D7061727365496E7428735B305D2C3130293B72657475726E206E6577204461746528652C692D312C61297D2C636F6E76657274446174653A66';
wwv_flow_api.g_varchar2_table(7) := '756E6374696F6E28742C73297B76617220652C692C612C6E3D732E746F55707065724361736528292C723D6E2E7265706C616365282F5B412D5A5D2B2F672C2222292C6C3D742E7265706C616365282F5C642B2F672C2222293B72657475726E20742E6C';
wwv_flow_api.g_varchar2_table(8) := '656E6774683D3D3D732E6C656E67746826266C3D3D3D72262628653D6E2E696E6465784F662822444422293D3D3D2D313F227878223A742E737562737472696E67286E2E696E6465784F662822444422292C6E2E696E6465784F662822444422292B3229';
wwv_flow_api.g_varchar2_table(9) := '2C693D6E2E696E6465784F6628224D4D22293D3D3D2D313F227878223A742E737562737472696E67286E2E696E6465784F6628224D4D22292C6E2E696E6465784F6628224D4D22292B32292C613D6E2E696E6465784F6628225959595922293D3D3D2D31';
wwv_flow_api.g_varchar2_table(10) := '3F6E2E696E6465784F6628225252525222293D3D3D2D313F6E2E696E6465784F662822595922293D3D3D2D313F6E2E696E6465784F662822525222293D3D3D2D313F2278787878223A742E737562737472696E67286E2E696E6465784F66282252522229';
wwv_flow_api.g_varchar2_table(11) := '2C6E2E696E6465784F662822525222292B32293A742E737562737472696E67286E2E696E6465784F662822595922292C6E2E696E6465784F662822595922292B32293A742E737562737472696E67286E2E696E6465784F6628225252525222292C6E2E69';
wwv_flow_api.g_varchar2_table(12) := '6E6465784F6628225252525222292B34293A742E737562737472696E67286E2E696E6465784F6628225959595922292C6E2E696E6465784F6628225959595922292B3429292C652B222F222B692B222F222B617D7D2C616C762E76616C696461746F7273';
wwv_flow_api.g_varchar2_table(13) := '3D7B7574696C3A616C762E7574696C2C6973456D7074793A66756E6374696F6E2874297B72657475726E20743D3D3D22227D2C6973457175616C3A66756E6374696F6E28742C73297B72657475726E20743D3D3D737D2C72656765783A66756E6374696F';
wwv_flow_api.g_varchar2_table(14) := '6E28742C73297B72657475726E205265674578702873292E746573742874297C7C746869732E6973456D7074792874297D2C6973416C7068616E756D657269633A66756E6374696F6E2874297B72657475726E20746869732E726567657828742C2F5E5B';
wwv_flow_api.g_varchar2_table(15) := '612D7A302D395D2B242F69297D2C69734E756D6265723A66756E6374696F6E28742C73297B72657475726E20733D3D3D222C2E223F746869732E726567657828742C2F5E2D3F283F3A5C642B7C5C647B312C337D283F3A2E5C647B337D292B293F283F3A';
wwv_flow_api.g_varchar2_table(16) := '5C2C5C642B293F242F293A746869732E726567657828742C2F5E2D3F283F3A5C642B7C5C647B312C337D283F3A2C5C647B337D292B293F283F3A5C2E5C642B293F242F297D2C697344696769743A66756E6374696F6E2874297B72657475726E20746869';
wwv_flow_api.g_varchar2_table(17) := '732E726567657828742C2F5E5C642B242F297D2C6973456D61696C3A66756E6374696F6E2874297B72657475726E20746869732E726567657828742C2F5E5B5E5C73405D2B405B5E5C73405D2B5C2E5B5E5C73405D2B242F297D2C697355726C3A66756E';
wwv_flow_api.g_varchar2_table(18) := '6374696F6E2874297B72657475726E20746869732E726567657828742C2F28687474707C6674707C6874747073293A5C2F5C2F5B5C772D5D2B285C2E5B5C772D5D2B292B285B5C772E2C403F5E3D2526616D703B3A5C2F7E2B232D5D2A5B5C77403F5E3D';
wwv_flow_api.g_varchar2_table(19) := '2526616D703B5C2F7E2B232D5D293F2F297D2C6973446174653A66756E6374696F6E28742C73297B76617220653D52656745787028225E28335B30315D7C5B31325D5B302D395D7C303F5B312D395D292F28315B302D325D7C303F5B312D395D292F283F';
wwv_flow_api.g_varchar2_table(20) := '3A5B302D395D7B327D293F5B302D395D7B327D2422292C693D746869732E7574696C2E636F6E766572744461746528742C73293B696628692E6D61746368286529297B76617220613D692E73706C697428222F22292C6E3D7061727365496E7428615B32';
wwv_flow_api.g_varchar2_table(21) := '5D292C723D7061727365496E7428615B315D2C3130292C6C3D7061727365496E7428615B305D2C3130292C6F3D6E65772044617465286E2C722D312C6C293B6966286F2E6765744D6F6E746828292B313D3D3D7226266F2E6765744461746528293D3D3D';
wwv_flow_api.g_varchar2_table(22) := '6C26266F2E67657446756C6C5965617228293D3D3D6E2972657475726E21307D72657475726E20746869732E6973456D7074792874297D2C6D696E4C656E6774683A66756E6374696F6E28742C73297B72657475726E20742E6C656E6774683E3D737C7C';
wwv_flow_api.g_varchar2_table(23) := '746869732E6973456D7074792874297D2C6D61784C656E6774683A66756E6374696F6E28742C73297B72657475726E20733E3D742E6C656E6774687C7C746869732E6973456D7074792874297D2C72616E67654C656E6774683A66756E6374696F6E2874';
wwv_flow_api.g_varchar2_table(24) := '2C732C65297B72657475726E20746869732E6D696E4C656E67746828742C73292626746869732E6D61784C656E67746828742C65297C7C746869732E6973456D7074792874297D2C6D696E4E756D6265723A66756E6374696F6E28742C732C65297B7265';
wwv_flow_api.g_varchar2_table(25) := '7475726E21746869732E6973456D707479287429262621746869732E6973456D7074792873292626746869732E69734E756D62657228742C65292626746869732E69734E756D62657228732C65293F743E3D733A21307D2C6D61784E756D6265723A6675';
wwv_flow_api.g_varchar2_table(26) := '6E6374696F6E28742C732C65297B72657475726E21746869732E6973456D707479287429262621746869732E6973456D7074792873292626746869732E69734E756D62657228742C65292626746869732E69734E756D62657228732C65293F733E3D743A';
wwv_flow_api.g_varchar2_table(27) := '21307D2C72616E67654E756D6265723A66756E6374696F6E28742C732C652C69297B72657475726E20746869732E6973456D7074792874297C7C746869732E6973456D7074792873297C7C746869732E6973456D7074792865297C7C2128746869732E69';
wwv_flow_api.g_varchar2_table(28) := '734E756D62657228742C69292626746869732E69734E756D62657228732C69292626746869732E69734E756D62657228652C6929297C7C733E653F21303A746869732E6D696E4E756D62657228742C732C69292626746869732E6D61784E756D62657228';
wwv_flow_api.g_varchar2_table(29) := '742C652C69297D2C6D696E436865636B3A66756E6374696F6E28742C732C65297B76617220693D242874292E66696C74657228223A636865636B656422292E6C656E6774683B72657475726E20653F746869732E6D696E4E756D62657228692C732C6E75';
wwv_flow_api.g_varchar2_table(30) := '6C6C297C7C693D3D3D303A746869732E6D696E4E756D62657228692C732C6E756C6C297D2C6D6178436865636B3A66756E6374696F6E28742C73297B76617220653D242874292E66696C74657228223A636865636B656422292E6C656E6774683B726574';
wwv_flow_api.g_varchar2_table(31) := '75726E20746869732E6D61784E756D62657228652C732C6E756C6C297C7C653D3D3D307D2C72616E6765436865636B3A66756E6374696F6E28742C732C65297B76617220693D242874292E66696C74657228223A636865636B656422292E6C656E677468';
wwv_flow_api.g_varchar2_table(32) := '3B72657475726E20746869732E72616E67654E756D62657228692C732C652C6E756C6C297C7C693D3D3D307D2C6D696E446174653A66756E6374696F6E28742C732C65297B76617220693D6E657720446174652C613D6E657720446174653B7265747572';
wwv_flow_api.g_varchar2_table(33) := '6E21746869732E6973456D707479287429262621746869732E6973456D7074792873292626746869732E69734461746528742C65292626746869732E69734461746528732C65293F28693D746869732E7574696C2E6765744461746546726F6D53747269';
wwv_flow_api.g_varchar2_table(34) := '6E6728746869732E7574696C2E636F6E766572744461746528742C6529292C613D746869732E7574696C2E6765744461746546726F6D537472696E6728746869732E7574696C2E636F6E766572744461746528732C6529292C693E3D61293A21307D2C6D';
wwv_flow_api.g_varchar2_table(35) := '6178446174653A66756E6374696F6E28742C732C65297B76617220693D6E657720446174652C613D6E657720446174653B72657475726E21746869732E6973456D707479287429262621746869732E6973456D7074792873292626746869732E69734461';
wwv_flow_api.g_varchar2_table(36) := '746528742C65292626746869732E69734461746528732C65293F28693D746869732E7574696C2E6765744461746546726F6D537472696E6728746869732E7574696C2E636F6E766572744461746528742C6529292C613D746869732E7574696C2E676574';
wwv_flow_api.g_varchar2_table(37) := '4461746546726F6D537472696E6728746869732E7574696C2E636F6E766572744461746528732C6529292C613E3D69293A21307D2C72616E6765446174653A66756E6374696F6E28742C732C652C69297B76617220613D6E657720446174652C6E3D6E65';
wwv_flow_api.g_varchar2_table(38) := '7720446174652C723D6E657720446174653B72657475726E20746869732E6973456D7074792874297C7C746869732E6973456D7074792873297C7C746869732E6973456D7074792865297C7C2128746869732E69734461746528742C6929262674686973';
wwv_flow_api.g_varchar2_table(39) := '2E69734461746528732C69292626746869732E69734461746528652C6929297C7C28613D746869732E7574696C2E6765744461746546726F6D537472696E6728746869732E7574696C2E636F6E766572744461746528742C6929292C6E3D746869732E75';
wwv_flow_api.g_varchar2_table(40) := '74696C2E6765744461746546726F6D537472696E6728746869732E7574696C2E636F6E766572744461746528732C6929292C723D746869732E7574696C2E6765744461746546726F6D537472696E6728746869732E7574696C2E636F6E76657274446174';
wwv_flow_api.g_varchar2_table(41) := '6528652C6929292C6E3E72293F21303A613E3D6E2626723E3D617D7D2C66756E6374696F6E28242C7574696C2C76616C696461746F7273297B2275736520737472696374223B242E666E2E616C763D66756E6374696F6E286D6574686F642C6F7074696F';
wwv_flow_api.g_varchar2_table(42) := '6E73297B66756E6374696F6E20726573746F7265506C7567696E53657474696E67732874297B76617220733D242874293B72657475726E20732E6461746128636F6E7374616E74732E706C7567696E496429213D3D766F696420303F28242E657874656E';
wwv_flow_api.g_varchar2_table(43) := '642873657474696E67732C732E6461746128636F6E7374616E74732E706C7567696E496429292C2130293A21317D66756E6374696F6E20657874656E6453657474696E67732874297B742626242E657874656E642873657474696E67732C74297D66756E';
wwv_flow_api.g_varchar2_table(44) := '6374696F6E2062696E6453657474696E677328742C73297B657874656E6453657474696E67732873292C242874292E6461746128636F6E7374616E74732E706C7567696E49642C73657474696E6773297D66756E6374696F6E20696E69742874297B7661';
wwv_flow_api.g_varchar2_table(45) := '7220733D242874292C653D2223222B732E617474722822696422292C693D242822626F647922292C613D73657474696E67732E74726967676572696E674576656E742B222E222B636F6E7374616E74732E706C7567696E5072656669782C6E3D22636861';
wwv_flow_api.g_varchar2_table(46) := '6E67652E222B636F6E7374616E74732E706C7567696E5072656669783B7377697463682873657474696E67732E76616C6964617465297B63617365226E6F74456D707479223A28732E686173436C61737328636F6E7374616E74732E6170657843686563';
wwv_flow_api.g_varchar2_table(47) := '6B626F78436C617373297C7C732E686173436C61737328636F6E7374616E74732E61706578526164696F436C617373297C7C732E686173436C61737328636F6E7374616E74732E6170657853687574746C65436C617373297C7C732E70726F7028227461';
wwv_flow_api.g_varchar2_table(48) := '674E616D6522293D3D3D2253454C454354227C7C732E6174747228227479706522293D3D3D2266696C65227C7C732E686173436C61737328636F6E7374616E74732E61706578446174657069636B6572436C6173732929262673657474696E67732E7472';
wwv_flow_api.g_varchar2_table(49) := '6967676572696E674576656E74213D3D226368616E676522262628613D612B2220222B6E292C692E64656C656761746528652C612C6973456D70747948616E646C6572293B627265616B3B63617365226974656D54797065223A73657474696E67732E69';
wwv_flow_api.g_varchar2_table(50) := '74656D547970653D3D3D226461746522262673657474696E67732E74726967676572696E674576656E74213D3D226368616E676522262628613D612B2220222B6E292C692E64656C656761746528652C612C6974656D5479706548616E646C6572293B62';
wwv_flow_api.g_varchar2_table(51) := '7265616B3B6361736522657175616C223A692E64656C656761746528652C612C6973457175616C48616E646C6572293B627265616B3B63617365227265676578223A692E64656C656761746528652C612C726567657848616E646C6572293B627265616B';
wwv_flow_api.g_varchar2_table(52) := '3B6361736522636861724C656E677468223A692E64656C656761746528652C612C636861724C656E67746848616E646C6572293B627265616B3B63617365226E756D62657253697A65223A692E64656C656761746528652C612C6E756D62657253697A65';
wwv_flow_api.g_varchar2_table(53) := '48616E646C6572293B627265616B3B6361736522646174654F72646572223A73657474696E67732E74726967676572696E674576656E74213D3D226368616E676522262628613D612B2220222B6E292C692E64656C656761746528652C612C646174654F';
wwv_flow_api.g_varchar2_table(54) := '7264657248616E646C6572293B627265616B3B6361736522746F74616C436865636B6564223A692E64656C656761746528652C6E2C746F74616C436865636B656448616E646C6572293B627265616B3B64656661756C743A7D72657475726E2061646456';
wwv_flow_api.g_varchar2_table(55) := '616C69646174696F6E4576656E7428732C61292C747D66756E6374696F6E2061646456616C69646174696F6E4576656E7428742C73297B76617220653D242874292C693D652E6461746128636F6E7374616E74732E76616C69646174696F6E4576656E74';
wwv_flow_api.g_varchar2_table(56) := '73292C613D21313B69213D3D766F696420303F28242E6561636828692E73706C697428222022292C66756E6374696F6E28742C65297B653D3D3D73262628613D2130297D292C617C7C652E6461746128636F6E7374616E74732E76616C69646174696F6E';
wwv_flow_api.g_varchar2_table(57) := '4576656E74732C692B2220222B7329293A652E6461746128636F6E7374616E74732E76616C69646174696F6E4576656E74732C73297D66756E6374696F6E206973456D70747948616E646C657228297B76617220742C733D7365744D7367287365747469';
wwv_flow_api.g_varchar2_table(58) := '6E67732E6572726F724D73672C2276616C756520726571756972656422293B616C6C6F7756616C69646174696F6E28746869732C636F6E7374616E74732E6E6F74456D707479436C61737329262628743D242874686973292E686173436C61737328636F';
wwv_flow_api.g_varchar2_table(59) := '6E7374616E74732E61706578436865636B626F78436C617373297C7C242874686973292E686173436C61737328636F6E7374616E74732E61706578526164696F436C617373293F2176616C696461746F72732E6D696E436865636B28242874686973292E';
wwv_flow_api.g_varchar2_table(60) := '66696E6428223A636865636B626F782C203A726164696F22292C312C2131293A242874686973292E686173436C61737328636F6E7374616E74732E6170657853687574746C65436C617373293F21242874686973292E66696E64282273656C6563742E73';
wwv_flow_api.g_varchar2_table(61) := '687574746C655F726967687422292E6368696C6472656E28292E6C656E6774683A242874686973292E70726F7028227461674E616D6522293D3D3D2253454C454354227C7C242874686973292E6174747228227479706522293D3D3D2266696C65223F76';
wwv_flow_api.g_varchar2_table(62) := '616C696461746F72732E6973456D70747928746869732E76616C7565293A73657474696E67732E616C6C6F77576869746573706163653F76616C696461746F72732E6973456D70747928746869732E76616C7565293A76616C696461746F72732E697345';
wwv_flow_api.g_varchar2_table(63) := '6D707479287574696C2E7472696D28746869732E76616C756529292C7426267574696C2E676574436F6E646974696F6E526573756C742873657474696E67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C742824287468';
wwv_flow_api.g_varchar2_table(64) := '6973292C636F6E7374616E74732E6E6F74456D707479436C6173732C223022292C73686F774D65737361676528746869732C7329293A2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E6E6F74456D7074';
wwv_flow_api.g_varchar2_table(65) := '79436C6173732C223122292C686964654D65737361676528746869732929297D66756E6374696F6E206973457175616C48616E646C657228297B76617220743D7365744D73672873657474696E67732E6572726F724D73672C2276616C75657320646F20';
wwv_flow_api.g_varchar2_table(66) := '6E6F7420657175616C22293B616C6C6F7756616C69646174696F6E28746869732C636F6E7374616E74732E657175616C436C61737329262676616C696461746F72732E6D696E4C656E67746828746869732E76616C75652C73657474696E67732E76616C';
wwv_flow_api.g_varchar2_table(67) := '69646174696F6E4D696E4C656E677468292626282176616C696461746F72732E6973457175616C28746869732E76616C75652C242873657474696E67732E657175616C292E76616C28292926267574696C2E676574436F6E646974696F6E526573756C74';
wwv_flow_api.g_varchar2_table(68) := '2873657474696E67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E657175616C436C6173732C223022292C73686F774D65737361676528746869732C7429293A286164';
wwv_flow_api.g_varchar2_table(69) := '6456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E657175616C436C6173732C223122292C686964654D65737361676528746869732929297D66756E6374696F6E20726567657848616E646C657228297B76617220';
wwv_flow_api.g_varchar2_table(70) := '743D7365744D73672873657474696E67732E6572726F724D73672C22696E76616C69642076616C756522293B616C6C6F7756616C69646174696F6E28746869732C636F6E7374616E74732E7265676578436C61737329262676616C696461746F72732E6D';
wwv_flow_api.g_varchar2_table(71) := '696E4C656E67746828746869732E76616C75652C73657474696E67732E76616C69646174696F6E4D696E4C656E677468292626282176616C696461746F72732E726567657828746869732E76616C75652C73657474696E67732E72656765782926267574';
wwv_flow_api.g_varchar2_table(72) := '696C2E676574436F6E646974696F6E526573756C742873657474696E67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E7265676578436C6173732C223022292C73686F';
wwv_flow_api.g_varchar2_table(73) := '774D65737361676528746869732C7429293A2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E7265676578436C6173732C223122292C686964654D65737361676528746869732929297D66756E6374696F';
wwv_flow_api.g_varchar2_table(74) := '6E206974656D5479706548616E646C657228297B76617220742C733B696628616C6C6F7756616C69646174696F6E28746869732C636F6E7374616E74732E6974656D54797065436C61737329262676616C696461746F72732E6D696E4C656E6774682874';
wwv_flow_api.g_varchar2_table(75) := '6869732E76616C75652C73657474696E67732E76616C69646174696F6E4D696E4C656E67746829297B7377697463682873657474696E67732E6974656D54797065297B6361736522616C7068616E756D65726963223A743D76616C696461746F72732E69';
wwv_flow_api.g_varchar2_table(76) := '73416C7068616E756D6572696328746869732E76616C7565292C733D7365744D73672873657474696E67732E6572726F724D73672C226E6F7420616E20616C7068616E756D657269632076616C756522293B627265616B3B63617365226E756D62657222';
wwv_flow_api.g_varchar2_table(77) := '3A743D76616C696461746F72732E69734E756D62657228746869732E76616C75652C73657474696E67732E6E756D6572696343686172616374657273292C733D7365744D73672873657474696E67732E6572726F724D73672C226E6F7420612076616C69';
wwv_flow_api.g_varchar2_table(78) := '64206E756D62657222293B627265616B3B63617365226469676974223A743D76616C696461746F72732E6973446967697428746869732E76616C7565292C733D7365744D73672873657474696E67732E6572726F724D73672C226E6F7420612076616C69';
wwv_flow_api.g_varchar2_table(79) := '6420646967697420636F6D62696E6174696F6E22293B627265616B3B6361736522656D61696C223A743D76616C696461746F72732E6973456D61696C28746869732E76616C7565292C733D7365744D73672873657474696E67732E6572726F724D73672C';
wwv_flow_api.g_varchar2_table(80) := '226E6F7420612076616C696420652D6D61696C206164647265737322293B627265616B3B636173652275726C223A743D76616C696461746F72732E697355726C28746869732E76616C7565292C733D7365744D73672873657474696E67732E6572726F72';
wwv_flow_api.g_varchar2_table(81) := '4D73672C226E6F7420612076616C69642055524C22293B627265616B3B636173652264617465223A743D76616C696461746F72732E69734461746528746869732E76616C75652C73657474696E67732E64617465466F726D6174292C733D7265706C6163';
wwv_flow_api.g_varchar2_table(82) := '654D736756617273287365744D73672873657474696E67732E6572726F724D73672C226E6F7420612076616C69642064617465202826312922292C73657474696E67732E64617465466F726D6174293B627265616B3B64656661756C743A7D2174262675';
wwv_flow_api.g_varchar2_table(83) := '74696C2E676574436F6E646974696F6E526573756C742873657474696E67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E6974656D54797065436C6173732C22302229';
wwv_flow_api.g_varchar2_table(84) := '2C73686F774D65737361676528746869732C7329293A2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E6974656D54797065436C6173732C223122292C686964654D657373616765287468697329297D7D';
wwv_flow_api.g_varchar2_table(85) := '66756E6374696F6E20636861724C656E67746848616E646C657228297B76617220742C733B616C6C6F7756616C69646174696F6E28746869732C636F6E7374616E74732E636861724C656E677468436C61737329262676616C696461746F72732E6D696E';
wwv_flow_api.g_varchar2_table(86) := '4C656E67746828746869732E76616C75652C73657474696E67732E76616C69646174696F6E4D696E4C656E6774682926262876616C696461746F72732E6973456D7074792873657474696E67732E6D6178293F28743D76616C696461746F72732E6D696E';
wwv_flow_api.g_varchar2_table(87) := '4C656E67746828746869732E76616C75652C73657474696E67732E6D696E292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C2276616C7565206C656E67746820746F6F2073686F7274202D20';
wwv_flow_api.g_varchar2_table(88) := '6D696E2E20263122292C73657474696E67732E6D696E29293A76616C696461746F72732E6973456D7074792873657474696E67732E6D696E293F28743D76616C696461746F72732E6D61784C656E67746828746869732E76616C75652C73657474696E67';
wwv_flow_api.g_varchar2_table(89) := '732E6D6178292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C2276616C7565206C656E67746820746F6F206C6F6E67202D206D61782E20263122292C73657474696E67732E6D617829293A28';
wwv_flow_api.g_varchar2_table(90) := '743D76616C696461746F72732E72616E67654C656E67746828746869732E76616C75652C73657474696E67732E6D696E2C73657474696E67732E6D6178292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F';
wwv_flow_api.g_varchar2_table(91) := '724D73672C22696E76616C69642076616C7565206C656E677468202D206265747765656E20263120616E64202632206F6E6C7922292C73657474696E67732E6D696E2C73657474696E67732E6D617829292C217426267574696C2E676574436F6E646974';
wwv_flow_api.g_varchar2_table(92) := '696F6E526573756C742873657474696E67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E636861724C656E677468436C6173732C223022292C73686F774D6573736167';
wwv_flow_api.g_varchar2_table(93) := '6528746869732C7329293A2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E636861724C656E677468436C6173732C223122292C686964654D65737361676528746869732929297D66756E6374696F6E20';
wwv_flow_api.g_varchar2_table(94) := '6E756D62657253697A6548616E646C657228297B76617220742C732C653D7574696C2E6765744E756D62657246726F6D537472696E6728746869732E76616C7565292C693D7574696C2E6765744E756D62657246726F6D537472696E67287574696C2E67';
wwv_flow_api.g_varchar2_table(95) := '6574506167654974656D56616C75652873657474696E67732E6D696E29292C613D7574696C2E6765744E756D62657246726F6D537472696E67287574696C2E676574506167654974656D56616C75652873657474696E67732E6D617829293B616C6C6F77';
wwv_flow_api.g_varchar2_table(96) := '56616C69646174696F6E28746869732C636F6E7374616E74732E6E756D62657253697A65436C61737329262676616C696461746F72732E6D696E4C656E67746828746869732E76616C75652C73657474696E67732E76616C69646174696F6E4D696E4C65';
wwv_flow_api.g_varchar2_table(97) := '6E6774682926262876616C696461746F72732E6973456D7074792873657474696E67732E6D6178293F28743D76616C696461746F72732E6D696E4E756D62657228652C692C73657474696E67732E6E756D6572696343686172616374657273292C733D72';
wwv_flow_api.g_varchar2_table(98) := '65706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C226E756D62657220746F6F20736D616C6C202D206D696E2E20263122292C6929293A76616C696461746F72732E6973456D7074792873657474696E6773';
wwv_flow_api.g_varchar2_table(99) := '2E6D696E293F28743D76616C696461746F72732E6D61784E756D62657228652C612C73657474696E67732E6E756D6572696343686172616374657273292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F72';
wwv_flow_api.g_varchar2_table(100) := '4D73672C226E756D62657220746F6F206C61726765202D206D61782E20263122292C6129293A28743D76616C696461746F72732E72616E67654E756D62657228652C692C612C73657474696E67732E6E756D6572696343686172616374657273292C733D';
wwv_flow_api.g_varchar2_table(101) := '7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C22696E76616C6964206E756D6265722073697A65202D206265747765656E20263120616E64202632206F6E6C7922292C692C6129292C217426267574';
wwv_flow_api.g_varchar2_table(102) := '696C2E676574436F6E646974696F6E526573756C742873657474696E67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E6E756D62657253697A65436C6173732C223022';
wwv_flow_api.g_varchar2_table(103) := '292C73686F774D65737361676528746869732C7329293A2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E6E756D62657253697A65436C6173732C223122292C686964654D657373616765287468697329';
wwv_flow_api.g_varchar2_table(104) := '29297D66756E6374696F6E20746F74616C436865636B656448616E646C657228297B76617220742C732C653D242874686973292E66696E6428223A636865636B626F782C203A726164696F22293B616C6C6F7756616C69646174696F6E28746869732C63';
wwv_flow_api.g_varchar2_table(105) := '6F6E7374616E74732E746F74616C436865636B6564436C6173732926262876616C696461746F72732E6973456D7074792873657474696E67732E6D6178293F28743D76616C696461746F72732E6D696E436865636B28652C73657474696E67732E6D696E';
wwv_flow_api.g_varchar2_table(106) := '2C2130292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C22706C656173652073656C656374206174206C656173742026312063686F69636528732922292C73657474696E67732E6D696E2929';
wwv_flow_api.g_varchar2_table(107) := '3A76616C696461746F72732E6973456D7074792873657474696E67732E6D696E293F28743D76616C696461746F72732E6D6178436865636B28652C73657474696E67732E6D6178292C733D7265706C6163654D736756617273287365744D736728736574';
wwv_flow_api.g_varchar2_table(108) := '74696E67732E6572726F724D73672C22706C656173652073656C656374206E6F206D6F7265207468616E2026312063686F69636528732922292C73657474696E67732E6D617829293A28743D76616C696461746F72732E72616E6765436865636B28652C';
wwv_flow_api.g_varchar2_table(109) := '73657474696E67732E6D696E2C73657474696E67732E6D6178292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C22706C656173652073656C656374206265747765656E20263120616E642026';
wwv_flow_api.g_varchar2_table(110) := '322063686F69636528732922292C73657474696E67732E6D696E2C73657474696E67732E6D617829292C217426267574696C2E676574436F6E646974696F6E526573756C742873657474696E67732E636F6E646974696F6E293F2861646456616C696461';
wwv_flow_api.g_varchar2_table(111) := '74696F6E526573756C7428242874686973292C636F6E7374616E74732E746F74616C436865636B6564436C6173732C223022292C73686F774D65737361676528746869732C7329293A2861646456616C69646174696F6E526573756C7428242874686973';
wwv_flow_api.g_varchar2_table(112) := '292C636F6E7374616E74732E746F74616C436865636B6564436C6173732C223122292C686964654D65737361676528746869732929297D66756E6374696F6E20646174654F7264657248616E646C657228297B76617220742C732C653D7574696C2E6765';
wwv_flow_api.g_varchar2_table(113) := '74506167654974656D56616C75652873657474696E67732E6D696E292C693D7574696C2E676574506167654974656D56616C75652873657474696E67732E6D6178293B616C6C6F7756616C69646174696F6E28746869732C636F6E7374616E74732E6461';
wwv_flow_api.g_varchar2_table(114) := '74654F72646572436C61737329262676616C696461746F72732E6D696E4C656E67746828746869732E76616C75652C73657474696E67732E76616C69646174696F6E4D696E4C656E6774682926262876616C696461746F72732E6973456D707479287365';
wwv_flow_api.g_varchar2_table(115) := '7474696E67732E6D6178293F28743D76616C696461746F72732E6D696E4461746528746869732E76616C75652C652C73657474696E67732E64617465466F726D6174292C733D7265706C6163654D736756617273287365744D73672873657474696E6773';
wwv_flow_api.g_varchar2_table(116) := '2E6572726F724D73672C227468697320646174652073686F756C64206C696520616674657220263122292C6529293A76616C696461746F72732E6973456D7074792873657474696E67732E6D696E293F28743D76616C696461746F72732E6D6178446174';
wwv_flow_api.g_varchar2_table(117) := '6528746869732E76616C75652C692C73657474696E67732E64617465466F726D6174292C733D7265706C6163654D736756617273287365744D73672873657474696E67732E6572726F724D73672C227468697320646174652073686F756C64206C696520';
wwv_flow_api.g_varchar2_table(118) := '6265666F726520263122292C6929293A28743D76616C696461746F72732E72616E67654461746528746869732E76616C75652C652C692C73657474696E67732E64617465466F726D6174292C733D7265706C6163654D736756617273287365744D736728';
wwv_flow_api.g_varchar2_table(119) := '73657474696E67732E6572726F724D73672C227468697320646174652073686F756C64206C6965206265747765656E20263120616E6420263222292C652C6929292C217426267574696C2E676574436F6E646974696F6E526573756C742873657474696E';
wwv_flow_api.g_varchar2_table(120) := '67732E636F6E646974696F6E293F2861646456616C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E646174654F72646572436C6173732C223022292C73686F774D65737361676528746869732C7329293A286164645661';
wwv_flow_api.g_varchar2_table(121) := '6C69646174696F6E526573756C7428242874686973292C636F6E7374616E74732E646174654F72646572436C6173732C223122292C686964654D65737361676528746869732929297D66756E6374696F6E2073686F774D65737361676528742C73297B76';
wwv_flow_api.g_varchar2_table(122) := '617220653D242874292C693D273C7370616E20636C6173733D22272B636F6E7374616E74732E6572726F724D7367436C6173732B2220222B742E69642B27223E272B732B223C2F7370616E3E223B696628652E686173436C61737328636F6E7374616E74';
wwv_flow_api.g_varchar2_table(123) := '732E6974656D4572726F72436C61737329297B76617220613D2428227370616E2E222B636F6E7374616E74732E6572726F724D7367436C6173732B222E222B742E6964292C6E3D612E696E64657828292C723D652E696E64657828293B723E6E26267365';
wwv_flow_api.g_varchar2_table(124) := '7474696E67732E6572726F724D73674C6F636174696F6E3D3D3D226265666F7265223F612E746578742873293A723E6E262673657474696E67732E6572726F724D73674C6F636174696F6E3D3D3D226166746572223F28612E72656D6F766528292C652E';
wwv_flow_api.g_varchar2_table(125) := '6166746572286929293A6E3E72262673657474696E67732E6572726F724D73674C6F636174696F6E3D3D3D226166746572223F612E746578742873293A28612E72656D6F766528292C652E6265666F7265286929297D656C736520652E616464436C6173';
wwv_flow_api.g_varchar2_table(126) := '7328636F6E7374616E74732E6974656D4572726F72436C617373292C2428225B666F723D222B742E69642B225D22292E616464436C61737328636F6E7374616E74732E6C6162656C4572726F72436C617373292C73657474696E67732E6572726F724D73';
wwv_flow_api.g_varchar2_table(127) := '674C6F636174696F6E3D3D3D226265666F7265223F652E6265666F72652869293A652E61667465722869297D66756E6374696F6E20686964654D6573736167652874297B76617220733D242874293B732E686173436C61737328636F6E7374616E74732E';
wwv_flow_api.g_varchar2_table(128) := '6974656D4572726F72436C61737329262628732E72656D6F7665436C61737328636F6E7374616E74732E6974656D4572726F72436C617373292C2428225B666F723D222B742E69642B225D22292E72656D6F7665436C61737328636F6E7374616E74732E';
wwv_flow_api.g_varchar2_table(129) := '6C6162656C4572726F72436C617373292C2428227370616E2E222B636F6E7374616E74732E6572726F724D7367436C6173732B222E222B742E6964292E72656D6F76652829297D66756E6374696F6E207365744D736728742C73297B72657475726E2076';
wwv_flow_api.g_varchar2_table(130) := '616C696461746F72732E6973456D7074792874293F733A747D66756E6374696F6E207265706C6163654D7367566172732874297B666F722876617220733D742C653D312C693D617267756D656E74732E6C656E6774683B693E653B652B2B29733D732E72';
wwv_flow_api.g_varchar2_table(131) := '65706C616365282226222B652C617267756D656E74735B655D293B72657475726E20737D66756E6374696F6E20616C6C6F7756616C69646174696F6E28742C73297B76617220653D21302C693D242874292C613D692E6461746128636F6E7374616E7473';
wwv_flow_api.g_varchar2_table(132) := '2E76616C69646174696F6E526573756C7473293B72657475726E2061213D3D766F69642030262628612E696E6465784F662873293D3D3D2D313F242E6561636828612E73706C697428222022292C66756E6374696F6E28742C73297B653D3D3D21302626';
wwv_flow_api.g_varchar2_table(133) := '732E736C696365282D3129213D3D223122262628653D2131297D293A692E72656D6F76654461746128636F6E7374616E74732E76616C69646174696F6E526573756C747329292C657D66756E6374696F6E2061646456616C69646174696F6E526573756C';
wwv_flow_api.g_varchar2_table(134) := '7428742C732C65297B76617220693D242874292C613D692E6461746128636F6E7374616E74732E76616C69646174696F6E526573756C7473292C6E3D21312C723D732B223A222B653B61213D3D766F696420303F28242E6561636828612E73706C697428';
wwv_flow_api.g_varchar2_table(135) := '222022292C66756E6374696F6E28742C72297B696628722E73756273747228302C722E696E6465784F6628223A2229293D3D3D73297B766172206C3D612E696E6465784F662872292B722E6C656E6774682D313B613D7574696C2E7265706C6163654368';
wwv_flow_api.g_varchar2_table(136) := '6172496E537472696E6728612C6C2C65292C692E6461746128636F6E7374616E74732E76616C69646174696F6E526573756C74732C61292C6E3D21307D7D292C6E7C7C692E6461746128636F6E7374616E74732E76616C69646174696F6E526573756C74';
wwv_flow_api.g_varchar2_table(137) := '732C612B2220222B7229293A692E6461746128636F6E7374616E74732E76616C69646174696F6E526573756C74732C72292C653D3D3D2231223F2873657474696E67732E6974656D537563636573732E63616C6C2874686973292C692E74726967676572';
wwv_flow_api.g_varchar2_table(138) := '2822616C766974656D737563636573732229293A2873657474696E67732E6974656D4661696C2E63616C6C2874686973292C692E747269676765722822616C766974656D6661696C2229297D66756E6374696F6E20666F726D4861734572726F72732874';
wwv_flow_api.g_varchar2_table(139) := '297B76617220732C653D21312C693D242874292E66696E642822696E7075742C2074657874617265612C2073656C6563742C206669656C6473657422293B72657475726E20242E6561636828692C66756E6374696F6E28297B733D242874686973292C73';
wwv_flow_api.g_varchar2_table(140) := '2E6461746128636F6E7374616E74732E76616C69646174696F6E4576656E747329213D3D766F696420302626242E6561636828732E6461746128636F6E7374616E74732E76616C69646174696F6E4576656E7473292E73706C697428222022292C66756E';
wwv_flow_api.g_varchar2_table(141) := '6374696F6E28742C65297B732E747269676765722865297D297D292C692E686173436C61737328636F6E7374616E74732E6974656D4572726F72436C61737329262628242869292E66696C74657228222E222B636F6E7374616E74732E6974656D457272';
wwv_flow_api.g_varchar2_table(142) := '6F72436C617373292E666972737428292E666F63757328292C653D2130292C657D66756E6374696F6E2076616C6964617465466F726D4265666F72655375626D69742870466972696E67456C656D297B76617220666972696E67456C656D3D2428704669';
wwv_flow_api.g_varchar2_table(143) := '72696E67456C656D292C6F726967436C69636B4576656E742C6669784572726F72734D73673D7365744D73672873657474696E67732E6572726F724D73672C22506C656173652066697820616C6C206572726F7273206265666F726520636F6E74696E75';
wwv_flow_api.g_varchar2_table(144) := '696E6722292C626F6479456C656D3D242822626F647922292C6D657373616765426F7849643D2223616C762D6D73672D626F78222C6D7367426F783D273C64697620636C6173733D22616C762D616C6572742D6D7367223E3C6120687265663D22232220';
wwv_flow_api.g_varchar2_table(145) := '636C6173733D22616C762D636C6F736522206F6E636C69636B3D2224285C27272B6D657373616765426F7849642B2227292E6368696C6472656E28292E666164654F757428293B72657475726E2066616C73653B5C223E783C2F613E3C703E222B666978';
wwv_flow_api.g_varchar2_table(146) := '4572726F72734D73672B223C2F703E3C2F6469763E223B666972696E67456C656D2E6C656E677468262628666972696E67456C656D2E70726F7028227461674E616D6522293D3D3D2241223F286F726967436C69636B4576656E743D666972696E67456C';
wwv_flow_api.g_varchar2_table(147) := '656D2E6174747228226872656622292C666972696E67456C656D2E6461746128636F6E7374616E74732E6F726967436C69636B4576656E742C6F726967436C69636B4576656E74292C666972696E67456C656D2E72656D6F766541747472282268726566';
wwv_flow_api.g_varchar2_table(148) := '2229293A286F726967436C69636B4576656E743D666972696E67456C656D2E6174747228226F6E636C69636B22292C666972696E67456C656D2E6461746128636F6E7374616E74732E6F726967436C69636B4576656E742C6F726967436C69636B457665';
wwv_flow_api.g_varchar2_table(149) := '6E74292C666972696E67456C656D2E72656D6F76654174747228226F6E636C69636B2229292C626F6479456C656D2E64656C6567617465282223222B666972696E67456C656D2E617474722822696422292C22636C69636B222C66756E6374696F6E2829';
wwv_flow_api.g_varchar2_table(150) := '7B666F726D4861734572726F72732873657474696E67732E666F726D73546F5375626D6974293F2873657474696E67732E666F726D4661696C2E63616C6C2874686973292C666972696E67456C656D2E747269676765722822616C76666F726D6661696C';
wwv_flow_api.g_varchar2_table(151) := '22292C24286D657373616765426F784964292E6C656E6774687C7C626F6479456C656D2E617070656E6428273C6469762069643D22272B6D657373616765426F7849642E737562737472696E672831292B27223E3C2F6469763E27292C24286D65737361';
wwv_flow_api.g_varchar2_table(152) := '6765426F784964292E68746D6C286D7367426F7829293A2873657474696E67732E666F726D537563636573732E63616C6C2874686973292C666972696E67456C656D2E747269676765722822616C76666F726D7375636365737322292C6576616C282428';
wwv_flow_api.g_varchar2_table(153) := '74686973292E6461746128636F6E7374616E74732E6F726967436C69636B4576656E742929297D29297D76617220636F6E7374616E74733D7B706C7567696E49643A2262652E6374622E6A712E616C76222C706C7567696E4E616D653A2241504558204C';
wwv_flow_api.g_varchar2_table(154) := '6976652056616C69646174696F6E222C706C7567696E5072656669783A22616C76222C61706578436865636B626F78436C6173733A22636865636B626F785F67726F7570222C61706578526164696F436C6173733A22726164696F5F67726F7570222C61';
wwv_flow_api.g_varchar2_table(155) := '70657853687574746C65436C6173733A2273687574746C65222C61706578446174657069636B6572436C6173733A22646174657069636B6572227D3B242E657874656E6428636F6E7374616E74732C7B76616C69646174696F6E4576656E74733A636F6E';
wwv_flow_api.g_varchar2_table(156) := '7374616E74732E706C7567696E5072656669782B222D76616C4576656E7473222C76616C69646174696F6E526573756C74733A636F6E7374616E74732E706C7567696E5072656669782B222D76616C526573756C7473222C6F726967436C69636B457665';
wwv_flow_api.g_varchar2_table(157) := '6E743A636F6E7374616E74732E706C7567696E5072656669782B222D6F726967436C69636B4576656E74222C6E6F74456D707479436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D6E6F74456D707479222C6974656D547970';
wwv_flow_api.g_varchar2_table(158) := '65436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D6974656D54797065222C657175616C436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D657175616C222C7265676578436C6173733A636F6E73';
wwv_flow_api.g_varchar2_table(159) := '74616E74732E706C7567696E5072656669782B222D7265676578222C636861724C656E677468436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D636861724C656E677468222C6E756D62657253697A65436C6173733A636F6E';
wwv_flow_api.g_varchar2_table(160) := '7374616E74732E706C7567696E5072656669782B222D6E756D62657253697A65222C646174654F72646572436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D646174654F72646572222C746F74616C436865636B6564436C61';
wwv_flow_api.g_varchar2_table(161) := '73733A636F6E7374616E74732E706C7567696E5072656669782B222D746F74616C436865636B6564222C6974656D4572726F72436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D6974656D2D6572726F72222C6C6162656C45';
wwv_flow_api.g_varchar2_table(162) := '72726F72436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D6C6162656C2D6572726F72222C6572726F724D7367436C6173733A636F6E7374616E74732E706C7567696E5072656669782B222D6572726F722D6D7367227D293B';
wwv_flow_api.g_varchar2_table(163) := '7661722073657474696E67733D7B76616C69646174653A226E6F74456D707479222C74726967676572696E674576656E743A22626C7572222C636F6E646974696F6E3A22222C76616C69646174696F6E4D696E4C656E6774683A302C6572726F724D7367';
wwv_flow_api.g_varchar2_table(164) := '3A22222C6572726F724D73674C6F636174696F6E3A226166746572222C616C6C6F77576869746573706163653A21302C6974656D547970653A22222C64617465466F726D61743A22222C6E756D65726963436861726163746572733A22222C6D696E3A22';
wwv_flow_api.g_varchar2_table(165) := '222C6D61783A22222C657175616C3A22222C72656765783A22222C666F726D73546F5375626D69743A22222C6974656D537563636573733A66756E6374696F6E28297B7D2C6974656D4661696C3A66756E6374696F6E28297B7D2C666F726D5375636365';
wwv_flow_api.g_varchar2_table(166) := '73733A66756E6374696F6E28297B7D2C666F726D4661696C3A66756E6374696F6E28297B7D7D2C6D6574686F64733D7B696E69743A66756E6374696F6E2874297B76617220733D242874686973293B62696E6453657474696E677328732C74292C696E69';
wwv_flow_api.g_varchar2_table(167) := '742873297D2C76616C6964617465466F726D3A66756E6374696F6E2874297B76617220733D242874686973293B62696E6453657474696E677328732C74292C76616C6964617465466F726D4265666F72655375626D69742873297D2C72656D6F76653A66';
wwv_flow_api.g_varchar2_table(168) := '756E6374696F6E28297B76617220743D242874686973293B726573746F7265506C7567696E53657474696E677328742926266D6574686F6428297D7D3B72657475726E20242874686973292E656163682866756E6374696F6E28297B72657475726E206D';
wwv_flow_api.g_varchar2_table(169) := '6574686F64735B6D6574686F645D3F6D6574686F64735B6D6574686F645D2E63616C6C28242874686973292C6F7074696F6E73293A747970656F66206D6574686F64213D226F626A6563742226266D6574686F643F28242E6572726F7228224D6574686F';
wwv_flow_api.g_varchar2_table(170) := '6420222B6D6574686F642B2220646F6573206E6F74206578697374206F6E206A51756572792E20222B636F6E7374616E74732E706C7567696E4E616D65292C2131293A6D6574686F64732E696E69742E63616C6C28242874686973292C6D6574686F6429';
wwv_flow_api.g_varchar2_table(171) := '7D297D7D286A51756572792C616C762E7574696C2C616C762E76616C696461746F727329';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1375126291999115900)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_file_name=>'jquery.alv.js'
,p_mime_type=>'application/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2A20696E6C696E65202A2F0A696E7075742E616C762D6974656D2D6572726F722C0A74657874617265612E616C762D6974656D2D6572726F722C0A73656C6563742E616C762D6974656D2D6572726F72207B0A20202020626F726465723A2031707820';
wwv_flow_api.g_varchar2_table(2) := '736F6C696420236239346134383B0A202020206261636B67726F756E642D636F6C6F723A20236635656165613B0A7D0A0A2E616C762D6C6162656C2D6572726F72207B0A20202020636F6C6F723A20236239346134383B0A7D0A0A2E616C762D6572726F';
wwv_flow_api.g_varchar2_table(3) := '722D6D7367207B0A20202020646973706C61793A20626C6F636B3B0A20202020636F6C6F723A20236239346134383B0A20202020666F6E742D73697A653A20313370783B0A202020206C696E652D6865696768743A20323070783B0A7D0A0A2F2A206E6F';
wwv_flow_api.g_varchar2_table(4) := '74696669636174696F6E202A2F0A23616C762D6D73672D626F78207B0A20202020706F736974696F6E3A2066697865643B0A20202020746F703A20303B0A202020206C6566743A203530253B0A2020202077696474683A2036303070783B0A202020206D';
wwv_flow_api.g_varchar2_table(5) := '617267696E2D6C6566743A202D33303070783B0A202020206D696E2D6865696768743A20303B0A20202020626F726465723A20303B0A202020207A2D696E6465783A20393939393B0A7D0A0A2E616C762D616C6572742D6D7367207B0A20202020626163';
wwv_flow_api.g_varchar2_table(6) := '6B67726F756E642D636F6C6F723A20236632646564653B0A20202020636F6C6F723A20236239346134383B0A20202020746578742D736861646F773A20302031707820302072676261283235352C203235352C203235352C20302E35293B0A2020202062';
wwv_flow_api.g_varchar2_table(7) := '6F726465723A2031707820736F6C696420236565643364373B0A2020202070616464696E673A20313470782033357078203134707820313470783B0A202020202D7765626B69742D626F726465722D7261646975733A2030203020347078203470783B0A';
wwv_flow_api.g_varchar2_table(8) := '202020202D6D6F7A2D626F726465722D7261646975733A2030203020347078203470783B0A20202020626F726465722D7261646975733A2030203020347078203470783B0A20202020626F782D736861646F773A20302032707820357078207267626128';
wwv_flow_api.g_varchar2_table(9) := '302C20302C20302C20302E31293B0A7D0A0A2E616C762D636C6F7365207B0A20202020666C6F61743A2072696768743B0A20202020706F736974696F6E3A2072656C61746976653B0A20202020746F703A202D3270783B0A2020202072696768743A202D';
wwv_flow_api.g_varchar2_table(10) := '323170783B0A20202020666F6E742D73697A653A20313670783B0A20202020666F6E742D7765696768743A20626F6C643B0A202020206C696E652D6865696768743A20323070783B0A20202020636F6C6F723A20233030303030303B0A20202020746578';
wwv_flow_api.g_varchar2_table(11) := '742D6465636F726174696F6E3A206E6F6E653B0A20202020746578742D736861646F773A203020317078203020236666666666663B0A202020206F7061636974793A202E323B0A2020202066696C7465723A20616C706861286F7061636974793D323029';
wwv_flow_api.g_varchar2_table(12) := '3B0A7D0A0A2E616C762D636C6F73653A686F766572207B0A20202020636F6C6F723A20233030303030303B0A20202020746578742D6465636F726174696F6E3A206E6F6E653B0A202020206F7061636974793A202E353B0A2020202066696C7465723A20';
wwv_flow_api.g_varchar2_table(13) := '616C706861286F7061636974793D3530293B0A7D0A0A2E616C762D616C6572742D6D73672070207B0A20202020666F6E742D73697A653A20313670783B0A20202020666F6E742D7765696768743A20626F6C643B0A202020206C696E652D686569676874';
wwv_flow_api.g_varchar2_table(14) := '3A20323070783B0A202020206D617267696E3A20303B0A7D0A0A406D6564696120286D61782D77696474683A20393739707829207B0A2020202023616C762D6D73672D626F78207B0A202020202020202077696474683A2034303070783B0A2020202020';
wwv_flow_api.g_varchar2_table(15) := '2020206D617267696E2D6C6566743A202D32303070783B0A202020207D0A7D';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(1392280202122380004)
,p_plugin_id=>wwv_flow_api.id(1390118139711869782)
,p_file_name=>'style.alv.css'
,p_mime_type=>'text/css'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/com_oracle_apex_timer
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(5374798709419598249)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'COM.ORACLE.APEX.TIMER'
,p_display_name=>'Timer'
,p_category=>'INIT'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','COM.ORACLE.APEX.TIMER'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'function render_timer (',
'    p_dynamic_action  in apex_plugin.t_dynamic_action,',
'    p_plugin          in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_action     varchar2(10) := nvl(p_dynamic_action.attribute_01, ''add'');',
'    l_timer_name varchar2(20) := substr(nvl(case l_action',
'                                              when ''add''    then p_dynamic_action.attribute_02',
'                                              when ''remove'' then p_dynamic_action.attribute_03',
'                                            end, p_dynamic_action.id), 1, 20);',
'    l_expire_in  number       := nvl(p_dynamic_action.attribute_04, 1000);',
'    l_occurrence varchar2(10) := nvl(p_dynamic_action.attribute_05, ''infinite'');',
'',
'    l_result apex_plugin.t_dynamic_action_render_result;',
'begin',
'    apex_javascript.add_library (',
'        p_name      => ''com_oracle_apex_timer.min'',',
'        p_directory => p_plugin.file_prefix,',
'        p_version   => null );',
'',
'    l_result.javascript_function := ''com_oracle_apex_timer.init'';',
'    l_result.attribute_01        := l_action;',
'    l_result.attribute_02        := l_timer_name;',
'    l_result.attribute_03        := l_expire_in;',
'    l_result.attribute_04        := l_occurrence;',
'    return l_result;',
'end render_timer;'))
,p_render_function=>'render_timer'
,p_standard_attributes=>'ITEM:REGION:JAVASCRIPT_EXPRESSION:JQUERY_SELECTOR:TRIGGERING_ELEMENT:EVENT_SOURCE:REQUIRED'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<p>',
'	&nbsp;</p>',
'<div id="cke_pastebin">',
'	This plug-in is a dynamic action which allows to periodically fire other dynamic actions in the browser.&nbsp;For example to refresh a region. But you can perform any action you want, because the plug-in just provides&nbsp;the infrastructure so that'
||' you can hook up your own actions which you want to execute periodically.</div>',
'<div>',
'	&nbsp;</div>',
'<ol>',
'	<li>',
'		Create a dynamic action with the &quot;Timer&quot; plug-in which sets up the periodic timer</li>',
'	<li>',
'		Create a dynamic action for the event &quot;Timer Expired [Plug-in]&quot; where you execute your periodic actions.</li>',
'</ol>',
''))
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.oracleapex.info/'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5374799212666608626)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Action'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'add'
,p_is_translatable=>false
,p_lov_type=>'STATIC'
,p_help_text=>'Specify if you want to <strong>add</strong> or <strong>remove</strong> a timer. If you add a timer with the same name again, the existing one will be removed and created again. If you remove an existing timer, you have to specify a name when you add '
||'the timer so that you are able to identify it when you remove it.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(5374799820632610905)
,p_plugin_attribute_id=>wwv_flow_api.id(5374799212666608626)
,p_display_sequence=>10
,p_display_value=>'Add Timer'
,p_return_value=>'add'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(5374800207257616579)
,p_plugin_attribute_id=>wwv_flow_api.id(5374799212666608626)
,p_display_sequence=>20
,p_display_value=>'Remove Timer'
,p_return_value=>'remove'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5374800520510677164)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Timer Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(5374799212666608626)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'add'
,p_help_text=>'If you want to remove a timer with the "Remove Timer" action you have to specify a name for the timer when you create it. If you just want to create a timer you don''t have to specify a timer name.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5374801008520683154)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>3
,p_display_sequence=>30
,p_prompt=>'Timer Name'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_display_length=>20
,p_max_length=>20
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(5374799212666608626)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'remove'
,p_help_text=>'Name of the timer you want to remove. Use the same name you used when you created the timer.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5374801504626700891)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>4
,p_display_sequence=>40
,p_prompt=>'Expire in x Milliseconds'
,p_attribute_type=>'INTEGER'
,p_is_required=>true
,p_display_length=>10
,p_max_length=>10
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(5374799212666608626)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'add'
,p_help_text=>'Specify the number of milliseconds after which the timer should expire. There are 1000 milliseconds in one second.'
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(5374801993329707100)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>5
,p_display_sequence=>50
,p_prompt=>'Occurrence'
,p_attribute_type=>'SELECT LIST'
,p_is_required=>true
,p_default_value=>'infinite'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_api.id(5374799212666608626)
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'add'
,p_lov_type=>'STATIC'
,p_help_text=>'Specify how often the timer should fire. The timer can be fired just <strong>once</strong> or <strong>infinite</strong> until you remove it with the "Remove Timer" action.'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(5374802601641709527)
,p_plugin_attribute_id=>wwv_flow_api.id(5374801993329707100)
,p_display_sequence=>10
,p_display_value=>'Once'
,p_return_value=>'once'
);
wwv_flow_api.create_plugin_attr_value(
 p_id=>wwv_flow_api.id(5374803006835711024)
,p_plugin_attribute_id=>wwv_flow_api.id(5374801993329707100)
,p_display_sequence=>20
,p_display_value=>'Infinite'
,p_return_value=>'infinite'
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(5374798993966603270)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_name=>'timer_expired'
,p_display_name=>'Timer Expired'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '636F6D5F6F7261636C655F617065785F74696D65723D7B6372656174656454696D6572733A7B7D2C696E69743A66756E6374696F6E28297B76617220613D746869732E616374696F6E2E61747472696275746530312C663D746869732E616374696F6E2E';
wwv_flow_api.g_varchar2_table(2) := '61747472696275746530322C653D7061727365496E7428746869732E616374696F6E2E61747472696275746530332C3130292C633D746869732E616374696F6E2E61747472696275746530342C643D746869732E6166666563746564456C656D656E7473';
wwv_flow_api.g_varchar2_table(3) := '3B66756E6374696F6E206228297B696628633D3D3D22696E66696E69746522297B636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D3D73657454696D656F757428622C65297D656C73657B64656C65746520';
wwv_flow_api.g_varchar2_table(4) := '636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D7D642E74726967676572282274696D65725F657870697265642E434F4D5F4F5241434C455F415045585F54494D4552222C66297D696628613D3D3D226164';
wwv_flow_api.g_varchar2_table(5) := '6422297B696628636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D297B636C65617254696D656F757428636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D297D';
wwv_flow_api.g_varchar2_table(6) := '636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D3D73657454696D656F757428622C65297D656C73657B696628613D3D3D2272656D6F766522297B696628636F6D5F6F7261636C655F617065785F74696D65';
wwv_flow_api.g_varchar2_table(7) := '722E6372656174656454696D6572735B665D297B636C65617254696D656F757428636F6D5F6F7261636C655F617065785F74696D65722E6372656174656454696D6572735B665D293B64656C65746520636F6D5F6F7261636C655F617065785F74696D65';
wwv_flow_api.g_varchar2_table(8) := '722E6372656174656454696D6572735B665D7D7D7D7D7D3B';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(5374812397714930045)
,p_plugin_id=>wwv_flow_api.id(5374798709419598249)
,p_file_name=>'com_oracle_apex_timer.min.js'
,p_mime_type=>'text/javascript'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/shared_components/plugins/dynamic_action/amilos_refresh_report
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(95016906809622072462)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'AMILOS_REFRESH_REPORT'
,p_display_name=>'Refresh report and keep pagination'
,p_category=>'MISC'
,p_supported_ui_types=>'DESKTOP'
,p_image_prefix => nvl(wwv_flow_application_install.get_static_plugin_file_prefix('DYNAMIC ACTION','AMILOS_REFRESH_REPORT'),'')
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- Author: Ana Milos, ana.milos.hr@gmail.com',
'-- Huge thank you to Tom Petrus for working out how to refresh interactive reports in APEX 5!',
' ',
'',
'function render_refreshReport (',
'    p_dynamic_action in apex_plugin.t_dynamic_action,',
'    p_plugin         in apex_plugin.t_plugin )',
'    return apex_plugin.t_dynamic_action_render_result',
'is',
'    l_result   apex_plugin.t_dynamic_action_render_result;',
'    l_report_id       VARCHAR2(4000) := p_dynamic_action.attribute_04;',
'    v_affected_region_id apex_application_page_da_acts.affected_region_id%type;',
'begin',
' ',
'   if apex_application.g_debug',
'   then',
'      apex_plugin_util.debug_dynamic_action(',
'         p_plugin         => p_plugin,',
'         p_dynamic_action => p_dynamic_action ',
'      );',
'   end if;',
'',
'   apex_javascript.add_library(',
'      p_name      => ''refreshReport'',',
'      p_directory => p_plugin.file_prefix,',
'      p_version   => NULL',
'   );',
'',
'    l_result.javascript_function :=',
'            ''function(){ refreshReport(this);}'';',
'    return l_result;',
'',
'end  render_refreshReport;'))
,p_render_function=>' render_refreshReport'
,p_standard_attributes=>'REGION:REQUIRED'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://apex.oracle.com/pls/apex/f?p=28376:5'
,p_files_version=>11
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2020202066756E6374696F6E20726566726573685265706F7274287044796E4163744461746129207B0D0A0D0A202020202020202076617220706167696E6174696F6E547970652C20706167696E6174696F6E4E6F742C20616666656374656452656769';
wwv_flow_api.g_varchar2_table(2) := '6F6E49642C207265706F727449642C207265706F72744964506167696E6174652C20706167696E6174696F6E546578742C206D696E5F726F775F7061672C206D61785F726F775F7061672C206D61785F726F772C20687265665478742C20706F732C2070';
wwv_flow_api.g_varchar2_table(3) := '6167456C74732C20706167696E6174696F6E496E7465726163746976652C2068726566417474725374722C206D6178526F7773546578742C2066657463686564526F77732C207265706F72744964506167696E6174654469763B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(4) := '20206166666563746564526567696F6E4964203D20287044796E416374446174612E6166666563746564456C656D656E74735B305D2E6964293B0D0A20202020202020207265706F72744964203D2027237265706F72745F27202B206166666563746564';
wwv_flow_api.g_varchar2_table(5) := '526567696F6E49643B0D0A0D0A2020202020202020706167696E6174696F6E496E746572616374697665203D202428222322202B206166666563746564526567696F6E4964202B2022202E612D49525222292E6C656E6774683B0D0A0D0A202020202020';
wwv_flow_api.g_varchar2_table(6) := '202069662028706167696E6174696F6E496E746572616374697665203D3D20273127297B0D0A09202020202020207265706F72744964506167696E617465203D206166666563746564526567696F6E49642E7375627374722831293B0D0A0D0A09202020';
wwv_flow_api.g_varchar2_table(7) := '202020207D0D0A09202020656C73657B0D0A2020202020202020202020207265706F72744964506167696E617465446976203D2024282723272B6166666563746564526567696F6E49642B27206469765B69642A3D227265706F72745F225D27293B0D0A';
wwv_flow_api.g_varchar2_table(8) := '2020202020202020202020207265706F72744964506167696E617465203D207265706F72744964506167696E6174654469762E617474722822696422293B0D0A2020202020202020202020207265706F72744964506167696E617465203D207265706F72';
wwv_flow_api.g_varchar2_table(9) := '744964506167696E6174652E7265706C61636528277265706F72745F272C202727293B0D0A2020202020202020202020207265706F72744964506167696E617465203D207265706F72744964506167696E6174652E7265706C61636528275F6361746368';
wwv_flow_api.g_varchar2_table(10) := '272C202727293B0D0A20202020092020207D0D0A0D0A0D0A2020202020202020706167696E6174696F6E457869737473203D2024282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E7464';
wwv_flow_api.g_varchar2_table(11) := '3E7370616E2E6669656C64646174613E6122292E6C656E6774683B0D0A2020202020202020706167696E6174696F6E4E6F74203D2024282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E';
wwv_flow_api.g_varchar2_table(12) := '74642E706167696E6174696F6E206122292E6C656E6774683B0D0A0D0A0D0A202020202020202069662028706167696E6174696F6E496E746572616374697665203D3D2027312729207B0D0A2020202020202020092F2F696E7465726163746976652072';
wwv_flow_api.g_varchar2_table(13) := '65706F72740D0A20202020202009696620282428222E612D4952522D706167696E6174696F6E22292E6C656E6774683D3D31297B0D0A20202020202020200909706167696E6174696F6E54797065203D202730273B0D0A2020202020202020202020207D';
wwv_flow_api.g_varchar2_table(14) := '656C73657B0D0A20202020202020200909706167696E6174696F6E547970653D3D2D313B0D0A2020202020202020202020207D0D0A20202020202020207D20656C7365207B0D0A0909092F2F697320746865726520616E79206F74686572207479706520';
wwv_flow_api.g_varchar2_table(15) := '6F6620706167696E6174696F6E3F0D0A20202020202020202020202069662028706167696E6174696F6E4E6F74203D3D2027302729207B0D0A20202020202020202020202020202020706167696E6174696F6E54797065203D20272D31273B0D0A202020';
wwv_flow_api.g_varchar2_table(16) := '2020202020202020207D20656C7365207B0D0A2020202020202020202020202020202069662028706167696E6174696F6E45786973747320213D2027302729207B0D0A2020202020202020202020202020202020202020706167696E6174696F6E546578';
wwv_flow_api.g_varchar2_table(17) := '74203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C64646174613E6222292E746578742829293B0D0A20202020202020202020';
wwv_flow_api.g_varchar2_table(18) := '2020202020202020202069662028706167696E6174696F6E546578742E696E6465784F6628222D2229203E203029207B0D0A202020202020202020202020202020202020202020202020706167696E6174696F6E54797065203D202731273B0D0A202020';
wwv_flow_api.g_varchar2_table(19) := '20202020202020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020202020202020202020706167696E6174696F6E54797065203D202734273B0D0A20202020202020202020202020202020202020207D0D0A202020';
wwv_flow_api.g_varchar2_table(20) := '202020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202020202020706167696E6174696F6E457869737473203D2024282222202B207265706F72744964202B2022202E706167696E6174696F6E206F7074696F6E';
wwv_flow_api.g_varchar2_table(21) := '3A73656C656374656422292E6C656E6774683B0D0A202020202020202020202020202020202020202069662028706167696E6174696F6E45786973747320213D2027302729207B0D0A202020202020202020202020202020202020202020202020706167';
wwv_flow_api.g_varchar2_table(22) := '696E6174696F6E54797065203D202732273B0D0A20202020202020202020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020202020202020202020706167696E6174696F6E457869737473203D2024282222202B20';
wwv_flow_api.g_varchar2_table(23) := '7265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C646461746122292E6C656E6774683B0D0A202020202020202020202020202020202020202020202020706167696E6174';
wwv_flow_api.g_varchar2_table(24) := '696F6E54657874203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C646461746122292E746578742829293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(25) := '202020202020202020202020202020202020706167456C7473203D2028706167696E6174696F6E546578742E73706C69742827202729292E6C656E6774683B0D0A20202020202020202020202020202020202020202020202069662028706167456C7473';
wwv_flow_api.g_varchar2_table(26) := '203D3D2027362729207B0D0A20202020202020202020202020202020202020202020202020202020706167696E6174696F6E54797065203D202733273B0D0A2020202020202020202020202020202020202020202020207D20656C7365207B0D0A202020';
wwv_flow_api.g_varchar2_table(27) := '2020202020202020202020202020202020202020202020202069662028706167456C7473203D3D2027332729207B0D0A2020202020202020202020202020202020202020202020202020202020202020706167696E6174696F6E54797065203D20273527';
wwv_flow_api.g_varchar2_table(28) := '3B0D0A202020202020202020202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(29) := '7D0D0A2020202020202020202020207D0D0A20202020202020207D0D0A0D0A20202020202020207377697463682028706167696E6174696F6E5479706529207B0D0A20202020202020202020202063617365202730273A0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(30) := '20092F2F496E746572616374697665205265706F72740D0A202009090909766172206C5265706F72744964203D202223222B6166666563746564526567696F6E49642B225F6972223B0D0A092020090909706167696E6174654952286C5265706F727449';
wwv_flow_api.g_varchar2_table(31) := '642C2067657443757272656E74506167696E6174696F6E286C5265706F72744964292C20312C2031293B0D0A202009090909627265616B3B0D0A20202020202020202020202063617365202731273A0D0A202020202020202020202020202020202F2F52';
wwv_flow_api.g_varchar2_table(32) := '6F772052616E67657320312D31352031362D33302028776974682073657420706167696E6174696F6E290D0A20202020202020202020202020202020706167696E6174696F6E54657874203D20242E7472696D2824282222202B207265706F7274496420';
wwv_flow_api.g_varchar2_table(33) := '2B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C64646174613E6222292E746578742829293B0D0A202020202020202020202020202020206D6178526F777354657874203D20242E7472696D28';
wwv_flow_api.g_varchar2_table(34) := '24282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C64646174613E6122292E617474722822687265662229293B0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(35) := '206D696E5F726F775F706167203D20706167696E6174696F6E546578742E73706C697428272D27295B305D3B0D0A202020202020202020202020202020206D61785F726F775F706167203D20706167696E6174696F6E546578742E73706C697428272D27';
wwv_flow_api.g_varchar2_table(36) := '295B315D3B0D0A2020202020202020202020202020202068726566417474725374723D6D6178526F7773546578742E737562737472696E67286D6178526F7773546578742E696E6465784F6628226D61783A2229293B0D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(37) := '202020206D61785F726F773D68726566417474725374722E737562737472696E6728342C2068726566417474725374722E696E6465784F6628222C2229293B0D0A2020202020202020202020202020202066657463686564526F7773203D207061727365';
wwv_flow_api.g_varchar2_table(38) := '496E74286D61785F726F775F7061672C20313029202D207061727365496E74286D696E5F726F775F7061672C20313029202B20313B0D0A0D0A20202020202020202020202020202020617065782E7769646765742E7265706F72742E706167696E617465';
wwv_flow_api.g_varchar2_table(39) := '282727202B207265706F72744964506167696E617465202B2027272C207B0D0A20202020202020202020202020202020202020206D696E3A207061727365496E74286D696E5F726F775F7061672C203130292C0D0A202020202020202020202020202020';
wwv_flow_api.g_varchar2_table(40) := '20202020206D61783A206D61785F726F772C0D0A2020202020202020202020202020202020202020666574636865643A2066657463686564526F77730D0A202020202020202020202020202020207D293B0D0A2020202020202020202020202020202062';
wwv_flow_api.g_varchar2_table(41) := '7265616B3B0D0A20202020202020202020202063617365202732273A0D0A202020202020202020202020202020202F2F526F772052616E67657320312D31352031362D333020696E2073656C656374206C69737420287769746820706167696E6174696F';
wwv_flow_api.g_varchar2_table(42) := '6E29090D0A09090909706167696E6174696F6E54657874203D20242E7472696D2824282222202B207265706F72744964202B2022202E706167696E6174696F6E206F7074696F6E3A73656C656374656422292E746578742829293B0D0A090909096D6178';
wwv_flow_api.g_varchar2_table(43) := '526F777354657874203D20242E7472696D2824282222202B207265706F72744964202B2022202E706167696E6174696F6E206F7074696F6E3A6E6F74283A73656C65637465642922292E76616C2829293B0D0A090909096D696E5F726F775F706167203D';
wwv_flow_api.g_varchar2_table(44) := '20706167696E6174696F6E546578742E73706C697428272027295B315D3B0D0A090909096D61785F726F775F706167203D20706167696E6174696F6E546578742E73706C697428272027295B335D3B0D0A0909090968726566417474725374723D6D6178';
wwv_flow_api.g_varchar2_table(45) := '526F7773546578742E737562737472696E67286D6178526F7773546578742E696E6465784F6628225C226D61785C223A2229293B0D0A090909096D61785F726F773D68726566417474725374722E737562737472696E6728362C20687265664174747253';
wwv_flow_api.g_varchar2_table(46) := '74722E696E6465784F6628222C2229293B0D0A0909090966657463686564526F7773203D207061727365496E74286D61785F726F775F7061672C20313029202D207061727365496E74286D696E5F726F775F7061672C20313029202B20313B0D0A0D0A20';
wwv_flow_api.g_varchar2_table(47) := '202020202020202020202020202020617065782E7769646765742E7265706F72742E706167696E617465282727202B207265706F72744964506167696E617465202B2027272C207B0D0A20202020202020202020202020202020202020206D696E3A2070';
wwv_flow_api.g_varchar2_table(48) := '61727365496E74286D696E5F726F775F7061672C203130292C0D0A20202020202020202020202020202020202020206D61783A206D61785F726F772C0D0A2020202020202020202020202020202020202020666574636865643A2066657463686564526F';
wwv_flow_api.g_varchar2_table(49) := '77730D0A202020202020202020202020202020207D293B0D0A20202020202020202020202020202020627265616B3B0D0A0D0A20202020202020202020202063617365202733273A0D0A20202020202020202020202020202020706167696E6174696F6E';
wwv_flow_api.g_varchar2_table(50) := '54657874203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C646461746122292E746578742829293B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(51) := '202020202020206D6178526F777354657874203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74642E706167696E6174696F6E3E6122292E61747472282268';
wwv_flow_api.g_varchar2_table(52) := '7265662229293B0D0A202020202020202020202020202020206D696E5F726F775F706167203D20706167696E6174696F6E546578742E73706C697428272027295B315D3B0D0A202020202020202020202020202020206D61785F726F775F706167203D20';
wwv_flow_api.g_varchar2_table(53) := '706167696E6174696F6E546578742E73706C697428272027295B335D3B0D0A2020202020202020202020202020202068726566417474725374723D6D6178526F7773546578742E737562737472696E67286D6178526F7773546578742E696E6465784F66';
wwv_flow_api.g_varchar2_table(54) := '28226D61783A2229293B0D0A202020202020202020202020202020206D61785F726F773D68726566417474725374722E737562737472696E6728342C2068726566417474725374722E696E6465784F6628222C2229293B0D0A2020202020202020202020';
wwv_flow_api.g_varchar2_table(55) := '202020202066657463686564526F7773203D207061727365496E74286D61785F726F775F7061672C20313029202D207061727365496E74286D696E5F726F775F7061672C20313029202B20313B0D0A0D0A20202020202020202020202020202020617065';
wwv_flow_api.g_varchar2_table(56) := '782E7769646765742E7265706F72742E706167696E617465282727202B207265706F72744964506167696E617465202B2027272C207B0D0A20202020202020202020202020202020202020206D696E3A207061727365496E74286D696E5F726F775F7061';
wwv_flow_api.g_varchar2_table(57) := '672C203130292C0D0A20202020202020202020202020202020202020206D61783A206D61785F726F772C0D0A2020202020202020202020202020202020202020666574636865643A2066657463686564526F77730D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(58) := '20207D293B0D0A20202020202020202020202020202020627265616B3B0D0A0D0A20202020202020202020202063617365202734273A0D0A20202020202020202020202020202020706167696E6174696F6E54657874203D20242E7472696D2824282222';
wwv_flow_api.g_varchar2_table(59) := '202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C64646174613E6222292E746578742829293B0D0A2020202020202020202020202020202068726566547874203D';
wwv_flow_api.g_varchar2_table(60) := '2024282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C64646174613E6222292E7369626C696E677328276127292E6174747228226872656622293B0D0A20';
wwv_flow_api.g_varchar2_table(61) := '2020202020202020202020202020206D6178526F777354657874203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C6464617461';
wwv_flow_api.g_varchar2_table(62) := '3E6122292E617474722822687265662229293B0D0A20202020202020202020202020202020706F73203D20687265665478742E696E6465784F662827666574636865643A27293B0D0A2020202020202020202020202020202066657463686564203D2068';
wwv_flow_api.g_varchar2_table(63) := '7265665478742E73756273747228706F73293B0D0A2020202020202020202020202020202068726566417474725374723D6D6178526F7773546578742E737562737472696E67286D6178526F7773546578742E696E6465784F6628226D61783A2229293B';
wwv_flow_api.g_varchar2_table(64) := '0D0A202020202020202020202020202020206D61785F726F773D68726566417474725374722E737562737472696E6728342C2068726566417474725374722E696E6465784F6628222C2229293B0D0A202020202020202020202020202020206D696E5F72';
wwv_flow_api.g_varchar2_table(65) := '6F775F706167203D20287061727365496E7428706167696E6174696F6E546578742C20313029202D203129202A206D61785F726F77202B20313B0D0A2020202020202020202020202020202066657463686564526F7773203D20666574636865642E6D61';
wwv_flow_api.g_varchar2_table(66) := '746368282F5C642B2F67293B0D0A0D0A0D0A20202020202020202020202020202020617065782E7769646765742E7265706F72742E706167696E617465282727202B207265706F72744964506167696E617465202B2027272C207B0D0A20202020202020';
wwv_flow_api.g_varchar2_table(67) := '202020202020202020202020206D696E3A206D696E5F726F775F7061672C0D0A20202020202020202020202020202020202020206D61783A206D61785F726F772C0D0A2020202020202020202020202020202020202020666574636865643A2066657463';
wwv_flow_api.g_varchar2_table(68) := '686564526F77730D0A202020202020202020202020202020207D293B0D0A20202020202020202020202020202020627265616B3B0D0A0D0A20202020202020202020202063617365202735273A0D0A20202020202020202020202020202020706167696E';
wwv_flow_api.g_varchar2_table(69) := '6174696F6E54657874203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74643E7370616E2E6669656C646461746122292E746578742829293B0D0A20202020';
wwv_flow_api.g_varchar2_table(70) := '2020202020202020202020206D6178526F777354657874203D20242E7472696D2824282222202B207265706F72744964202B20223E74626F64793E74723E74643E7461626C653E74626F64793E74723E74642E706167696E6174696F6E3E6122292E6174';
wwv_flow_api.g_varchar2_table(71) := '74722822687265662229293B0D0A202020202020202020202020202020206D696E5F726F775F706167203D20706167696E6174696F6E546578742E73706C697428272027295B305D3B0D0A202020202020202020202020202020206D61785F726F775F70';
wwv_flow_api.g_varchar2_table(72) := '6167203D20706167696E6174696F6E546578742E73706C697428272027295B325D3B0D0A2020202020202020202020202020202068726566417474725374723D6D6178526F7773546578742E737562737472696E67286D6178526F7773546578742E696E';
wwv_flow_api.g_varchar2_table(73) := '6465784F6628226D61783A2229293B0D0A202020202020202020202020202020206D61785F726F773D68726566417474725374722E737562737472696E6728342C2068726566417474725374722E696E6465784F6628222C2229293B0D0A202020202020';
wwv_flow_api.g_varchar2_table(74) := '2020202020202020202066657463686564526F7773203D207061727365496E74286D61785F726F775F7061672C20313029202D207061727365496E74286D696E5F726F775F7061672C20313029202B20313B0D0A0D0A2020202020202020202020202020';
wwv_flow_api.g_varchar2_table(75) := '2020617065782E7769646765742E7265706F72742E706167696E617465282727202B207265706F72744964506167696E617465202B2027272C207B0D0A20202020202020202020202020202020202020206D696E3A207061727365496E74286D696E5F72';
wwv_flow_api.g_varchar2_table(76) := '6F775F7061672C203130292C0D0A20202020202020202020202020202020202020206D61783A206D61785F726F772C0D0A2020202020202020202020202020202020202020666574636865643A2066657463686564526F77730D0A202020202020202020';
wwv_flow_api.g_varchar2_table(77) := '202020202020207D293B0D0A20202020202020202020202020202020627265616B3B0D0A0D0A20202020202020202020202064656661756C743A0D0A2020202020202020202020202020202069662028706167696E6174696F6E496E7465726163746976';
wwv_flow_api.g_varchar2_table(78) := '65203D3D2027312729207B0D0A20202020202020202020202020202020092428222E612D4952522D736561726368427574746F6E436F6E7461696E657220627574746F6E22292E636C69636B28293B0D0A202020202020202020202020097D0D0A202020';
wwv_flow_api.g_varchar2_table(79) := '20202020202020202009656C73657B0D0A2020202020202020202020200909766172207374617469634964537472203D2024282723272B6166666563746564526567696F6E4964202B2022206469765B69645E3D277265706F72745F275D5B6964243D27';
wwv_flow_api.g_varchar2_table(80) := '6361746368275D22292E617474722827696427293B0D0A20202020202020202020202020202020092428272327202B207374617469634964537472202B202727292E747269676765722827617065787265667265736827293B0D0A202020202020202020';
wwv_flow_api.g_varchar2_table(81) := '202020097D0D0A20202020202020207D0D0A202020207D0D0A0D0A0D0A20202F2A2A2040707572706F7365207265747269657665207468652063757272656E74206D696E20726F77206F6620616E2049522062792070617273696E672074686520706167';
wwv_flow_api.g_varchar2_table(82) := '696E6174696F6E206C6162656C206F6620616E202258202D205922206F722058202D2059206F66205A2220736368656D652E0D0A202020202A40706172616D2049522069640D0A202020202A2F0D0A202066756E6374696F6E2067657443757272656E74';
wwv_flow_api.g_varchar2_table(83) := '506167696E6174696F6E2028705265706F7274496429207B0D0A202020207661722063757272656E7454657874203D20617065782E6A517565727928222E612D4952522D706167696E6174696F6E2D6C6162656C222C20705265706F72744964292E7465';
wwv_flow_api.g_varchar2_table(84) := '787428290D0A2020202020202C2063757272656E744D696E526F77203D2063757272656E74546578742E737562737472696E6728302C2063757272656E74546578742E696E6465784F6628222D2229292E7472696D28293B0D0A2020202072657475726E';
wwv_flow_api.g_varchar2_table(85) := '2063757272656E744D696E526F773B0D0A20207D3B0D0A0D0A0D0A20202F2A2A2040707572706F736520706167696E617465732074686520495220776974682074686520696E646963617465642073657474696E6773200D0A202020202A204070617261';
wwv_flow_api.g_varchar2_table(86) := '6D2070526567696F6E49642049522069640D0A202020202A2040706172616D20704D696E526F7720726F7720746F2073746172742074686520706167696E6174696F6E2061740D0A202020202A2040706172616D20704D6178526F777320697272656C65';
wwv_flow_api.g_varchar2_table(87) := '76616E742E2054686973206973206E6F742070617273656420616E7977686572652E200D0A202020202A2040706172616D2070526F77734665746368656420697272656C6576616E742E2054686973206973206E6F742070617273656420616E79776865';
wwv_flow_api.g_varchar2_table(88) := '72652E20526F777320746F2062652066657463686564642069732064657465726D696E65642073657276657273696465206279206D696E726F77202B20726F777320646973706C617965640D0A202020202A2F0D0A202066756E6374696F6E2070616769';
wwv_flow_api.g_varchar2_table(89) := '6E61746549522028705265706F727449642C20704D696E526F772C704D6178526F77732C70526F777346657463686564297B0D0A202020207661722066616B65427574746F6E203D20617065782E6A517565727928223C627574746F6E3E220D0A202020';
wwv_flow_api.g_varchar2_table(90) := '2020202020202020202020202020202020202C207B20617474723A207B2022636C617373223A22612D427574746F6E20612D4952522D627574746F6E20612D4952522D627574746F6E2D2D706167696E6174696F6E220D0A202020202020202020202020';
wwv_flow_api.g_varchar2_table(91) := '202020202020202020202020202020202020202C2022646174612D706167696E6174696F6E223A227067525F6D696E5F726F773D222B704D696E526F772B226D61785F726F77733D222B704D6178526F77732B22726F77735F666574636865643D222B70';
wwv_flow_api.g_varchar2_table(92) := '526F7773466574636865640D0A202020202020202020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202C206373733A207B22646973706C6179223A226E6F6E65227D200D0A2020';
wwv_flow_api.g_varchar2_table(93) := '2020202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020292E636C69636B2866756E6374696F6E2865297B20652E70726576656E7444656661756C7428293B207D293B0D0A20202020617065782E6A';
wwv_flow_api.g_varchar2_table(94) := '517565727928705265706F72744964292E617070656E642866616B65427574746F6E293B0D0A2020202066616B65427574746F6E2E636C69636B28293B0D0A2020202066616B65427574746F6E2E72656D6F766528293B0D0A20207D3B0D0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(9101243462936280894)
,p_plugin_id=>wwv_flow_api.id(95016906809622072462)
,p_file_name=>'refreshReport.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_api.create_user_interface(
 p_id=>wwv_flow_api.id(1350689130487667880)
,p_ui_type_name=>'DESKTOP'
,p_display_name=>'Desktop'
,p_display_seq=>10
,p_use_auto_detect=>false
,p_is_default=>true
,p_theme_id=>42
,p_home_url=>'f?p=MAIN:1:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:LOGIN_DESKTOP:&SESSION.'
,p_navigation_list_id=>wwv_flow_api.id(1350646723337667749)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>wwv_flow_api.id(1350681361473667855)
,p_nav_list_template_options=>'#DEFAULT#'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_api.id(1350689092352667880)
,p_nav_bar_list_template_id=>wwv_flow_api.id(1350681240652667855)
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00101
begin
wwv_flow_api.create_page(
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(1350689130487667880)
,p_name=>'Login Page'
,p_alias=>'LOGIN_DESKTOP'
,p_page_mode=>'NORMAL'
,p_step_title=>'Login Page'
,p_step_sub_title=>'Login Page'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'(function(){',
'var lTimeoutField = document.getElementById("apex_login_throttle_sec"),',
'    lTimeout      = lTimeoutField ? +lTimeoutField.innerHTML : 0;',
'if (lTimeout) {',
'    var lTimer = window.setInterval (',
'        function() {',
'            if (lTimeout > 0) {',
'                lTimeoutField.innerHTML = lTimeout;',
'                lTimeout--;',
'            } else {',
'                window.clearInterval(lTimer);',
'                var lDiv = document.getElementById("apex_login_throttle_div");',
'                if (lDiv) {',
'                    lDiv.parentNode.removeChild(lDiv);',
'                    return true;',
'                }',
'            }',
'        },',
'        1000 );',
'}})();'))
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.mid {',
'    ',
'    text-align: center;',
'}',
'',
'span.t-Login-logo {',
'background-image: url(#WORKSPACE_IMAGES#logo.jpg);',
'backgroung-size: cover;',
'width: 300px;',
'height: 40px;',
'}'))
,p_step_template=>wwv_flow_api.id(1350648731221667792)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_cache_mode=>'NOCACHE'
,p_last_updated_by=>'MIKEHNZ@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160530174522'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12490734519162021)
,p_plug_name=>'&nbsp;'
,p_icon_css_classes=>'icon-login-username'
,p_region_template_options=>'#DEFAULT#:t-Form--large:t-Form--stretchInputs:t-Form--leftLabels:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_api.id(1350662745966667826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'N'
,p_plug_display_point=>'BODY'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br>',
'<div class="a-Login-links mid"><a href="f?p=&APP_ID.:103">Forgot your password?</a></div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12491129226162023)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12490734519162021)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1350683932431667861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Log In'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12491472705162024)
,p_name=>'P101_USERNAME'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12490734519162021)
,p_prompt=>'Username'
,p_placeholder=>'username'
,p_post_element_text=>'<span class=”t-Login-iconValidation a-Icon icon-check”></span>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1350683384305667856)
,p_item_css_classes=>'icon-login-username'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12491843745162025)
,p_name=>'P101_PASSWORD'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12490734519162021)
,p_prompt=>'Password'
,p_placeholder=>'password'
,p_post_element_text=>'<span class=”t-Login-iconValidation a-Icon icon-check”></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(1350683384305667856)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12492245388162028)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P101_USERNAME) );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12492637847162028)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P101_USERNAME,',
'    p_password => :P101_PASSWORD );'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12493129763162029)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12493524255162029)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>':P101_USERNAME := apex_authentication.get_login_username_cookie;'
);
end;
/
prompt --application/pages/page_00102
begin
wwv_flow_api.create_page(
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(1350689130487667880)
,p_name=>'Password reset'
,p_page_mode=>'NORMAL'
,p_step_title=>'Password reset'
,p_allow_duplicate_submissions=>'N'
,p_step_sub_title=>'Password reset'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_html_page_header=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<style>',
'#passwordStrength',
'{',
'        height:10px;',
'        display:block;',
'        float:left;',
'}',
'.strength0',
'{',
'        width:250px;',
'        background:#cccccc;',
'}',
'.strength1',
'{',
'        width:50px;',
'        background:#ff0000;',
'}',
'.strength2',
'{',
'        width:100px;    ',
'        background:#ff5f5f;',
'}',
'.strength3',
'{',
'        width:150px;',
'        background:#56e500;',
'}',
'.strength4',
'{',
'        background:#4dcd00;',
'        width:200px;',
'}',
'.strength5',
'{',
'        background:#399800;',
'        width:250px;',
'}',
'.strength9',
'{',
'        background:#399800;',
'        width:100%;',
'}',
'</style>'))
,p_javascript_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'//jQuery(''#P102_P_HIDDEN'').hide();',
'',
'//<script language="javascript">',
'function passwordChanged(){',
'var password = document.getElementById("P102_PASSWORD1").value;',
'var score = 0;',
'// on change of this field we must remove the valid indicator',
'document.getElementById("valid_pass2").className = "";',
'document.getElementById("reset_button").disabled = true;',
'    ',
'// test length',
'if (password.length >= 7) {',
'    score++;',
'    document.getElementById("len_test").className = "fa-li fa fa-check-circle ok";',
'} else {',
'    document.getElementById("len_test").className = "fa-li fa fa fa-times";',
'}',
'',
'// lowercase test    ',
'if (password.match(/[a-z]/)) {',
'    score++;',
'    document.getElementById("low_test").className = "fa-li fa fa-check-circle ok";',
'} else {',
'    document.getElementById("low_test").className = "fa-li fa fa fa-times";',
'}',
'',
'// uppercase test    ',
'if( password.match(/[A-Z]/) ) {',
'    score++;',
'    document.getElementById("upper_test").className = "fa-li fa fa-check-circle ok";',
'} else {',
'    document.getElementById("upper_test").className = "fa-li fa fa fa-times";',
'}',
'    ',
'// number test    ',
'if (password.match(/\d+/)) {',
'    score++;',
'    document.getElementById("num_test").className = "fa-li fa fa-check-circle ok";',
'} else {',
'    document.getElementById("num_test").className = "fa-li fa fa fa-times";',
'}',
'',
'// punctuation test',
'if (password.match(/.[!,@,#,$,%,^,&,*,?,_,~,-,(,)]/) ) {',
'    score++;',
'    document.getElementById("punc_test").className = "fa-li fa fa-check-circle ok";',
'} else {',
'    document.getElementById("punc_test").className = "fa-li fa fa fa-times";',
'}',
'    ',
'if (score == 5) {',
'    document.getElementById("valid_pass").className = "t-Login-iconValidation a-Icon icon-check";',
'',
'}   else {',
'    document.getElementById("valid_pass").className = "";',
'    ',
'}',
'   // checkPasswordsMatch();',
'  return score;',
'} ',
'',
'',
'',
'function checkPasswordsMatch () {',
'    ',
'    var password = document.getElementById("P102_PASSWORD1").value;',
'    var password2 = document.getElementById("P102_PASSWORD2").value;',
'    var score = passwordChanged();',
'    ',
'    if  ((password == password2) && (score == 5) ) {',
'            document.getElementById("valid_pass2").className = "t-Login-iconValidation a-Icon icon-check";',
'            document.getElementById("reset_button").disabled = false;',
'    } else {',
'        document.getElementById("valid_pass2").className = "";',
'        document.getElementById("reset_button").disabled = true;',
'    }    ',
'       ',
'}'))
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'//jQuery(''#P102_P_HIDDEN'').hide();',
'',
'document.getElementById("reset_button").disabled = true;'))
,p_inline_css=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'.hidden {',
'    display: none;',
'}',
'',
'.red {',
'color: red;',
'}',
'',
'.ok {',
'color: green;',
'}',
'',
'.pass_error {',
'    background: #ff0000 !important; ',
'//#4cd964;',
'    color: #fff;',
'}',
'',
'.mid {',
'vertical-align: middle;',
'text-align: center !important;',
'}'))
,p_step_template=>wwv_flow_api.id(1350648731221667792)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_browser_cache=>'N'
,p_rejoin_existing_sessions=>'P'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MIKEHNZ@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160524104223'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12498963650167924)
,p_plug_name=>'Reset your password'
,p_icon_css_classes=>'fa-lock'
,p_region_template_options=>'#DEFAULT#:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1350662745966667826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'Your password must meet the following criteria:',
'<ul class="fa-ul">',
'<li><i id="low_test" class="fa-li fa fa-times" aria-hidden="true"></i>Contain lowercase letter (a-z)</li>',
'<li><i id="upper_test" class="fa-li fa fa-times" aria-hidden="true"></i>Contain uppercase letter (A-Z)</li>',
'<li><i id="num_test" class="fa-li fa fa-times" aria-hidden="true"></i>Contain numeral (0-9)</li>',
'<li><i id="punc_test" class="fa-li fa fa-times" aria-hidden="true"></i>Punctuation or other (!@#&...)</li>',
'<li><i id="len_test" class="fa-li fa fa-times" aria-hidden="true"></i>Minimum 7 characters</li>',
'</ul>',
'',
'When all the criteria above are met the <strong>Reset Password</strong> button will be enabled.',
'<br><br>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P102_RESET'
,p_plug_display_when_cond2=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12501406141167926)
,p_plug_name=>'Oops, there''s a problem'
,p_icon_css_classes=>'fa-exclamation-triangle'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(1350662745966667826)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'Your request to reset your password has expired. Please request a new password reset email from the logon screen.<br><br>'
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P102_RESET'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12501737467167927)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12501406141167926)
,p_button_name=>'HOME'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1350683932431667861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Return to logon page'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=118'
,p_button_execute_validations=>'N'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12499391033167924)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12498963650167924)
,p_button_name=>'RESET'
,p_button_static_id=>'reset_button'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1350683932431667861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Reset Password'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12503508896167929)
,p_branch_name=>'Go to log on page'
,p_branch_action=>'f?p=MAIN:HOME:&SESSION.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(12499391033167924)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12503861115167929)
,p_branch_name=>'got to logon page'
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P102_L'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12499756376167925)
,p_name=>'P102_L'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12498963650167924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12500233329167925)
,p_name=>'P102_RESET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12498963650167924)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12500571094167926)
,p_name=>'P102_PASSWORD1'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12498963650167924)
,p_prompt=>'New Password'
,p_placeholder=>'New password'
,p_post_element_text=>'<span id="valid_pass"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_tag_attributes=>'onkeyup="return passwordChanged();" '
,p_field_template=>wwv_flow_api.id(1350683384305667856)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12500947174167926)
,p_name=>'P102_PASSWORD2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12498963650167924)
,p_prompt=>'Confirm Password'
,p_placeholder=>'confirm password'
,p_post_element_text=>'<span id="valid_pass2"></span>'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_tag_attributes=>'onkeyup="return checkPasswordsMatch();" '
,p_field_template=>wwv_flow_api.id(1350683384305667856)
,p_item_css_classes=>'icon-login-password'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12502243399167928)
,p_validation_name=>'check passwords match'
,p_validation_sequence=>20
,p_validation=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'-- check passwords match',
'',
'if :p102_password1 = :p102_password2 then ',
'    ',
'    return true;',
'else',
'    return false;',
'    ',
'end if;',
'',
'',
'end;'))
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The passwords do not match. Please check and try again'
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_api.id(12500947174167926)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12502563703167928)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'rest password'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'declare',
'',
'v_result boolean;',
'begin',
'',
'  USER_PKG.RESET_PASSWORD(',
'    P_RESET_TOKEN => :p102_l,',
'    P_PASSWORD => :p102_password1,',
'    O_RESET_SUCCESSFUL => v_result',
'  );',
'',
'-- raise an error if ther reset was unsucceful',
'if v_result = false then ',
'raise_application_error(-20010,''Password reset failed. Please try again'');',
'end if;',
'',
'',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12499391033167924)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12503009370167928)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'check reset link is still valid'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'begin',
'',
'-- set the reset flag only if link is valid',
'select ''Y'' into :P102_RESET',
'from users_password_reset',
'where upr_expiry_dt > current_date',
'and upr_token_used_dt is null',
'and upr_reset_token = :P102_L;',
'',
'exception',
'    when others then ',
'        :P102_RESET := ''N'';',
'end;'))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00103
begin
wwv_flow_api.create_page(
 p_id=>103
,p_user_interface_id=>wwv_flow_api.id(1350689130487667880)
,p_name=>'Forgot Password'
,p_page_mode=>'NORMAL'
,p_step_title=>'Forgot Password'
,p_allow_duplicate_submissions=>'N'
,p_step_sub_title=>'Forgot Password'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'//jQuery(''#P102_P_HIDDEN'').hide();',
'$s(''P103_CURRENT_URL'', window.location.href);',
''))
,p_step_template=>wwv_flow_api.id(1350648731221667792)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_browser_cache=>'N'
,p_rejoin_existing_sessions=>'P'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MIKEHNZ@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160523110658'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12507650301170339)
,p_plug_name=>'Forgotten your Password?'
,p_icon_css_classes=>'fa-unlock-alt'
,p_region_template_options=>'#DEFAULT#:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1350662745966667826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'To reset your password, enter the email address you use to login to the stockist portal. A link will be emailed to this address which will let you reset your password.',
'<br><br>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_footer=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'<br>',
'<div class="a-Login-links">Or click <a href="f?p=&APP_ID.:101">Cancel</a> to return to logon page</div>'))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12508093177170340)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12507650301170339)
,p_button_name=>'SEND_LINK'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1350683932431667861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Send me the link'
,p_button_position=>'BODY'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12510156809170342)
,p_branch_name=>'Go To Page 104'
,p_branch_action=>'f?p=&APP_ID.:104:&SESSION.::&DEBUG.:RP,104:P104_EMAIL:&P103_EMAIL.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12508511641170340)
,p_name=>'P103_EMAIL'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12507650301170339)
,p_prompt=>'Email'
,p_placeholder=>'enter your email address'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(1350683384305667856)
,p_item_css_classes=>'icon-login-email'
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'I'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12508879492170341)
,p_name=>'P103_CURRENT_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12507650301170339)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12509235937170341)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'generate password link'
,p_process_sql_clob=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'-- generate the reset password email',
'USER_PKG.GENERATE_RESET_EMAIL(',
'    P_EMAIL => :P103_EMAIL,',
'    P_APP_ID => :app_id,',
'    P_CURRENT_URL => :P103_CURRENT_URL',
');',
''))
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12509726044170342)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear session state variables'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/pages/page_00104
begin
wwv_flow_api.create_page(
 p_id=>104
,p_user_interface_id=>wwv_flow_api.id(1350689130487667880)
,p_name=>'Password Reset sent'
,p_page_mode=>'NORMAL'
,p_step_title=>'Password Reset sent'
,p_allow_duplicate_submissions=>'N'
,p_step_sub_title=>'Password Reset sent'
,p_step_sub_title_type=>'TEXT_WITH_SUBSTITUTIONS'
,p_first_item=>'NO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_api.id(1350648731221667792)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'Y'
,p_overwrite_navigation_list=>'N'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_browser_cache=>'N'
,p_rejoin_existing_sessions=>'P'
,p_cache_mode=>'NOCACHE'
,p_help_text=>'No help is available for this page.'
,p_last_updated_by=>'MIKEHNZ@HOTMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20160524104309'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12513101875173331)
,p_plug_name=>'Password reset email sent'
,p_icon_css_classes=>'fa fa-envelope-o'
,p_region_template_options=>'#DEFAULT#:t-Form--large:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_api.id(1350662745966667826)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'An email with a link to reset your password has been sent to <strong>&P104_EMAIL.</strong> <br><br>',
'',
'If you do not receive the reset password message within a few minutes, please check your Spam folder just in case the email got delivered there instead of your inbox. ',
'<br><br>'))
,p_plug_query_row_template=>1
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12513469417173331)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12513101875173331)
,p_button_name=>'DONE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_api.id(1350683932431667861)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back to log on screen'
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:RP,101::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12514365885173332)
,p_branch_name=>'Go To Page 101'
,p_branch_action=>'101'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'BRANCH_TO_STEP'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(12514747668173333)
,p_branch_name=>'branch back to logon page if email is null'
,p_branch_action=>'f?p=&APP_ID.:101:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'ITEM_IS_NULL'
,p_branch_condition=>'P104_EMAIL'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12513837631173331)
,p_name=>'P104_EMAIL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12513101875173331)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/install
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
