"""lab3_controller_py controller."""

from controller import Supervisor, DistanceSensor, Gyro, Compass, Motor

#supervisor object
supervisor = Supervisor()

#robot Node
robot = supervisor.getFromDef('Segway')

#time step definition
TIME_STEP = int(supervisor.getBasicTimeStep())

#motor sensors, nodes
front_sensor = supervisor.getDevice('lidar_F')
right_sensor = supervisor.getDevice('lidar_R')
compass = supervisor.getDevice('compass')

#gyro, nodes
gyro = supervisor.getDevice('gyro')


#enable sensors
front_sensor.enable(TIME_STEP)
right_sensor.enable(TIME_STEP)
compass.enable(TIME_STEP)
gyro.enable(TIME_STEP)

#non-position control mode
left_motor = supervisor.getDevice('motor_L')
right_motor = supervisor.getDevice('motor_R')
left_motor.setPosition(float('inf'))
right_motor.setPosition(float('inf'))

#open data file and initialize
f = open('seg_case_1.txt','w')

# read sensors
front_dist = front_sensor.getValue()
right_dist = right_sensor.getValue()
compass_data = compass.getValues()
gyro_data = gyro.getValues()

#ground truth
position = robot.getPosition()
#velocity = robot.getVelocity()

positionx = str(position[0])
positionz = str(position[2])
f_d = str(front_dist)
r_d = str(right_dist)
comp1 = str(compass_data[0])
comp2 = str(compass_data[2])
gyro_dx = str(gyro_data[0])
gyro_dy = str(gyro_data[1])
gyro_dz = str(gyro_data[2])
s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
f.write(s)
f.write('\n')

#simulation time
t = supervisor.getTime()
t2 = supervisor.getTime()

#motion scenario
case = 1

if case == 1:
    while supervisor.getTime() - t < 1:
        if supervisor.step(TIME_STEP) == -1:
            quit()

        left_motor.setVelocity((supervisor.getTime() - t)*1.0)
        right_motor.setVelocity((supervisor.getTime() - t)*3.0)
        
        # read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        #velocity = robot.getVelocity()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')

    while supervisor.getTime() - t < 20:
        
        #break statement
        if supervisor.step(TIME_STEP) == -1:
            quit()
    
        #run motor
        left_motor.setVelocity(1.0)
        right_motor.setVelocity(3.0)
        
        # read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        #velocity = robot.getVelocity()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')

if case == 2:
    while supervisor.getTime() - t < 1:
        if supervisor.step(TIME_STEP) == -1:
            quit()

        left_motor.setVelocity((supervisor.getTime() - t)*1.0)
        right_motor.setVelocity((supervisor.getTime() - t)*-1.0)
        
        # read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        #velocity = robot.getVelocity()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        
    while supervisor.getTime() - t < 10:
        
        #break statement
        if supervisor.step(TIME_STEP) == -1:
            quit()
        
        #run motor 
        left_motor.setVelocity(1.0)
        right_motor.setVelocity(-1.0)
        
        #read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        t2 = supervisor.getTime()

    while supervisor.getTime() - t < 11:
        if supervisor.step(TIME_STEP) == -1:
            quit()
        
        left_motor.setVelocity(1.0 - 2.0*(supervisor.getTime() - t2))
        right_motor.setVelocity(-1.0)
        
        # read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        #velocity = robot.getVelocity()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        
    while supervisor.getTime() - t < 20:
        
        #brerak statement
        if supervisor.step(TIME_STEP) == -1:
            quit()
        
        #run motor
        left_motor.setVelocity(-1.0)
        right_motor.setVelocity(-1.0)
        
        #read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        
if case == 3:
    while supervisor.getTime() - t < 1:
        if supervisor.step(TIME_STEP) == -1:
            quit()
        
        left_motor.setVelocity(-1.0*(supervisor.getTime() - t))
        right_motor.setVelocity(-1.0*(supervisor.getTime() - t))
        
        #read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        
    while supervisor.getTime() - t < 10:
        if supervisor.step(TIME_STEP) == -1:
            quit()
            
        left_motor.setVelocity(-1.0)
        right_motor.setVelocity(-1.0)
        
        #read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        t2 = supervisor.getTime()
        
    while supervisor.getTime() - t < 11:
        if supervisor.step(TIME_STEP) == -1:
            quit()
        
        left_motor.setVelocity(-1.0 + 1.0*(supervisor.getTime() - t2)))
        right_motor.setVelocity(-1.0)
        
        #read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        
    while supervisor.getTime() - t < 20:
        if supervisor.step(TIME_STEP) == -1:
            quit()
            
        left_motor.setVelocity(0)
        right_motor.setVelocity(-1.0)
        
        #read sensors
        front_dist = front_sensor.getValue()
        right_dist = right_sensor.getValue()
        compass_data = compass.getValues()
        gyro_data = gyro.getValues()
        
        #ground truth
        position = robot.getPosition()
        
        positionx = str(position[0])
        positionz = str(position[2])
        f_d = str(front_dist)
        r_d = str(right_dist)
        comp1 = str(compass_data[0])
        comp2 = str(compass_data[2])
        gyro_dx = str(gyro_data[0])
        gyro_dy = str(gyro_data[1])
        gyro_dz = str(gyro_data[2])
        s = positionx + "," + positionz + "," + f_d + "," + r_d + "," + comp1 + "," + comp2 + "," + gyro_dy
        f.write(s)
        f.write('\n')
        

#stop motors
f.close()
left_motor.setVelocity(0)
right_motor.setVelocity(0)
