#! /usr/bin/env python

from http import server
import rospy
from dynamic_reconfigure.server import *
from dr.cfg import drConfig

"""
    动态参数服务端: 参数被修改时直接打印
    实现流程:
        1.导包
        2.初始化 ros 节点
        3.创建服务端对象
        4.回调函数处理参数
        5.spin
"""
def cb(drConfig,level):
    rospy.loginfo("解析参数：%d,%.2f,%s,%d,%d",
    drConfig.int_param,
    drConfig.double_param,
    drConfig.str_param,
    drConfig.bool_param,
    drConfig.list_param  
    )
    return drConfig

if __name__ == "__main__":

    rospy.init_node("dr_server")
    # Server(type, callback, namespace="")
    #类型 回调函数
    server = Server(drConfig,cb)

    rospy.spin()