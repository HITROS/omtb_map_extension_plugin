#!/bin/bash
cd $(rospack find omtb_map_extension_plugin)
cd bag
rosbag record -O real_factory  /robot1/odom /tf  __name:=my_bag
