
SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_broadcast_order_0
-- ----------------------------
DROP TABLE IF EXISTS `t_broadcast_order_0`;
CREATE TABLE `t_broadcast_order_0` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_state` tinyint(1) DEFAULT NULL COMMENT '状态',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_broadcast_order_0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_broadcast_order_1
-- ----------------------------
DROP TABLE IF EXISTS `t_broadcast_order_1`;
CREATE TABLE `t_broadcast_order_1` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_state` tinyint(1) DEFAULT NULL COMMENT '状态',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_broadcast_order_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_broadcast_order_2
-- ----------------------------
DROP TABLE IF EXISTS `t_broadcast_order_2`;
CREATE TABLE `t_broadcast_order_2` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_state` tinyint(1) DEFAULT NULL COMMENT '状态',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_broadcast_order_2
-- ----------------------------
BEGIN;
INSERT INTO `t_broadcast_order_2` (`id`, `order_id`, `user_id`, `order_state`, `order_no`, `create_time`) VALUES (1165345048901431296, 2, 2, 1, 'asasd', '2025-08-21 09:45:10');
COMMIT;

-- ----------------------------
-- Table structure for t_broadcast_order_3
-- ----------------------------
DROP TABLE IF EXISTS `t_broadcast_order_3`;
CREATE TABLE `t_broadcast_order_3` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_state` tinyint(1) DEFAULT NULL COMMENT '状态',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_broadcast_order_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_dict
-- ----------------------------
DROP TABLE IF EXISTS `t_dict`;
CREATE TABLE `t_dict` (
  `dict_id` bigint NOT NULL COMMENT '字典流水ID',
  `dict_code` varchar(100) DEFAULT NULL COMMENT '字典编码',
  `dict_type` varchar(100) DEFAULT NULL COMMENT '字典类型',
  `dict_value` varchar(100) DEFAULT NULL COMMENT '字典值',
  `dict_text` varchar(100) DEFAULT NULL COMMENT '字典文本',
  PRIMARY KEY (`dict_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典表';

-- ----------------------------
-- Records of t_dict
-- ----------------------------
BEGIN;
INSERT INTO `t_dict` (`dict_id`, `dict_code`, `dict_type`, `dict_value`, `dict_text`) VALUES (567, 'ORDER_STATE', 'ORDER_STATE', '1', '已付款');
COMMIT;

-- ----------------------------
-- Table structure for t_hit_0
-- ----------------------------
DROP TABLE IF EXISTS `t_hit_0`;
CREATE TABLE `t_hit_0` (
  `hit_id` bigint NOT NULL COMMENT '强制分片流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `hit_no` varchar(100) DEFAULT NULL COMMENT '强制分片流水号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`hit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='强制分片表';

-- ----------------------------
-- Records of t_hit_0
-- ----------------------------
BEGIN;
INSERT INTO `t_hit_0` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (656, 20, 'asasd1', '2020-01-02');
COMMIT;

-- ----------------------------
-- Table structure for t_hit_1
-- ----------------------------
DROP TABLE IF EXISTS `t_hit_1`;
CREATE TABLE `t_hit_1` (
  `hit_id` bigint NOT NULL COMMENT '强制分片流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `hit_no` varchar(100) DEFAULT NULL COMMENT '强制分片流水号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`hit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='强制分片表';

-- ----------------------------
-- Records of t_hit_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_hit_2
-- ----------------------------
DROP TABLE IF EXISTS `t_hit_2`;
CREATE TABLE `t_hit_2` (
  `hit_id` bigint NOT NULL COMMENT '强制分片流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `hit_no` varchar(100) DEFAULT NULL COMMENT '强制分片流水号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`hit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='强制分片表';

-- ----------------------------
-- Records of t_hit_2
-- ----------------------------
BEGIN;
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (98, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (294, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (382, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (546, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (714, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (738, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_hit_2` (`hit_id`, `user_id`, `hit_no`, `create_time`) VALUES (874, 20, 'asasd1', '2020-01-02');
COMMIT;

-- ----------------------------
-- Table structure for t_hit_3
-- ----------------------------
DROP TABLE IF EXISTS `t_hit_3`;
CREATE TABLE `t_hit_3` (
  `hit_id` bigint NOT NULL COMMENT '强制分片流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `hit_no` varchar(100) DEFAULT NULL COMMENT '强制分片流水号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`hit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='强制分片表';

-- ----------------------------
-- Records of t_hit_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_0`;
CREATE TABLE `t_order_0` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382603155943424, 264, 2, 'asasd', '2025-08-21 12:14:24');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382784358264832, 312, 2, 'asasd', '2025-08-21 12:15:07');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382788732923904, 864, 2, 'asasd', '2025-08-21 12:15:08');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382812514627584, 412, 2, 'asasd', '2025-08-21 12:15:14');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382824879435776, 960, 2, 'asasd', '2025-08-21 12:15:17');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382832945082368, 936, 2, 'asasd', '2025-08-21 12:15:19');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391561023270912, 224, 2, 'asasd', '2025-08-21 12:50:00');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391591759130624, 860, 2, 'asasd', '2025-08-21 12:50:07');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391598365159424, 684, 2, 'asasd', '2025-08-21 12:50:08');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391647451099136, 972, 2, 'asasd', '2025-08-21 12:50:20');
INSERT INTO `t_order_0` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391657530011648, 208, 2, 'asasd', '2025-08-21 12:50:23');
COMMIT;

-- ----------------------------
-- Table structure for t_order_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_1`;
CREATE TABLE `t_order_1` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_1
-- ----------------------------
BEGIN;
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382765769109504, 933, 2, 'asasd', '2025-08-21 12:15:03');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382794990825472, 517, 2, 'asasd', '2025-08-21 12:15:10');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382799529062400, 133, 2, 'asasd', '2025-08-21 12:15:11');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382808181911552, 605, 2, 'asasd', '2025-08-21 12:15:13');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165383046699397120, 789, 2, 'asasd', '2025-08-21 12:16:10');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391020394262528, 573, 2, 'asasd', '2025-08-21 12:47:53');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391073410265088, 549, 2, 'asasd', '2025-08-21 12:48:03');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391089172459520, 225, 2, 'asasd', '2025-08-21 12:48:07');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391621660323840, 673, 2, 'asasd', '2025-08-21 12:50:14');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391636260696064, 141, 2, 'asasd', '2025-08-21 12:50:18');
INSERT INTO `t_order_1` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391664089903104, 985, 2, 'asasd', '2025-08-21 12:50:24');
COMMIT;

