# Z1

Files to control Unitree Z1 Arm

## Setup
Setup the robot arm as shown in the link below

https://dev-z1.unitree.com/brief/installation.html

Clone this repository into a workspace of your choice

Open the terminal and navigate to the folder

Give permisions to the executable files using the commands below
```
chmod +x start_z1_demo.sh
chmod +x start_z1_keyboard.sh
```
Run the executable you want using
```
./start_z1_demo.sh
```
or
```
./start_z1_keyboard.sh
```

### start_z1_demo.sh

Executable to run the robot control nodes and demo script.

To edit the movements of the robot, edit the file z1_sdk-master/examples/highcmd_basic_two.cpp

MoveL() Function format:
```
posture[0] << rollAngle,pitchAngle,yawAngle,xCoord,yCoord,zCoord;
    MoveL(posture[0], clawAngle, armSpeed);
    std::cout<<"------ Endeffector Cartesian Posture ------"<<std::endl;
    std::cout<<"roll pitch yaw x y z"<<std::endl;
    std::cout<<lowstate->endPosture.transpose()<<std::endl;
```
rollAngle, pitchAngle, yawAngle are in radians

xCoord, yCoord, zCoord are in metres

Coordinate system can be found here:

https://dev-z1.unitree.com/brief/parameter.html#cartesian-coordinate

### start_z1_keyboard.sh

Executable to run the control nodes and keyboard control nodes.

Controls can be found here:

https://dev-z1.unitree.com/use/keyboard.html
