#!/bin/bash

# localhost is not a valid ROS_MASTER_URI for multiple machines
export ROS_MASTER_URI="http://$HOSTNAME:11311"

# workaround: A Bug causes failure to check for known_hosts
export ROSLAUNCH_SSH_UNKNOWN=1

roslaunch asr_kinematic_chain_dome dome_with_fob.launch