-- ----------------------------
-- Table structure for t_order_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_2`;
CREATE TABLE `t_order_2` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_2
-- ----------------------------
BEGIN;
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165223629416804352, 2, 2, 'asasd', '2025-08-21 01:42:42');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382774145134592, 918, 2, 'asasd', '2025-08-21 12:15:05');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382803975024640, 642, 2, 'asasd', '2025-08-21 12:15:12');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382816809594880, 146, 2, 'asasd', '2025-08-21 12:15:15');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382820823543808, 634, 2, 'asasd', '2025-08-21 12:15:16');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165390772640919552, 558, 2, 'asasd', '2025-08-21 12:47:04');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391093656170496, 146, 2, 'asasd', '2025-08-21 12:48:08');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391097842085888, 138, 2, 'asasd', '2025-08-21 12:48:09');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391582330335232, 138, 2, 'asasd', '2025-08-21 12:50:05');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391604761473024, 694, 2, 'asasd', '2025-08-21 12:50:10');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391626806734848, 726, 2, 'asasd', '2025-08-21 12:50:15');
INSERT INTO `t_order_2` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391652018696192, 162, 2, 'asasd', '2025-08-21 12:50:21');
COMMIT;

-- ----------------------------
-- Table structure for t_order_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_3`;
CREATE TABLE `t_order_3` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_3
-- ----------------------------
BEGIN;
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165382779086024704, 723, 2, 'asasd', '2025-08-21 12:15:06');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165383031692177408, 895, 2, 'asasd', '2025-08-21 12:16:06');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391057157337088, 659, 2, 'asasd', '2025-08-21 12:47:59');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391079395536896, 419, 2, 'asasd', '2025-08-21 12:48:05');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391084546142208, 579, 2, 'asasd', '2025-08-21 12:48:06');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391609689780224, 515, 2, 'asasd', '2025-08-21 12:50:11');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391631743430656, 679, 2, 'asasd', '2025-08-21 12:50:16');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391642602483712, 803, 2, 'asasd', '2025-08-21 12:50:19');
INSERT INTO `t_order_3` (`id`, `order_id`, `user_id`, `order_no`, `create_time`) VALUES (1165391669055959040, 731, 2, 'asasd', '2025-08-21 12:50:25');
COMMIT;

