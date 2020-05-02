#!/bin/bash

#rosrun map_server map_saver map:=/robot1/map -f ~/catkin_slam/src/omtb/omtb_test/map/room_z_cartographer
rosservice call /robot1/finish_trajectory 0;
rosrun map_server map_saver map:=/robot1/map -f $(rospack find omtb_map_extension_plugin)/map/real;
rosservice call /robot1/write_state "$(rospack find omtb_map_extension_plugin)/map/real.pbstream"&&rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=$(rospack find omtb_map_extension_plugin)/map/real -pbstream_filename=$(rospack find omtb_map_extension_plugin)/map/real.pbstream -resolution=0.05

