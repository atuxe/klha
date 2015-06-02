DROP TRIGGER IF EXISTS  `save_data` ;

CREATE DEFINER =  `root`@`localhost` TRIGGER `save_data` AFTER INSERT ON  `data` 
FOR EACH
ROW INSERT INTO  `all_data` (  `id` ,  `data_time` ,  `gateway_logo` ,  `sensor_name` ,  `channel_num` ,  `channel_name` ,  `value` ,  `up_state` ) 
VALUES (
NULL , new.data_time, new.gateway_logo, new.sensor_name, new.channel_num, new.channel_name, new.value, new.up_state
);

