#!/usr/bin/env python3

import matplotlib.pyplot as plt
import csv

ext_file = '.pdf'
folder = 'img/'

######################################################################################
######################################################################################
######################################################################################
# brait circuito example/catalunya and zones
zonas = 4
circuit = 'example'

if(circuit == 'catalunya'):
    circnum = 2
elif(circuit == 'example'):
    circnum = 1    

exported_file_name = 'braith_'+str(zonas)+'sec_'+circuit

graph_title = 'Evasión de obstáculos Braitenberg modificado, circuito '+str(circnum)+', '+str(zonas)+' zonas'

odom_file_nsec_d0_5 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d0_5.csv'
odom_file_nsec_d1_5 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d1_5.csv'
odom_file_nsec_d2 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d2.csv'
odom_file_nsec_d2_5 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d2_5.csv'
odom_file_nsec_d3 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d3.csv'
odom_file_nsec_d3_5 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d3_5.csv'
odom_file_nsec_d5 = 'odom_brait_modif_'+circuit+'_'+str(zonas)+'sec_d5.csv'


label_nsec_d0_5 = 'zonas = '+str(zonas)+', d = 0.5' 
label_nsec_d1_5 = 'zonas = '+str(zonas)+', d = 1.5' 
label_nsec_d2 = 'zonas = '+str(zonas)+', d = 2' 
label_nsec_d2_5 = 'zonas = '+str(zonas)+', d = 2.5' 
label_nsec_d3 = 'zonas = '+str(zonas)+', d = 3' 
label_nsec_d3_5 = 'zonas = '+str(zonas)+', d = 3.5' 
label_nsec_d5 = 'zonas = '+str(zonas)+', d = 5' 


 
path_label = "Trayectoria ref" 


# -------------------------------------------------

x_odom_1 = []
y_odom_1 = []

x_odom_2 = []
y_odom_2 = []

x_odom_3 = []
y_odom_3 = []

x_odom_4 = []
y_odom_4 = []

x_odom_5 = []
y_odom_5 = []

x_odom_6 = []
y_odom_6 = []

x_odom_7 = []
y_odom_7 = []


x_path = []
y_path = []

with open(odom_file_nsec_d0_5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))


with open(odom_file_nsec_d1_5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_2.append(float(row[5]))
        y_odom_2.append(float(row[6]))

with open(odom_file_nsec_d2, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_3.append(float(row[5]))
        y_odom_3.append(float(row[6]))


with open(odom_file_nsec_d2_5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_4.append(float(row[5]))
        y_odom_4.append(float(row[6]))

with open(odom_file_nsec_d3, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_5.append(float(row[5]))
        y_odom_5.append(float(row[6]))

with open(odom_file_nsec_d3_5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_6.append(float(row[5]))
        y_odom_6.append(float(row[6]))


with open(odom_file_nsec_d5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_7.append(float(row[5]))
        y_odom_7.append(float(row[6]))



# Plot
plt.figure(figsize=(9,6), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label = label_nsec_d0_5)
plt.plot(x_odom_2, y_odom_2, label = label_nsec_d1_5)
plt.plot(x_odom_3, y_odom_3, label = label_nsec_d2)
plt.plot(x_odom_4, y_odom_4, label = label_nsec_d2_5)
plt.plot(x_odom_5, y_odom_5, label = label_nsec_d3)
plt.plot(x_odom_6, y_odom_6, label = label_nsec_d3_5)
plt.plot(x_odom_7, y_odom_7, label = label_nsec_d5)


#plt.plot(x_path, y_path, label= path_label)

if(circuit == 'catalunya'):

    image_file = "img/01_screenshots/catalunya_for_plot.png"
    img = plt.imread(image_file)

    x_min = -80
    x_max = 20

    y_min = -70
    y_max = 40

    plt.imshow(img, zorder=0, extent=[x_min-4.5, x_max+3.30, y_min-1.5, y_max+2.80])

    plt.xlim([x_min, x_max])
    plt.ylim([y_min, y_max])

elif(circuit == 'example'):
    image_file = "img/01_screenshots/example_for_plot.png"
    img = plt.imread(image_file)
    x_min = -60
    x_max = 10
    y_min = -20
    y_max = 30

    plt.imshow(img, zorder=0, extent=[x_min-4.25, x_max+7.75, y_min-4, y_max+3.2])


    plt.xlim([x_min, x_max])
    plt.ylim([y_min, y_max])

plt.legend()
plt.xlabel('X (dm)')
plt.ylabel('Y (dm)')
plt.savefig(folder+exported_file_name+ext_file)


plt.show()