#!/bin/bash
cd $(rospack find omtb_map_extension_plugin);
room_name=room_y;  # room_l room_y room_z room_200 room_2000 real_factory
#gui=true;

roslaunch omtb_map_extension_plugin pre_carto3d.launch room_name:=$room_name gui:=$gui;

sleep 10s;

roslaunch omtb_map_extension_plugin cat3d_test.launch room_name:=$room_name;


