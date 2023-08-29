#include "unitree_arm_sdk/control/unitreeArm.h"

using namespace UNITREE_ARM;

class Z1ARM : public unitreeArm{
public:
    Z1ARM():unitreeArm(true){};
    ~Z1ARM(){};
    void armCtrlByFSM();
    void armCtrlInJointCtrl();
    void armCtrlInCartesian();
    void printState();
};

 
void Z1ARM::armCtrlByFSM() {
    Vec6 posture[2];

    std::cout << "[TO STATE]" << std::endl;
    labelRun("forward");
    
    std::cout << "[MOVEJ]" << std::endl;
    posture[0]<<0.5,0.1,0.1,0.5,-0.2,0.5;
    MoveJ(posture[0], 0, 1.0);

    std::cout << "[MOVEL]" << std::endl;
    posture[0] << 0,0,0,0.45,-0.2,0.2;
    MoveL(posture[0], 0, 0.3);

    std::cout << "[MOVEC]" << std::endl;
    posture[0] << 0,0,0,0.45,0,0.4;
    posture[1] << 0,0,0,0.45,0.2,0.2;
    MoveC(posture[0], posture[1], 0, 0.3);
}

void Z1ARM::armCtrlInJointCtrl(){
    labelRun("forward");
    startTrack(ArmFSMState::JOINTCTRL);

    for(int i(0); i<1000;i++){
        directions<< 0, 0, 0, -1, 0, 0, -1;
        jointCtrlCmd(directions, 0.5);
        usleep(_ctrlComp->dt*1000000);
    }
}

void Z1ARM::armCtrlInCartesian(){
    labelRun("forward");
    startTrack(ArmFSMState::CARTESIAN);
    
    for(int i(0); i<2000;i++){
        directions<< 0, 0, 0, 0, 0, -1, -1;
        cartesianCtrlCmd(directions, 0.3, 0.1);
        usleep(_ctrlComp->dt*1000000);
    }
}

void Z1ARM::printState(){
    std::cout<<"------ joint State ------"<<std::endl;
    std::cout<<"qState: "<<lowstate->getQ().transpose()<<std::endl;
    std::cout<<"qdState: "<<lowstate->getQd().transpose()<<std::endl;
    std::cout<<"tauState: "<<lowstate->getTau().transpose()<<std::endl;

    std::cout<<"------ Endeffector Cartesian Posture ------"<<std::endl;
    std::cout<<"roll pitch yaw x y z"<<std::endl;
    std::cout<<lowstate->endPosture.transpose()<<std::endl;
}

int main() {
    std::cout << std::fixed << std::setprecision(3);
    Z1ARM arm;
    arm.sendRecvThread->start();

    arm.backToStart();

    for (int i=0; i<5; i++)
    {
    size_t demo = 3;
    for(size_t demo = 1; demo < 4; demo++)
    switch (demo)
    {
        case 1:
            arm.armCtrlByFSM();
	    std::cout<<"case 1"<<std::endl;
            break;
/*        case 2:
            arm.armCtrlInJointCtrl();
	    std::cout<<"case 2"<<std::endl;
            break;
        case 3:
            arm.armCtrlInCartesian();
	    std::cout<<"case 3"<<std::endl;
            break;
        default:
            break;*/
    }
    
    arm.backToStart();
    }
    arm.setFsm(ArmFSMState::PASSIVE);
    arm.sendRecvThread->shutdown();
    return 0;
}
