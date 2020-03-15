#!/bin/bash
cd $(rospack find omtb_map_extension_plugin)
cd bag
rosbag record -O room_y  /tf /robot1/odom __name:=my_bag