-- ----------------------------
-- Table structure for t_order_auto_interval_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_auto_interval_0`;
CREATE TABLE `t_order_auto_interval_0` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于自动时间段分片算法的订单表';

-- ----------------------------
-- Records of t_order_auto_interval_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_auto_interval_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (115, 20, 'asasd1', '2020-01-02');
INSERT INTO `t_order_auto_interval_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (976, 20, 'asasd1', '2019-01-02');
COMMIT;

-- ----------------------------
-- Table structure for t_order_auto_interval_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_auto_interval_1`;
CREATE TABLE `t_order_auto_interval_1` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于自动时间段分片算法的订单表';

-- ----------------------------
-- Records of t_order_auto_interval_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_auto_interval_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_auto_interval_2`;
CREATE TABLE `t_order_auto_interval_2` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于自动时间段分片算法的订单表';

-- ----------------------------
-- Records of t_order_auto_interval_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_auto_interval_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_auto_interval_3`;
CREATE TABLE `t_order_auto_interval_3` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于自动时间段分片算法的订单表';

-- ----------------------------
-- Records of t_order_auto_interval_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_boundary_range_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_boundary_range_0`;
CREATE TABLE `t_order_boundary_range_0` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片边界的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_boundary_range_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_boundary_range_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (142, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_boundary_range_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_boundary_range_1`;
CREATE TABLE `t_order_boundary_range_1` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片边界的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_boundary_range_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_boundary_range_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_boundary_range_2`;
CREATE TABLE `t_order_boundary_range_2` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片边界的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_boundary_range_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_boundary_range_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_boundary_range_3`;
CREATE TABLE `t_order_boundary_range_3` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片边界的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_boundary_range_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_hash_mod_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_hash_mod_0`;
CREATE TABLE `t_order_hash_mod_0` (
  `order_id` varchar(32) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_hash_mod_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_hash_mod_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES ('b5822e7002494056a18f38f35b237af5', 20, 'asasd1', NULL);
INSERT INTO `t_order_hash_mod_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES ('d7d2964967484d1982b55b6a924207a6', 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_hash_mod_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_hash_mod_1`;
CREATE TABLE `t_order_hash_mod_1` (
  `order_id` varchar(32) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_hash_mod_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_hash_mod_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_hash_mod_2`;
CREATE TABLE `t_order_hash_mod_2` (
  `order_id` varchar(32) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_hash_mod_2
-- ----------------------------
BEGIN;
INSERT INTO `t_order_hash_mod_2` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES ('1c459dcb29064722b51fefacd9faa2d5', 20, 'asasd1', NULL);
INSERT INTO `t_order_hash_mod_2` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES ('5b4f42b6426545c0badb7db2f1020e68', 20, 'asasd1', NULL);
INSERT INTO `t_order_hash_mod_2` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES ('80531bb784ad4373b54163e4911fff72', 20, 'asasd1', NULL);
INSERT INTO `t_order_hash_mod_2` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES ('be9bece23961448fa6c85a403d71c10e', 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_hash_mod_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_hash_mod_3`;
CREATE TABLE `t_order_hash_mod_3` (
  `order_id` varchar(32) NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_hash_mod_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_item_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item_0`;
CREATE TABLE `t_order_item_0` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_item_id` bigint NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint DEFAULT NULL COMMENT '商家流水ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_item_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382603302744065, 3, 2, 264, 23, '2025-08-21 12:14:24');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382603323715584, 4, 2, 264, 23, '2025-08-21 12:14:24');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382603327909889, 5, 2, 264, 23, '2025-08-21 12:14:24');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382784366653441, 3, 2, 312, 23, '2025-08-21 12:15:07');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382784379236352, 4, 2, 312, 23, '2025-08-21 12:15:07');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382784387624961, 5, 2, 312, 23, '2025-08-21 12:15:07');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382788741312513, 3, 2, 864, 23, '2025-08-21 12:15:08');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382788758089728, 4, 2, 864, 23, '2025-08-21 12:15:08');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382788762284033, 5, 2, 864, 23, '2025-08-21 12:15:08');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382812523016193, 3, 2, 412, 23, '2025-08-21 12:15:14');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382812531404800, 4, 2, 412, 23, '2025-08-21 12:15:14');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382812548182017, 5, 2, 412, 23, '2025-08-21 12:15:14');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382824887824385, 3, 2, 960, 23, '2025-08-21 12:15:17');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382824892018688, 4, 2, 960, 23, '2025-08-21 12:15:17');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382824900407297, 5, 2, 960, 23, '2025-08-21 12:15:17');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382832970248193, 3, 2, 936, 23, '2025-08-21 12:15:19');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382832982831104, 4, 2, 936, 23, '2025-08-21 12:15:19');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382832987025409, 5, 2, 936, 23, '2025-08-21 12:15:19');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391561170071553, 3, 2, 224, 23, '2025-08-21 12:50:00');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391561212014592, 4, 2, 224, 23, '2025-08-21 12:50:00');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391561245569025, 5, 2, 224, 23, '2025-08-21 12:50:00');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391591780102145, 3, 2, 860, 23, '2025-08-21 12:50:07');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391591788490752, 4, 2, 860, 23, '2025-08-21 12:50:07');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391591801073665, 5, 2, 860, 23, '2025-08-21 12:50:07');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391598377742337, 3, 2, 684, 23, '2025-08-21 12:50:08');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391598386130944, 4, 2, 684, 23, '2025-08-21 12:50:08');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391598402908161, 5, 2, 684, 23, '2025-08-21 12:50:08');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391647463682049, 3, 2, 972, 23, '2025-08-21 12:50:20');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391647472070656, 4, 2, 972, 23, '2025-08-21 12:50:20');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391647476264961, 5, 2, 972, 23, '2025-08-21 12:50:20');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391657534205953, 3, 2, 208, 23, '2025-08-21 12:50:23');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391657542594560, 4, 2, 208, 23, '2025-08-21 12:50:23');
INSERT INTO `t_order_item_0` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391657550983169, 5, 2, 208, 23, '2025-08-21 12:50:23');
COMMIT;

-- ----------------------------
-- Table structure for t_order_item_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item_1`;
CREATE TABLE `t_order_item_1` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_item_id` bigint NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint DEFAULT NULL COMMENT '商家流水ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_item_1
-- ----------------------------
BEGIN;
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382765777498113, 3, 2, 933, 23, '2025-08-21 12:15:03');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382765794275328, 4, 2, 933, 23, '2025-08-21 12:15:03');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382765802663937, 5, 2, 933, 23, '2025-08-21 12:15:03');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382795007602689, 3, 2, 517, 23, '2025-08-21 12:15:10');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382795015991296, 4, 2, 517, 23, '2025-08-21 12:15:10');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382795024379905, 5, 2, 517, 23, '2025-08-21 12:15:10');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382799550033921, 3, 2, 133, 23, '2025-08-21 12:15:11');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382799558422528, 4, 2, 133, 23, '2025-08-21 12:15:11');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382799566811137, 5, 2, 133, 23, '2025-08-21 12:15:11');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382808190300161, 3, 2, 605, 23, '2025-08-21 12:15:13');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382808198688768, 4, 2, 605, 23, '2025-08-21 12:15:13');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382808202883073, 5, 2, 605, 23, '2025-08-21 12:15:13');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165383046707785729, 3, 2, 789, 23, '2025-08-21 12:16:10');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165383046716174336, 4, 2, 789, 23, '2025-08-21 12:16:10');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165383046720368641, 5, 2, 789, 23, '2025-08-21 12:16:10');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391029189718017, 3, 2, 573, 23, '2025-08-21 12:47:53');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391029210689536, 4, 2, 573, 23, '2025-08-21 12:47:53');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391029223272449, 5, 2, 573, 23, '2025-08-21 12:47:53');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391073422848001, 3, 2, 549, 23, '2025-08-21 12:48:03');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391073443819520, 4, 2, 549, 23, '2025-08-21 12:48:03');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391073456402433, 5, 2, 549, 23, '2025-08-21 12:48:03');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391089176653825, 3, 2, 225, 23, '2025-08-21 12:48:07');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391089189236736, 4, 2, 225, 23, '2025-08-21 12:48:07');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391089193431041, 5, 2, 225, 23, '2025-08-21 12:48:07');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391621672906753, 3, 2, 673, 23, '2025-08-21 12:50:14');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391621681295360, 4, 2, 673, 23, '2025-08-21 12:50:14');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391621689683969, 5, 2, 673, 23, '2025-08-21 12:50:14');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391636285861889, 3, 2, 141, 23, '2025-08-21 12:50:18');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391636294250496, 4, 2, 141, 23, '2025-08-21 12:50:18');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391636298444801, 5, 2, 141, 23, '2025-08-21 12:50:18');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391664115068929, 3, 2, 985, 23, '2025-08-21 12:50:24');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391664123457536, 4, 2, 985, 23, '2025-08-21 12:50:24');
INSERT INTO `t_order_item_1` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391664131846145, 5, 2, 985, 23, '2025-08-21 12:50:24');
COMMIT;

