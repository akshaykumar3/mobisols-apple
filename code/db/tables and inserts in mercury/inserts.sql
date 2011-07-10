INSERT INTO `cc_type_all` (`cc_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:37:46', '2011-06-24 00:37:53', -1, -1),
(1, 'gold', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:34:00', '2011-06-24 03:34:00', -1, 1);

INSERT INTO `client_all` (`client_id`, `client_name`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, 'tollways', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:25:20', '2011-06-24 00:25:30', -1),
(1, 'test drive', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:27:53', '2011-06-24 03:27:53', 1);

INSERT INTO `component_all` (`component_id`, `name`, `description`, `client_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:38:36', '2011-06-24 00:38:42', -1);

INSERT INTO `component_version_all` (`comp_version_id`, `component_id`, `description`, `list_of_changes`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `version`) VALUES
(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:39:08', '2011-06-24 00:39:14', -1, NULL);

INSERT INTO `configuration_all` (`config_id`, `comp_version_id`, `key`, `value`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:39:48', '2011-06-24 00:39:54', -1);

INSERT INTO `owner_type_all` (`owner_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `falg1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modifiede_on`, `last_modified_by`, `client_id`) VALUES
(-1, 'xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:40:39', '2011-06-24 00:41:08', -1, -1),
(1, 'primary owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:42:58', '2011-06-24 03:42:58', 1, 1);

INSERT INTO `payment_transaction_all` (`ptran_id`, `user_bl_id`, `to_bl_id`, `updh_id`, `timestamp`, `status`, `amount`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, 1, 1, 1, '2011-06-24 01:17:04', 'test', '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:34:47', '2011-06-24 00:25:20', -1);

INSERT INTO `service_plan_all` (`service_plan_id`, `toll_operator_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`) VALUES
(-1, NULL, 'free', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:42:58', -1, '2011-06-24 00:43:11', -1);

INSERT INTO `toll_location_all` (`toll_location_id`, `toll_operator_id`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`, `latitude`, `longitude`, `direction`) VALUES
(-1, -1, '\0\0\0\0\0\0\0\0\0\0\0\0\0ð?\0\0\0\0\0\0ð?', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:34:47', '2011-06-24 00:25:20', -1, '0.000000', '0.000000', NULL),
(1, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 16:56:15', '2011-06-24 16:56:20', 1, '33.043205', '-117.077179', NULL),
(2, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:25:38', '2011-06-24 23:25:30', 1, '32.948885', '-117.243336', NULL),
(3, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:28:15', '2011-06-24 23:28:07', 1, '32.978422', '-117.252373', NULL),
(4, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:29:33', '2011-06-24 23:29:28', 1, '33.019540', '-117.272702', NULL),
(5, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:31:47', '2011-06-24 23:31:39', 1, '33.133323', '-117.328511', NULL),
(6, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:33:03', '2011-06-24 23:32:56', 1, '33.299231', '-117.464852', NULL),
(7, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:34:51', '2011-06-24 23:34:45', 1, '33.384683', '-117.580699', NULL),
(8, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:36:29', '2011-06-24 23:36:22', 1, '33.472008', '-117.674562', NULL),
(9, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:37:55', '2011-06-24 23:37:49', 1, '33.616529', '-117.709292', NULL),
(10, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:39:33', '2011-06-24 23:39:27', 1, '33.713199', '-117.785564', NULL),
(11, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:40:53', '2011-06-24 23:40:47', 1, '33.807397', '-117.906723', NULL),
(12, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:42:07', '2011-06-24 23:42:01', 1, '33.939459', '-118.095372', NULL),
(13, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:44:10', '2011-06-24 23:44:03', 1, '32.948930', '-117.243648', NULL),
(14, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:45:22', '2011-06-24 23:45:16', 1, '32.978371', '-117.252636', NULL),
(15, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:46:46', '2011-06-24 23:46:40', 1, '33.019505', '-117.272976', NULL),
(16, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:52:55', '2011-06-24 23:52:48', 1, '33.133256', '-117.328823', NULL),
(17, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:56:48', '2011-06-24 23:56:43', 1, '33.299065', '-117.465183', NULL),
(18, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 23:58:14', '2011-06-24 23:58:06', 1, '33.384491', '-117.580956', NULL),
(19, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:00:08', '2011-06-25 00:00:02', 1, '33.472007', '-117.674805', NULL),
(20, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:02:01', '2011-06-25 00:01:53', 1, '33.616402', '-117.709683', NULL),
(21, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:03:17', '2011-06-25 00:03:11', 1, '33.713059', '-117.785911', NULL),
(22, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:04:32', '2011-06-25 00:04:27', 1, '33.807268', '-117.907111', NULL),
(23, 1, NULL, 'Y', 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-25 00:06:09', '2011-06-25 00:06:04', 1, '33.939427', '-118.095533', NULL);


INSERT INTO `toll_location_history_all` (`tlh_id`, `toll_location_id`, `toll_operator_id`, `geometry`, `is_covered`, `is_cash_only`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `start_date`, `end_date`, `action`, `client_id`, `latitude`, `longitude`, `direction`) VALUES
(1, -1, -1, '\0\0\0\0\0\0\0\0\0\0\0\0\0ð?\0\0\0\0\0\0ð?', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:25:20', '2011-06-24 00:34:47', -1, '2011-06-24 03:17:38', '3000-01-01 00:00:00', 'insert', -1, '0.000000', '0.000000', NULL);

INSERT INTO `toll_operator_all` (`toll_operator_id`, `user_id`, `name`, `is_active`, `website`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, NULL, 'freeways', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:44:38', '2011-06-24 00:44:44', -1, -1),
(1, 1, 'los angeles gateways', '1', 'www.losangeles.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:46:43', '2011-06-24 03:46:43', 1, 1);


INSERT INTO `toll_price_all` (`toll_price_id`, `toll_location_id`, `vehicle_type_id`, `cost_price`, `selling_price`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, '2.0000', '2.2500', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:45:59', '2011-06-24 00:46:05', -1);

INSERT INTO `udf_definition_all` (`udf_def_id`, `name`) VALUES
(-1, NULL);

INSERT INTO `user_all` (`user_id`, `client_id`, `utype_id`, `user_name`, `password`, `locale`, `is_active`, `contact_no`, `last_login_time`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`) VALUES
(-1, -1, -1, 'test@gmail.com', 'test', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:34:38', '2011-06-24 00:34:47', -1),
(1, 1, 1, 'harish@mobisols.com', 'mobisols', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:31:23', '2011-06-24 03:31:23', 1);

INSERT INTO `user_balance_all` (`ubal_id`, `user_id`, `balance`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, '0.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:53:41', '2011-06-24 00:53:48', -1),
(1, 1, '20.0000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 03:32:21', '2011-06-24 03:32:21', 1);

INSERT INTO `user_balance_log_all` (`ublog_id`, `ubal_id`, `delta`, `timestamp`, `action`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(1, -1, '0.0000', '2011-06-24 00:54:05', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:53:41', '2011-06-24 00:53:48', -1),
(2, 1, '0.0000', '2011-06-24 03:32:21', 'new account created', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 03:32:21', '2011-06-24 03:32:21', 1);

INSERT INTO `user_payment_detail_all` (`upd_id`, `user_id`, `cc_type_id`, `cc_ac_name`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `cc_cvv`, `bank_routing`, `bank_account`, `pay_prefer`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 1, 1, 'Harish', '407 445 678 543', 6, 2020, 453, '540', '12345', '1', '10005,Wall street', NULL, 'new york', 'new york', 'US', '54321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 03:38:34', '2011-06-24 03:38:34', 1);

INSERT INTO `user_service_all` (`user_service_id`, `user_id`, `service_id`, `start_date`, `end_date`, `priority`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, -1, -1, '2011-06-24 01:08:22', '2011-06-25 01:08:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 01:09:15', '2011-06-24 01:09:23', -1, -1);

INSERT INTO `user_type_all` (`user_type_id`, `name`, `description`, `min_balance`, `min_balance_type`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, 'free', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 00:36:40', '2011-06-24 00:36:45', -1, -1),
(1, 'owner', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:29:49', '2011-06-24 03:29:49', -1, 1);

INSERT INTO `user_vehicle_all` (`user_vehicle_id`, `user_id`, `vehicle_type_id`, `vehicle_start_date`, `vehicle_end_date`, `is_active`, `registration_no`, `registered_state`, `owner_type_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, -1, -1, NULL, NULL, '1', '1234', 'xyz', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 01:13:26', '2011-06-24 01:13:32', -1),
(1, 1, 1, '2011-06-24 03:44:17', NULL, 'Y', '123', 'san diego', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2011-06-24 03:44:17', '2011-06-24 03:44:17', 1);

INSERT INTO `vehicle_movement_log_all` (`vml_id`, `vml_type_id`, `uvh_id`,`toll_location_id` ,`geometry`, `timestamp`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_on`, `last_modified_by`, `created_on`, `client_id`, `latitude`, `longitude`, `status`) VALUES
(-1, -1, 1,-1, '\0\0\0\0\0\0\0\0\0\0\0\0\0ð?\0\0\0\0\0\0ð?', '2011-06-24 01:17:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 01:17:14', -1, '2011-06-24 01:17:28', -1, '0.000000', '0.000000', 'tentative');

INSERT INTO `vehicle_toll_usage_all` (`vtu_id`, `uvh_id`, `toll_loc_id`, `tph_id`, `timestamp`, `vml_id`, `ptran_id`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, 1, -1, 1, '2011-06-24 01:17:04', -1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:34:47', '2011-06-24 00:27:09', -1);

INSERT INTO `vehicle_type_all` (`vehicle_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `created_on`, `last_modified_on`, `last_modified_by`, `client_id`) VALUES
(-1, 'none', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 01:13:32', '2011-06-24 01:17:14', -1, -1),
(1, '4-wheeler ', 'car', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2011-06-24 03:40:04', '2011-06-24 03:40:04', -1, 1);

INSERT INTO `vml_type_all` (`vml_type_id`, `name`, `description`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `flag1`, `flag2`, `flag3`, `flag4`, `flag5`, `last_modified_by`, `last_modified_on`, `created_on`, `client_id`) VALUES
(-1, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -1, '2011-06-24 00:36:45', '2011-06-24 00:27:09', -1);

