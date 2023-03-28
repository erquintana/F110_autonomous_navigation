#!/bin/bash
docker kill f1tenth_gym_container
docker run -it --name=f1tenth_gym_container --rm --net=host f1tenth_gym