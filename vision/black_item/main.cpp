#include "black_item.h"

void SigintHandler(int sig)
{
    ROS_INFO("shutting down!");
    ros::shutdown();
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "balck_item");
    ros::NodeHandle h_node;
    signal(SIGINT, SigintHandler);
    Vision cam("camera/image_raw");
    ros::spin();
    ROS_INFO("Node exit");
    printf("Process exit\n");
    return 0;
}
