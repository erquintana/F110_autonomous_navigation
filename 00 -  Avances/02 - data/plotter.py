#!/usr/bin/env python3

import matplotlib.pyplot as plt
import csv

test = 'recta_pp'
ext_file = '.pdf'
folder = 'img/'
######################################################################################
######################################################################################
######################################################################################
# RECTA 5m para distintas Lookahead

odom_file_1 = 'odom_recta_5m_lookhd1.csv'
odom_file_2 = 'odom_recta_5m_lookhd2.csv'
odom_file_5 = 'odom_recta_5m_lookhd5.csv'
odom_file_8 = 'odom_recta_5m_lookhd8.csv'


path_file = 'path_recta.csv'

exported_file_name = 'test_recta_5m_lkhd'

graph_title = 'Seguimiento de trayectoria con persecusión pura, variación en distancia lookahead'
label_1 = "lookahead = 1" 
label_2 = "lookahead = 2" 
label_5 = "lookahead = 5" 
label_8 = "lookahead = 8" 

path_label = "Trayectoria ref" 

# -------------------------------------------------

x_odom_1 = []
x_odom_2 = []
x_odom_5 = []
x_odom_8 = []

y_odom_1 = []
y_odom_2 = []
y_odom_5 = []
y_odom_8 = []

x_path = []
y_path = []

with open(odom_file_1, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))