-- ----------------------------
-- Table structure for t_order_item_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item_2`;
CREATE TABLE `t_order_item_2` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_item_id` bigint NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint DEFAULT NULL COMMENT '商家流水ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_item_2
-- ----------------------------
BEGIN;
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165223629458747393, 3, 2, 2, 23, '2025-08-21 01:42:42');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165223629483913216, 4, 2, 2, 23, '2025-08-21 01:42:42');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165223629496496129, 5, 2, 2, 23, '2025-08-21 01:42:42');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165345049035649025, 3, 2, 2, 23, '2025-08-21 09:45:10');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165345049102757888, 4, 2, 2, 23, '2025-08-21 09:45:10');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165345049111146497, 5, 2, 2, 23, '2025-08-21 09:45:10');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382774157717505, 3, 2, 918, 23, '2025-08-21 12:15:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382774166106112, 4, 2, 918, 23, '2025-08-21 12:15:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382774174494721, 5, 2, 918, 23, '2025-08-21 12:15:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382803983413249, 3, 2, 642, 23, '2025-08-21 12:15:12');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382803991801856, 4, 2, 642, 23, '2025-08-21 12:15:12');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382803995996161, 5, 2, 642, 23, '2025-08-21 12:15:12');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382816822177793, 3, 2, 146, 23, '2025-08-21 12:15:15');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382816834760704, 4, 2, 146, 23, '2025-08-21 12:15:15');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382816838955009, 5, 2, 146, 23, '2025-08-21 12:15:15');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382820831932417, 3, 2, 634, 23, '2025-08-21 12:15:16');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382820840321024, 4, 2, 634, 23, '2025-08-21 12:15:16');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382820844515329, 5, 2, 634, 23, '2025-08-21 12:15:16');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165390823417163777, 3, 2, 558, 23, '2025-08-21 12:47:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165390828156727296, 4, 2, 558, 23, '2025-08-21 12:47:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165390830845276161, 5, 2, 558, 23, '2025-08-21 12:47:06');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391093668753409, 3, 2, 146, 23, '2025-08-21 12:48:08');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391093698113536, 4, 2, 146, 23, '2025-08-21 12:48:08');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391093706502145, 5, 2, 146, 23, '2025-08-21 12:48:08');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391097858863105, 3, 2, 138, 23, '2025-08-21 12:48:09');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391097871446016, 4, 2, 138, 23, '2025-08-21 12:48:09');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391097879834625, 5, 2, 138, 23, '2025-08-21 12:48:09');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391582342918145, 3, 2, 138, 23, '2025-08-21 12:50:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391582363889664, 4, 2, 138, 23, '2025-08-21 12:50:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391582368083969, 5, 2, 138, 23, '2025-08-21 12:50:05');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391604774055937, 3, 2, 694, 23, '2025-08-21 12:50:10');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391604786638848, 4, 2, 694, 23, '2025-08-21 12:50:10');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391604811804673, 5, 2, 694, 23, '2025-08-21 12:50:10');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391626823512065, 3, 2, 726, 23, '2025-08-21 12:50:15');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391626831900672, 4, 2, 726, 23, '2025-08-21 12:50:15');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391626848677889, 5, 2, 726, 23, '2025-08-21 12:50:15');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391652027084801, 3, 2, 162, 23, '2025-08-21 12:50:21');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391652035473408, 4, 2, 162, 23, '2025-08-21 12:50:21');
INSERT INTO `t_order_item_2` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391652043862017, 5, 2, 162, 23, '2025-08-21 12:50:21');
COMMIT;

