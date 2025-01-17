SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

ALTER TABLE `t_flink_app`
ADD COLUMN `CP_MAX_FAILURE_INTERVAL` int NULL AFTER `CP_THRESHOLD`,
ADD COLUMN `CP_FAILURE_RATE_INTERVAL` int NULL AFTER `CP_MAX_FAILURE_INTERVAL`,
ADD COLUMN `CP_FAILURE_ACTION` tinyint NULL AFTER `CP_FAILURE_RATE_INTERVAL`;

SET FOREIGN_KEY_CHECKS = 1;
COMMIT
