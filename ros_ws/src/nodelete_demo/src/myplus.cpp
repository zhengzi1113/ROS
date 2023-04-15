#include "ros/ros.h"
#include "nodelet/nodelet.h"
#include "pluginlib/class_list_macros.h"

namespace my_nodelet
{
    class MyPlus: public nodelet::Nodelet{
        public:
            MyPlus(){}
            void onInit(){
                ROS_INFO("hello nodelet----------");
            }
    };
};

PLUGINLIB_EXPORT_CLASS(my_nodelet::MyPlus,nodelet::Nodelet)
