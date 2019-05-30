INSERT INTO `#__extensions` (`package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(0, 'mod_status_frontend', 'module', 'mod_status_frontend', '', 1, 1, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, 0),
(0, 'mod_status_messages', 'module', 'mod_status_messages', '', 1, 1, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, 0),
(0, 'mod_status_post_installation_messages', 'module', 'mod_status_post_installation_messages', '', 1, 1, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, 0),
(0, 'mod_status_user', 'module', 'mod_status_user', '', 1, 1, 1, 0, '', '', 0, '0000-00-00 00:00:00', 0, 0),

INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
('Frontend Link', '', '', 5, 'status', 0, NULL, NULL, NULL, 1, 'mod_status_frontend', 3, 1, '', 1, '*');

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES (LAST_INSERT_ID(), 0);

INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
('Messages', '', '', 4, 'status', 0, NULL, NULL, NULL, 1, 'mod_status_messages', 3, 1, '', 1, '*');

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES (LAST_INSERT_ID(), 0);

INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
('Post Install Messages', '', '', 3, 'status', 0, NULL, NULL, NULL, 1, 'mod_status_post_installation_messages', 3, 1, '', 1, '*');

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES (LAST_INSERT_ID(), 0);

INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
('User Status', '', '', 6, 'status', 0, NULL, NULL, NULL, 1, 'mod_status_user', 3, 1, '', 1, '*');

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES (LAST_INSERT_ID(), 0);

DELETE FROM `#__extensions` WHERE `element` = `mod_status`;

INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
('Site', '', NULL, 1, 'icon', 0, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{"icon_type":"site","context":"mod_quickicon","show_global":"1","show_checkin":"1","show_cache":"1","show_users":"1","show_articles":"1","show_categories":"1","show_media":"1","show_menuItems":"1","show_modules":"1","show_plugins":"1","show_templates":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"fa-desktop"}', 1, '*');

INSERT INTO `#__modules` (`title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
('System', '', NULL, 2, 'icon', 0, NULL, NULL, NULL, 1, 'mod_quickicon', 1, 1, '{"icon_type":"system","context":"mod_quickicon","show_global":"1","show_checkin":"1","show_cache":"1","show_users":"1","show_articles":"1","show_categories":"1","show_media":"1","show_menuItems":"1","show_modules":"1","show_plugins":"1","show_templates":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"fa-wrench"}', 1, '*');

UPDATE `#__modules` SET `title` = 'Update Checks',`ordering` = 3,`position` = 'icon',`showtitle` = 1,`params` = '{"icon_type":"update","context":"mod_quickicon","show_global":"1","show_checkin":"1","show_cache":"1","show_users":"1","show_articles":"1","show_categories":"1","show_media":"1","show_menuItems":"1","show_modules":"1","show_plugins":"1","show_templates":"1","layout":"_:default","moduleclass_sfx":"","cache":1,"cache_time":900,"style":"0","module_tag":"div","bootstrap_size":"12","header_tag":"h3","header_class":"fa-sync"}' WHERE `#__modules`.`id` = 9;

UPDATE `#__modules` SET `ordering` = 2,`position` = 'status' WHERE `#__modules`.`id` = 79;
