#! /usr/bin/env python

from math import radians
import rospy

"""
    演示参数的新增与修改
    需求：在参数服务器中设置机器人的属性，型号，半径
    实现：
    rospy.sey_param()

"""

if __name__ == "__main__":
    # 初始化 ros节点
    rospy.init_node("param_set")
    #新增参数
    rospy.set_param("type","maimai")
    rospy.set_param("radius",0.15)
    #修改参数
    rospy.set_param("radius",0.2)