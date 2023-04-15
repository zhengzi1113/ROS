#! /usr/bin/env python

import rospy

"""
    需求：修改乌龟的背景色

    1.初始化ros节点
    2.设置参数

"""

if __name__ == "__main__":

    rospy.init_node("change_Color")

    rospy.set_param("/turtlesim/background_r",0)
    rospy.set_param("/turtlesim/background_g",50)
    rospy.set_param("/turtlesim/background_b",150)