-- ----------------------------
-- Table structure for t_order_item_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_item_3`;
CREATE TABLE `t_order_item_3` (
  `id` bigint NOT NULL COMMENT '主键',
  `order_item_id` bigint NOT NULL COMMENT '订单明细流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_id` bigint DEFAULT NULL COMMENT '订单流水ID',
  `seller_id` bigint DEFAULT NULL COMMENT '商家流水ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of t_order_item_3
-- ----------------------------
BEGIN;
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382779098607617, 3, 2, 723, 23, '2025-08-21 12:15:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382779111190528, 4, 2, 723, 23, '2025-08-21 12:15:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165382779119579137, 5, 2, 723, 23, '2025-08-21 12:15:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165383031713148929, 3, 2, 895, 23, '2025-08-21 12:16:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165383031721537536, 4, 2, 895, 23, '2025-08-21 12:16:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165383031738314753, 5, 2, 895, 23, '2025-08-21 12:16:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391057169920001, 3, 2, 659, 23, '2025-08-21 12:47:59');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391057182502912, 4, 2, 659, 23, '2025-08-21 12:47:59');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391057186697217, 5, 2, 659, 23, '2025-08-21 12:47:59');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391079408119809, 3, 2, 419, 23, '2025-08-21 12:48:05');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391079416508416, 4, 2, 419, 23, '2025-08-21 12:48:05');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391079420702721, 5, 2, 419, 23, '2025-08-21 12:48:05');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391084558725121, 3, 2, 579, 23, '2025-08-21 12:48:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391084562919424, 4, 2, 579, 23, '2025-08-21 12:48:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391084571308033, 5, 2, 579, 23, '2025-08-21 12:48:06');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391609710751745, 3, 2, 515, 23, '2025-08-21 12:50:11');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391609723334656, 4, 2, 515, 23, '2025-08-21 12:50:11');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391609735917569, 5, 2, 515, 23, '2025-08-21 12:50:11');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391631756013569, 3, 2, 679, 23, '2025-08-21 12:50:16');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391631768596480, 4, 2, 679, 23, '2025-08-21 12:50:16');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391631781179393, 5, 2, 679, 23, '2025-08-21 12:50:16');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391642610872321, 3, 2, 803, 23, '2025-08-21 12:50:19');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391642619260928, 4, 2, 803, 23, '2025-08-21 12:50:19');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391642623455233, 5, 2, 803, 23, '2025-08-21 12:50:19');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391669072736257, 3, 2, 731, 23, '2025-08-21 12:50:25');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391669081124864, 4, 2, 731, 23, '2025-08-21 12:50:25');
INSERT INTO `t_order_item_3` (`id`, `order_item_id`, `user_id`, `order_id`, `seller_id`, `create_time`) VALUES (1165391669089513473, 5, 2, 731, 23, '2025-08-21 12:50:25');
COMMIT;