with open(odom_file_2, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_2.append(float(row[5]))
        y_odom_2.append(float(row[6]))

with open(odom_file_5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_5.append(float(row[5]))
        y_odom_5.append(float(row[6]))

with open(odom_file_8, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_8.append(float(row[5]))
        y_odom_8.append(float(row[6]))

with open(path_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ';')
    for row in reader:
        x_path.append(float(row[1]))
        y_path.append(float(row[2]))
        

# Plot
plt.figure(figsize=(9,9), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label= label_1)
plt.plot(x_odom_2, y_odom_2, label= label_2)
plt.plot(x_odom_5, y_odom_5, label= label_5)
plt.plot(x_odom_8, y_odom_8, label= label_8)

plt.plot(x_path, y_path, label= path_label)

plt.legend()
plt.xlabel('X (dm)')
plt.ylabel('Y (dm)')
plt.savefig(folder+exported_file_name+ext_file)

plt.show()

######################################################################################
#######################################################################################
######################################################################################
# RECTA 5m para distintas P gain

odom_file_1 = 'odom_recta_5m_P0_5.csv'
odom_file_2 = 'odom_recta_5m_P1.csv'
odom_file_5 = 'odom_recta_5m_P2_5.csv'
odom_file_8 = 'odom_recta_5m_P5.csv'


path_file = 'path_recta.csv'

exported_file_name = 'test_recta_5m_pgain'

graph_title = 'Seguimiento de trayectoria con persecusión pura, variación en ganancia de velocidad'
label_1 = "Pv_gain = 0.5" 
label_2 = "Pv_gain = 1" 
label_5 = "Pv_gain = 1.5" 
label_8 = "Pv_gain = 2.5" 

path_label = "Trayectoria ref" 

# -------------------------------------------------

x_odom_1 = []
x_odom_2 = []
x_odom_5 = []
x_odom_8 = []

y_odom_1 = []
y_odom_2 = []
y_odom_5 = []
y_odom_8 = []

x_path = []
y_path = []

with open(odom_file_1, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))

with open(odom_file_2, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_2.append(float(row[5]))
        y_odom_2.append(float(row[6]))

with open(odom_file_5, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_5.append(float(row[5]))
        y_odom_5.append(float(row[6]))

with open(odom_file_8, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_8.append(float(row[5]))
        y_odom_8.append(float(row[6]))

with open(path_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ';')
    for row in reader:
        x_path.append(float(row[1]))
        y_path.append(float(row[2]))
        

# Plot
plt.figure(figsize=(9,9), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label= label_1)
plt.plot(x_odom_2, y_odom_2, label= label_2)
plt.plot(x_odom_5, y_odom_5, label= label_5)
plt.plot(x_odom_8, y_odom_8, label= label_8)

plt.plot(x_path, y_path, label= path_label)

plt.legend()
plt.xlabel('X (dm)')
plt.ylabel('Y (dm)')
plt.savefig(folder+exported_file_name+ext_file)

plt.show()


######################################################################################
######################################################################################
######################################################################################
# Evasión de obstaculos brait test arena

odom_file_1 = 'odom_brait1.csv'

exported_file_name = 'test_brait_arena'

graph_title = 'Evasión de obstáculos Braitenberg, arena sencilla'
label_1 = "zonas = 12, d = 2.75" 

# -------------------------------------------------

x_odom_1 = []
y_odom_1 = []


with open(odom_file_1, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))
        

# Plot
plt.figure(figsize=(9,9), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label= label_1)

image_file = "img/01_screenshots/arena_for_plot.png"
img = plt.imread(image_file)
l = 1359/(35*2)
a = 725/(90)
plt.imshow(img, zorder=0, extent=[-25, 20, 30-2.0, 60-1.5])


plt.xlim([-30, 30])
plt.ylim([35, 55])
plt.legend()
plt.xlabel('X (dm)')
plt.ylabel('Y (dm)')
plt.savefig(folder+exported_file_name+ext_file)


plt.show()


######################################################################################
######################################################################################
######################################################################################
# PP circuito 1

odom_file_1 = 'odom_pp_circ1_lkhd2_p0_75.csv'
path_file = 'path_circ1.csv'

exported_file_name = 'pp_circ1_lkhd1_p0_75_map'

graph_title = 'Seguimiento de trayectorias, persecusión pura, circuito 1'
label_1 = "PP, lookahead = 2, Pv = 0.75" 

path_label = "Trayectoria ref" 


# -------------------------------------------------

x_odom_1 = []
y_odom_1 = []



x_path = []
y_path = []

with open(odom_file_1, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))


with open(path_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ';')
    for row in reader:
        x_path.append(float(row[1]))
        y_path.append(float(row[2]))
        

# Plot
plt.figure(figsize=(9,9), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label= label_1)
plt.plot(x_path, y_path, label= path_label)


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


######################################################################################
######################################################################################
######################################################################################
# PP circuito 2 CATALUNYA

odom_file_1 = 'odom_pp_catalunya_lkhd2_p0_75.csv'
path_file = 'path_catalunya.csv'

exported_file_name = 'pp_catalunya_lkhd1_p0_75_map'

graph_title = 'Seguimiento de trayectorias, persecusión pura, circuito 2'
label_1 = "PP, lookahead = 2, Pv = 0.75" 

path_label = "Trayectoria ref" 


# -------------------------------------------------

x_odom_1 = []
y_odom_1 = []



x_path = []
y_path = []

with open(odom_file_1, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))


with open(path_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ';')
    for row in reader:
        x_path.append(float(row[1]))
        y_path.append(float(row[2]))
        

# Plot
plt.figure(figsize=(9,9), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label= label_1)
plt.plot(x_path, y_path, label= path_label)


image_file = "img/01_screenshots/catalunya_for_plot.png"
img = plt.imread(image_file)

x_min = -80
x_max = 20

y_min = -70
y_max = 40

plt.imshow(img, zorder=0, extent=[x_min-4.5, x_max+3.30, y_min-1.5, y_max+2.80])


plt.xlim([x_min, x_max])
plt.ylim([y_min, y_max])
plt.legend()
plt.xlabel('X (dm)')
plt.ylabel('Y (dm)')
plt.savefig(folder+exported_file_name+ext_file)


plt.show()

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

######################################################################################
######################################################################################
######################################################################################
# mixed PP + BRAIT circuito 2 CATALUNYA

odom_file_1 = 'odom_PPandBM_catalunya_64sec_d2punto5_lhd2_pv0punto75_gsw1_lsw0_gstrw1_lstrw0punto85.csv'
odom_file_2 = 'odom_PPandBM_catalunya_64sec_d2punto5_lhd2_pv0punto75_gsw1_lsw1_gstrw1_lstrw1.csv'
odom_file_3 = 'odom_PPandBM_catalunya_64sec_d2punto5_lhd0punto75_pv0punto75_gsw1_lsw1_gstrw0punto75_lstrw1.csv'

path_file = 'path_catalunya.csv'

exported_file_name = 'PPandBM_catalunya_map'

graph_title = 'Persecusión pura + Braitenberg Mejorado, circuito 2: Catalunya'
label_1 = "zonas = 64, d = 2.5, lookahead = 2, Pv = 0.75" 
label_2 = "zonas = 64, d = 2.5, lookahead = 2, Pv = 0.75" 
label_3 = "zonas = 64, d = 2.5, lookahead = 0.75, Pv = 0.75" 

path_label = "Trayectoria ref" 


# -------------------------------------------------

x_odom_1 = []
y_odom_1 = []

x_odom_2 = []
y_odom_2 = []

x_odom_3 = []
y_odom_3 = []



x_path = []
y_path = []

with open(odom_file_1, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_1.append(float(row[5]))
        y_odom_1.append(float(row[6]))


with open(odom_file_2, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_2.append(float(row[5]))
        y_odom_2.append(float(row[6]))

with open(odom_file_3, 'r',) as file:
    reader = csv.reader(file, delimiter = ',')
    next(reader)
    for row in reader:
        x_odom_3.append(float(row[5]))
        y_odom_3.append(float(row[6]))


with open(path_file, 'r',) as file:
    reader = csv.reader(file, delimiter = ';')
    next(reader)
    for row in reader:
        x_path.append(float(row[1]))
        y_path.append(float(row[2]))
        

# Plot
plt.figure(figsize=(9,9), dpi= 80)
# Lighten borders
plt.gca().spines["top"].set_alpha(0)
plt.gca().spines["bottom"].set_alpha(.3)
plt.gca().spines["right"].set_alpha(0)
plt.gca().spines["left"].set_alpha(.3)

plt.title(graph_title, fontsize=14)
plt.grid(alpha=0.3)
plt.xticks(fontsize=12)
plt.yticks(fontsize=12)

plt.plot(x_odom_1, y_odom_1, label= label_1)
plt.plot(x_odom_2, y_odom_2, 'r', label= label_2)
plt.plot(x_odom_3, y_odom_3,'g', label= label_3)
plt.plot(x_path, y_path, label= path_label)


image_file = "img/01_screenshots/catalunya_obst_for_plot.png"
img = plt.imread(image_file)

x_min = -80
x_max = 20

y_min = -70
y_max = 40

plt.imshow(img, zorder=0, extent=[x_min-12.25, x_max+8.5, y_min-6, y_max+4.5])


plt.xlim([x_min, x_max])
plt.ylim([y_min, y_max])
plt.legend()
plt.xlabel('X (dm)')
plt.ylabel('Y (dm)')
plt.savefig(folder+exported_file_name+ext_file)


plt.show()