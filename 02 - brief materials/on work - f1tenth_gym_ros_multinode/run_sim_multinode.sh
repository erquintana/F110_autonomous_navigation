#!/bin/bash
terminator  --new-tab -e "docker kill f1tenth_gym_container"
terminator  --new-tab -e "docker rm f1tenth_gym_container"
gnome-terminal --window -e "docker run -it --name=f1tenth_gym_container --rm --net=host f1tenth_gym" --tab -e "roslaunch f1tenth_gym_ros agent_template.launch" 
#gnome-terminal --window -e "roslaunch f1tenth_gym_ros agent_template.launch" 