#!/bin/bash

#rosrun map_server map_saver map:=/robot1/map -f ~/catkin_slam/src/omtb/omtb_test/map/room_y
rosservice call /robot1/finish_trajectory 0;
rosrun map_server map_saver map:=/robot1/map -f $(rospack find omtb_map_extension_plugin)/map/2000mapp;
rosservice call /robot1/write_state "$(rospack find omtb_map_extension_plugin)/map/2000map.pbstream"&&rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=$(rospack find omtb_map_extension_plugin)/map/2000map -pbstream_filename=$(rospack find omtb_map_extension_plugin)/map/2000map.pbstream -resolution=0.05
