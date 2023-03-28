#!/bin/bash
gnome-terminal --window -e "rosrun f110_race_nodes pure_pursuit.py" --tab -e  "rosrun f110_race_nodes path_plotter.py" --tab -e  "rosrun f110_race_nodes raceline_viz.py"