-- ----------------------------
-- Table structure for t_order_mod_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_mod_0`;
CREATE TABLE `t_order_mod_0` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_mod_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_mod_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (20, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_mod_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_mod_1`;
CREATE TABLE `t_order_mod_1` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_mod_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_mod_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_mod_2`;
CREATE TABLE `t_order_mod_2` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_mod_2
-- ----------------------------
BEGIN;
INSERT INTO `t_order_mod_2` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (2, 2, 'asasd1', NULL);
INSERT INTO `t_order_mod_2` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (22, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_mod_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_mod_3`;
CREATE TABLE `t_order_mod_3` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='取模分片算法的订单表';

-- ----------------------------
-- Records of t_order_mod_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_0
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_0`;
CREATE TABLE `t_order_volume_range_0` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_0
-- ----------------------------
BEGIN;
INSERT INTO `t_order_volume_range_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (31, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (60, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (65, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_0` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (73, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_1
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_1`;
CREATE TABLE `t_order_volume_range_1` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_10
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_10`;
CREATE TABLE `t_order_volume_range_10` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_10
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_2
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_2`;
CREATE TABLE `t_order_volume_range_2` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_3
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_3`;
CREATE TABLE `t_order_volume_range_3` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_4
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_4`;
CREATE TABLE `t_order_volume_range_4` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_4
-- ----------------------------
BEGIN;
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (402, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (443, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (445, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (495, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (653, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (756, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (774, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (875, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_4` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (923, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_5
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_5`;
CREATE TABLE `t_order_volume_range_5` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_5
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_6
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_6`;
CREATE TABLE `t_order_volume_range_6` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_6
-- ----------------------------
BEGIN;
INSERT INTO `t_order_volume_range_6` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (603, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_6` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (660, 20, 'asasd1', NULL);
INSERT INTO `t_order_volume_range_6` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (670, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_7
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_7`;
CREATE TABLE `t_order_volume_range_7` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_7
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_8
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_8`;
CREATE TABLE `t_order_volume_range_8` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_8
-- ----------------------------
BEGIN;
INSERT INTO `t_order_volume_range_8` (`order_id`, `user_id`, `order_no`, `create_time`) VALUES (854, 20, 'asasd1', NULL);
COMMIT;

-- ----------------------------
-- Table structure for t_order_volume_range_9
-- ----------------------------
DROP TABLE IF EXISTS `t_order_volume_range_9`;
CREATE TABLE `t_order_volume_range_9` (
  `order_id` bigint NOT NULL COMMENT '订单流水ID',
  `user_id` bigint DEFAULT NULL COMMENT '用户流水ID',
  `order_no` varchar(100) DEFAULT NULL COMMENT '订单编号',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='基于分片容量的范围分片算法的订单表';

-- ----------------------------
-- Records of t_order_volume_range_9
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_user_0
-- ----------------------------
DROP TABLE IF EXISTS `t_user_0`;
CREATE TABLE `t_user_0` (
  `user_id` bigint NOT NULL COMMENT '用户流水ID',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名称',
  `pwd` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `pwd_cipher` varchar(64) DEFAULT NULL COMMENT '加密以后的密码',
  `user_name_assisted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '查询辅助列名称',
  `user_name_like` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模糊查询字段',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of t_user_0
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_user_1
-- ----------------------------
DROP TABLE IF EXISTS `t_user_1`;
CREATE TABLE `t_user_1` (
  `user_id` bigint NOT NULL COMMENT '用户流水ID',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名称',
  `pwd` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `pwd_cipher` varchar(64) DEFAULT NULL COMMENT '加密以后的密码',
  `user_name_assisted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '查询辅助列名称',
  `user_name_like` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模糊查询字段',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of t_user_1
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for t_user_2
-- ----------------------------
DROP TABLE IF EXISTS `t_user_2`;
CREATE TABLE `t_user_2` (
  `user_id` bigint NOT NULL COMMENT '用户流水ID',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名称',
  `pwd` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `pwd_cipher` varchar(64) DEFAULT NULL COMMENT '加密以后的密码',
  `user_name_assisted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '查询辅助列名称',
  `user_name_like` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模糊查询字段',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of t_user_2
-- ----------------------------
BEGIN;
INSERT INTO `t_user_2` (`user_id`, `user_name`, `pwd`, `pwd_cipher`, `user_name_assisted`, `user_name_like`, `user_email`) VALUES (2, 'l/sUXEH1MdJ0ax8vKepYCw==', 'MyOShk4kjRnds7CZfU5NCw==', 'e10adc3949ba59abbe56e057f20f883e', 'baa7a52965b99778f38ef37f235e9053', '`t`t', 'asddasdasd@163.com');
COMMIT;

-- ----------------------------
-- Table structure for t_user_3
-- ----------------------------
DROP TABLE IF EXISTS `t_user_3`;
CREATE TABLE `t_user_3` (
  `user_id` bigint NOT NULL COMMENT '用户流水ID',
  `user_name` varchar(32) DEFAULT NULL COMMENT '用户名称',
  `pwd` varchar(32) DEFAULT NULL COMMENT '用户密码',
  `pwd_cipher` varchar(64) DEFAULT NULL COMMENT '加密以后的密码',
  `user_name_assisted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '查询辅助列名称',
  `user_name_like` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '模糊查询字段',
  `user_email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of t_user_3
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
