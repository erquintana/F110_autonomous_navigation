#!/bin/bash
gnome-terminal  --window -e "docker kill f1tenth_gym_container"
gnome-terminal  --window -e "docker rm f1tenth_gym_container"
gnome-terminal --tab -e "roslaunch f1tenth_gym_ros simulate_F110_ackerman.launch" --tab -e "sh -c 'sleep 1.5; docker run -it --name=f1tenth_gym_container --rm --net=host f1tenth_gym; exec bash'" 