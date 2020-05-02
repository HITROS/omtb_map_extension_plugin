#!/usr/bin/env python
import os
import rospkg
#os.system('sh ~/catkin_slam/src/omtb_map_extension_plugin/scrips/save_bag_room_200.sh')
#os.system("sh 'rospack find omtb_map_extension_plugin'/scrips/save_bag_room_200.sh")
os.system("cd $(rospack find omtb_map_extension_plugin)/scrips &&sh save_bag_room_200.sh")
