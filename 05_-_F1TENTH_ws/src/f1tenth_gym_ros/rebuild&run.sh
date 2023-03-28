#!/bin/bash
if [ ! -d f1tenth_gym ] ; then
    git clone https://github.com/f1tenth/f1tenth_gym
    cd f1tenth_gym
    git checkout cpp_backend_archive
    cd ../
else
    echo f1tenth_gym exists, not cloning.
fi
docker build -t f1tenth_gym -f Dockerfile .

terminator  --new-tab -e "docker kill f1tenth_gym_container"
terminator  --new-tab -e "docker rm f1tenth_gym_container"
gnome-terminal --tab -e "roslaunch f1tenth_gym_ros simulate_F110_ackerman.launch" --tab -e "sh -c 'sleep 0.5; docker run -it --name=f1tenth_gym_container --rm --net=host f1tenth_gym; exec bash'" 