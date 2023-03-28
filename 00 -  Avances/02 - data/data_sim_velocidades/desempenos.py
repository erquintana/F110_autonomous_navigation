#!/usr/bin/env python3
import csv
import numpy as np
from scipy.spatial import distance
 

drive_file = 'pp_cata_lk2_pv075.csv'
odom_file = "odom_pp_catalunya_lkhd2_p0_75.csv"

distance = 0
max_vel = 0
prom_vel = 0
lap_time_initial = 0
lap_time = 0
prom_counter = 1
vel_pos = 4
time_pos = 1
angle_pos = 4
initial_x = 0
x_pos = 5
y_pos = 6
x = []
y = []

## Velocities:
with open(drive_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        if(prom_counter == 1):
            lap_time_initial = float(row[time_pos])

        # max vel:
        if(float(row[vel_pos]) > max_vel):
            max_vel = float(row[vel_pos])
        # prom vel:
        prom_vel += float(row[vel_pos])
        lap_time = float(row[time_pos])

        prom_counter +=1

# Odometry:
with open(odom_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        if(prom_counter == 1):
            initial_x = float(row[x_pos])
        
        if(float(row[x_pos]) ):
            x.append(float(row[x_pos])) 
            y.append(float(row[y_pos]))
               
d = []
m = 0

while m < len(x):
     d.append(np.sqrt(np.sum(np.square(x[m]-y[m]))))
     m+=1

dist = np.sum(d)/100
prom_vel = prom_vel/prom_counter
lap_time = lap_time - lap_time_initial
lap_time = lap_time/1000



    
print("\tmax_vel = ", max_vel)
print("\tprom_vel = ", prom_vel)
print("\tlap time = ", lap_time)
print("\tlap distance = ", dist)
        

        