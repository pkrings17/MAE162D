#---------------------

import math

# GLOBALS
# if we want to stop a little before the wall, then adjust the x_max and y_max
x_max = 10      # bounds of map
y_max = 10
theta_max = 2*math.pi
d = 0.502 	# diameter of wheels in m
w = 0.53        # distance between wheels in m
delta_t = 0.002	# timestep in seconds
v_max = 360
currentState = [x_max/2, y_max/2, 0, 0]

#---------------------
#Things the simulation can access

#input_space = [[v_l,v_r] for v_l in range(v_max) for v_r in range(v_max)]
#state_space = [[x,y,theta] for x in range(x_max) for y in range(y_max) for theta in range(theta_max)]

# check if state is out of bounds
def isValid(state):
    # check for boundaries
    if (state[0] >= x_max or state[1] >= y_max or state[0] < 0 or state[1] < 0):
        return False
    return True

# state = [x,y,theta], input = [w_l,w_r]
# returns next state if valid, otherwise keeps old state
def x_next(state,input_):
    x = state[0]
    y = state[1]
    theta = state[2]
    w_l = -input_[0]
    w_r = -input_[1]

    newOmega = d/2*1/w*(w_r - w_l)
    newX = x + d/4*(w_l + w_r)*math.cos(theta)*delta_t
    newY = y + d/4*(w_l + w_r)*math.sin(theta)*delta_t
    newTheta = theta + newOmega*delta_t
       	
    newState = [newX,newY,newTheta,newOmega]
    if(isValid(newState)):
        return newState
    return state

def main():
    currentState = [x_max/2, y_max/2, 0, 0]
    f = open('an_data_seg_c1.txt','w')
    s = s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
    f.write(s)
    f.write('\n')
    case = 4

    if case == 1:
        for i in range(500):
            currentState = x_next(currentState, [1.0*(i/500.0),3.0*(i/500.0)])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(9500):
            currentState = x_next(currentState, [1.0,3.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')

    if case == 2:
        for i in range(500):
            currentState = x_next(currentState, [1.0*(i/500.0),-1.0*(i/500.0)])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(4500):
            currentState = x_next(currentState, [1.0,-1.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(500):
            currentState = x_next(currentState, [1.0 - 2.0*(i/500.0),-1.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(4500):
            currentState = x_next(currentState, [-1.0,-1.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')

    if case == 3:
        for i in range(500):
            currentState = x_next(currentState, [-1.0*(i/500.0),-1.0*(i/500.0)])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(4500):
            currentState = x_next(currentState, [-1.0,-1.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(500):
            currentState = x_next(currentState, [-1.0 + 1.0*(i/500.0),-1.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        for i in range(4500):
            currentState = x_next(currentState, [0,-1.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')

    if case == 4:
        for i in range(2500):
            currentState = x_next(currentState, [-5.0,-7.0])
            # print timestep number, x, y, theta
            s = str(currentState[0]) + "," + str(currentState[1]) + "," + str(currentState[2]) + "," + str(currentState[3])
            f.write(s)
            f.write('\n')
        
    f.close()

main()
