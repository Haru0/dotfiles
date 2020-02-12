#!/bin/bash

# Get out of town if something errors
set -e

export DP_1_STATUS=$(</sys/class/drm/card0/card0-DP-1/status) # External screen
export DP_2_STATUS=$(</sys/class/drm/card0/card0-DP-2/status)
export EDP_1_STATUS=$(</sys/class/drm/card0/card0-eDP-1/status) # Laptop display
export HDMI_1_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-1/status)
export HDMI_2_STATUS=$(</sys/class/drm/card0/card0-HDMI-A-2/status)

if [ "$DP_1_STATUS" == "connected" ]; then  
	/bin/bash ~/.screenlayout/castellana77.sh
else
	/bin/bash ~/.screenlayout/default.sh
fi
